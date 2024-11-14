local State = require 'abajuradam/state'

--- Helper functions for the Auto Line Namer mod.
local ALNHelper = {}

---sends a script command for "linemanager.lua"
function ALNHelper.sendScriptCommand(id, name, param)
    api.cmd.sendCommand(api.cmd.make.sendScriptEvent("auto_line_namer.lua", id, name, param))
end

-- Check if a line name can be updated (default names are considered updatable)
function ALNHelper.isUpdatableName(name)
    local lowerName = string.lower(name)
    local noUpdatePrefix = State.getTagPrefix()

    return name == ""
        or name:match("^%s*$")
        or lowerName == "r"
        or lowerName == "reload"
        or name:match("^Line %d+$")
        or lowerName:match("^unk")
        -- or name does not start with the prefix
        or not name:match("^" .. noUpdatePrefix)
end

--- Retrieves all towns from a line.
--- @param lineComp table The line component.
--- @return table towns A table of town names.
local function getAllTownInfosFromLine(lineComp)
    local towns = {}
    local allTowns = {}
    for _, stop in ipairs(lineComp.stops) do
        local stationGroup = api.engine.getComponent(stop.stationGroup, api.type.ComponentType.STATION_GROUP)
        if stationGroup and stationGroup.stations and stationGroup.stations[1] then
            local townId = api.engine.system.stationSystem.getTown(stationGroup.stations[1])
            if townId and not allTowns[townId] then
                local townName = api.engine.getComponent(townId, api.type.ComponentType.NAME).name
                table.insert(towns, townName)
                allTowns[townId] = true
            end
        end
    end
    return towns
end

--- Retrieves all vehicles, their cargo types and their capacities from a line.
--- @param lineId number The ID of the line to retrieve vehicles from.
--- @return table vehicles A table of vehicles associated with the line.
local function getAllVehiclesInfosFromLine(lineId)
    local vehicles = {}
    local vehicleIds = api.engine.system.transportVehicleSystem.getLineVehicles(lineId)
    for _, vehicleId in ipairs(vehicleIds) do
        local vehicleComp = api.engine.getComponent(vehicleId, api.type.ComponentType.TRANSPORT_VEHICLE)
        if vehicleComp then
            local vehicle = {
                id = vehicleId,
                cargoNames = {},
                cargoType = ""
            }
            for cargoTypeId, capacity in ipairs(vehicleComp.config.capacities) do
                if capacity > 0 then
                    local cargoType = api.res.cargoTypeRep.get(cargoTypeId - 1)
                    if (cargoType) then
                        table.insert(vehicle.cargoNames, cargoType.name)
                        if cargoType.name ~= "Passengers" then
                            vehicle.cargoType = "CARGO"
                        else
                            vehicle.cargoType = "PASSENGER"
                        end
                    end
                end
            end
            table.insert(vehicles, vehicle)
        end
    end
    return vehicles
end

--- Retrieves the initials of a town name.
--- @param townName string The name of the town.
--- @return string townInitials The initials of the town name.
local function getTownNameInitials(townName)
    local townInitials = ""
    for word in townName:gmatch("%S+") do
        townInitials = townInitials .. word:sub(1, 3) -- Take up to the first 3 letters of each word
    end
    return townInitials
end

function ALNHelper.getLineName(lineId)
    return api.engine.getComponent(lineId, api.type.ComponentType.NAME).name
end

--- Retrieves the data of a line.
--- @param lineId number The ID of the line to retrieve data from.
--- @return table lineData The data of the line.
local function getLineData(lineId)
    local lineData = {
        id = lineId,
        name = "",
        towns = {},
        vehicles = {},
        vehicleInfo = {}
    }
    local lineComp = api.engine.getComponent(lineId, api.type.ComponentType.LINE)
    if not lineComp then
        return nil
    end
    local isLineExists = api.engine.entityExists(lineId)
    if not isLineExists then
        return nil
    end
    lineData.name = ALNHelper.getLineName(lineId)
    lineData.towns = getAllTownInfosFromLine(lineComp)
    lineData.vehicles = getAllVehiclesInfosFromLine(lineId)
    lineData.vehicleInfo = lineComp.vehicleInfo

    return lineData
