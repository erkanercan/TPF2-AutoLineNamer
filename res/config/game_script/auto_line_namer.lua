local api_helper = require 'abajuradam/api_helper'
local log = require 'abajuradam/logging'

local state = {
    linanamerSettings = {
        activeConvention = "default",
        tagPrefix = "[NoAuto]",
        excludeTagged = true,
        namedLines = {},
        prefix = "^",
        enabled = true,
    },
}

-- Helper to determine line type: Local, Intercity, Regional
local function determineLineType(townList)
    if #townList == 1 then
        return "LO"
    elseif #townList == 2 then
        return "IC"
    else
        return "RE"
    end
end

-- Retrieve cargo types transported by the line, indicating "PASSENGER_ONLY" if no actual cargo
local function getCargoTypesFromLine(lineId)
    local vehicleIds = api.engine.system.transportVehicleSystem.getLineVehicles(lineId)
    local cargoTypes = {}

    for _, vehicleId in ipairs(vehicleIds) do
        local vehicleComp = api.engine.getComponent(vehicleId, api.type.ComponentType.TRANSPORT_VEHICLE)
        if vehicleComp then
            for cargoTypeId, capacity in ipairs(vehicleComp.config.capacities) do
                if capacity > 0 then
                    local cargoName = api.res.cargoTypeRep.get(cargoTypeId - 1).name
                    if cargoName then
                        if cargoName == "Passengers" then
                            cargoTypes["PASSENGER_ONLY"] = true
                        else
                            cargoTypes[cargoName] = true
                        end
                    end
                end
            end
        end
    end

    -- If the only cargo type is "PASSENGER_ONLY", return it as the indication
    if cargoTypes["PASSENGER_ONLY"] and next(cargoTypes) == "PASSENGER_ONLY" then
        log.debug("Line " .. lineId .. " carries only passengers.")
        return "PASSENGER_ONLY"
    end

    -- Return actual cargo types if any exist, or nil if there are no cargoes
    local cargoList = {}
    for cargoName, _ in pairs(cargoTypes) do
        if cargoName ~= "PASSENGER_ONLY" then
            table.insert(cargoList, cargoName)
        end
    end
    log.debug("Line " .. lineId .. " cargo types: " .. (#cargoList > 0 and table.concat(cargoList, ", ") or "None"))
    return #cargoList > 0 and table.concat(cargoList, ", ") or nil
end

-- Helper to determine transport type abbreviation with cargo/passenger differentiation
local function getTransportTypeAbbreviation(lineId)
    local lineComp = api_helper.getComponent(lineId, api.type.ComponentType.LINE)
    log.warn("Line " .. lineId .. " has no valid vehicle information.")
    if not lineComp or not lineComp.vehicleInfo then return "UNK" end

    local transportModes = lineComp.vehicleInfo.transportModes or {}
    local cargoType = getCargoTypesFromLine(lineId)       -- Check if line has cargo types

    local isPassengerOnly = cargoType == "PASSENGER_ONLY" -- Check if line is passenger only

    if transportModes[api.type.enum.TransportMode.TRUCK + 1] == 1 then
        return "RC"                             -- Road Cargo (Truck)
    elseif transportModes[api.type.enum.TransportMode.BUS + 1] == 1 then
        return "RP Bus"                         -- Road Passenger (Bus)
    elseif transportModes[api.type.enum.TransportMode.TRAM + 1] == 1 then
        return "RP Tram"                        -- Road Passenger (Tram)
    elseif transportModes[api.type.enum.TransportMode.ELECTRIC_TRAM + 1] == 1 then
        return "RP Tram"                        -- Road Passenger (Tram)
    elseif transportModes[api.type.enum.TransportMode.TRAIN + 1] == 1 then
        return isPassengerOnly and "TP" or "TC" -- Train Passenger or Train Cargo
    elseif transportModes[api.type.enum.TransportMode.ELECTRIC_TRAIN + 1] == 1 then
        return isPassengerOnly and "TP" or "TC" -- Electric Train Passenger or Cargo
    elseif transportModes[api.type.enum.TransportMode.SHIP + 1] == 1 then
        return isPassengerOnly and "WP" or "WC" -- Water Passenger (Ship) or Cargo (Ship)
    elseif transportModes[api.type.enum.TransportMode.SMALL_SHIP + 1] == 1 then
        return isPassengerOnly and "WP" or "WC" -- Small Water Passenger or Cargo
    elseif transportModes[api.type.enum.TransportMode.AIRCRAFT + 1] == 1 then
        return isPassengerOnly and "AP" or "AC" -- Air Passenger (Aircraft) or Cargo (Aircraft)
    elseif transportModes[api.type.enum.TransportMode.SMALL_AIRCRAFT + 1] == 1 then
        return isPassengerOnly and "AP" or "AC" -- Small Air Passenger or Cargo
    end

    log.debug("Line " .. lineId .. " has unknown transport type.")
    return "UNK"
end



-- Helper function to shorten a single town name to up to three letters per word
local function getTownInitials(townName)
    local initials = ""
    for word in townName:gmatch("%S+") do
        initials = initials .. word:sub(1, 3) -- Take up to the first 3 letters of each word
    end
    return initials
end

-- Generate name based on line data with shortened town names
local function generateLineName(lineData, lineCountTable)
    local lineType = determineLineType(lineData.towns)
    local transportType = getTransportTypeAbbreviation(lineData.id)
    local cargoTypes = getCargoTypesFromLine(lineData.id)
    if (cargoTypes == "PASSENGER_ONLY") then
        cargoTypes = nil
    end
    local cargoString = cargoTypes and ("(" .. cargoTypes .. "): ") or ""

    -- Shorten the first and last town names to three letters per word
    local firstTownShort = getTownInitials(lineData.firstTown)
    local lastTownShort = lineType ~= "LO" and getTownInitials(lineData.lastTown) or ""

    -- Build the base name with shortened town names
    local baseName = transportType .. " - " .. cargoString .. firstTownShort
    if lastTownShort ~= "" then
        baseName = baseName .. " - " .. lastTownShort
    end
    baseName = baseName .. " " .. lineType

    -- Handle duplicate names by adding a count
    if lineCountTable[baseName] then
        lineCountTable[baseName] = lineCountTable[baseName] + 1
        return baseName .. " #" .. lineCountTable[baseName]
    else
        lineCountTable[baseName] = 1
        log.info("Generated name for line " .. lineData.id .. ": " .. baseName)
        return baseName
    end
end

-- Check if a line name can be updated (default names are considered updatable)
local function isUpdatableName(name)
    local lowerName = string.lower(name)
    return name == "" or name:match("^%s*$") or lowerName == "r" or lowerName == "reload" or name:match("^Line %d+$") or name:match("^Linie %d+$") or name:match("^Línea %d+$") or name:match("^Ligne %d+$") or name:match("^Linea %d+$") or name:match("^Linia %d+$") or  name:match("^Linha %d+$") or name:match("^Lijn %d+$") or
        lowerName:match("^unk")
end

-- Retrieve town names by station group
local function getTownIdByStationGroup(stationGroupId)
    local stationGroup = api_helper.getComponent(stationGroupId, api.type.ComponentType.STATION_GROUP)
    if stationGroup then
        if stationGroup.stations and stationGroup.stations[1] then
            local townId = api.engine.system.stationSystem.getTown(stationGroup.stations[1])
            if townId then
                return townId
            else
                log.warn("Town ID is nil for station group: " .. stationGroupId)
            end
        else
            log.warn("No stations found in station group: " .. stationGroupId)
        end
    else
        log.warn("No station group found for ID: " .. stationGroupId)
    end
    return nil
end

-- Get line data structure for generating the name
local function getLineData(lineId)
    local data = {
        id = lineId,
        towns = {},
        firstTown = "",
        lastTown = "",
        isLocal = false,
        name = api_helper.getEntityName(lineId) or "" -- Get the current line name
    }
    local allTowns = {}
    local lineComp = api_helper.getComponent(lineId, api.type.ComponentType.LINE)
    if not lineComp then
        log.warn("Line " .. lineId .. " has no component data.")
        return nil
    end

    for _, stop in ipairs(lineComp.stops) do
        local townId = getTownIdByStationGroup(stop.stationGroup)
        if townId and not allTowns[townId] then
            table.insert(data.towns, api_helper.getEntityName(townId))
            allTowns[townId] = true
        end
    end

    data.firstTown = data.towns[1] or ""
    data.lastTown = data.towns[#data.towns] or ""
    data.isLocal = (#data.towns == 1)

    log.debug("Retrieved data for line " .. lineId)
    return data
end


-- Rename lines based on generated name
local function renameLines()
    local lineIds = api.engine.system.lineSystem.getLinesForPlayer(api.engine.util.getPlayer())
    local lineCountTable = {}

    for _, lineId in ipairs(lineIds) do
        local lineData = getLineData(lineId)

        -- Skip renaming if the line has no stops or no associated vehicles
        if not lineData or #lineData.towns == 0 then
            -- Line has no stops, so skip renaming
            log.info("Skipping line " .. lineId .. " (no stops)")
            goto continue
        end

        local newName = generateLineName(lineData, lineCountTable)

        -- Check if the line name is updatable or has the default prefix
        if isUpdatableName(lineData.name) or lineData.name:sub(1, 1) == state.linanamerSettings.prefix then
            api.cmd.sendCommand(api.cmd.make.setName(lineId, newName))
            log.info("Renamed line " .. lineId .. " to: " .. newName)
        end

        ::continue::
    end
end

function data()
    return {
        update = renameLines,
    }
end
