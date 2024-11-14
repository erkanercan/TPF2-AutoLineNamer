local State = require 'abajuradam/state'
local log = require 'abajuradam/logging'
local ALNHelper = require 'abajuradam/auto_line_namer_helper'
local gui_settingsWindow = nil
local GUIHelper = {}

local function gui_LMButtonClick()
    if not gui_settingsWindow:isVisible() then
        gui_settingsWindow:setVisible(true, false)
    else
        gui_settingsWindow:setVisible(false, false)
    end
end

function GUIHelper.gui_initSettingsWindow()
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
                log.error("gameInfoLayout layout is nil.")
            end
        else
            log.error("gameInfoLayout component is nil.")
        end
    end)

    local tabWidget = api.gui.comp.TabWidget.new("NORTH")

    -- GENERAL SETTINGS
    local generalSettingsLayout = api.gui.layout.BoxLayout.new("HORIZONTAL")
    local generalSettingsWrapper = api.gui.comp.Component.new("generalSettingsWrapper")
    generalSettingsWrapper:setLayout(generalSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("General"), generalSettingsWrapper)

    local generalLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local generalInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    -- Toggle for enabling/disabling the Auto Line Namer
    local header_EnableLineManager = api.gui.comp.TextView.new("Enabling:")
    local checkBox_enableLineManager = api.gui.comp.CheckBox.new("Enable auto line naming")
    checkBox_enableLineManager:setSelected(State.getEnabled(), false)
    checkBox_enableLineManager:onToggle(function(selected)
        ALNHelper.sendScriptCommand("settings_gui", "linemanager_enabled", selected)
    end)
    generalLabelLayout:addItem(header_EnableLineManager)
    generalInputLayout:addItem(checkBox_enableLineManager)

    -- Prefix for lines that should not be renamed
    local header_TagPrefix = api.gui.comp.TextView.new("Disable Prefix:")
    local textInputField_tagPrefix = api.gui.comp.TextInputField.new("Disable Prefix")
    textInputField_tagPrefix:setText(State.getTagPrefix(), false)
    textInputField_tagPrefix:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "tagPrefix", text)
    end)
    generalLabelLayout:addItem(header_TagPrefix)
    generalInputLayout:addItem(textInputField_tagPrefix)

    local header_ActiveConvention = api.gui.comp.TextView.new("Active Convention:")
    local textInputField_activeConvention = api.gui.comp.TextInputField.new("Active Convention")
    textInputField_activeConvention:setText(State.getActiveConvention(), false)
    textInputField_activeConvention:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "activeConvention", text)
    end)
    generalLabelLayout:addItem(header_ActiveConvention)
    generalInputLayout:addItem(textInputField_activeConvention)

    --[[     local button_resetSettings = api.gui.comp.Button.new(api.gui.comp.TextView.new("Reset Settings"), true)
    button_resetSettings:onClick(function()
        ALNHelper.sendScriptCommand("settings_gui", "linemanager_reset", false)
    end)
    button_resetSettings:setEnabled(false)
    generalInputLayout:addItem(button_resetSettings) ]]

    generalSettingsLayout:addItem(generalLabelLayout)
    generalSettingsLayout:addItem(generalInputLayout)

    -- TRANSPORT TYPE SETTINGS
    local transportTypeSettingsLayout = api.gui.layout.BoxLayout.new("HORIZONTAL")
    local transportTypeSettingsWrapper = api.gui.comp.Component.new("transportTypeSettingsWrapper")
    transportTypeSettingsWrapper:setLayout(transportTypeSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Transport Types"), transportTypeSettingsWrapper)

    local transportTypeLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local transportTypeInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    -- Settings for the transport types, like road passenger, road cargo, etc.
    local description_RoadPassenger = api.gui.comp.TextView.new("Road Passenger: ")
    local textInputField_RoadPassenger = api.gui.comp.TextInputField.new("Road Passenger")
    textInputField_RoadPassenger:setText(State.getTransportType('roadPassenger'), false)
    textInputField_RoadPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_roadPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_RoadPassenger)
    transportTypeInputLayout:addItem(textInputField_RoadPassenger)

    local description_TramPassenger = api.gui.comp.TextView.new("Tram Passenger: ")
    local textInputField_TramPassenger = api.gui.comp.TextInputField.new("Tram Passenger")
    textInputField_TramPassenger:setText(State.getTransportType('tramPassenger'), false)
    textInputField_TramPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_tramPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_TramPassenger)
    transportTypeInputLayout:addItem(textInputField_TramPassenger)

    local description_TrainPassenger = api.gui.comp.TextView.new("Train Passenger: ")
    local textInputField_TrainPassenger = api.gui.comp.TextInputField.new("Train Passenger")
    textInputField_TrainPassenger:setText(State.getTransportType('trainPassenger'), false)
    textInputField_TrainPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_trainPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_TrainPassenger)
    transportTypeInputLayout:addItem(textInputField_TrainPassenger)

    local description_WaterPassenger = api.gui.comp.TextView.new("Water Passenger: ")
    local textInputField_WaterPassenger = api.gui.comp.TextInputField.new("Water Passenger")
    textInputField_WaterPassenger:setText(State.getTransportType('waterPassenger'), false)
    textInputField_WaterPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_waterPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_WaterPassenger)
    transportTypeInputLayout:addItem(textInputField_WaterPassenger)

    local description_AirPassenger = api.gui.comp.TextView.new("Air Passenger: ")
    local textInputField_AirPassenger = api.gui.comp.TextInputField.new("Air Passenger")
    textInputField_AirPassenger:setText(State.getTransportType('waterPassenger'), false)
    textInputField_AirPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_airPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_AirPassenger)
    transportTypeInputLayout:addItem(textInputField_AirPassenger)

    local description_RoadCargo = api.gui.comp.TextView.new("Road Cargo: ")
    local textInputField_RoadCargo = api.gui.comp.TextInputField.new("Road Cargo")
    textInputField_RoadCargo:setText(State.getTransportType('roadCargo'), false)
    textInputField_RoadCargo:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_roadCargo", text)
    end)
    transportTypeLabelLayout:addItem(description_RoadCargo)
    transportTypeInputLayout:addItem(textInputField_RoadCargo)

    local description_TrainCargo = api.gui.comp.TextView.new("Train Cargo: ")
    local textInputField_TrainCargo = api.gui.comp.TextInputField.new("Train Cargo")
    textInputField_TrainCargo:setText(State.getTransportType('trainCargo'), false)
    textInputField_TrainCargo:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_trainCargo", text)
    end)
    transportTypeLabelLayout:addItem(description_TrainCargo)
    transportTypeInputLayout:addItem(textInputField_TrainCargo)

    local description_WaterCargo = api.gui.comp.TextView.new("Water Cargo: ")
    local textInputField_WaterCargo = api.gui.comp.TextInputField.new("Water Cargo")
    textInputField_WaterCargo:setText(State.getTransportType('waterCargo'), false)
    textInputField_WaterCargo:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_waterCargo", text)
    end)
    transportTypeLabelLayout:addItem(description_WaterCargo)
    transportTypeInputLayout:addItem(textInputField_WaterCargo)

    local description_AirCargo = api.gui.comp.TextView.new("Air Cargo: ")
    local textInputField_AirCargo = api.gui.comp.TextInputField.new("Air Cargo")
    textInputField_AirCargo:setText(State.getTransportType('airCargo'), false)
    textInputField_AirCargo:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_airCargo", text)
    end)
    transportTypeLabelLayout:addItem(description_AirCargo)
    transportTypeInputLayout:addItem(textInputField_AirCargo)

    local description_Unknown = api.gui.comp.TextView.new("Unknown: ")
    local textInputField_Unknown = api.gui.comp.TextInputField.new("Unknown")
    textInputField_Unknown:setText(State.getTransportType('unknown'), false)
    textInputField_Unknown:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_unknown", text)
    end)
    transportTypeLabelLayout:addItem(description_Unknown)
    transportTypeInputLayout:addItem(textInputField_Unknown)

    transportTypeSettingsLayout:addItem(transportTypeLabelLayout)
    transportTypeSettingsLayout:addItem(transportTypeInputLayout)

    -- LINE TYPE SETTINGS
    local lineTypeSettingsLayout = api.gui.layout.BoxLayout.new("HORIZONTAL")
    local lineTypeSettingsWrapper = api.gui.comp.Component.new("lineTypeSettingsWrapper")
    lineTypeSettingsWrapper:setLayout(lineTypeSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Line Types"), lineTypeSettingsWrapper)

    local lineTypeLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local lineTypeInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    -- Settings for the line types, like local line, intercity line, etc.
    local description_LocalLine = api.gui.comp.TextView.new("Local Line: ")
    local textInputField_LocalLine = api.gui.comp.TextInputField.new("Local Line")
    textInputField_LocalLine:setText(State.getLineType('localLineAddon'), false)
    textInputField_LocalLine:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "lineType_localLineAddon", text)
    end)
    lineTypeLabelLayout:addItem(description_LocalLine)
    lineTypeInputLayout:addItem(textInputField_LocalLine)

    local description_IntercityLine = api.gui.comp.TextView.new("Intercity Line: ")
    local textInputField_IntercityLine = api.gui.comp.TextInputField.new("Intercity Line")
    textInputField_IntercityLine:setText(State.getLineType('intercityLineAddon'), false)
    textInputField_IntercityLine:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "lineType_intercityLineAddon", text)
    end)
    lineTypeLabelLayout:addItem(description_IntercityLine)
    lineTypeInputLayout:addItem(textInputField_IntercityLine)

    local description_RegionalLine = api.gui.comp.TextView.new("Regional Line: ")
    local textInputField_RegionalLine = api.gui.comp.TextInputField.new("Regional Line")
    textInputField_RegionalLine:setText(State.getLineType('regionalLineAddon'), false)
    textInputField_RegionalLine:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "lineType_regionalLineAddon", text)
    end)
    lineTypeLabelLayout:addItem(description_RegionalLine)
    lineTypeInputLayout:addItem(textInputField_RegionalLine)

    lineTypeSettingsLayout:addItem(lineTypeLabelLayout)
    lineTypeSettingsLayout:addItem(lineTypeInputLayout)

    -- CARGO TYPE SETTINGS
    local cargoTypeSettingsLayout = api.gui.layout.BoxLayout.new("HORIZONTAL")
    local cargoTypeSettingsWrapper = api.gui.comp.Component.new("cargoTypeSettingsWrapper")
    cargoTypeSettingsWrapper:setLayout(cargoTypeSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new("Cargo Types"), cargoTypeSettingsWrapper)

    local cargoTypeLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local cargoTypeInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    -- Settings for the cargo types, like logs, passengers, etc.
    local description_CargoTypeWrapper = api.gui.comp.TextView.new("Wrapper: ")
    local combobox_CargoTypeWrapper = api.gui.comp.ComboBox.new()
    combobox_CargoTypeWrapper:addItem("Paranthesis")
    combobox_CargoTypeWrapper:addItem("Square Bracket")
    combobox_CargoTypeWrapper:addItem("None")
    combobox_CargoTypeWrapper:setSelected(State.getCargoTypeWrapper(), false)
    combobox_CargoTypeWrapper:onIndexChanged(function(index)
        ALNHelper.sendScriptCommand("settings_gui", "cargoType_wrapper", index)
    end)
    cargoTypeLabelLayout:addItem(description_CargoTypeWrapper)
    cargoTypeInputLayout:addItem(combobox_CargoTypeWrapper)

    local description_CargoTypeSeparator = api.gui.comp.TextView.new("Separator: ")
    local textInputField_CargoTypeSeparator = api.gui.comp.TextInputField.new("Cargo Type Separator")
    textInputField_CargoTypeSeparator:setText(State.getCargoTypeSeparator(), false)
    textInputField_CargoTypeSeparator:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "cargoType_separator", text)
    end)
    cargoTypeLabelLayout:addItem(description_CargoTypeSeparator)
    cargoTypeInputLayout:addItem(textInputField_CargoTypeSeparator)

    local description_CargoTypeShowType = api.gui.comp.TextView.new("Show Type: ")
    local combobox_CargoTypeShowType = api.gui.comp.ComboBox.new()
    combobox_CargoTypeShowType:addItem("Full")
    combobox_CargoTypeShowType:addItem("Short")
    combobox_CargoTypeShowType:addItem("None")
    combobox_CargoTypeShowType:setSelected(State.getCargoTypeShowType(), false)
    combobox_CargoTypeShowType:onIndexChanged(function(index)
        ALNHelper.sendScriptCommand("settings_gui", "cargoType_showType", index)
    end)
    cargoTypeLabelLayout:addItem(description_CargoTypeShowType)
    cargoTypeInputLayout:addItem(combobox_CargoTypeShowType)

    cargoTypeSettingsLayout:addItem(cargoTypeLabelLayout)
    cargoTypeSettingsLayout:addItem(cargoTypeInputLayout)


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

    local combobox_LogLevel = api.gui.comp.ComboBox.new()
    combobox_LogLevel:addItem("TRACE")
    combobox_LogLevel:addItem("DEBUG")
    combobox_LogLevel:addItem("INFO")
    combobox_LogLevel:addItem("WARN")
    combobox_LogLevel:addItem("ERROR")
    combobox_LogLevel:setSelected(log.getLevel() - 1, false)
    combobox_LogLevel:onIndexChanged(function(index)
        ALNHelper.sendScriptCommand("settings_gui", "debug_logLevel", index + 1)
    end)
    debugLayout:addItem(combobox_LogLevel)


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