end

--- Retrieves the cargo type string from the convention.
--- @param cargoTypeName string The name of the cargo type.
--- @return string cargoTypeString The cargo type string.
local function getCargoTypeStringFromConvention(cargoTypeName)
    -- This function will prepare the cargo type string according to the convention.
    -- We can get the convention info from the state.
    -- First get the current settings from the state.
    local cargoTypeString = ""
    -- Get the show type from the settings. Show type can be full, short, or none.
    --- @type 0|1|2
    local showType = State.getCargoTypeShowType()
    -- If show type is full then return the cargo type name.
    if showType == 0 then
        cargoTypeString = cargoTypeName
    end
    -- If show type is short then return the shortened name of the cargo type.
    if showType == 1 then
        -- We already have the full name of the cargo type. We can get the short from the full name.
        -- But keep in mind, some cargo types can have multiple words in their names.
        -- We can get the short by getting the first 3 letters of each word in the cargo type name.
        -- We can split the cargo type name by space and get the first letter of each word.
        local shortenedName = ""
        for word in string.gmatch(cargoTypeName, "%S+") do
            shortenedName = shortenedName .. string.sub(word, 1, 3)
        end
        cargoTypeString = shortenedName
    end
    return cargoTypeString
end

--- Builds the cargo type string from the cargo types.
--- @param lineData table The table of cargo types.
--- @return string cargoTypeString The cargo type string.
local function buildCargoTypeString(lineData)
    local cargoTypeString = ""
    local cargoTypes = {}
    local allCargoTypes = {}
    for _, vehicle in ipairs(lineData.vehicles) do
        for _, cargoName in ipairs(vehicle.cargoNames) do
            if not allCargoTypes[cargoName] then
                table.insert(cargoTypes, cargoName)
                allCargoTypes[cargoName] = true
            end
        end
    end

    if #cargoTypes == 0 then
        return ""
    end

    local cargoTypeSeperator = State.getCargoTypeSeparator()

    for i, cargoType in ipairs(cargoTypes) do
        cargoTypeString = cargoTypeString .. getCargoTypeStringFromConvention(cargoType)
        if i < #cargoTypes then
            cargoTypeString = cargoTypeString .. cargoTypeSeperator
        end
    end

    return cargoTypeString
end

--- Builds the transport type string from the line data.
--- @param lineData table The table of line data.
--- @return string transportTypeString The transport type string.
local function buildTransportTypeString(lineData)
    local transportTypeString = ""
    if not lineData or not lineData.vehicleInfo then
        return ""
    end
    local transportModes = lineData.vehicleInfo.transportModes or {}
    local vehicles = lineData.vehicles
    local cargoType = ""
    for _, vehicle in ipairs(vehicles) do
        if vehicle.cargoType == "CARGO" then
            cargoType = "C"
            break
        else
            cargoType = "P"
        end
    end
    local transportTypeNamingSettings = State.getTransportTypeSettings()
    if transportModes[api.type.enum.TransportMode.TRUCK + 1] == 1 then
        transportTypeString = transportTypeNamingSettings.roadCargo
    elseif transportModes[api.type.enum.TransportMode.BUS + 1] == 1 then
        transportTypeString = transportTypeNamingSettings.roadPassenger
    elseif transportModes[api.type.enum.TransportMode.TRAM + 1] == 1 then
        transportTypeString = transportTypeNamingSettings.tramPassenger
    elseif transportModes[api.type.enum.TransportMode.ELECTRIC_TRAM + 1] == 1 then
        transportTypeString = transportTypeNamingSettings.tramPassenger
    elseif transportModes[api.type.enum.TransportMode.TRAIN + 1] == 1 then
        transportTypeString = cargoType == "P" and transportTypeNamingSettings.trainPassenger or
            transportTypeNamingSettings.trainCargo
    elseif transportModes[api.type.enum.TransportMode.ELECTRIC_TRAIN + 1] == 1 then
        transportTypeString = cargoType == "P" and transportTypeNamingSettings.trainPassenger or
            transportTypeNamingSettings.trainCargo
    elseif transportModes[api.type.enum.TransportMode.SHIP + 1] == 1 then
        transportTypeString = cargoType == "P" and transportTypeNamingSettings.waterPassenger or
            transportTypeNamingSettings.waterCargo
    elseif transportModes[api.type.enum.TransportMode.SMALL_SHIP + 1] == 1 then
        transportTypeString = cargoType == "P" and transportTypeNamingSettings.waterPassenger or
            transportTypeNamingSettings.waterCargo
    elseif transportModes[api.type.enum.TransportMode.AIRCRAFT + 1] == 1 then
        transportTypeString = cargoType == "P" and transportTypeNamingSettings.airPassenger or
            transportTypeNamingSettings.airCargo
    elseif transportModes[api.type.enum.TransportMode.SMALL_AIRCRAFT + 1] == 1 then
        transportTypeString = cargoType == "P" and transportTypeNamingSettings.airPassenger or
            transportTypeNamingSettings.airCargo
    else
        transportTypeString = transportTypeNamingSettings.unknown
    end

    return transportTypeString
