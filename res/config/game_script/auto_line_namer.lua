local log = require 'abajuradam/logging'
local ALNHelper = require 'abajuradam/auto_line_namer_helper'
local state = require 'abajuradam/state'

local gui_settingsWindow = nil

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

local function gui_LMButtonClick()
    if not gui_settingsWindow:isVisible() then
        gui_settingsWindow:setVisible(true, false)
    else
        gui_settingsWindow:setVisible(false, false)
    end
end

local function gui_initSettingsWindow()
    -- SETTINGS WINDOW

    api.gui.util.getById("gameInfo"):invokeLater(function()
        local gameInfoLayout = api.gui.util.getById("gameInfo")
        if gameInfoLayout then
            gameInfoLayout = gameInfoLayout:getLayout()
            if gameInfoLayout then
                local button = api.gui.comp.Button.new(api.gui.comp.TextView.new("[ALN]"), true)
                button:onClick(gui_LMButtonClick)
                gameInfoLayout:addItem(api.gui.comp.Component.new("VerticalLine"))
                gameInfoLayout:addItem(button)
                gameInfoLayout:addItem(api.gui.comp.Component.new("VerticalLine"))
            else
                debugPrint("[Auto Line Namer] Error: gameInfoLayout layout is nil.")
            end
        else
            debugPrint("[Auto Line Namer] Error: gameInfo component is nil.")
        end
    end)

    -- SETTINGS WINDOW
    -- BoxLayout for the settings window
    local settingsBox = api.gui.layout.BoxLayout.new("VERTICAL")

    -- AUTO LINE NAMER OPTIONS
    local header_LineManagerOptions = api.gui.comp.TextView.new("Auto Line Namer Options")
    settingsBox:addItem(header_LineManagerOptions)

    -- Toggle for enabling/disabling the Auto Line Namer
    local checkBox_enableLineManager = api.gui.comp.CheckBox.new("Enable")
    checkBox_enableLineManager:setSelected(state.linanamerSettings.enabled, false)
    checkBox_enableLineManager:onToggle(function(selected)
        ALNHelper.sendScriptCommand("settings_gui", "linemanager_enabled", selected)
    end)
    settingsBox:addItem(checkBox_enableLineManager)

    -- WINDOW CREATION
    gui_settingsWindow = api.gui.comp.Window.new("Auto Line Namer Settings", settingsBox)
    gui_settingsWindow:setTitle("Auto Line Namer Settings")
    gui_settingsWindow:addHideOnCloseHandler()
    gui_settingsWindow:setMovable(true)
    gui_settingsWindow:setPinButtonVisible(true)
    gui_settingsWindow:setResizable(false)
    gui_settingsWindow:setSize(api.gui.util.Size.new(1000, 500))
    -- TODO: Setting the position here seems to cause the window to be invisible (or outside the screen, or something...)
    --gui_settingsWindow:setPosition(100, 100)
    gui_settingsWindow:setPinned(true)
    gui_settingsWindow:setVisible(false, false)
end

---@diagnostic disable-next-line: lowercase-global
function data()
    return {
        handleEvent = function(filename, id, name, param)
            if filename == "auto_line_namer.lua" then
                if id == "settings_gui" then
                    if name == "linemanager_enabled" then
                        state.linanamerSettings.enabled = param
                        log.info("Auto Line Namer enabled: " .. tostring(param))
                    end
                end
            end
        end,
        update = renameLines,
        guiInit = function()
            gui_initSettingsWindow()
        end,
    }
end