function GUIHelper.handleGuiEvents(filename, id, name, param)
    if filename ~= "auto_line_namer.lua" or id ~= "settings_gui" then
        return
    end

    if name == "linemanager_enabled" then
        log.debug("GUI received enabled change: " .. tostring(param))
        State.setEnabled(param)
        -- Verify state change
        local currentState = State.getEnabled()
        if currentState ~= param then
            log.error("State change failed! Expected: " .. tostring(param) .. " Got: " .. tostring(currentState))
        end
        log.info("Auto Line Namer enabled: " .. tostring(State.getEnabled()))
    elseif name == "tagPrefix" then
        State.setTagPrefix(param)
        log.info("Tag prefix set to: " .. param)
    elseif name == "activeConvention" then
        State.setActiveConvention(param)
        log.info("Active convention set to: " .. param)
    elseif name == "linemanager_reset" then
        State.resetSettings()
        log.info("Settings reset to default.")
    elseif name == "transportType_roadPassenger" then
        State.setTransportType('roadPassenger', param)
        log.info("Road Passenger naming set to: " .. param)
    elseif name == "transportType_roadCargo" then
        State.setTransportType('roadCargo', param)
        log.info("Road Cargo naming set to: " .. param)
    elseif name == "transportType_tramPassenger" then
        State.setTransportType('tramPassenger', param)
        log.info("Tram Passenger naming set to: " .. param)
    elseif name == "transportType_trainPassenger" then
        State.setTransportType('trainPassenger', param)
        log.info("Train Passenger naming set to: " .. param)
    elseif name == "transportType_trainCargo" then
        State.setTransportType('trainCargo', param)
        log.info("Train Cargo naming set to: " .. param)
    elseif name == "transportType_waterPassenger" then
        State.setTransportType('waterPassenger', param)
        log.info("Water Passenger naming set to: " .. param)
    elseif name == "transportType_waterCargo" then
        State.setTransportType('waterCargo', param)
        log.info("Water Cargo naming set to: " .. param)
    elseif name == "transportType_airPassenger" then
        State.setTransportType('airPassenger', param)
        log.info("Air Passenger naming set to: " .. param)
    elseif name == "transportType_airCargo" then
        State.setTransportType('airCargo', param)
        log.info("Air Cargo naming set to: " .. param)
    elseif name == "transportType_unknown" then
        State.setTransportType('unknown', param)
        log.info("Unknown naming set to: " .. param)
    elseif name == "lineType_localLineAddon" then
        State.setLineType('localLineAddon', param)
        log.info("Local Line naming set to: " .. param)
    elseif name == "lineType_intercityLineAddon" then
        State.setLineType('intercityLineAddon', param)
        log.info("Intercity Line naming set to: " .. param)
    elseif name == "lineType_regionalLineAddon" then
        State.setLineType('regionalLineAddon', param)
        log.info("Regional Line naming set to: " .. param)
    elseif name == "cargoType_wrapper" then
        State.setCargoTypeWrapper(param)
        log.info("Cargo Type wrapper set to: " .. param)
    elseif name == "cargoType_separator" then
        State.setCargoTypeSeparator(param)
        log.info("Cargo Type separator set to: " .. param)
    elseif name == "cargoType_showType" then
        State.setCargoTypeShowType(param)
        log.info("Cargo Type show type set to: " .. param)
    elseif name == "debug_logLevel" then
        log.setLevel(param)
    end
end

return GUIHelper
