local State = require 'abajuradam/state'
local log = require 'abajuradam/logging'
local ALNHelper = require 'abajuradam/auto_line_namer_helper'
local gui_settingsWindow = nil
local GUIHelper = {}

local function gui_LMButtonClick()
    if not gui_settingsWindow then
        log.error("Settings window is nil.")
        return
    end
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
                button:setTooltip(_("gui_settings_tooltip"))
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
    tabWidget:addTab(api.gui.comp.TextView.new(_("gui_settings_tab_general")), generalSettingsWrapper)

    local generalLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local generalInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    -- Toggle for enabling/disabling the Auto Line Namer
    local header_EnableLineManager = api.gui.comp.TextView.new(_("gui_settings_tab_general_enabling_title"))
    header_EnableLineManager:setTooltip(_("gui_settings_tab_general_enabling_tooltip"))
    local checkBox_enableLineManager = api.gui.comp.CheckBox.new(_("gui_settings_tab_general_enabling_description"))
    checkBox_enableLineManager:setSelected(State.getEnabled(), false)
    checkBox_enableLineManager:onToggle(function(selected)
        ALNHelper.sendScriptCommand("settings_gui", "linemanager_enabled", selected)
    end)
    generalLabelLayout:addItem(header_EnableLineManager)
    generalInputLayout:addItem(checkBox_enableLineManager)

    -- Prefix for lines that should not be renamed
    local header_TagPrefix = api.gui.comp.TextView.new(_("gui_settings_tab_general_prefix_title"))
    header_TagPrefix:setTooltip(_("gui_settings_tab_general_prefix_tooltip"))
    local textInputField_tagPrefix = api.gui.comp.TextInputField.new(_("gui_settings_tab_general_prefix_description"))
    textInputField_tagPrefix:setText(State.getTagPrefix(), false)
    textInputField_tagPrefix:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "tagPrefix", text)
    end)
    generalLabelLayout:addItem(header_TagPrefix)
    generalInputLayout:addItem(textInputField_tagPrefix)

    local header_ActiveConvention = api.gui.comp.TextView.new(_("gui_settings_tab_general_convention_title"))
    header_ActiveConvention:setTooltip(_("gui_settings_tab_general_convention_tooltip"))
    local textInputField_activeConvention = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_general_convention_description"))
    textInputField_activeConvention:setText(State.getActiveConvention(), false)
    textInputField_activeConvention:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "activeConvention", text)
    end)
    generalLabelLayout:addItem(header_ActiveConvention)
    generalInputLayout:addItem(textInputField_activeConvention)

    local autoUpdate_Layout = api.gui.layout.BoxLayout.new("HORIZONTAL")
    local header_autoUpdate = api.gui.comp.TextView.new(_("gui_settings_tab_general_autoUpdate_title"))
    header_autoUpdate:setTooltip(_("gui_settings_tab_general_autoUpdate_tooltip"))
    local checkBox_autoUpdate = api.gui.comp.CheckBox.new(_("gui_settings_tab_general_autoUpdate_description"))
    checkBox_autoUpdate:setSelected(State.getAutoUpdateEnabled(), false)
    checkBox_autoUpdate:onToggle(function(selected)
        ALNHelper.sendScriptCommand("settings_gui", "autoUpdate", selected)
    end)
    local textInputField_autoUpdateInterval = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_general_autoUpdateInterval_title"))
    textInputField_autoUpdateInterval:setTooltip(_("gui_settings_tab_general_autoUpdateInterval_tooltip"))
    textInputField_autoUpdateInterval:setText(tostring(State.getAutoUpdateInterval()), false)
    textInputField_autoUpdateInterval:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "autoUpdateInterval", text)
    end)
    local textView_autoUpdateInterval = api.gui.comp.TextView.new(_(
        "gui_settings_tab_general_autoUpdateInterval_description"))
    autoUpdate_Layout:addItem(checkBox_autoUpdate)
    autoUpdate_Layout:addItem(textInputField_autoUpdateInterval)
    autoUpdate_Layout:addItem(textView_autoUpdateInterval)
    generalLabelLayout:addItem(header_autoUpdate)
    generalInputLayout:addItem(autoUpdate_Layout)

    generalSettingsLayout:addItem(generalLabelLayout)
    generalSettingsLayout:addItem(generalInputLayout)

    -- TRANSPORT TYPE SETTINGS
    local transportTypeSettingsLayout = api.gui.layout.BoxLayout.new("HORIZONTAL")
    local transportTypeSettingsWrapper = api.gui.comp.Component.new("transportTypeSettingsWrapper")
    transportTypeSettingsWrapper:setLayout(transportTypeSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new(_("gui_settings_tab_transportType")), transportTypeSettingsWrapper)

    local transportTypeLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local transportTypeInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    -- Settings for the transport types, like road passenger, road cargo, etc.
    local description_RoadPassenger = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_roadPassenger_title"))
    local textInputField_RoadPassenger = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_roadPassenger_description"))
    textInputField_RoadPassenger:setText(State.getTransportType('roadPassenger'), false)
    textInputField_RoadPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_roadPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_RoadPassenger)
    transportTypeInputLayout:addItem(textInputField_RoadPassenger)

    local description_TramPassenger = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_tramPassenger_title"))
    local textInputField_TramPassenger = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_tramPassenger_description"))
    textInputField_TramPassenger:setText(State.getTransportType('tramPassenger'), false)
    textInputField_TramPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_tramPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_TramPassenger)
    transportTypeInputLayout:addItem(textInputField_TramPassenger)

    local description_TrainPassenger = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_trainPassenger_title"))
    local textInputField_TrainPassenger = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_trainPassenger_description"))
    textInputField_TrainPassenger:setText(State.getTransportType('trainPassenger'), false)
    textInputField_TrainPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_trainPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_TrainPassenger)
    transportTypeInputLayout:addItem(textInputField_TrainPassenger)

    local description_WaterPassenger = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_waterPassenger_title"))
    local textInputField_WaterPassenger = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_waterPassenger_description"))
    textInputField_WaterPassenger:setText(State.getTransportType('waterPassenger'), false)
    textInputField_WaterPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_waterPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_WaterPassenger)
    transportTypeInputLayout:addItem(textInputField_WaterPassenger)

    local description_AirPassenger = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_airPassenger_title"))
    local textInputField_AirPassenger = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_airPassenger_description"))
    textInputField_AirPassenger:setText(State.getTransportType('airPassenger'), false)
    textInputField_AirPassenger:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_airPassenger", text)
    end)
    transportTypeLabelLayout:addItem(description_AirPassenger)
    transportTypeInputLayout:addItem(textInputField_AirPassenger)

    local description_RoadCargo = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_roadCargo_title"))
    local textInputField_RoadCargo = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_roadCargo_description"))
    textInputField_RoadCargo:setText(State.getTransportType('roadCargo'), false)
    textInputField_RoadCargo:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_roadCargo", text)
    end)
    transportTypeLabelLayout:addItem(description_RoadCargo)
    transportTypeInputLayout:addItem(textInputField_RoadCargo)

    local description_TrainCargo = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_trainCargo_title"))
    local textInputField_TrainCargo = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_trainCargo_description"))
    textInputField_TrainCargo:setText(State.getTransportType('trainCargo'), false)
    textInputField_TrainCargo:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_trainCargo", text)
    end)
    transportTypeLabelLayout:addItem(description_TrainCargo)
    transportTypeInputLayout:addItem(textInputField_TrainCargo)

    local description_WaterCargo = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_waterCargo_title"))
    local textInputField_WaterCargo = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_waterCargo_description"))
    textInputField_WaterCargo:setText(State.getTransportType('waterCargo'), false)
    textInputField_WaterCargo:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_waterCargo", text)
    end)
    transportTypeLabelLayout:addItem(description_WaterCargo)
    transportTypeInputLayout:addItem(textInputField_WaterCargo)

    local description_AirCargo = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_airCargo_title"))
    local textInputField_AirCargo = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_airCargo_description"))
    textInputField_AirCargo:setText(State.getTransportType('airCargo'), false)
    textInputField_AirCargo:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "transportType_airCargo", text)
    end)
    transportTypeLabelLayout:addItem(description_AirCargo)
    transportTypeInputLayout:addItem(textInputField_AirCargo)

    local description_Unknown = api.gui.comp.TextView.new(_("gui_settings_tab_transportType_unknown_title"))
    local textInputField_Unknown = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_transportType_unknown_description"))
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
    tabWidget:addTab(api.gui.comp.TextView.new(_("gui_settings_tab_lineType")), lineTypeSettingsWrapper)

    local lineTypeLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local lineTypeInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    -- Settings for the line types, like local line, intercity line, etc.
    local description_LocalLine = api.gui.comp.TextView.new(_("gui_settings_tab_lineType_local_title"))
    description_LocalLine:setTooltip(_("gui_settings_tab_lineType_local_tooltip"))
    local textInputField_LocalLine = api.gui.comp.TextInputField.new(_("gui_settings_tab_lineType_local_description"))
    textInputField_LocalLine:setText(State.getLineType('localLineAddon'), false)
    textInputField_LocalLine:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "lineType_localLineAddon", text)
    end)
    lineTypeLabelLayout:addItem(description_LocalLine)
    lineTypeInputLayout:addItem(textInputField_LocalLine)

    local description_IntercityLine = api.gui.comp.TextView.new(_("gui_settings_tab_lineType_intercity_title"))
    description_IntercityLine:setTooltip(_("gui_settings_tab_lineType_intercity_tooltip"))
    local textInputField_IntercityLine = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_lineType_intercity_description"))
    textInputField_IntercityLine:setText(State.getLineType('intercityLineAddon'), false)
    textInputField_IntercityLine:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "lineType_intercityLineAddon", text)
    end)
    lineTypeLabelLayout:addItem(description_IntercityLine)
    lineTypeInputLayout:addItem(textInputField_IntercityLine)

    local description_RegionalLine = api.gui.comp.TextView.new(_("gui_settings_tab_lineType_regional_title"))
    description_RegionalLine:setTooltip(_("gui_settings_tab_lineType_regional_tooltip"))
    local textInputField_RegionalLine = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_lineType_regional_description"))
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
    tabWidget:addTab(api.gui.comp.TextView.new(_("gui_settings_tab_cargoType")), cargoTypeSettingsWrapper)

    local cargoTypeLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local cargoTypeInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    -- Settings for the cargo types, like logs, passengers, etc.
    local description_CargoTypeSeparator = api.gui.comp.TextView.new(_("gui_settings_tab_cargoType_separator_title"))
    description_CargoTypeSeparator:setTooltip(_("gui_settings_tab_cargoType_separator_tooltip"))
    local textInputField_CargoTypeSeparator = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_cargoType_separator_description"))
    textInputField_CargoTypeSeparator:setText(State.getCargoTypeSeparator(), false)
    textInputField_CargoTypeSeparator:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "cargoType_separator", text)
    end)
    cargoTypeLabelLayout:addItem(description_CargoTypeSeparator)
    cargoTypeInputLayout:addItem(textInputField_CargoTypeSeparator)

    local description_CargoTypeShowType = api.gui.comp.TextView.new(_("gui_settings_tab_cargoType_showType_title"))
    local combobox_CargoTypeShowType = api.gui.comp.ComboBox.new()
    combobox_CargoTypeShowType:addItem(_("gui_settings_tab_cargoType_showType_item_full"))
    combobox_CargoTypeShowType:addItem(_("gui_settings_tab_cargoType_showType_item_short"))
    combobox_CargoTypeShowType:setSelected(State.getCargoTypeShowType(), false)
    combobox_CargoTypeShowType:onIndexChanged(function(index)
        ALNHelper.sendScriptCommand("settings_gui", "cargoType_showType", index)
    end)
    cargoTypeLabelLayout:addItem(description_CargoTypeShowType)
    cargoTypeInputLayout:addItem(combobox_CargoTypeShowType)

    cargoTypeSettingsLayout:addItem(cargoTypeLabelLayout)
    cargoTypeSettingsLayout:addItem(cargoTypeInputLayout)


    -- TOWN NAME SETTINGS
    local townNameSettingsLayout = api.gui.layout.BoxLayout.new("HORIZONTAL")
    local townNameSettingsWrapper = api.gui.comp.Component.new("townNameSettingsWrapper")
    townNameSettingsWrapper:setLayout(townNameSettingsLayout)
    tabWidget:addTab(api.gui.comp.TextView.new(_("gui_settings_tab_townName")), townNameSettingsWrapper)

    local townNameLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local townNameInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    local description_TownNameShowType = api.gui.comp.TextView.new(_("gui_settings_tab_townName_showType_title"))
    local combobox_TownNameShowType = api.gui.comp.ComboBox.new()
    combobox_TownNameShowType:addItem(_("gui_settings_tab_townName_showType_item_full"))
    combobox_TownNameShowType:addItem(_("gui_settings_tab_townName_showType_item_short"))
    combobox_TownNameShowType:setSelected(State.getTownNameShowType(), false)
    combobox_TownNameShowType:onIndexChanged(function(index)
        ALNHelper.sendScriptCommand("settings_gui", "townName_showType", index)
    end)

    local description_TownNameSeparator = api.gui.comp.TextView.new(_("gui_settings_tab_townName_separator_title"))
    description_TownNameSeparator:setTooltip(_("gui_settings_tab_townName_separator_tooltip"))
    local textInputField_TownNameSeparator = api.gui.comp.TextInputField.new(_(
        "gui_settings_tab_townName_separator_description"))
    textInputField_TownNameSeparator:setText(State.getTownNameSeparator(), false)
    textInputField_TownNameSeparator:onChange(function(text)
        ALNHelper.sendScriptCommand("settings_gui", "townName_separator", text)
    end)
    townNameLabelLayout:addItem(description_TownNameSeparator)
    townNameInputLayout:addItem(textInputField_TownNameSeparator)

    townNameLabelLayout:addItem(description_TownNameShowType)
    townNameInputLayout:addItem(combobox_TownNameShowType)
    townNameSettingsLayout:addItem(townNameLabelLayout)
    townNameSettingsLayout:addItem(townNameInputLayout)

    -- DEBUG
    local debugLayout = api.gui.layout.BoxLayout.new("HORIZONTAL")
    local debugWrapper = api.gui.comp.Component.new("debugWrapper")
    debugWrapper:setLayout(debugLayout)
    tabWidget:addTab(api.gui.comp.TextView.new(_("gui_settings_tab_debug")), debugWrapper)

    local debugLabelLayout = api.gui.layout.BoxLayout.new("VERTICAL")
    local debugInputLayout = api.gui.layout.BoxLayout.new("VERTICAL")

    local description_LogLevel = api.gui.comp.TextView.new(_("gui_settings_tab_debug_logLevel_title"))
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
    debugLabelLayout:addItem(description_LogLevel)
    debugInputLayout:addItem(combobox_LogLevel)

    debugLayout:addItem(debugLabelLayout)
    debugLayout:addItem(debugInputLayout)

    local button_ResetSettings = api.gui.comp.Button.new(
        api.gui.comp.TextView.new(_("gui_settings_tab_debug_reset_title")), true)
    button_ResetSettings:onClick(function()
        -- Tell the game-script to reset saved settings
        ALNHelper.sendScriptCommand("settings_gui", "debug_reset", "")

        -- Also reset the GUI-side state and update all visible controls so the
        -- player sees the changes immediately without restarting the window.
        -- State.resetSettings() returns the defaults via the singleton.
        State.resetSettings()

        -- General
        if checkBox_enableLineManager then checkBox_enableLineManager:setSelected(State.getEnabled(), false) end
        if textInputField_tagPrefix then textInputField_tagPrefix:setText(State.getTagPrefix(), false) end
        if textInputField_activeConvention then textInputField_activeConvention:setText(State.getActiveConvention(),
                false) end
        if checkBox_autoUpdate then checkBox_autoUpdate:setSelected(State.getAutoUpdateEnabled(), false) end
        if textInputField_autoUpdateInterval then textInputField_autoUpdateInterval:setText(
            tostring(State.getAutoUpdateInterval()), false) end

        -- Transport type fields
        if textInputField_RoadPassenger then textInputField_RoadPassenger:setText(
            State.getTransportType('roadPassenger') or '', false) end
        if textInputField_TramPassenger then textInputField_TramPassenger:setText(
            State.getTransportType('tramPassenger') or '', false) end
        if textInputField_TrainPassenger then textInputField_TrainPassenger:setText(
            State.getTransportType('trainPassenger') or '', false) end
        if textInputField_WaterPassenger then textInputField_WaterPassenger:setText(
            State.getTransportType('waterPassenger') or '', false) end
        if textInputField_AirPassenger then textInputField_AirPassenger:setText(
            State.getTransportType('airPassenger') or '', false) end
        if textInputField_RoadCargo then textInputField_RoadCargo:setText(State.getTransportType('roadCargo') or '',
                false) end
        if textInputField_TrainCargo then textInputField_TrainCargo:setText(State.getTransportType('trainCargo') or '',
                false) end
        if textInputField_WaterCargo then textInputField_WaterCargo:setText(State.getTransportType('waterCargo') or '',
                false) end
        if textInputField_AirCargo then textInputField_AirCargo:setText(State.getTransportType('airCargo') or '', false) end
        if textInputField_Unknown then textInputField_Unknown:setText(State.getTransportType('unknown') or '', false) end

        -- Line type fields
        if textInputField_LocalLine then textInputField_LocalLine:setText(State.getLineType('localLineAddon') or '',
                false) end
        if textInputField_IntercityLine then textInputField_IntercityLine:setText(
            State.getLineType('intercityLineAddon') or '', false) end
        if textInputField_RegionalLine then textInputField_RegionalLine:setText(
            State.getLineType('regionalLineAddon') or '', false) end

        -- Cargo and town settings
        if textInputField_CargoTypeSeparator then textInputField_CargoTypeSeparator:setText(
            State.getCargoTypeSeparator(), false) end
        if combobox_CargoTypeShowType then combobox_CargoTypeShowType:setSelected(State.getCargoTypeShowType(), false) end
        if combobox_TownNameShowType then combobox_TownNameShowType:setSelected(State.getTownNameShowType(), false) end
        if textInputField_TownNameSeparator then textInputField_TownNameSeparator:setText(State.getTownNameSeparator(),
                false) end

        -- Debug log level
        if combobox_LogLevel then combobox_LogLevel:setSelected(log.getLevel() - 1, false) end
    end)

    debugLayout:addItem(button_ResetSettings)


    -- WINDOW CREATION
    gui_settingsWindow = api.gui.comp.Window.new(_("gui_settings_title"), tabWidget)
    tabWidget:setCurrentTab(0, false)
    gui_settingsWindow:setTitle(_("gui_settings_title"))
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
        log.debug("Auto Line Namer enabled: " .. tostring(State.getEnabled()))
    elseif name == "autoUpdate" then
        State.setAutoUpdateEnabled(param)
        log.debug("Auto Update enabled: " .. tostring(State.getAutoUpdateEnabled()))
    elseif name == "autoUpdateInterval" then
        State.setAutoUpdateInterval(tonumber(param))
        log.debug("Auto Update interval set to: " .. param)
    elseif name == "tagPrefix" then
        State.setTagPrefix(param)
        log.debug("Tag prefix set to: " .. param)
    elseif name == "activeConvention" then
        State.setActiveConvention(param)
        log.debug("Active convention set to: " .. param)
    elseif name == "linemanager_reset" then
        State.resetSettings()
        log.debug("Settings reset to default.")
    elseif name == "transportType_roadPassenger" then
        State.setTransportType('roadPassenger', param)
        log.debug("Road Passenger naming set to: " .. param)
    elseif name == "transportType_roadCargo" then
        State.setTransportType('roadCargo', param)
        log.debug("Road Cargo naming set to: " .. param)
    elseif name == "transportType_tramPassenger" then
        State.setTransportType('tramPassenger', param)
        log.debug("Tram Passenger naming set to: " .. param)
    elseif name == "transportType_trainPassenger" then
        State.setTransportType('trainPassenger', param)
        log.debug("Train Passenger naming set to: " .. param)
    elseif name == "transportType_trainCargo" then
        State.setTransportType('trainCargo', param)
        log.debug("Train Cargo naming set to: " .. param)
    elseif name == "transportType_waterPassenger" then
        State.setTransportType('waterPassenger', param)
        log.debug("Water Passenger naming set to: " .. param)
    elseif name == "transportType_waterCargo" then
        State.setTransportType('waterCargo', param)
        log.debug("Water Cargo naming set to: " .. param)
    elseif name == "transportType_airPassenger" then
        State.setTransportType('airPassenger', param)
        log.debug("Air Passenger naming set to: " .. param)
    elseif name == "transportType_airCargo" then
        State.setTransportType('airCargo', param)
        log.debug("Air Cargo naming set to: " .. param)
    elseif name == "transportType_unknown" then
        State.setTransportType('unknown', param)
        log.debug("Unknown naming set to: " .. param)
    elseif name == "lineType_localLineAddon" then
        State.setLineType('localLineAddon', param)
        log.debug("Local Line naming set to: " .. param)
    elseif name == "lineType_intercityLineAddon" then
        State.setLineType('intercityLineAddon', param)
        log.debug("Intercity Line naming set to: " .. param)
    elseif name == "lineType_regionalLineAddon" then
        State.setLineType('regionalLineAddon', param)
        log.debug("Regional Line naming set to: " .. param)
    elseif name == "cargoType_separator" then
        State.setCargoTypeSeparator(param)
        log.debug("Cargo Type separator set to: " .. param)
    elseif name == "cargoType_showType" then
        State.setCargoTypeShowType(param)
        log.debug("Cargo Type show type set to: " .. param)
    elseif name == "townName_showType" then
        State.setTownNameShowType(param)
        log.debug("Town Name show type set to: " .. param)
    elseif name == "townName_separator" then
        State.setTownNameSeparator(param)
        log.debug("Town Name separator set to: " .. param)
    elseif name == "debug_logLevel" then
        log.setLevel(param)
    elseif name == "debug_reset" then
        State.resetSettings()
        log.debug("Settings reset to default.")
    end
end

return GUIHelper
