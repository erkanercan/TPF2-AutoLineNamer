-- This module manages the state for the line naming settings in the application.
-- It initializes with a default state and provides functions to get and set the settings.

--- I want user to be able to set convention with some predefined values.
--- For example user can use {transportType}, {lineType}, {lineNumber} and {cargoTypes} in the convention.
--- User can set them by writing them in the convention string.
--- For example, if user wants to use transport type, line type and line number in the convention, user can write "{transportType} - {lineType} - {lineNumber}".
--- Our settable values are:
--- {transportType} -> Transport type of the line. It can be like: "RP", "RC", "TP", "TC", "WP", "WC", "AP", "AC", "UNK", or user can set their own values.
--- {lineType} -> Line type of the line. It can be like: "LO", "IC", "RE", or user can set their own values.
--- {cargoTypes} -> Cargo types of the line. It can be like: "Logs", "Passengers" etc. User can also select how to show them in the convention.
--- {townNames} -> Town names of the line. It can be like: "Town1 - Town2" etc. User can also select how to show them in the convention.
--- {lineNumber} -> Line number of the line. It is a number we use to identify the line when same line name is used in different lines.

local log = require 'abajuradam/logging'

local State = {
    instance = nil,             -- Single instance
    autoLineNamerSettings = nil -- Will be initialized in init()
}

-- Add initialization function
function State.init()
    if not State.instance then
        State.instance = {
            autoLineNamerSettings = {
                activeConvention = "{transportType} - {townNames} - {lineType} - {lineNumber} - {cargoTypes}",
                tagPrefix = "[NoAuto]",
                namedLines = {},
                prefix = "^",
                enabled = true,
                transportType = {
                    roadPassenger = "RP",  -- road passenger
                    roadCargo = "RC",      -- road cargo
                    tramPassenger = "TP",  -- tram passenger
                    trainPassenger = "TP", -- train passenger
                    trainCargo = "TC",     -- train cargo
                    waterPassenger = "WP", -- water passenger
                    waterCargo = "WC",     -- water cargo
                    airPassenger = "AP",   -- air passenger
                    airCargo = "AC",       -- air cargo
                    unknown = "UNK",       -- unknown
                },
                lineType = {
                    localLineAddon = "LO",     -- local line
                    intercityLineAddon = "IC", -- intercity line
                    regionalLineAddon = "RE",  -- regional line
                },
                cargoType = {
                    wrapperMap = {
                        paranthesis = 0,
                        squareBracket = 1,
                        none = 2,
                    },
                    showTypeMap = {
                        full = 0,
                        short = 1,
                        none = 2,
                    },
                    wrapper = 0,     -- paranthesis, squareBracket, or none
                    separator = ",", -- separator between cargo types
                    showType = 0,    -- full, short, or none
                },
                lineNumber = {
                    separator = "-", -- separator between line number and line name. it can be either "-", " ", or "#"
                    show = true,     -- show line number
                },
            },
        }
    end
    log.debug("State initialized with enabled = " .. tostring(State.instance.autoLineNamerSettings.enabled))
    return State.instance
end

-- General Settings Getters
function State.getSettings()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings
end

function State.getEnabled()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.enabled
end

function State.getActiveConvention()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.activeConvention
end

function State.getTagPrefix()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.tagPrefix
end

-- Transport Type Getters
function State.getTransportTypeSettings()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.transportType
end

function State.getTransportType(key)
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.transportType[key]
end

-- Line Type Getters
function State.getLineTypeSettings()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.lineType
end

function State.getLineType(key)
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.lineType[key]
end

-- Cargo Type Getters
function State.getCargoTypeSettings()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.cargoType
end

function State.getCargoTypeWrapper()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.cargoType.wrapper
end

function State.getCargoTypeSeparator()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.cargoType.separator
end

function State.getCargoTypeShowType()
    local instance = State.instance or State.init()
    return instance.autoLineNamerSettings.cargoType.showType
end

-- General Settings Setters
function State.setEnabled(enabled)
    if type(enabled) ~= "boolean" then
        log.error("Invalid enabled value: " .. tostring(enabled))
        return
    end
    local instance = State.instance or State.init() -- Get single instance
    instance.autoLineNamerSettings.enabled = enabled
end

function State.setActiveConvention(convention)
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings.activeConvention = convention
end

function State.setTagPrefix(prefix)
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings.tagPrefix = prefix
end

-- Transport Type Setters
function State.setTransportType(key, value)
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings.transportType[key] = value
end

-- Line Type Setters
function State.setLineType(key, value)
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings.lineType[key] = value
end

-- Cargo Type Setters
function State.setCargoType(key, value)
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings.cargoType[key] = value
end

function State.setCargoTypeWrapper(wrapper)
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings.cargoType.wrapper = wrapper
end

function State.setCargoTypeSeparator(separator)
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings.cargoType.separator = separator
end

function State.setCargoTypeShowType(showType)
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings.cargoType.showType = showType
end

-- Reset function
function State.resetSettings()
    State.autoLineNamerSettings = {
        activeConvention = "{transportType} - {townNames} - {lineType} - {lineNumber} - {cargoTypes}",
        tagPrefix = "[NoAuto]",
        namedLines = {},
        prefix = "^",
        enabled = true,
        transportType = {
            roadPassenger = "RP",
            roadCargo = "RC",
            tramPassenger = "TP",
            trainPassenger = "TP",
            trainCargo = "TC",
            waterPassenger = "WP",
            waterCargo = "WC",
            airPassenger = "AP",
            airCargo = "AC",
            unknown = "UNK",
        },
        lineType = {
            localLineAddon = "LO",
            intercityLineAddon = "IC",
            regionalLineAddon = "RE",
        },
        cargoType = {
            wrapperMap = {
                paranthesis = 0,
                squareBracket = 1,
                none = 2,
            },
            showTypeMap = {
                full = 0,
                short = 1,
                none = 2,
            },
            wrapper = 0,
            separator = ",",
            showType = 0,
        }
    }
    return State.autoLineNamerSettings
end

return State
