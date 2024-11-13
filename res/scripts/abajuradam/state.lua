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



--- Default settings for the line naming.
local initialState = {
    linanamerSettings = {
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

local state = initialState

--- Retrieves the current settings.
--- @return table settings The current settings.
function state.getSettings()
    return state
end

--- Sets the settings.
--- @param settings table The settings to set.
--- @return nil
function state.setSettings(settings)
    state = settings
end

return state