end

--- Builds the line type string from the line data.
--- @param lineData table The table of line data.
--- @return string lineTypeString The line type string.
local function buildLineTypeString(lineData)
    local lineTypeString = ""
    if not lineData or not lineData.towns then
        return ""
    end
    local lineTypeNamingSettings = State.getLineTypeSettings()
    if #lineData.towns == 1 then
        lineTypeString = lineTypeNamingSettings.localLineAddon
    elseif #lineData.towns == 2 then
        lineTypeString = lineTypeNamingSettings.intercityLineAddon
    else
        lineTypeString = lineTypeNamingSettings.regionalLineAddon
    end

    return lineTypeString
end

--- Generates the line name from the line ID.
--- @param lineId number The ID of the line to generate the name from.
--- @return string lineName The generated line name.
function ALNHelper.generateLineName(lineId)
    local lineData = getLineData(lineId)
    if not lineData then
        return ""
    end
    -- If lineData.towns is empty, return empty string.
    if #lineData.towns == 0 then
        return ""
    end
    local lineName = ""
    local convention = State.getActiveConvention()
    -- Convention can include 5 different values: {transportType}, {townNames}, {lineType}, {cargoTypes}, {lineNumber}
    -- We need to replace these values with the actual values.
    -- First we need to get the transport type string.
    local transportTypeString = buildTransportTypeString(lineData)
    -- Replace the {transportType} with the actual transport type string.
    convention = string.gsub(convention, "{transportType}", transportTypeString)
    -- Next we need to get the town names string. We only need to include first and last town names.
    local firstTownShort = getTownNameInitials(lineData.towns[1])
    local lastTownShort = getTownNameInitials(lineData.towns[#lineData.towns])
    local townNamesString = firstTownShort
    if #lineData.towns > 1 and firstTownShort ~= lastTownShort then
        townNamesString = townNamesString .. "-" .. lastTownShort
    end
    -- Replace the {townNames} with the actual town names string.
    convention = string.gsub(convention, "{townNames}", townNamesString)
    -- Next we need to get the line type string.
    local lineTypeString = buildLineTypeString(lineData)
    -- Replace the {lineType} with the actual line type string.
    convention = string.gsub(convention, "{lineType}", lineTypeString)
    -- Next we need to get the cargo types string.
    local cargoTypesString = buildCargoTypeString(lineData)
    -- Replace the {cargoTypes} with the actual cargo types string.
    convention = string.gsub(convention, "{cargoTypes}", cargoTypesString)
    -- Next we need to get the line number string.
    local lineNumberString = lineData.id
    -- Replace the {lineNumber} with the actual line number string.
    convention = string.gsub(convention, "{lineNumber}", lineNumberString)
    -- Finally we have the final line name.
    lineName = convention
    return lineName
end

return ALNHelper
