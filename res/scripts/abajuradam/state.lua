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
                activeConvention = "{transportType} {cargoTypes}-{townNames}-{lineType}-{lineNumber}",
                tagPrefix = "Cst",
                enabled = true,
                autoUpdate = {
                    enabled = true,
                    interval = 1,
                },
                transportType = {
                    roadPassenger = "Bus",  -- road passenger
                    roadCargo = "RC",       -- road cargo
                    tramPassenger = "Tram", -- tram passenger
                    trainPassenger = "TP",  -- train passenger
                    trainCargo = "TC",      -- train cargo
                    waterPassenger = "WP",  -- water passenger
                    waterCargo = "WC",      -- water cargo
                    airPassenger = "AP",    -- air passenger
                    airCargo = "AC",        -- air cargo
                    unknown = "UNK",        -- unknown
                },
                lineType = {
                    localLineAddon = "LO",     -- local line
                    intercityLineAddon = "IC", -- intercity line
                    regionalLineAddon = "RE",  -- regional line
                },
                cargoType = {
                    showTypeMap = {
                        full = 0,
                        short = 1,
                    },
                    separator = ",", -- separator between cargo types
                    showType = 0,    -- full, short
                },
                townName = {
                    showTypeMap = {
                        full = 0,
                        short = 1,
                    },
                    showType = 1, -- full = 0, short = 1 (3-letter abbreviation)
                    separator = "-",
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
    if instance and instance.autoLineNamerSettings then
        return instance.autoLineNamerSettings
    end
    return nil
end

function State.getAutoUpdateEnabled()
    local instance = State.instance or State.init()
    local settings = instance and instance.autoLineNamerSettings
    if settings and settings.autoUpdate then
        return settings.autoUpdate.enabled
    end
    return false
end

function State.getAutoUpdateInterval()
    local instance = State.instance or State.init()
    local settings = instance and instance.autoLineNamerSettings
    if settings and settings.autoUpdate then
        return settings.autoUpdate.interval
    end
    return 1
end

function State.getEnabled()
    local instance = State.instance or State.init()
    local settings = instance and instance.autoLineNamerSettings
    if settings and settings.enabled ~= nil then
        return settings.enabled
    end
    return true
end

function State.getActiveConvention()
    local instance = State.instance or State.init()
    local settings = instance and instance.autoLineNamerSettings
    if settings and settings.activeConvention then
        return settings.activeConvention
    end
    return "{transportType} {cargoTypes}-{townNames}-{lineType}-{lineNumber}"
end

function State.getTagPrefix()
    local instance = State.instance or State.init()
    local settings = instance and instance.autoLineNamerSettings
    if settings and settings.tagPrefix then
        return settings.tagPrefix
    end
    return "Cst"
end

-- Transport Type Getters
function State.getTransportTypeSettings()
    local instance = State.instance or State.init()
    local settings = instance and instance.autoLineNamerSettings
    return (settings and settings.transportType) or {}
end

function State.getTransportType(key)
    local instance = State.instance or State.init()
    local tt = (instance and instance.autoLineNamerSettings and instance.autoLineNamerSettings.transportType) or {}
    return tt[key]
end

-- Line Type Getters
function State.getLineTypeSettings()
    local instance = State.instance or State.init()
    local settings = instance and instance.autoLineNamerSettings
    return (settings and settings.lineType) or {}
end

function State.getLineType(key)
    local instance = State.instance or State.init()
    local lt = (instance and instance.autoLineNamerSettings and instance.autoLineNamerSettings.lineType) or {}
    return lt[key]
end

-- Cargo Type Getters
function State.getCargoTypeSettings()
    local instance = State.instance or State.init()
    local settings = instance and instance.autoLineNamerSettings
    return (settings and settings.cargoType) or {}
end

function State.getCargoTypeSeparator()
    local instance = State.instance or State.init()
    local ct = (instance and instance.autoLineNamerSettings and instance.autoLineNamerSettings.cargoType) or {}
    return ct.separator or ","
end

function State.getCargoTypeShowType()
    local instance = State.instance or State.init()
    local ct = (instance and instance.autoLineNamerSettings and instance.autoLineNamerSettings.cargoType) or {}
    return ct.showType or 0
end

function State.getTownNameShowType()
    local instance = State.instance or State.init()
    local tn = (instance and instance.autoLineNamerSettings and instance.autoLineNamerSettings.townName) or {}
    return tn.showType or 1
end

function State.getTownNameSeparator()
    local instance = State.instance or State.init()
    local tn = (instance and instance.autoLineNamerSettings and instance.autoLineNamerSettings.townName) or {}
    return tn.separator or "-"
end

-- General Settings Setters
function State.setAutoUpdateEnabled(enabled)
    if type(enabled) ~= "boolean" then
        log.error("Invalid enabled value: " .. tostring(enabled))
        return
    end
    local instance = State.instance or State.init() -- Get single instance
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.autoUpdate = instance.autoLineNamerSettings.autoUpdate or {}
    instance.autoLineNamerSettings.autoUpdate.enabled = enabled
end

function State.setAutoUpdateInterval(interval)
    if type(interval) ~= "number" then
        log.error("Invalid interval value: " .. tostring(interval))
        return
    end
    local instance = State.instance or State.init() -- Get single instance
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.autoUpdate = instance.autoLineNamerSettings.autoUpdate or {}
    instance.autoLineNamerSettings.autoUpdate.interval = interval
end

function State.setEnabled(enabled)
    if type(enabled) ~= "boolean" then
        log.error("Invalid enabled value: " .. tostring(enabled))
        return
    end
    local instance = State.instance or State.init() -- Get single instance
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.enabled = enabled
end

function State.setActiveConvention(convention)
    if type(convention) ~= "string" then
        log.error("Invalid convention value: " .. tostring(convention))
        return
    end
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.activeConvention = convention
end

function State.setTagPrefix(prefix)
    if type(prefix) ~= "string" then
        log.error("Invalid prefix value: " .. tostring(prefix))
        return
    end
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.tagPrefix = prefix
end

-- Transport Type Setters
function State.setTransportType(key, value)
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.transportType = instance.autoLineNamerSettings.transportType or {}
    instance.autoLineNamerSettings.transportType[key] = value
end

-- Line Type Setters
function State.setLineType(key, value)
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.lineType = instance.autoLineNamerSettings.lineType or {}
    instance.autoLineNamerSettings.lineType[key] = value
end

-- Cargo Type Setters
function State.setCargoType(key, value)
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.cargoType = instance.autoLineNamerSettings.cargoType or {}
    instance.autoLineNamerSettings.cargoType[key] = value
end

function State.setCargoTypeSeparator(separator)
    if type(separator) ~= "string" then
        log.error("Invalid separator value: " .. tostring(separator))
        return
    end
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.cargoType = instance.autoLineNamerSettings.cargoType or {}
    instance.autoLineNamerSettings.cargoType.separator = separator
end

function State.setCargoTypeShowType(showType)
    if type(showType) ~= "number" then
        log.error("Invalid showType value: " .. tostring(showType))
        return
    end
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.cargoType = instance.autoLineNamerSettings.cargoType or {}
    instance.autoLineNamerSettings.cargoType.showType = showType
end

function State.setTownName(key, value)
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.townName = instance.autoLineNamerSettings.townName or {}
    instance.autoLineNamerSettings.townName[key] = value
end

function State.setTownNameShowType(showType)
    if type(showType) ~= "number" then
        log.error("Invalid showType value: " .. tostring(showType))
        return
    end
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.townName = instance.autoLineNamerSettings.townName or {}
    instance.autoLineNamerSettings.townName.showType = showType
end

function State.setTownNameSeparator(separator)
    if type(separator) ~= "string" then
        log.error("Invalid separator value: " .. tostring(separator))
        return
    end
    local instance = State.instance or State.init()
    if not instance then return end
    instance.autoLineNamerSettings = instance.autoLineNamerSettings or {}
    instance.autoLineNamerSettings.townName = instance.autoLineNamerSettings.townName or {}
    instance.autoLineNamerSettings.townName.separator = separator
end

-- Reset function
function State.resetSettings()
    local instance = State.instance or State.init()
    instance.autoLineNamerSettings = {
        activeConvention = "{transportType} {cargoTypes}-{townNames}-{lineType}-{lineNumber}",
        tagPrefix = "Cst",
        enabled = true,
        autoUpdate = {
            enabled = true,
            interval = 1,
        },
        transportType = {
            roadPassenger = "Bus",
            roadCargo = "RC",
            tramPassenger = "Tram",
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
            showTypeMap = {
                full = 0,
                short = 1,
            },
            separator = ",",
            showType = 0,
        },
        townName = {
            showTypeMap = {
                full = 0,
                short = 1,
            },
            showType = 1, -- full = 0, short = 1 (3-letter abbreviation)
            separator = "-",
        },
    }
    if instance and instance.autoLineNamerSettings then
        return instance.autoLineNamerSettings
    end
    return nil
end

return State
