<div id="container">

<div id="product">

<div id="dokuwiki__header">

<div class="headings group">

# [<img
src="https://www.transportfever2.com/wiki/lib/tpl/transportfever/images/logo.png"
width="432" height="90" />](https://wiki.transportfever2.com/wiki/doku.php?id=start "Logo")

</div>

<div class="tools group">

<div id="dokuwiki__sitetools">

<div style="font-size: .875em; margin-top:10px;">

[![Urban
Games](https://www.transportfever2.com/wiki/lib/tpl/transportfever/images/logo_urban_games_wiki_100.png)](https://urbangames.com)

</div>

</div>

</div>

<div class="breadcrumbs">

<div class="youarehere">

[Transport Fever 2 Website](https://transportfever2.com/) \|
<span class="bchead">You are here:
</span><span class="home"><a href="https://wiki.transportfever2.com/wiki/doku.php?id=start"
class="wikilink1" title="start">Start</a></span> »
<a href="https://wiki.transportfever2.com/wiki/doku.php?id=modding"
class="wikilink1" title="modding">Modding</a> »
<span class="curid"><a href="https://wiki.transportfever2.com/wiki/doku.php?id=modding:api"
class="wikilink1" title="modding:api">API Reference</a></span>

</div>

</div>

</div>

<div id="product_logo">

</div>

<div id="product_name">

</div>

<div id="product_description">

</div>

</div>

<div id="main">

<div id="navigation">

  

# API Reference

- [Index](../index.html)

## Contents

- [Functions](api.engine.html#Functions)
- [Tables](api.engine.html#Tables)
- [Animal Move System](api.engine.html#Animal_Move_System)
- [Aircraft Move System](api.engine.html#Aircraft_Move_System)
- [Base Parallel Strip
  System](api.engine.html#Base_Parallel_Strip_System)
- [Catchment Area System](api.engine.html#Catchment_Area_System)
- [Line System](api.engine.html#Line_System)
- [Railroad Crossing System](api.engine.html#Railroad_Crossing_System)
- [River System](api.engine.html#River_System)
- [Runway System](api.engine.html#Runway_System)
- [Ship Move System](api.engine.html#Ship_Move_System)
- [Signal System](api.engine.html#Signal_System)
- [Cargo At Terminal System](api.engine.html#Cargo_At_Terminal_System)
- [Cargo System](api.engine.html#Cargo_System)
- [Entity At Stock System](api.engine.html#Entity_At_Stock_System)
- [Entity At Vehicle System](api.engine.html#Entity_At_Vehicle_System)
- [Person At Terminal System](api.engine.html#Person_At_Terminal_System)
- [Person System](api.engine.html#Person_System)
- [Station Group System](api.engine.html#Station_Group_System)
- [Station System](api.engine.html#Station_System)
- [Stock List System](api.engine.html#Stock_List_System)
- [Street Connector System](api.engine.html#Street_Connector_System)
- [Street System](api.engine.html#Street_System)
- [Parcel System](api.engine.html#Parcel_System)
- [Town Building System](api.engine.html#Town_Building_System)
- [Transport Network Link
  System](api.engine.html#Transport_Network_Link_System)
- [Train Move System](api.engine.html#Train_Move_System)
- [Transport History System](api.engine.html#Transport_History_System)
- [Transport Network System](api.engine.html#Transport_Network_System)
- [Transport Vehicle System](api.engine.html#Transport_Vehicle_System)
- [Vehicle Depot System](api.engine.html#Vehicle_Depot_System)
- [Octree System](api.engine.html#Octree_System)
- [Entity](api.engine.html#Entity)
- [Util](api.engine.html#Util)
- [Transport](api.engine.html#Transport)
- [Pathfinding](api.engine.html#Pathfinding)
- [Proposal](api.engine.html#Proposal)
- [Terrain](api.engine.html#Terrain)

## Modules

- [api.cmd](api.cmd.html)
- **api.engine**
- [api.gui](api.gui.html)
- [api.res](api.res.html)
- [api.type](api.type.html)
- [api.util](api.util.html)
- [app](app.html)

## Topics

- [Lua states](../topics/states.md.html)
- [Examples](../topics/examples.md.html)
- [Types](../topics/types.md.html)

## Examples

- [base_mod_postRunFn.lua](../examples/base_mod_postRunFn.lua.html)
- [build_street.lua](../examples/build_street.lua.html)
- [construction_postRunFn.lua](../examples/construction_postRunFn.lua.html)
- [replace_street.lua](../examples/replace_street.lua.html)

</div>

<div id="content">

# Module `api.engine`

Contains API for reading the game engine state.

This module is available as read-only access to the entire engine state
(in particular to the entire entity component system). It can be
accessed from both the [GUI State](../topics/states.md.html#GUI_State)
and the [Engine State](../topics/states.md.html#Engine_State).

## [Functions](api.engine.html#Functions)

|  |  |
|----|----|
| [entityExists(entity)](api.engine.html#entityExists) | Checks whether an entity exists |
| [forEachEntity(callback)](api.engine.html#forEachEntity) | Loop over each entity in the engine |
| [forEachEntityWithComponent(Userdata, componentType)](api.engine.html#forEachEntityWithComponent) | Loop over each entity with a given component |
| [getComponent(entity, type)](api.engine.html#getComponent) | Obtains a component from an entity, if available. |
| [getRevision(entity)](api.engine.html#getRevision) | Returns the revision of the entity. |

## [Tables](api.engine.html#Tables)

|  |  |
|----|----|
| [system](api.engine.html#system) | Contains all systems. |
| [util](api.engine.html#util) | Contains extra utility functions that require the engine. |

## [Animal Move System](api.engine.html#Animal_Move_System)

|                                        |                         |
|----------------------------------------|-------------------------|
| [forEach(fn)](api.engine.html#forEach) | Loops over all animals. |

## [Aircraft Move System](api.engine.html#Aircraft_Move_System)

|  |  |
|----|----|
| [forEach(fn)](api.engine.html#forEach) | Loops over all aircraft. |
| [getAirCraftInfo(vehicleEntity)](api.engine.html#getAirCraftInfo) | Obtains Aircraft information for the given entity. |
| [isReserved(edgeId)](api.engine.html#isReserved) | Checks if a given edge is reserved by an aircraft. |

## [Base Parallel Strip System](api.engine.html#Base_Parallel_Strip_System)

|  |  |
|----|----|
| [getStrips(edgeEntity)](api.engine.html#getStrips) | Obtains all parallel strips of a base edge entity (there might be more than one parallel strip for each base edge). |

## [Catchment Area System](api.engine.html#Catchment_Area_System)

|  |  |
|----|----|
| [getEdge2stationsMap()](api.engine.html#getEdge2stationsMap) | Obtains a map mapping transport network edges to stations that can be reached from that edge. |
| [getStation2edgesMap()](api.engine.html#getStation2edgesMap) | Obtains a map mapping stations to all reachable edges from that station (the actual catchment area of the station). |
| [getStation2stationsAndDistancesMap()](api.engine.html#getStation2stationsAndDistancesMap) | Obtains a map, mapping station to all reachable stations in the catchment area, and, additionally, the distance of the shortest path. |

## [Line System](api.engine.html#Line_System)

|  |  |
|----|----|
| [getLineStops(stationGroupEntity)](api.engine.html#getLineStops) | Gets all lines stopping at a station group. |
| [getLineStopsForStation(stationEntity)](api.engine.html#getLineStopsForStation) | Gets all lines stopping at a station. |
| [getLineStopsForTerminal(stationEntity, terminal)](api.engine.html#getLineStopsForTerminal) | Gets all lines stopping at a terminal. |
| [getLines()](api.engine.html#getLines) | Gets all lines on the map. |
| [getLinesForPlayer(playerEntity)](api.engine.html#getLinesForPlayer) | Gets all lines belonging to the player. |
| [getLinesForWaypoint(waypointEntity)](api.engine.html#getLinesForWaypoint) | Gets all lines going through a waypoint. |
| [getProblemLines(playerEntity)](api.engine.html#getProblemLines) | Gets all lines having an issue, and the issue in question. |
| [getStationGroup2LineStopsMap()](api.engine.html#getStationGroup2LineStopsMap) | Gets all stops in a station group. |
| [getTerminal2lineStops()](api.engine.html#getTerminal2lineStops) | Gets all stops in a terminal. |

## [Railroad Crossing System](api.engine.html#Railroad_Crossing_System)

|  |  |
|----|----|
| [getRailroadCrossingForEdge(edgeEntity)](api.engine.html#getRailroadCrossingForEdge) | Gets all railroad crossings of the given base edge entity. |
| [getRailroadCrossingForNode(nodeEntity)](api.engine.html#getRailroadCrossingForNode) | Gets all railroad crossings of the given base node entity. |

## [River System](api.engine.html#River_System)

|  |  |
|----|----|
| [getWaterMeshEntities(tile0, tile1)](api.engine.html#getWaterMeshEntities) | Gets all water meshes within the bounds. |

## [Runway System](api.engine.html#Runway_System)

|  |  |
|----|----|
| [getLandingNodeIdMap()](api.engine.html#getLandingNodeIdMap) | Gets all stations reachable from that landing node. |
| [getTakeoffNodeIdMap()](api.engine.html#getTakeoffNodeIdMap) | Gets all station from which the takeoff node can reached. |

## [Ship Move System](api.engine.html#Ship_Move_System)

|  |  |
|----|----|
| [forEach(fn)](api.engine.html#forEach) | Loops over all ships. |
| [getShipInfo(vehicleEntity)](api.engine.html#getShipInfo) | Gets more path and movement information about ships. |

## [Signal System](api.engine.html#Signal_System)

|  |  |
|----|----|
| [getSignal(edgeId, reversed)](api.engine.html#getSignal) | Gets the signal from an [api.type.EdgeId](api.type.html#EdgeId) at the given direction. |

## [Cargo At Terminal System](api.engine.html#Cargo_At_Terminal_System)

|  |  |
|----|----|
| [getCount(edgeId, cargoType)](api.engine.html#getCount) | Counts amount of cargo present at the given transport network edge. |
| [getEntity(edgeId, cargoType)](api.engine.html#getEntity) | Gets one (random) entity from the cargo waiting |
| [getMaxCount(edgeId, cargoType)](api.engine.html#getMaxCount) | Counts maximal amount of cargo present at the given transport network edge. |
| [getPlace(edgeId, cargoType)](api.engine.html#getPlace) | Obtains and reserves a place for the cargo. |
| [hasFreePlaces(edgeId, cargoType)](api.engine.html#hasFreePlaces) | Checks if the given transport network edge has free space for the given cargo type. |
| [supportsCargoType(edgeId, cargoType)](api.engine.html#supportsCargoType) | Checks if the given transport network edge can hold the given cargo type. |

## [Cargo System](api.engine.html#Cargo_System)

|  |  |
|----|----|
| [getSimCargoAtTerminalForTransportNetwork(tnEntity)](api.engine.html#getSimCargoAtTerminalForTransportNetwork) | Obtains all cargo that is waiting at the terminal. |
| [getSimCargoIdleForTransportNetwork(tnEntity)](api.engine.html#getSimCargoIdleForTransportNetwork) | Obtains all cargo that is waiting to be shipped. |
| [getSimCargosForLine(lineEntity)](api.engine.html#getSimCargosForLine) | Obtains all cargo transported through the given line. |
| [getSimCargosForSource(sourceEntity)](api.engine.html#getSimCargosForSource) | Obtains all cargo that was produced by the source. |
| [getSimCargosForTarget(targetEntity)](api.engine.html#getSimCargosForTarget) | Obtains all cargo that is trying to reach the target. |

## [Entity At Stock System](api.engine.html#Entity_At_Stock_System)

|  |  |
|----|----|
| [getStock2SimEntityMap()](api.engine.html#getStock2SimEntityMap) | Obtains a map, mapping the stock to the cargo waiting there. |
| [getStockCount(stockEntity, stockId)](api.engine.html#getStockCount) | Obtains the amount of item waiting at a given stock. |
| [getStockEntities(stockEntity, stockId)](api.engine.html#getStockEntities) | Obtains all entities waiting at a given stock. |
| [getStockSimEntity(stockEntity, stockId)](api.engine.html#getStockSimEntity) | Obtains the entity that was waiting longest at a given stock. |

## [Entity At Vehicle System](api.engine.html#Entity_At_Vehicle_System)

|                                      |                    |
|--------------------------------------|--------------------|
| [getFare()](api.engine.html#getFare) | Gets cost of fare. |

## [Person At Terminal System](api.engine.html#Person_At_Terminal_System)

|  |  |
|----|----|
| [getEdgeInfoMap()](api.engine.html#getEdgeInfoMap) | Gets information about persons waiting at the terminals. |
| [getNumFreePlaces(edgeId)](api.engine.html#getNumFreePlaces) | Gets number of free waiting places for the given tranport network edge. |
| [getPos01(edgeId, place)](api.engine.html#getPos01) | Gets the position on the transport network edge for the given place. |

## [Person System](api.engine.html#Person_System)

|  |  |
|----|----|
| [getCount()](api.engine.html#getCount) | Gets number of people on the map. |
| [getDestination2SpMap()](api.engine.html#getDestination2SpMap) | Gets list of people for every destination. |
| [getSimPersonsAtTerminalForTransportNetwork(tnEntity)](api.engine.html#getSimPersonsAtTerminalForTransportNetwork) | Gets all persons waiting at the given transport network. |
| [getSimPersonsForDestination(targetEntity)](api.engine.html#getSimPersonsForDestination) | Gets all persons that have an entity as one of their destination. |
| [getSimPersonsForLine(lineEntity)](api.engine.html#getSimPersonsForLine) | Gets all persons travelling with the given line. |
| [getSimPersonsForTarget(targetEntity)](api.engine.html#getSimPersonsForTarget) | Gets all persons currently trying to reach given target. |
| [getSimPersonsIdleForTransportNetwork(tnEntity)](api.engine.html#getSimPersonsIdleForTransportNetwork) | Gets all idle persons on a transport network. |
| [getSimPersonsMovingForTransportNetwork(tnEntity)](api.engine.html#getSimPersonsMovingForTransportNetwork) | Gets all moving persons over a transport network. |

## [Station Group System](api.engine.html#Station_Group_System)

|  |  |
|----|----|
| [getExpiredStationGroups(time)](api.engine.html#getExpiredStationGroups) | Gets station groups that no longer contain stations and are thus about to be removed. |
| [getExpiryProgress(stationGroupEntity, time, time)](api.engine.html#getExpiryProgress) | Gets progress on the removal of station groups. |
| [getStationGroup(stationEntity)](api.engine.html#getStationGroup) | Obtains the station group to which the station belongs. |

## [Station System](api.engine.html#Station_System)

|  |  |
|----|----|
| [forEach(fn)](api.engine.html#forEach) | Loops over all stations. |
| [getPersonNodeId2StationTerminalsMap()](api.engine.html#getPersonNodeId2StationTerminalsMap) | Gets all transport network nodes associated with a station terminal. |
| [getStation2TownMap()](api.engine.html#getStation2TownMap) | Gets a map froms stations to towns. |
| [getStationTerminalForVehicleNode(nodeId)](api.engine.html#getStationTerminalForVehicleNode) | Gets the station terminal to which the node belongs. |
| [getStationTerminalsForPersonEdge(edgeId)](api.engine.html#getStationTerminalsForPersonEdge) | Gets the station terminals to which the person edge belongs. |
| [getStationTerminalsForPersonNode(nodeId)](api.engine.html#getStationTerminalsForPersonNode) | Gets the station terminals to which the person node belongs. |
| [getStations(townEntity)](api.engine.html#getStations) | Gets all station in a town. |
| [getTown(stationEntity)](api.engine.html#getTown) | Gets a the town of the station. |
| [getTown2StationsMap()](api.engine.html#getTown2StationsMap) | Gets all station grouped by towns. |
| [getVehicleNodeId2StationTerminalsMap()](api.engine.html#getVehicleNodeId2StationTerminalsMap) | Gets the mapping from vehicle node to station terminal. |

## [Stock List System](api.engine.html#Stock_List_System)

|  |  |
|----|----|
| [getCargoType2stockList2sourceAndCount()](api.engine.html#getCargoType2stockList2sourceAndCount) | Gets all sources and the amount of cargo for a given stock list and a given cargo type. |
| [getSources(destinationEntity)](api.engine.html#getSources) | Gets all sources for the destination entity. |

## [Street Connector System](api.engine.html#Street_Connector_System)

|  |  |
|----|----|
| [forEach(fn)](api.engine.html#forEach) | Loops over all constructions. |
| [getConstructionEntityForDepot(depotEntity)](api.engine.html#getConstructionEntityForDepot) | Gets all sources for the destination entity. |
| [getConstructionEntityForEdge(edgeEntity)](api.engine.html#getConstructionEntityForEdge) | Gets the construction that "owns" the given edge. |
| [getConstructionEntityForSimBuilding(industryEntity)](api.engine.html#getConstructionEntityForSimBuilding) | Gets the construction for the industry. |
| [getConstructionEntityForStation(stationEntity)](api.engine.html#getConstructionEntityForStation) | Gets the construction for the station. |
| [getConstructionEntityForTownBuilding(townBuilding)](api.engine.html#getConstructionEntityForTownBuilding) | Gets the construction for the town building. |
| [getNode2StreetConnectorMap()](api.engine.html#getNode2StreetConnectorMap) | Gets a mapping from frozen nodes to the construction they belong. |
| [getStation2ConstructionMap()](api.engine.html#getStation2ConstructionMap) | Gets a mapping from stations to constructions. |
| [getStreetConnectorEntity(nodeEntity)](api.engine.html#getStreetConnectorEntity) | Gets the construction to which the node (a frozen node in the construction) belongs. |

## [Street System](api.engine.html#Street_System)

|  |  |
|----|----|
| [getEdgeForEdgeObject(edgeEntity)](api.engine.html#getEdgeForEdgeObject) | Obtains the edge to which the edge object belongs. |
| [getEdgeObject2EdgeMap()](api.engine.html#getEdgeObject2EdgeMap) | Obtains the mapping from edge object to edges they belong. |
| [getNode2SegmentMap()](api.engine.html#getNode2SegmentMap) | Obtains a map from all base nodes to base segments they are connected with. |
| [getNode2StreetEdgeMap()](api.engine.html#getNode2StreetEdgeMap) | Obtains a map from all base nodes to base street segments they are connected with. |
| [getNode2TrackEdgeMap()](api.engine.html#getNode2TrackEdgeMap) | Obtains a map from all base nodes to base track segments they are connected with. |

## [Parcel System](api.engine.html#Parcel_System)

|  |  |
|----|----|
| [getParcelData(segmentEntity)](api.engine.html#getParcelData) | Obtains all parcels belonging to a segment. |
| [getSegment2ParcelData()](api.engine.html#getSegment2ParcelData) | Obtains a map of all segments to the parcel data of the segment. |

## [Town Building System](api.engine.html#Town_Building_System)

|  |  |
|----|----|
| [getBuilding(parcelEntity)](api.engine.html#getBuilding) | Obtains the building (if any) that is placed on the given parcel. |
| [getCargoSupplyAndLimit(townEntity)](api.engine.html#getCargoSupplyAndLimit) | Obtains information about towns and cargo. |
| [getLandUsePersonCapacities(townEntity)](api.engine.html#getLandUsePersonCapacities) | Obtains information about land use and person capacities. |
| [getParcel2BuildingMap()](api.engine.html#getParcel2BuildingMap) | Obtains map from parcel to building occupying the parcel. |
| [getPersonCapacity2townBuildingMap()](api.engine.html#getPersonCapacity2townBuildingMap) | Obtains map from person capacities to town buildings. |
| [getTown2BuildingMap()](api.engine.html#getTown2BuildingMap) | Obtains map from town to town buildings of the town. |
| [getTown2personCapacitiesMap()](api.engine.html#getTown2personCapacitiesMap) | Obtains map from town to person capacities of the town. |
| [hasBuilding(parcelEntity)](api.engine.html#hasBuilding) | Checks if parcel is occupied by building. |

## [Transport Network Link System](api.engine.html#Transport_Network_Link_System)

|  |  |
|----|----|
| [getEdgeId2linkEntities()](api.engine.html#getEdgeId2linkEntities) | Gets a map from all edges to the links touching the edge. |
| [getLinkEntities(edgeId)](api.engine.html#getLinkEntities) | Gets all links withing a tranport network edge. |

## [Train Move System](api.engine.html#Train_Move_System)

|  |  |
|----|----|
| [forEach(fn)](api.engine.html#forEach) | Loops over all trains. |
| [getBlockedTrains()](api.engine.html#getBlockedTrains) | Gets all trains that are blocked by another train. |
| [getTrainInfo(trainEntity)](api.engine.html#getTrainInfo) | Gets more information about a train. |
| [getVehicleInfo(vehicleEntity)](api.engine.html#getVehicleInfo) | Gets more information about a train carriage/engine. |

## [Transport History System](api.engine.html#Transport_History_System)

|  |  |
|----|----|
| [getStationTransportHistoryReferences(stationEntity)](api.engine.html#getStationTransportHistoryReferences) | Gets more information about the transport history of a station. |
| [getTargetTransportHistoryReferences(targetEntity)](api.engine.html#getTargetTransportHistoryReferences) | Gets more information about the transport history of a target. |

## [Transport Network System](api.engine.html#Transport_Network_System)

|  |  |
|----|----|
| [getIntersections(tnEntity)](api.engine.html#getIntersections) | Gets all intersections within a transport network (e.g. |
| [getTpNetData()](api.engine.html#getTpNetData) | Gets a structure representing the graph of the transport network. |

## [Transport Vehicle System](api.engine.html#Transport_Vehicle_System)

|  |  |
|----|----|
| [getGoingToDepotVehicles(depotEntity)](api.engine.html#getGoingToDepotVehicles) | Gets all vehicles heading for the depot. |
| [getInfo(transportVehicleEntity)](api.engine.html#getInfo) | Gets additional information about the vehicle. |
| [getLine2VehicleMap()](api.engine.html#getLine2VehicleMap) | Gets a map of lines to the vehicles using the line. |
| [getLineVehicles(lineEntity)](api.engine.html#getLineVehicles) | Gets all vehicles using a given line. |
| [getNoPathVehicles()](api.engine.html#getNoPathVehicles) | Gets all vehicles that cannot find a path to their destination. |
| [getNoPathVehicles(carrier)](api.engine.html#getNoPathVehicles) | Gets the vehicle names of all vehicles for the given carrier. |
| [getVehicles(tnEntities, wholePath)](api.engine.html#getVehicles) | Gets the vehicle using a certain transport network. |
| [getVehiclesWithState(state)](api.engine.html#getVehiclesWithState) | Gets all vehicles that are in the given state. |

## [Vehicle Depot System](api.engine.html#Vehicle_Depot_System)

|  |  |
|----|----|
| [forEach(fn)](api.engine.html#forEach) | Loops over all depots. |
| [getDepotForInNodeId(nodeId)](api.engine.html#getDepotForInNodeId) | Gets the depot entity to which the node belongs. |

## [Octree System](api.engine.html#Octree_System)

|  |  |
|----|----|
| [findIntersectingEntities(box, callback)](api.engine.html#findIntersectingEntities) | Fetches all entities in a box and runs a callback for them. |

## [Entity](api.engine.html#Entity)

|  |  |
|----|----|
| [Revision](api.engine.html#Revision) | Keeps track of modifications to entities. |

## [Util](api.engine.html#Util)

|  |  |
|----|----|
| [util.formatAge(time0, time1)](api.engine.html#util.formatAge) | Format age of a vehicle using current ingame speed. |
| [util.getPlayer()](api.engine.html#util.getPlayer) | Obtains the player entity. |
| [util.getTransportedData()](api.engine.html#util.getTransportedData) | Obtains the transportation data. |
| [util.getWorld()](api.engine.html#util.getWorld) | Obtains the world entity. |

## [Transport](api.engine.html#Transport)

|  |  |
|----|----|
| [transport.getEndPort(the)](api.engine.html#transport.getEndPort) | Obtains the end connection of this edge |
| [transport.getStartPort(edge)](api.engine.html#transport.getStartPort) | Obtains the start connection of this edge |
| [transport.isPortLocked(port)](api.engine.html#transport.isPortLocked) | Check if a port is locked |

## [Pathfinding](api.engine.html#Pathfinding)

|  |  |
|----|----|
| [util.pathfinding.findPath(startingEdgesAndLengths, destinationNodes, transportModeSet, maxLength)](api.engine.html#util.pathfinding.findPath) | Find a path between starting edges and end destination nodes, using a given set of transport modes. |

## [Proposal](api.engine.html#Proposal)

|  |  |
|----|----|
| [util.proposal.makeProposalData(proposal, context)](api.engine.html#util.proposal.makeProposalData) | Tries to process a proposal and performs many checks including collisions, shapes and costs. |

## [Terrain](api.engine.html#Terrain)

|  |  |
|----|----|
| [terrain.getBaseHeightAt(position)](api.engine.html#terrain.getBaseHeightAt) | Fetches base height at the world position. |
| [terrain.getHeightAt(position)](api.engine.html#terrain.getHeightAt) | Fetches height at the world position. |
| [terrain.isValidCoordinate(position)](api.engine.html#terrain.isValidCoordinate) | Check if coordinate is within bounds of world. |

  
  

## <span id="Functions"></span>Functions

<span id="entityExists"></span> **entityExists(entity)**  
Checks whether an entity exists

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the entity

<span id="forEachEntity"></span> **forEachEntity(callback)**  
Loop over each entity in the engine

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">function(Entity)</span></span>
  the callback called for each entity

<span id="forEachEntityWithComponent"></span> **forEachEntityWithComponent(Userdata, componentType)**  
Loop over each entity with a given component

### Parameters:

- <span class="parameter">Userdata</span>
  <span class="types"><span class="type">function(Entity,</span></span>
  ) fn the callback called for each entity with the given component
- <span class="parameter">componentType</span>
  <span class="types"><span class="type">ComponentType</span></span> the
  component used to filter the entities

<span id="getComponent"></span> **getComponent(entity, type)**  
Obtains a component from an entity, if available. The returned entity
(if any) is a [Component](../topics/types.md.html#Component).

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  (must be a valid, existing entity)
- <span class="parameter">type</span>
  <span class="types"><a href="api.type.html#ComponentType"
  class="type">api.type.ComponentType</a></span> the component type to
  obtain

### Returns:

1.  <span class="types"><span class="type">Object</span></span> returns
    the component if the entity has one, or nil otherwise.

<span id="getRevision"></span> **getRevision(entity)**  
Returns the revision of the entity.

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the entity

## <span id="Tables"></span>Tables

<span id="system"></span> **system**  
Contains all systems. Systems manage the behaviour of entities and
contain extra cached information about entities.

<span id="util"></span> **util**  
Contains extra utility functions that require the engine.

## <span id="Animal_Move_System"></span>Animal Move System

**system.animalSystem**  
Manages animals.

<span id="forEach"></span> **forEach(fn)**  
Loops over all animals.

### Parameters:

- <span class="parameter">fn</span>
  <span class="types"><span class="type">func(Entity,)</span></span> a
  callback with arguments: the entity and the components

## <span id="Aircraft_Move_System"></span>Aircraft Move System

**system.aircraftMoveSystem**  
System managing the movement of airplanes.

<span id="forEach"></span> **forEach(fn)**  
Loops over all aircraft.

### Parameters:

- <span class="parameter">fn</span>
  <span class="types"><span class="type">func(Entity,)</span></span> a
  callback with arguments: the entity and the components

<span id="getAirCraftInfo"></span> **getAirCraftInfo(vehicleEntity)**  
Obtains Aircraft information for the given entity.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  id of the aircraft that should be inspected

### Returns:

1.  <span class="types"><a href="api.type.html#AircraftInfo" class="type">type.AircraftInfo</a></span>

<span id="isReserved"></span> **isReserved(edgeId)**  
Checks if a given edge is reserved by an aircraft.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the edgeId that should be inspected

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    reserved

## <span id="Base_Parallel_Strip_System"></span>Base Parallel Strip System

**system.baseParallelStripSystem**  
Contain information about parallel edge ranges.

<span id="getStrips"></span> **getStrips(edgeEntity)**  
Obtains all parallel strips of a base edge entity (there might be more
than one parallel strip for each base edge).

### Parameters:

- <span class="parameter">edgeEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the edge that should be inspected

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

## <span id="Catchment_Area_System"></span>Catchment Area System

**system.catchmentAreaSystem**  
Contains cached information about reachability of stations and
destinations.

<span id="getEdge2stationsMap"></span> **getEdge2stationsMap()**  
Obtains a map mapping transport network edges to stations that can be
reached from that edge.

### Returns:

1.  <span class="types"><a href="api.type.html#EdgeId"
    class="type">{[type.EdgeId]={{Entity,int},...},...}</a></span>

<span id="getStation2edgesMap"></span> **getStation2edgesMap()**  
Obtains a map mapping stations to all reachable edges from that station
(the actual catchment area of the station).

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={{type.EdgeId,int},...},...}</span></span>

<span id="getStation2stationsAndDistancesMap"></span> **getStation2stationsAndDistancesMap()**  
Obtains a map, mapping station to all reachable stations in the
catchment area, and, additionally, the distance of the shortest path.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={{Entity,int},...},...}</span></span>

## <span id="Line_System"></span>Line System

**system.lineSystem**  
Contains cached information about lines.

<span id="getLineStops"></span> **getLineStops(stationGroupEntity)**  
Gets all lines stopping at a station group.

### Parameters:

- <span class="parameter">stationGroupEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  stationGroup for which the lines should be fetched

### Returns:

1.  <span class="types"><span class="type">{{Entity,int},...}</span></span>

<span id="getLineStopsForStation"></span> **getLineStopsForStation(stationEntity)**  
Gets all lines stopping at a station.

### Parameters:

- <span class="parameter">stationEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  station for which the lines should be fetched

### Returns:

1.  <span class="types"><span class="type">{{Entity,int},...}</span></span>

<span id="getLineStopsForTerminal"></span> **getLineStopsForTerminal(stationEntity, terminal)**  
Gets all lines stopping at a terminal.

### Parameters:

- <span class="parameter">stationEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  station for which the lines should be fetched
- <span class="parameter">terminal</span>
  <span class="types"><span class="type">int</span></span> the terminal
  of the station for which the lines should be fetched

### Returns:

1.  <span class="types"><span class="type">{{Entity,int},...}</span></span>

<span id="getLines"></span> **getLines()**  
Gets all lines on the map.

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getLinesForPlayer"></span> **getLinesForPlayer(playerEntity)**  
Gets all lines belonging to the player.

### Parameters:

- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the player
  for which the lines should be fetched

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getLinesForWaypoint"></span> **getLinesForWaypoint(waypointEntity)**  
Gets all lines going through a waypoint.

### Parameters:

- <span class="parameter">waypointEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  waypoint for which the lines should be fetched

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getProblemLines"></span> **getProblemLines(playerEntity)**  
Gets all lines having an issue, and the issue in question.

### Parameters:

- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the player
  for which the lines should be fetched

### Returns:

1.  <span class="types"><span class="type">{{Entity,type.LineProblem},...}</span></span>

<span id="getStationGroup2LineStopsMap"></span> **getStationGroup2LineStopsMap()**  
Gets all stops in a station group.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={{Entity,int},...},...}</span></span>

<span id="getTerminal2lineStops"></span> **getTerminal2lineStops()**  
Gets all stops in a terminal.

### Returns:

1.  <span class="types"><span class="type">{\[{Entity,int}\]={{Entity,int},...},...}</span></span>

## <span id="Railroad_Crossing_System"></span>Railroad Crossing System

**system.railRoadCrossingSystem**  
Contains information about raiload crossings.

<span id="getRailroadCrossingForEdge"></span> **getRailroadCrossingForEdge(edgeEntity)**  
Gets all railroad crossings of the given base edge entity.

### Parameters:

- <span class="parameter">edgeEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  id of the edge that should be inspected

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getRailroadCrossingForNode"></span> **getRailroadCrossingForNode(nodeEntity)**  
Gets all railroad crossings of the given base node entity.

### Parameters:

- <span class="parameter">nodeEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  id of the node that should be inspected

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

## <span id="River_System"></span>River System

**system.riverSystem**  
Contains information about water in the map.

<span id="getWaterMeshEntities"></span> **getWaterMeshEntities(tile0, tile1)**  
Gets all water meshes within the bounds.

### Parameters:

- <span class="parameter">tile0</span>
  <span class="types"><a href="api.type.html#Vec2i" class="type">type.Vec2i</a></span>
- <span class="parameter">tile1</span>
  <span class="types"><a href="api.type.html#Vec2i" class="type">type.Vec2i</a></span>

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

## <span id="Runway_System"></span>Runway System

**system.runwaySystem**  
Contains information about runway edges.

<span id="getLandingNodeIdMap"></span> **getLandingNodeIdMap()**  
Gets all stations reachable from that landing node.

### Returns:

1.  <span class="types"><a href="api.type.html#NodeId"
    class="type">{[type.NodeId]=Entity,...}</a></span>

<span id="getTakeoffNodeIdMap"></span> **getTakeoffNodeIdMap()**  
Gets all station from which the takeoff node can reached.

### Returns:

1.  <span class="types"><a href="api.type.html#NodeId"
    class="type">{[type.NodeId]=Entity,...}</a></span>

## <span id="Ship_Move_System"></span>Ship Move System

**system.shipMoveSystem**  
Contains information about the movement of ships.

<span id="forEach"></span> **forEach(fn)**  
Loops over all ships.

### Parameters:

- <span class="parameter">fn</span>
  <span class="types"><span class="type">func(Entity,)</span></span> a
  callback with arguments: the entity and the components

<span id="getShipInfo"></span> **getShipInfo(vehicleEntity)**  
Gets more path and movement information about ships.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  id of the ship that should be inspected

### Returns:

1.  <span class="types"><a href="api.type.html#ShipInfo" class="type">type.ShipInfo</a></span>

## <span id="Signal_System"></span>Signal System

**system.signalSystem**  
Contains information about Signals (waypoints, path and one way signals)

<span id="getSignal"></span> **getSignal(edgeId, reversed)**  
Gets the signal from an [api.type.EdgeId](api.type.html#EdgeId) at the
given direction. Notice: there can be at most one signal per direction
per transport network edge.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge hosting the signal
- <span class="parameter">reversed</span>
  <span class="types"><span class="type">bool</span></span> false if
  signal in direction of edge is requested

### Returns:

1.  <span class="types"><a href="api.type.html#SignalId" class="type">type.SignalId</a></span>

## <span id="Cargo_At_Terminal_System"></span>Cargo At Terminal System

**system.simCargoAtTerminalSystem**  
Contains information about cargo that is waiting at the station.

<span id="getCount"></span> **getCount(edgeId, cargoType)**  
Counts amount of cargo present at the given transport network edge.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge that should be inspected
- <span class="parameter">cargoType</span>
  <span class="types"><span class="type">type.cargoType</span></span>
  the cargo type that should be counted

### Returns:

1.  <span class="types"><span class="type">int</span></span> the number
    of items counted

<span id="getEntity"></span> **getEntity(edgeId, cargoType)**  
Gets one (random) entity from the cargo waiting

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge that should be inspected
- <span class="parameter">cargoType</span>
  <span class="types"><span class="type">type.cargoType</span></span>
  the cargo type that should be counted

### Returns:

1.  <span class="types"><span class="type">Entity</span></span> the
    entity id of a random waiting cargo item of the given type

<span id="getMaxCount"></span> **getMaxCount(edgeId, cargoType)**  
Counts maximal amount of cargo present at the given transport network
edge.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge that should be inspected
- <span class="parameter">cargoType</span>
  <span class="types"><span class="type">type.cargoType</span></span>
  the cargo type that should be counted

### Returns:

1.  <span class="types"><span class="type">int</span></span> the maximum
    number of items counted

<span id="getPlace"></span> **getPlace(edgeId, cargoType)**  
Obtains and reserves a place for the cargo.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge that should be inspected
- <span class="parameter">cargoType</span>
  <span class="types"><span class="type">type.cargoType</span></span>
  the cargo type that should be requested for

### Returns:

1.  <span class="types"><span class="type">int</span></span>

<span id="hasFreePlaces"></span> **hasFreePlaces(edgeId, cargoType)**  
Checks if the given transport network edge has free space for the given
cargo type.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge that should be inspected
- <span class="parameter">cargoType</span>
  <span class="types"><span class="type">type.cargoType</span></span>
  the cargo type that should be tested for

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    there is free space

<span id="supportsCargoType"></span> **supportsCargoType(edgeId, cargoType)**  
Checks if the given transport network edge can hold the given cargo
type.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge that should be inspected
- <span class="parameter">cargoType</span>
  <span class="types"><span class="type">type.cargoType</span></span>
  the cargo type that should be tested for

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    cargo type is supported

## <span id="Cargo_System"></span>Cargo System

**system.simCargoSystem**  
System managing cargo.

<span id="getSimCargoAtTerminalForTransportNetwork"></span> **getSimCargoAtTerminalForTransportNetwork(tnEntity)**  
Obtains all cargo that is waiting at the terminal.

### Parameters:

- <span class="parameter">tnEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the transport network

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimCargoIdleForTransportNetwork"></span> **getSimCargoIdleForTransportNetwork(tnEntity)**  
Obtains all cargo that is waiting to be shipped.

### Parameters:

- <span class="parameter">tnEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the transport network

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimCargosForLine"></span> **getSimCargosForLine(lineEntity)**  
Obtains all cargo transported through the given line.

### Parameters:

- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the line

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimCargosForSource"></span> **getSimCargosForSource(sourceEntity)**  
Obtains all cargo that was produced by the source.

### Parameters:

- <span class="parameter">sourceEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the source

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimCargosForTarget"></span> **getSimCargosForTarget(targetEntity)**  
Obtains all cargo that is trying to reach the target.

### Parameters:

- <span class="parameter">targetEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the target

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

## <span id="Entity_At_Stock_System"></span>Entity At Stock System

**system.simEntityAtStockSystem**  
System managing cargo produced by industries and waiting.

<span id="getStock2SimEntityMap"></span> **getStock2SimEntityMap()**  
Obtains a map, mapping the stock to the cargo waiting there.

### Returns:

1.  <span class="types"><span class="type">{\[{Entity,StockId}\]</span></span>
    = {Entity,...},...}

<span id="getStockCount"></span> **getStockCount(stockEntity, stockId)**  
Obtains the amount of item waiting at a given stock.

### Parameters:

- <span class="parameter">stockEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the stock holding entity, e.g. industry
- <span class="parameter">stockId</span>
  <span class="types"><span class="type">StockId</span></span> the id of
  the stock

### Returns:

1.  <span class="types"><span class="type">int</span></span>

<span id="getStockEntities"></span> **getStockEntities(stockEntity, stockId)**  
Obtains all entities waiting at a given stock.

### Parameters:

- <span class="parameter">stockEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the stock holding entity, e.g. industry
- <span class="parameter">stockId</span>
  <span class="types"><span class="type">StockId</span></span> the id of
  the stock

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getStockSimEntity"></span> **getStockSimEntity(stockEntity, stockId)**  
Obtains the entity that was waiting longest at a given stock.

### Parameters:

- <span class="parameter">stockEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the stock holding entity, e.g. industry
- <span class="parameter">stockId</span>
  <span class="types"><span class="type">StockId</span></span> the id of
  the stock

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

## <span id="Entity_At_Vehicle_System"></span>Entity At Vehicle System

**system.simEntityAtVehicleSystem**  
System managing entities travelling in a vehicle.

<span id="getFare"></span> **getFare()**  
Gets cost of fare.

### Returns:

1.  <span class="types"><span class="type">float</span></span> the fare

## <span id="Person_At_Terminal_System"></span>Person At Terminal System

**system.simPersonAtTerminalSystem**  
System managing persons waiting at terminal.

<span id="getEdgeInfoMap"></span> **getEdgeInfoMap()**  
Gets information about persons waiting at the terminals.

### Returns:

1.  <span class="types"><a href="api.type.html#EdgeId"
    class="type">{[type.EdgeId]=TerminalInfo}</a></span>

<span id="getNumFreePlaces"></span> **getNumFreePlaces(edgeId)**  
Gets number of free waiting places for the given tranport network edge.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge that should be inspected

### Returns:

1.  <span class="types"><span class="type">int</span></span>

<span id="getPos01"></span> **getPos01(edgeId, place)**  
Gets the position on the transport network edge for the given place.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the id of the edge that should be inspected
- <span class="parameter">place</span>
  <span class="types"><span class="type">double</span></span> the
  waiting place number

### Returns:

1.  <span class="types"><span class="type">{int,int}</span></span> the
    position

## <span id="Person_System"></span>Person System

**system.simPersonSystem**  
System managing persons.

<span id="getCount"></span> **getCount()**  
Gets number of people on the map.

### Returns:

1.  <span class="types"><span class="type">int</span></span> number of
    people

<span id="getDestination2SpMap"></span> **getDestination2SpMap()**  
Gets list of people for every destination.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={Entity,...},...}</span></span>

<span id="getSimPersonsAtTerminalForTransportNetwork"></span> **getSimPersonsAtTerminalForTransportNetwork(tnEntity)**  
Gets all persons waiting at the given transport network.

### Parameters:

- <span class="parameter">tnEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the transport network

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimPersonsForDestination"></span> **getSimPersonsForDestination(targetEntity)**  
Gets all persons that have an entity as one of their destination.
Destinations are a home, a work and a shopping destination.

### Parameters:

- <span class="parameter">targetEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the target

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimPersonsForLine"></span> **getSimPersonsForLine(lineEntity)**  
Gets all persons travelling with the given line.

### Parameters:

- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the line

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimPersonsForTarget"></span> **getSimPersonsForTarget(targetEntity)**  
Gets all persons currently trying to reach given target.

### Parameters:

- <span class="parameter">targetEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the target

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimPersonsIdleForTransportNetwork"></span> **getSimPersonsIdleForTransportNetwork(tnEntity)**  
Gets all idle persons on a transport network.

### Parameters:

- <span class="parameter">tnEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the transport network

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getSimPersonsMovingForTransportNetwork"></span> **getSimPersonsMovingForTransportNetwork(tnEntity)**  
Gets all moving persons over a transport network.

### Parameters:

- <span class="parameter">tnEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the transport network

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

## <span id="Station_Group_System"></span>Station Group System

**system.stationGroupSystem**  
Manages station groups.

<span id="getExpiredStationGroups"></span> **getExpiredStationGroups(time)**  
Gets station groups that no longer contain stations and are thus about
to be removed.

### Parameters:

- <span class="parameter">time</span>
  <span class="types"><span class="type">long</span></span> the time
  stamp until when the stations with this condition are removed

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getExpiryProgress"></span> **getExpiryProgress(stationGroupEntity, time, time)**  
Gets progress on the removal of station groups.

### Parameters:

- <span class="parameter">stationGroupEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the station group that is about to be removed
- <span class="parameter">time</span>
  <span class="types"><span class="type">float</span></span> the time
  stamp until when the stations with this condition are removed
- <span class="parameter">time</span>
  <span class="types"><span class="type">float</span></span> the time
  stamp until when the stations with this condition are removed

<span id="getStationGroup"></span> **getStationGroup(stationEntity)**  
Obtains the station group to which the station belongs.

### Parameters:

- <span class="parameter">stationEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the station for which the parent station group is queried

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

## <span id="Station_System"></span>Station System

**system.stationSystem**  
Manages stations.

<span id="forEach"></span> **forEach(fn)**  
Loops over all stations.

### Parameters:

- <span class="parameter">fn</span>
  <span class="types"><span class="type">func(Entity,)</span></span> a
  callback with arguments: the entity and the components

<span id="getPersonNodeId2StationTerminalsMap"></span> **getPersonNodeId2StationTerminalsMap()**  
Gets all transport network nodes associated with a station terminal.

### Returns:

1.  <span class="types"><a href="api.type.html#NodeId" class="type">{[type.NodeId]</a></span>
    = {{Entity,int},...},...}

<span id="getStation2TownMap"></span> **getStation2TownMap()**  
Gets a map froms stations to towns.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]</span></span> =
    Entity,...}

<span id="getStationTerminalForVehicleNode"></span> **getStationTerminalForVehicleNode(nodeId)**  
Gets the station terminal to which the node belongs.

### Parameters:

- <span class="parameter">nodeId</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">type.NodeId</a></span>
  the vehicle node id that is queried for

### Returns:

1.  <span class="types"><span class="type">{Entity,int}</span></span>

<span id="getStationTerminalsForPersonEdge"></span> **getStationTerminalsForPersonEdge(edgeId)**  
Gets the station terminals to which the person edge belongs.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the edge id that is queried for

### Returns:

1.  <span class="types"><span class="type">{{Entity,int},...}</span></span>

<span id="getStationTerminalsForPersonNode"></span> **getStationTerminalsForPersonNode(nodeId)**  
Gets the station terminals to which the person node belongs.

### Parameters:

- <span class="parameter">nodeId</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">type.NodeId</a></span>
  the person node id that is queried for

### Returns:

1.  <span class="types"><span class="type">{{Entity,int},...}</span></span>

<span id="getStations"></span> **getStations(townEntity)**  
Gets all station in a town.

### Parameters:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the town that is queried for

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getTown"></span> **getTown(stationEntity)**  
Gets a the town of the station.

### Parameters:

- <span class="parameter">stationEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the station that is queried for

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getTown2StationsMap"></span> **getTown2StationsMap()**  
Gets all station grouped by towns.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]</span></span> =
    {{Entity},...},...}

<span id="getVehicleNodeId2StationTerminalsMap"></span> **getVehicleNodeId2StationTerminalsMap()**  
Gets the mapping from vehicle node to station terminal.

### Returns:

1.  <span class="types"><a href="api.type.html#NodeId" class="type">{[type.NodeId]</a></span>
    = {{Entity,int},...},...}

## <span id="Stock_List_System"></span>Stock List System

**system.stockListSystem**  
Manages stocks.

<span id="getCargoType2stockList2sourceAndCount"></span> **getCargoType2stockList2sourceAndCount()**  
Gets all sources and the amount of cargo for a given stock list and a
given cargo type.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={\[Entity\]=int,...},...}</span></span>

<span id="getSources"></span> **getSources(destinationEntity)**  
Gets all sources for the destination entity.

### Parameters:

- <span class="parameter">destinationEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  for which the sources should be fetched

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

## <span id="Street_Connector_System"></span>Street Connector System

**system.streetConnectorSystem**  
Manages street connections.

<span id="forEach"></span> **forEach(fn)**  
Loops over all constructions.

### Parameters:

- <span class="parameter">fn</span>
  <span class="types"><span class="type">func(Entity,type.Construction)</span></span>
  Two arguments are passed to fn: the entity and the
  [type.Construction](api.type.html#Construction).

<span id="getConstructionEntityForDepot"></span> **getConstructionEntityForDepot(depotEntity)**  
Gets all sources for the destination entity.

### Parameters:

- <span class="parameter">depotEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  for which the containing construction should be fetched

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getConstructionEntityForEdge"></span> **getConstructionEntityForEdge(edgeEntity)**  
Gets the construction that "owns" the given edge.

### Parameters:

- <span class="parameter">edgeEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  for which the containing construction should be fetched

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getConstructionEntityForSimBuilding"></span> **getConstructionEntityForSimBuilding(industryEntity)**  
Gets the construction for the industry.

### Parameters:

- <span class="parameter">industryEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  for which the containing construction should be fetched

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getConstructionEntityForStation"></span> **getConstructionEntityForStation(stationEntity)**  
Gets the construction for the station.

### Parameters:

- <span class="parameter">stationEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  for which the containing construction should be fetched

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getConstructionEntityForTownBuilding"></span> **getConstructionEntityForTownBuilding(townBuilding)**  
Gets the construction for the town building.

### Parameters:

- <span class="parameter">townBuilding</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  for which the containing construction should be fetched

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getNode2StreetConnectorMap"></span> **getNode2StreetConnectorMap()**  
Gets a mapping from frozen nodes to the construction they belong.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]=Entity,...}</span></span>

<span id="getStation2ConstructionMap"></span> **getStation2ConstructionMap()**  
Gets a mapping from stations to constructions.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]=Entity,...}</span></span>

<span id="getStreetConnectorEntity"></span> **getStreetConnectorEntity(nodeEntity)**  
Gets the construction to which the node (a frozen node in the
construction) belongs.

### Parameters:

- <span class="parameter">nodeEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  for which the containing construction should be fetched

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

## <span id="Street_System"></span>Street System

**system.streetSystem**  
Manages base edges.

<span id="getEdgeForEdgeObject"></span> **getEdgeForEdgeObject(edgeEntity)**  
Obtains the edge to which the edge object belongs.

### Parameters:

- <span class="parameter">edgeEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the edge object

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getEdgeObject2EdgeMap"></span> **getEdgeObject2EdgeMap()**  
Obtains the mapping from edge object to edges they belong.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]=Entity,...}</span></span>

<span id="getNode2SegmentMap"></span> **getNode2SegmentMap()**  
Obtains a map from all base nodes to base segments they are connected
with.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={Entity,...},...}</span></span>

<span id="getNode2StreetEdgeMap"></span> **getNode2StreetEdgeMap()**  
Obtains a map from all base nodes to base street segments they are
connected with.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={Entity,...},...}</span></span>

<span id="getNode2TrackEdgeMap"></span> **getNode2TrackEdgeMap()**  
Obtains a map from all base nodes to base track segments they are
connected with.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={Entity,...},...}</span></span>

## <span id="Parcel_System"></span>Parcel System

**system.parcelSystem** Manages and returns information about parcels.

<span id="getParcelData"></span> **getParcelData(segmentEntity)**  
Obtains all parcels belonging to a segment.

### Parameters:

- <span class="parameter">segmentEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  segment of which to obtain all attached parcels

### Returns:

1.  <span class="types"><span class="type">ParcelData</span></span>

<span id="getSegment2ParcelData"></span> **getSegment2ParcelData()**  
Obtains a map of all segments to the parcel data of the segment.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]</span></span> =
    ParcelData, ...}

## <span id="Town_Building_System"></span>Town Building System

**system.townBuildingSystem**  
Manages town buildings and parcels.

<span id="getBuilding"></span> **getBuilding(parcelEntity)**  
Obtains the building (if any) that is placed on the given parcel.

### Parameters:

- <span class="parameter">parcelEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the parcel

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

<span id="getCargoSupplyAndLimit"></span> **getCargoSupplyAndLimit(townEntity)**  
Obtains information about towns and cargo.

### Parameters:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the town

### Returns:

1.  <span class="types"><span class="type">{\[cargoId\]={int,int},...}</span></span>

<span id="getLandUsePersonCapacities"></span> **getLandUsePersonCapacities(townEntity)**  
Obtains information about land use and person capacities.

### Parameters:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the town

### Returns:

1.  <span class="types"><span class="type">{int,int,int}</span></span>

<span id="getParcel2BuildingMap"></span> **getParcel2BuildingMap()**  
Obtains map from parcel to building occupying the parcel.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]</span></span> =
    Entity,...}

<span id="getPersonCapacity2townBuildingMap"></span> **getPersonCapacity2townBuildingMap()**  
Obtains map from person capacities to town buildings.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]</span></span> =
    Entity,...}

<span id="getTown2BuildingMap"></span> **getTown2BuildingMap()**  
Obtains map from town to town buildings of the town.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]</span></span> =
    {Entity,...},...}

<span id="getTown2personCapacitiesMap"></span> **getTown2personCapacitiesMap()**  
Obtains map from town to person capacities of the town.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]</span></span> =
    {int,int,int},...}

<span id="hasBuilding"></span> **hasBuilding(parcelEntity)**  
Checks if parcel is occupied by building.

### Parameters:

- <span class="parameter">parcelEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the parcel

### Returns:

1.  <span class="types"><span class="type">bool</span></span>

## <span id="Transport_Network_Link_System"></span>Transport Network Link System

**system.tpNetLinkSystem**  
Manages transport networks links (small links between roads and
constructions).

<span id="getEdgeId2linkEntities"></span> **getEdgeId2linkEntities()**  
Gets a map from all edges to the links touching the edge.

### Returns:

1.  <span class="types"><a href="api.type.html#EdgeId" class="type">{[type.EdgeId]</a></span>
    = {Entity,...},...}

<span id="getLinkEntities"></span> **getLinkEntities(edgeId)**  
Gets all links withing a tranport network edge.

### Parameters:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  the edge id for which the links should be fetched

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

## <span id="Train_Move_System"></span>Train Move System

**system.trainMoveSystem**  
Manages the movement of trains.

<span id="forEach"></span> **forEach(fn)**  
Loops over all trains.

### Parameters:

- <span class="parameter">fn</span>
  <span class="types"><span class="type">func(Entity,)</span></span> a
  callback with arguments: the entity and the components

<span id="getBlockedTrains"></span> **getBlockedTrains()**  
Gets all trains that are blocked by another train.

### Returns:

1.  <span class="types"><span class="type">{\[Entity,Entity\],...}</span></span>

<span id="getTrainInfo"></span> **getTrainInfo(trainEntity)**  
Gets more information about a train.

### Parameters:

- <span class="parameter">trainEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the train.

### Returns:

1.  <span class="types"><a href="api.type.html#TrainMoveInfo"
    class="type">type.TrainMoveInfo</a></span>

<span id="getVehicleInfo"></span> **getVehicleInfo(vehicleEntity)**  
Gets more information about a train carriage/engine.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the vehicle.

### Returns:

1.  <span class="types"><span class="type">TrainMoveSystem.TrainMoveInfo</span></span>

## <span id="Transport_History_System"></span>Transport History System

**system.transportHistorySystem**  
Keeps a log of some transport-related data.

<span id="getStationTransportHistoryReferences"></span> **getStationTransportHistoryReferences(stationEntity)**  
Gets more information about the transport history of a station.

### Parameters:

- <span class="parameter">stationEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the station

### Returns:

1.  <span class="types"><span class="type">{Entity}</span></span>

<span id="getTargetTransportHistoryReferences"></span> **getTargetTransportHistoryReferences(targetEntity)**  
Gets more information about the transport history of a target.

### Parameters:

- <span class="parameter">targetEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the target, e.g. an industry

## <span id="Transport_Network_System"></span>Transport Network System

**system.transportNetworkSystem**  
Manages transport networks (and transport network edges and nodes).

<span id="getIntersections"></span> **getIntersections(tnEntity)**  
Gets all intersections within a transport network (e.g. all
intersections in a base node).

### Parameters:

- <span class="parameter">tnEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the transport network

### Returns:

1.  <span class="types"><span class="type">{EdgeIsect,...}</span></span>

<span id="getTpNetData"></span> **getTpNetData()**  
Gets a structure representing the graph of the transport network.

### Returns:

1.  <span class="types"><span class="type">TpNetData</span></span>

## <span id="Transport_Vehicle_System"></span>Transport Vehicle System

**system.transportVehicleSystem**  
Manages the movement and behaviour of transport vehicles. This covers
all vehicles transporting cargo and passengers.

<span id="getGoingToDepotVehicles"></span> **getGoingToDepotVehicles(depotEntity)**  
Gets all vehicles heading for the depot.

### Parameters:

- <span class="parameter">depotEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the depot

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getInfo"></span> **getInfo(transportVehicleEntity)**  
Gets additional information about the vehicle.

### Parameters:

- <span class="parameter">transportVehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the transport vehicle

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getLine2VehicleMap"></span> **getLine2VehicleMap()**  
Gets a map of lines to the vehicles using the line.

### Returns:

1.  <span class="types"><span class="type">{\[Entity\]={Entity,...},...}</span></span>

<span id="getLineVehicles"></span> **getLineVehicles(lineEntity)**  
Gets all vehicles using a given line.

### Parameters:

- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the line

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getNoPathVehicles"></span> **getNoPathVehicles()**  
Gets all vehicles that cannot find a path to their destination.

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

<span id="getNoPathVehicles"></span> **getNoPathVehicles(carrier)**  
Gets the vehicle names of all vehicles for the given carrier.

### Parameters:

- <span class="parameter">carrier</span>
  <span class="types"><span class="type">type.enum.Carrier</span></span>
  the carrier for which the names should be fetched

### Returns:

1.  <span class="types"><span class="type">{String,...}</span></span>

<span id="getVehicles"></span> **getVehicles(tnEntities, wholePath)**  
Gets the vehicle using a certain transport network.

### Parameters:

- <span class="parameter">tnEntities</span>
  <span class="types"><span class="type">{Entity,...}</span></span> list
  of transport network entities
- <span class="parameter">wholePath</span>
  <span class="types"><span class="type">bool</span></span> true if the
  vehicle has to use the whole path

<span id="getVehiclesWithState"></span> **getVehiclesWithState(state)**  
Gets all vehicles that are in the given state. This can be used, for
instance, to obtain a list of all vehicles currently waiting at a
terminal.

### Parameters:

- <span class="parameter">state</span>
  <span class="types"><span class="type">type.enum.TransportVehicleState</span></span>
  A state to filter the vehicles

### Returns:

1.  <span class="types"><span class="type">{Entity,...}</span></span>

## <span id="Vehicle_Depot_System"></span>Vehicle Depot System

**system.vehicleDepotSystem**  
Manages depots and vehicles in depots.

<span id="forEach"></span> **forEach(fn)**  
Loops over all depots.

### Parameters:

- <span class="parameter">fn</span>
  <span class="types"><span class="type">func(Entity,)</span></span> a
  callback with arguments: the entity and the components

<span id="getDepotForInNodeId"></span> **getDepotForInNodeId(nodeId)**  
Gets the depot entity to which the node belongs.

### Parameters:

- <span class="parameter">nodeId</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">type.NodeId</a></span>
  the id of the node for which the depot should be fetched

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>

## <span id="Octree_System"></span>Octree System

**system.octreeSystem**  
An octree that contains all entities with a bounding box. It enables
fast query and location of entities in the map.

<span id="findIntersectingEntities"></span> **findIntersectingEntities(box, callback)**  
Fetches all entities in a box and runs a callback for them.

### Parameters:

- <span class="parameter">box</span>
  <span class="types"><span class="type">Box3</span></span> Box in which
  all entities are searched.
- <span class="parameter">callback</span>
  <span class="types"><span class="type">func</span></span> A function
  called for each matching entity within box. The callback obtains an
  entity and a bounding volume.

## <span id="Entity"></span>Entity

<span id="Revision"></span> **Revision**  
Keeps track of modifications to entities.

### Fields:

- <span class="parameter">num</span>
  <span class="types"><span class="type">{number,...}</span></span>

## <span id="Util"></span>Util

<span id="util.formatAge"></span> **util.formatAge(time0, time1)**  
Format age of a vehicle using current ingame speed.

### Parameters:

- <span class="parameter">time0</span>
  <span class="types"><span class="type">long</span></span> begin
  timestamp of the time interval
- <span class="parameter">time1</span>
  <span class="types"><span class="type">long</span></span> end
  timestamp of the time interval

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> formatted output, e.g. "6 years"

<span id="util.getPlayer"></span> **util.getPlayer()**  
Obtains the player entity.

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>
    [entity](../topics/types.md.html#Entity) id

<span id="util.getTransportedData"></span> **util.getTransportedData()**  
Obtains the transportation data.

### Returns:

1.  <span class="types"><span class="type">usertype</span></span>
    TransportationStats

<span id="util.getWorld"></span> **util.getWorld()**  
Obtains the world entity.

### Returns:

1.  <span class="types"><span class="type">Entity</span></span>
    [entity](../topics/types.md.html#Entity) id

## <span id="Transport"></span>Transport

<span id="transport.getEndPort"></span> **transport.getEndPort(the)**  
Obtains the end connection of this edge

### Parameters:

- <span class="parameter">the</span>
  <span class="types"><a href="api.type.html#EdgeIdDir" class="type">type.EdgeIdDir</a></span>
  edge with direction

### Returns:

1.  <span class="types"><a href="api.type.html#PortId" class="type">type.PortId</a></span>
    PortId at the edge's end

<span id="transport.getStartPort"></span> **transport.getStartPort(edge)**  
Obtains the start connection of this edge

### Parameters:

- <span class="parameter">edge</span>
  <span class="types"><a href="api.type.html#EdgeIdDir" class="type">type.EdgeIdDir</a></span>
  the edge with direction

### Returns:

1.  <span class="types"><a href="api.type.html#PortId" class="type">type.PortId</a></span>
    PortId at the edge's start

<span id="transport.isPortLocked"></span> **transport.isPortLocked(port)**  
Check if a port is locked

### Parameters:

- <span class="parameter">port</span>
  <span class="types"><a href="api.type.html#PortId" class="type">type.PortId</a></span>
  the port

### Returns:

1.  <span class="types"><span class="type">boolean</span></span> true if
    the port is locked, false otherwise

## <span id="Pathfinding"></span>Pathfinding

<span id="util.pathfinding.findPath"></span> **util.pathfinding.findPath(startingEdgesAndLengths, destinationNodes, transportModeSet, maxLength)**  
Find a path between starting edges and end destination nodes, using a
given set of transport modes.

### Parameters:

- <span class="parameter">startingEdgesAndLengths</span>
  <span class="types"><a href="api.type.html#EdgeIdDirAndLength"
  class="type">{type.EdgeIdDirAndLength,...}</a></span> Vector of
  [EdgeIdDirAndLength](api.type.html#EdgeIdDirAndLength)
- <span class="parameter">destinationNodes</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">{type.NodeId,...}</a></span>
  Vector of [type.NodeId](api.type.html#NodeId)
- <span class="parameter">transportModeSet</span>
  <span class="types"><a href="api.type.html#enum.TransportMode"
  class="type">{type.TransportMode,...}</a></span> Vector of
  [type.TransportMode](api.type.html#enum.TransportMode)
- <span class="parameter">maxLength</span>
  <span class="types"><span class="type">float</span></span>

### Returns:

1.  <span class="types"><span class="type">Vector</span></span> a vector
    with pairs of EdgeId and bool values

## <span id="Proposal"></span>Proposal

<span id="util.proposal.makeProposalData"></span> **util.proposal.makeProposalData(proposal, context)**  
Tries to process a proposal and performs many checks including
collisions, shapes and costs.

The result can be inspected to check for errors and other data.

### Parameters:

- <span class="parameter">proposal</span>
  <span class="types"><a href="api.type.html#SimpleProposal"
  class="type">type.SimpleProposal</a></span> the simple transform to
  process
- <span class="parameter">context</span>
  <span class="types"><a href="api.type.html#Context" class="type">type.Context</a></span>
  extra options

### Returns:

1.  <span class="types"><a href="api.type.html#ProposalData" class="type">type.ProposalData</a></span>
    the generated proposal data

## <span id="Terrain"></span>Terrain

<span id="terrain.getBaseHeightAt"></span> **terrain.getBaseHeightAt(position)**  
Fetches base height at the world position. Differently than
[terrain.getHeightAt](api.engine.html#terrain.getHeightAt), this does
not include terrain alignments (non-permanent modifications) and has a
lower resolution of 4 meters. When the coordinates are outside the map,
the value of the nearest position on the map is returned.

### Parameters:

- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  world position with x and y coordinate from center of the map

### Returns:

1.  <span class="types"><span class="type">float</span></span> the
    height at the position

### Usage:

- ``` example
  api.engine.terrain.getBaseHeightAt(api.type.Vec2f.new(-123,42))
  ```

<span id="terrain.getHeightAt"></span> **terrain.getHeightAt(position)**  
Fetches height at the world position. When the coordinates are outside
the map, the value of the nearest position on the map is returned.

### Parameters:

- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  world position with x and y coordinate from center of the map

### Returns:

1.  <span class="types"><span class="type">float</span></span> the
    height at the position

### Usage:

- ``` example
  api.engine.terrain.getHeightAt(api.type.Vec2f.new(-123,42))
  ```

<span id="terrain.isValidCoordinate"></span> **terrain.isValidCoordinate(position)**  
Check if coordinate is within bounds of world.

### Parameters:

- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  world position with x and y coordinate from center of the map

### Returns:

1.  <span class="types"><span class="type">boolean</span></span> true if
    valid coordinate, false if non valid coordinate

### Usage:

- ``` example
  api.engine.terrain.isValidCoordinate(api.type.Vec2f.new(-123,42))
  ```

</div>

</div>

<div id="about">

*generated by [LDoc 1.4.3](http://github.com/stevedonovan/LDoc)* *Last
updated 2023-04-18 15:10:38*

</div>

</div>
