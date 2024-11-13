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

    local tabWidget = api.gui.comp.TabWidget.new("NORTH")

    -- GENERAL SETTINGS
    local generalSettingsLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local generalSettingsWrapper = api.gui.comp.Component.new("generalSettingsWrapper")
    generalSettingsWrapper:setLayout(generalSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("General"), generalSettingsWrapper)

    -- Toggle for enabling/disabling the Auto Line Namer
    local header_EnableLineManager = api.gui.comp.TextView.new("Enabling:")
    generalSettingsLayout:addItem(header_EnableLineManager)
    local checkBox_enableLineManager = api.gui.comp.CheckBox.new("Enable auto line naming")
    checkBox_enableLineManager:setSelected(state.linanamerSettings.enabled, false)
    checkBox_enableLineManager:onToggle(function(selected)
        ALNHelper.sendScriptCommand("settings_gui", "linemanager_enabled", selected)
    end)
    generalSettingsLayout:addItem(checkBox_enableLineManager)

    -- Prefix for lines that should not be renamed
    local header_TagPrefix = api.gui.comp.TextView.new("Disable Prefix:")
    generalSettingsLayout:addItem(header_TagPrefix)
    local textInputField_tagPrefix = api.gui.comp.TextInputField.new("Disable Prefix")
    textInputField_tagPrefix:setText(state.linanamerSettings.tagPrefix, false)
    textInputField_tagPrefix:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "tagPrefix", text)
    end)
    generalSettingsLayout:addItem(textInputField_tagPrefix)

    -- NAMING CONVENTION SETTINGS
    local namingConventionLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local namingConventionWrapper = api.gui.comp.Component.new("namingConventionWrapper")
    namingConventionWrapper:setLayout(namingConventionLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Naming"), namingConventionWrapper)

    -- Active naming convention
    local header_ActiveConvention = api.gui.comp.TextView.new("Active Convention:")
    namingConventionLayout:addItem(header_ActiveConvention)
    local textInputField_activeConvention = api.gui.comp.TextInputField.new("Active Convention")
    textInputField_activeConvention:setText(state.linanamerSettings.activeConvention, false)
    namingConventionLayout:addItem(textInputField_activeConvention)

    local description_ActiveConvention = api.gui.comp.TextView.new("The active naming convention for the lines.")
    namingConventionLayout:addItem(description_ActiveConvention)
    local description_conventions = api.gui.comp.TextView.new("Available conventions:")
    namingConventionLayout:addItem(description_conventions)
    local description_conventionOptions_transportType = api.gui.comp.TextView.new(
        "{transportType} -> RP, RC, TP, TC, WP, WC, AP, AC, UNK")
    namingConventionLayout:addItem(description_conventionOptions_transportType)
    local description_conventionOptions_lineType = api.gui.comp.TextView.new("{lineType} -> LO, IC, RE")
    namingConventionLayout:addItem(description_conventionOptions_lineType)
    local description_conventionOptions_cargoTypes = api.gui.comp.TextView.new("{cargoTypes} -> Logs, Passengers, etc.")
    namingConventionLayout:addItem(description_conventionOptions_cargoTypes)
    local description_conventionOptions_lineNumber = api.gui.comp.TextView.new("{lineNumber} -> 1, 2, 3, etc.")
    namingConventionLayout:addItem(description_conventionOptions_lineNumber)
    local description_conventionOptions_townNames = api.gui.comp.TextView.new("{townNames} -> Town1 - Town2")
    namingConventionLayout:addItem(description_conventionOptions_townNames)

    -- TRANSPORT TYPE SETTINGS
    local transportTypeSettingsLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local transportTypeSettingsWrapper = api.gui.comp.Component.new("transportTypeSettingsWrapper")
    transportTypeSettingsWrapper:setLayout(transportTypeSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Transport Types"), transportTypeSettingsWrapper)

    -- LINE TYPE SETTINGS
    local lineTypeSettingsLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local lineTypeSettingsWrapper = api.gui.comp.Component.new("lineTypeSettingsWrapper")
    lineTypeSettingsWrapper:setLayout(lineTypeSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Line Types"), lineTypeSettingsWrapper)

    -- CARGO TYPE SETTINGS
    local cargoTypeSettingsLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local cargoTypeSettingsWrapper = api.gui.comp.Component.new("cargoTypeSettingsWrapper")
    cargoTypeSettingsWrapper:setLayout(cargoTypeSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Cargo Types"), cargoTypeSettingsWrapper)

    -- TOWN NAME SETTINGS
    local townNameSettingsLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local townNameSettingsWrapper = api.gui.comp.Component.new("townNameSettingsWrapper")
    townNameSettingsWrapper:setLayout(townNameSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Town Names"), townNameSettingsWrapper)

    -- LINE NUMBER SETTINGS
    local lineNumberSettingsLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local lineNumberSettingsWrapper = api.gui.comp.Component.new("lineNumberSettingsWrapper")
    lineNumberSettingsWrapper:setLayout(lineNumberSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Line Numbers"), lineNumberSettingsWrapper)

    -- DEBUG
    local debugLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local debugWrapper = api.gui.comp.Component.new("debugWrapper")
    debugWrapper:setLayout(debugLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Debug"), debugWrapper)


    -- WINDOW CREATION
    gui_settingsWindow = api.gui.comp.Window.new("Auto Line Namer Settings", tabWidget)
    tabWidget:setCurrentTab(0, false)
    gui_settingsWindow:setTitle("Auto Line Namer Settings")
    gui_settingsWindow:addHideOnCloseHandler()
    gui_settingsWindow:onClose(function()
        tabWidget:setCurrentTab(0, false)
    end)
    gui_settingsWindow:setMovable(true)
    gui_settingsWindow:setPinButtonVisible(true)
    gui_settingsWindow:setResizable(false)
    gui_settingsWindow:setSize(api.gui.util.Size.new(850, 500))
    -- TODO: Setting the position here seems to cause the window to be invisible (or outside the screen, or something...)
    --gui_settingsWindow:setPosition(100, 100)
    gui_settingsWindow:setPinned(true)
    gui_settingsWindow:setVisible(false, false)
end

local function handleGuiEvents(filename, id, name, param)
    if filename ~= "auto_line_namer.lua" or id ~= "settings_gui" then
        return
    end

    if name == "linemanager_enabled" then
        state.linanamerSettings.enabled = param
        log.info("Auto Line Namer enabled: " .. tostring(param))
    elseif name == "tagPrefix" then
        state.linanamerSettings.tagPrefix = param
        log.info("Tag prefix set to: " .. param)
    end
end

---@diagnostic disable-next-line: lowercase-global
function data()
    return {
        handleEvent = handleGuiEvents,
        update = renameLines,
        guiInit = function()
            gui_initSettingsWindow()
        end,
    }
end
