local log = require 'abajuradam/logging'
local ALNHelper = require 'abajuradam/auto_line_namer_helper'
local GUIHelper = require 'abajuradam/auto_line_namer_gui'
local state = require 'abajuradam/state'


-- Rename lines based on generated name
local function renameLines()
    if not state.linanamerSettings.enabled then
        return
    end
    local lineIds = api.engine.system.lineSystem.getLinesForPlayer(api.engine.util.getPlayer())

    for _, lineId in ipairs(lineIds) do
        local lineName = ALNHelper.getLineName(lineId)

        -- Check if the line name is updatable or has the default prefix
        if ALNHelper.isUpdatableName(lineName) or lineName:sub(1, 1) == state.linanamerSettings.prefix then
            local newName = ALNHelper.generateLineName(lineId)
            api.cmd.sendCommand(api.cmd.make.setName(lineId, newName))
            log.info("Renamed line " .. lineId .. " to: " .. newName)
        end
    end
end


---@diagnostic disable-next-line: lowercase-global
function data()
    return {
        handleEvent = GUIHelper.handleGuiEvents,
        update = renameLines,
        guiInit = function()
            GUIHelper.gui_initSettingsWindow()
        end,
        save = function()
            return state
        end,
        load = function(loadedState)
            if loadedState == nil or next(loadedState) == nil then return end
            state = loadedState
        end,
    }
end
