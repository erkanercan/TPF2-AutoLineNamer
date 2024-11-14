local State = require 'abajuradam/state'
local log = require 'abajuradam/logging'
local ALNHelper = require 'abajuradam/auto_line_namer_helper'
local GUIHelper = require 'abajuradam/auto_line_namer_gui'

State.init()

-- Rename lines based on generated name
local function renameLines()
    local enabledStatus = State.getEnabled()
    local prefix = State.getTagPrefix()
    if not enabledStatus then
        log.info("Auto Line Namer is disabled")
        return
    end
    local lineIds = api.engine.system.lineSystem.getLinesForPlayer(api.engine.util.getPlayer())

    for _, lineId in ipairs(lineIds) do
        local lineName = ALNHelper.getLineName(lineId)

        -- Check if the line name is updatable or has the default prefix
        if ALNHelper.isUpdatableName(lineName) or lineName:sub(1, 1) == prefix then
            local newName = ALNHelper.generateLineName(lineId)
            api.cmd.sendCommand(api.cmd.make.setName(lineId, newName))
            log.info("Renamed line " .. lineId .. " to: " .. newName)
        end
    end
end


---@diagnostic disable-next-line: lowercase-global
function data()
    return {
        handleEvent = function(filename, id, name, param)
            GUIHelper.handleGuiEvents(filename, id, name, param)
        end,
        guiHandleEvent = function(id, name, param)
            if (id == "lineEditor.addStation" and name == "toggleButton.toggle" and param == false) then
                renameLines()
            end
        end,
        -- update = renameLines,
        guiInit = function()
            GUIHelper.gui_initSettingsWindow()
        end,
        save = function()
            log.debug("Saving state")
            return State.getSettings()
        end,
        load = function(loadedState)
            if loadedState then
                log.debug("Loading saved state")
                -- Initialize state first
                State.init()
                -- Update all settings from loaded state
                for key, value in pairs(loadedState) do
                    if type(value) == "table" then
                        for subKey, subValue in pairs(value) do
                            if key == "transportType" then
                                State.setTransportType(subKey, subValue)
                            elseif key == "lineType" then
                                State.setLineType(subKey, subValue)
                            end
                        end
                    else
                        if key == "enabled" then
                            State.setEnabled(value)
                        elseif key == "activeConvention" then
                            State.setActiveConvention(value)
                        elseif key == "tagPrefix" then
                            State.setTagPrefix(value)
                        end
                    end
                end
            end
        end
    }
end
