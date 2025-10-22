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

- [Tables](api.type.html#Tables)
- [Util](api.type.html#Util)
- [Class Vec2i](api.type.html#Class_Vec2i)
- [Class Vec2f](api.type.html#Class_Vec2f)
- [Class Vec3f](api.type.html#Class_Vec3f)
- [Class Vec4f](api.type.html#Class_Vec4f)
- [Class Mat4f](api.type.html#Class_Mat4f)
- [Class Date](api.type.html#Class_Date)
- [Class Connection](api.type.html#Class_Connection)
- [Class Box2](api.type.html#Class_Box2)
- [Class Box3](api.type.html#Class_Box3)
- [Commands](api.type.html#Commands)
- [Enum](api.type.html#Enum)
- [Journal](api.type.html#Journal)
- [Model](api.type.html#Model)
- [Line](api.type.html#Line)
- [Entity Components](api.type.html#Entity_Components)
- [Station](api.type.html#Station)
- [MapGeneration](api.type.html#MapGeneration)
- [Class type.BoundingInfo](api.type.html#Class_type_BoundingInfo)
- [Class type.Collider](api.type.html#Class_type_Collider)
- [Class type.Collider.Box](api.type.html#Class_type_Collider_Box)
- [Class
  type.Collider.PointCloud](api.type.html#Class_type_Collider_PointCloud)
- [Class type.MetadataMap](api.type.html#Class_type_MetadataMap)
- [Resources](api.type.html#Resources)
- [Class ScriptRef](api.type.html#Class_ScriptRef)
- [Class ScriptParam](api.type.html#Class_ScriptParam)
- [Class ConstructionDesc](api.type.html#Class_ConstructionDesc)
- [Transport](api.type.html#Transport)
- [Pathfinding](api.type.html#Pathfinding)
- [Class EdgeId](api.type.html#Class_EdgeId)
- [Class EdgePos](api.type.html#Class_EdgePos)
- [Class Path](api.type.html#Class_Path)
- [Class PathPos](api.type.html#Class_PathPos)
- [Class Terminal](api.type.html#Class_Terminal)
- [Class PathPosData](api.type.html#Class_PathPosData)
- [Proposal](api.type.html#Proposal)

## Modules

- [api.cmd](api.cmd.html)
- [api.engine](api.engine.html)
- [api.gui](api.gui.html)
- [api.res](api.res.html)
- **api.type**
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

# Module `api.type`

Contains game command objects and related utilities.

## [Tables](api.type.html#Tables)

|  |  |
|----|----|
| [AircraftInfo](api.type.html#AircraftInfo) | Information about the aircraft. |
| [ComponentType](api.type.html#ComponentType) | Represents a single component that can be attached to an entity. |
| [ConstructionEntity](api.type.html#ConstructionEntity) | A structure holding information to add construction entities together with a [type.SimpleProposal](api.type.html#SimpleProposal). |
| [EdgeObject](api.type.html#EdgeObject) | A structure that holds information about new edgeobjects added to the streets |
| [Interval](api.type.html#Interval) | A subsection of a bridge. |
| [LineLoadMode](api.type.html#LineLoadMode) | Type of loading/waiting for the line. |
| [LogBook.Log](api.type.html#LogBook.Log) | A Log is an entry into a LogBook and keeps track of the evolution of data in time. |
| [Lot](api.type.html#Lot) | Actual information of a [type.LotList](api.type.html#LotList) |
| [Model](api.type.html#Model) | Information about a single model file: metadata and bounding information |
| [MovePath.DynState](api.type.html#MovePath.DynState) | The fast-changing component of the position on a path. |
| [RailroadCrossingState](api.type.html#RailroadCrossingState) | Animation state of a railroad crossing |
| [RoadVehicle.DynState](api.type.html#RoadVehicle.DynState) | The fast-changing component of a RoadVehicle. |
| [ShipInfo](api.type.html#ShipInfo) | Information about the ship. |
| [SimpleProposal](api.type.html#SimpleProposal) | A structure holding information to build/remove and update constructions and streets. |
| [SimpleStreetProposal](api.type.html#SimpleStreetProposal) | A structure holding information to add street and track entities together with a [type.SimpleProposal](api.type.html#SimpleProposal). |
| [TrainMoveInfo](api.type.html#TrainMoveInfo) | Information about the train. |
| [Tram.DynState](api.type.html#Tram.DynState) | The fast-changing component of a Tram. |
| [TransportVehicle.Config](api.type.html#TransportVehicle.Config) | Contatins additional data for the transport vehicle |
| [TransportVehicleConfig](api.type.html#TransportVehicleConfig) | Vehicles and data for a single transport vehicle. |
| [TransportVehicleInfo](api.type.html#TransportVehicleInfo) | Information about all cargo of a transport vehicle |
| [TransportVehiclePart](api.type.html#TransportVehiclePart) | A subsection of a transport Vehicle. |
| [TransportationStats](api.type.html#TransportationStats) | A structure that holds information about the transportation data statistics. |
| [VehicleCargoInfo](api.type.html#VehicleCargoInfo) | Information about cargo of a single compartment of a transport vehicle |
| [VehicleInfo](api.type.html#VehicleInfo) | Infomation about train carriages |
| [VehiclePart](api.type.html#VehiclePart) | Infomation about a single vehicle in a transport vehicle |
| [VehiclePartInfo.Seat](api.type.html#VehiclePartInfo.Seat) | A single seat in a vehicle. |
| [VehiclePartInfo.VehiclePartInfo](api.type.html#VehiclePartInfo.VehiclePartInfo) | Details about a vehicle part. |
| [WaterMesh.Contour](api.type.html#WaterMesh.Contour) | Represents the boundary of a water mesh. |

## [Util](api.type.html#Util)

|  |  |
|----|----|
| [AppConfig](api.type.html#AppConfig) | Game settings |
| [AppConfig.AudioEffectSettings](api.type.html#AppConfig.AudioEffectSettings) | Specification for audio settings |
| [AppConfig.NewGameMenuState](api.type.html#AppConfig.NewGameMenuState) | Specification for new game settings |
| [ModId](api.type.html#ModId) | Mod identifier |
| [Value](api.type.html#Value) | A Value |
| [ValuesMap](api.type.html#ValuesMap) | A map of string to Value |

## [Class Vec2i](api.type.html#Class_Vec2i)

|                                            |                       |
|--------------------------------------------|-----------------------|
| [Vec2i.new()](api.type.html#Vec2i.new)     | Creates a new vector. |
| [Vec2i.new(v)](api.type.html#Vec2i.new)    | Creates a new vector. |
| [Vec2i.new(x, y)](api.type.html#Vec2i.new) | Creates a new vector. |
| [Vec2i.x](api.type.html#Vec2i.x)           | x                     |
| [Vec2i.y](api.type.html#Vec2i.y)           | y                     |

## [Class Vec2f](api.type.html#Class_Vec2f)

|                                            |                       |
|--------------------------------------------|-----------------------|
| [Vec2f.new()](api.type.html#Vec2f.new)     | Creates a new vector. |
| [Vec2f.new(v)](api.type.html#Vec2f.new)    | Creates a new vector. |
| [Vec2f.new(x, y)](api.type.html#Vec2f.new) | Creates a new vector. |
| [Vec2f.x](api.type.html#Vec2f.x)           | x                     |
| [Vec2f.y](api.type.html#Vec2f.y)           | y                     |

## [Class Vec3f](api.type.html#Class_Vec3f)

|                                               |                       |
|-----------------------------------------------|-----------------------|
| [Vec3f.new()](api.type.html#Vec3f.new)        | Creates a new vector. |
| [Vec3f.new(v)](api.type.html#Vec3f.new)       | Creates a new vector. |
| [Vec3f.new(x, y, z)](api.type.html#Vec3f.new) | Creates a new vector. |
| [Vec3f.x](api.type.html#Vec3f.x)              | x                     |
| [Vec3f.y](api.type.html#Vec3f.y)              | y                     |
| [Vec3f.z](api.type.html#Vec3f.z)              | z                     |

## [Class Vec4f](api.type.html#Class_Vec4f)

|                                                  |                       |
|--------------------------------------------------|-----------------------|
| [Vec4f.new()](api.type.html#Vec4f.new)           | Creates a new vector. |
| [Vec4f.new(v)](api.type.html#Vec4f.new)          | Creates a new vector. |
| [Vec4f.new(x, y, z, w)](api.type.html#Vec4f.new) | Creates a new vector. |
| [Vec4f.w](api.type.html#Vec4f.w)                 | w                     |
| [Vec4f.x](api.type.html#Vec4f.x)                 | x                     |
| [Vec4f.y](api.type.html#Vec4f.y)                 | y                     |
| [Vec4f.z](api.type.html#Vec4f.z)                 | z                     |

## [Class Mat4f](api.type.html#Class_Mat4f)

|  |  |
|----|----|
| [Mat4f.new()](api.type.html#Mat4f.new) | Creates a new matrix. |
| [Mat4f.new(col0, col1, col2, col3)](api.type.html#Mat4f.new) | Creates a new matrix. |
| [Mat4f.new(v)](api.type.html#Mat4f.new) | Creates a new matrix. |
| [Mat4f:col()](api.type.html#Mat4f:col) | Return i-th column as reference |

## [Class Date](api.type.html#Class_Date)

|                                        |       |
|----------------------------------------|-------|
| [Date.day](api.type.html#Date.day)     | Day   |
| [Date.month](api.type.html#Date.month) | Month |
| [Date.year](api.type.html#Date.year)   | Year  |

## [Class Connection](api.type.html#Class_Connection)

|  |  |
|----|----|
| [Connection:disconnect()](api.type.html#Connection:disconnect) | The callback will be no longer called |

## [Class Box2](api.type.html#Class_Box2)

|                                              |                     |
|----------------------------------------------|---------------------|
| [Box2.max](api.type.html#Box2.max)           | Max                 |
| [Box2.min](api.type.html#Box2.min)           | Min                 |
| [Box2.new(min, max)](api.type.html#Box2.new) | Creates a new Box2. |
| [Box2.new()](api.type.html#Box2.new)         | Creates a new Box2. |

## [Class Box3](api.type.html#Class_Box3)

|                                              |                     |
|----------------------------------------------|---------------------|
| [Box3.max](api.type.html#Box3.max)           | Max                 |
| [Box3.min](api.type.html#Box3.min)           | Min                 |
| [Box3.new(min, max)](api.type.html#Box3.new) | Creates a new Box3. |
| [Box3.new()](api.type.html#Box3.new)         | Creates a new Box3. |

## [Commands](api.type.html#Commands)

|  |  |
|----|----|
| [Book](api.type.html#Book) | Command to add a new entry to the Player Journal. |
| [BuildProposal](api.type.html#BuildProposal) | Command to build a proposal, use cmd.make.buildProposal to generate this command. |
| [BuyVehicle](api.type.html#BuyVehicle) | Command to buy a vehicle, in a given depot |
| [ConnectTownsAndIndustries](api.type.html#ConnectTownsAndIndustries) | Command to automatically connect all towns and industries with roads. |
| [CreateLine](api.type.html#CreateLine) | Command to create a new line entity, with stop configuration, owner, color and name. |
| [CreateTowns](api.type.html#CreateTowns) | Command to build create a set of new towns |
| [DeleteLine](api.type.html#DeleteLine) | Command to delete a single line. |
| [DevelopTown](api.type.html#DevelopTown) | Command to trigger town developement at the given position. |
| [InstantlyUpdateTownCargoNeeds](api.type.html#InstantlyUpdateTownCargoNeeds) | Command to change the cargo need of a town immediately and for all buildings. |
| [RemoveField](api.type.html#RemoveField) | Command to remove a field |
| [RemoveTown](api.type.html#RemoveTown) | Command to remove a single town. |
| [ReplaceTerrain](api.type.html#ReplaceTerrain) | Command to redo the map generation. |
| [ReplaceVehicle](api.type.html#ReplaceVehicle) | Command to replace a vehicle |
| [Reverse](api.type.html#Reverse) | Command to reverse a vehicle |
| [SellVehicle](api.type.html#SellVehicle) | Command to sell a vehicle immediately |
| [SendScriptEvent](api.type.html#SendScriptEvent) | Command to send and event from the gui state to the engine state. |
| [SendToDepot](api.type.html#SendToDepot) | Command to send a vehicle to the nearest depot |
| [SetAnimalState](api.type.html#SetAnimalState) | Sends a command object to be executed later or immediately depending on the context. |
| [SetCalendarSpeed](api.type.html#SetCalendarSpeed) | Command to set the calendar speed (does affect only availability of objects). |
| [SetColor](api.type.html#SetColor) | Changes the color of an entity. |
| [SetDate](api.type.html#SetDate) | Changes the current in-game date. |
| [SetGameSpeed](api.type.html#SetGameSpeed) | Command to set the game speed (does affect simulation speed). |
| [SetLine](api.type.html#SetLine) | Command to set a vehicle to a given line and stop |
| [SetName](api.type.html#SetName) | Command to change the name of an entity. |
| [SetSimBuildingClosureTimeStamp](api.type.html#SetSimBuildingClosureTimeStamp) | Command to change the closureTimeStamp of a building entity. |
| [SetSimBuildingManualDevelopment](api.type.html#SetSimBuildingManualDevelopment) | Command to change the development mode of a building entity. |
| [SetTownInfo](api.type.html#SetTownInfo) | Command to set the town information. |
| [SetUserStopped](api.type.html#SetUserStopped) | Command to stop the vehicle |
| [SetVehicleManualDeparture](api.type.html#SetVehicleManualDeparture) | Command to change the departure mode of a vehicle entity. |
| [SetVehicleShouldDepart](api.type.html#SetVehicleShouldDepart) | Command to force the vehicle to depart immediately, after closing the doors |
| [SetVehicleTargetMaintenanceState](api.type.html#SetVehicleTargetMaintenanceState) | Command to stop the vehicle |
| [SpawnAnimal](api.type.html#SpawnAnimal) | Command to spawn animals. |
| [UpdateLine](api.type.html#UpdateLine) | Command to modify a single line. |

## [Enum](api.type.html#Enum)

|  |  |
|----|----|
| [enum.Carrier](api.type.html#enum.Carrier) | Defines the carrier. |
| [enum.DistanceUnit](api.type.html#enum.DistanceUnit) | DistanceUnit represents the unit of measurement used for distance. |
| [enum.EdgeObjectType](api.type.html#enum.EdgeObjectType) | Defines the type of an edge object. |
| [enum.ForceUnit](api.type.html#enum.ForceUnit) | ForceUnit represents the unit of measurement used for force. |
| [enum.InputMode](api.type.html#enum.InputMode) | InputMode represents the current input mode. |
| [enum.MoneyMode](api.type.html#enum.MoneyMode) | MoneyMode represents the money mode. |
| [enum.MultisamplingMode](api.type.html#enum.MultisamplingMode) | MultisamplingMode for anti aliasing. |
| [enum.PowerUnit](api.type.html#enum.PowerUnit) | PowerUnit represents the unit of measurement used for power. |
| [enum.RendererBackend](api.type.html#enum.RendererBackend) | RendererBackend represents the backend used for rendering. |
| [enum.SpeedUnit](api.type.html#enum.SpeedUnit) | SpeedUnit represents the unit of measurement used for speed. |
| [enum.TransportMode](api.type.html#enum.TransportMode) | Defines the transport mode (this is used to blacklist/whitelist vehicles onto transport network edges). |
| [enum.TransportVehicleState](api.type.html#enum.TransportVehicleState) | TransportVehicleState represents the state the vehicle is currently at. |
| [enum.UiMode](api.type.html#enum.UiMode) | UiMode represents the current UI visualization mode. |
| [enum.WeightUnit](api.type.html#enum.WeightUnit) | WeightUnit represents the unit of measurement used for power. |

## [Journal](api.type.html#Journal)

|  |  |
|----|----|
| [enum.JournalEntry](api.type.html#enum.JournalEntry) | Configuration of vehicles that can use the line |
| [enum.JournalEntryCarrier](api.type.html#enum.JournalEntryCarrier) | Journal entry Carrier Category |
| [enum.JournalEntryCategory](api.type.html#enum.JournalEntryCategory) | Details about the classification of the journal entry |
| [enum.JournalEntryConstruction](api.type.html#enum.JournalEntryConstruction) | Journal entry Construction Category |
| [enum.JournalEntryMaintenance](api.type.html#enum.JournalEntryMaintenance) | Journal entry Maintenance Category |
| [enum.JournalEntryOther](api.type.html#enum.JournalEntryOther) | Journal entry Other Category |
| [enum.JournalEntryType](api.type.html#enum.JournalEntryType) | Journal entry Type Category |

## [Model](api.type.html#Model)

|  |  |
|----|----|
| [ModelInstance](api.type.html#ModelInstance) | A model in the world, with complete information |
| [ThinModelInstance](api.type.html#ThinModelInstance) | A model in the world, with very light information |

## [Line](api.type.html#Line)

|  |  |
|----|----|
| [Line.Stop](api.type.html#Line.Stop) | Configuration for a line stop |
| [Line.StopConfig](api.type.html#Line.StopConfig) | Configuration details for a line stop |
| [LineVehicleInfo](api.type.html#LineVehicleInfo) | Configuration of vehicles that can use the line |

## [Entity Components](api.type.html#Entity_Components)

|  |  |
|----|----|
| [Account](api.type.html#Account) | Contains financial data. |
| [Aircraft](api.type.html#Aircraft) | Data attached to aircraft. |
| [Animal](api.type.html#Animal) | Data attached to animals. |
| [AssetGroup](api.type.html#AssetGroup) | Data attached to assets, in particular trees. |
| [AssetGroupAutoRemove](api.type.html#AssetGroupAutoRemove) | Data attached to assets entities to enable automatic removal when it collides with newly built objects. |
| [AudioEmitter](api.type.html#AudioEmitter) | An entity with an AudioEmitter emits a sound source |
| [BaseEdge](api.type.html#BaseEdge) | Type attached to strets and tracks, specifying the street type and other details. |
| [BaseEdgeStreet](api.type.html#BaseEdgeStreet) | Contains details about a base edge when it is a street. |
| [BaseEdgeTrack](api.type.html#BaseEdgeTrack) | Contains details about a base edge when it is a track. |
| [BaseNode](api.type.html#BaseNode) | A node in a street graph, e.g. |
| [BaseNodeTrafficLight](api.type.html#BaseNodeTrafficLight) | Additional traffic light data for a base node. |
| [BoundingVolume](api.type.html#BoundingVolume) | Contains the bounding box of an entity. |
| [Bridge](api.type.html#Bridge) | Contains the full information and the entire spline of a bridge, if this was configured to do so. |
| [BuildCost](api.type.html#BuildCost) | Stores the costs of an entity (e.g. |
| [BulldozerInfo](api.type.html#BulldozerInfo) | Allows to set certain entities to be not bulldozable. |
| [Color](api.type.html#Color) | Specifies the color of an entity |
| [Construction](api.type.html#Construction) | A construction: usually contains stations, depots, town buildings or industries. |
| [EmissionGrid](api.type.html#EmissionGrid) | The grid containing the emission data |
| [Field](api.type.html#Field) | Contains data representing a farm field on the terrain |
| [GameSpeed](api.type.html#GameSpeed) | Information about the current game simulation and calendar speed. |
| [GameTime](api.type.html#GameTime) | Information about the current ingame time. |
| [Line](api.type.html#Line) | An line with stops and configurations |
| [LogBook](api.type.html#LogBook) | A LogBook contains information about the evolution of a variable (e.g. |
| [LotList](api.type.html#LotList) | Information about ground textures that are paining the terrain |
| [MaintenanceCost](api.type.html#MaintenanceCost) | Contains the maintenance cost of objects |
| [ModelInstanceList](api.type.html#ModelInstanceList) | Contains all models rendered by the entity |
| [ModelPerson](api.type.html#ModelPerson) | Additional data for persons walking in the world |
| [ModelPersonIdle](api.type.html#ModelPersonIdle) | Additional data for idle person |
| [MovePath](api.type.html#MovePath) | Represents a path a vehicle is currently following |
| [MovePathAircraft](api.type.html#MovePathAircraft) | Additional data for aircraft |
| [Name](api.type.html#Name) | Specifies the name of an entity |
| [Parcel](api.type.html#Parcel) | A parcel is a region of space near a road where a town building can be built. |
| [ParcelData](api.type.html#ParcelData) | Entities attached to a segment |
| [ParticleSystem](api.type.html#ParticleSystem) | A particle emitted as graphical effect |
| [PersonCapacity](api.type.html#PersonCapacity) | Contains information about a workplace of household. |
| [Player](api.type.html#Player) | Represent a player |
| [PlayerOwned](api.type.html#PlayerOwned) | An entity with player owner is property of the owner and can be bulldozed only by him. |
| [RailVehicle](api.type.html#RailVehicle) | Represents a single waggon of a train (a single carriage or engine) |
| [RailroadCrossing](api.type.html#RailroadCrossing) | A railroad crossing |
| [RoadVehicle](api.type.html#RoadVehicle) | Represents a vehicle travelling on roads (either bus or truck) |
| [RunwayList](api.type.html#RunwayList) | All runways for the entity transport network. |
| [Shape](api.type.html#Shape) | Contains a procedurally generated shape. |
| [ShapeList](api.type.html#ShapeList) | Contains a list procedurally generated shapes. |
| [Ship](api.type.html#Ship) | Contains information about pathing and extra data of ships. |
| [SignalList](api.type.html#SignalList) | Contains a list of signals for the entity. |
| [SimBuilding](api.type.html#SimBuilding) | Contains information about industries. |
| [SimCargo](api.type.html#SimCargo) | Additional data for cargo. |
| [SimCargoAtTerminal](api.type.html#SimCargoAtTerminal) | Additional data for cargo waiting at the terminal |
| [SimEntityAtBuilding](api.type.html#SimEntityAtBuilding) | Additional data for entities waiting at buildings. |
| [SimEntityAtStock](api.type.html#SimEntityAtStock) | Additional data for entities waiting at industries. |
| [SimEntityAtTerminal](api.type.html#SimEntityAtTerminal) | Additional data for entities waiting at terminals. |
| [SimEntityAtVehicle](api.type.html#SimEntityAtVehicle) | Additional data for entities travelling on a vehicle. |
| [SimEntityIdle](api.type.html#SimEntityIdle) | Additional data for entities that are idle. |
| [SimEntityMoving](api.type.html#SimEntityMoving) | Additional data for entities that are moving. |
| [SimPerson](api.type.html#SimPerson) | Additional data for persons. |
| [SimPersonAtTerminal](api.type.html#SimPersonAtTerminal) | Additional data for a person waiting at the terminal |
| [SimPersonAtVehicle](api.type.html#SimPersonAtVehicle) | Additional data for a person travelling on a vehicle |
| [Station](api.type.html#Station) | Defines a station, i.e. |
| [StationGroup](api.type.html#StationGroup) | Defines a group of stations, can group together stations with very different transport modes |
| [SubShape](api.type.html#SubShape) | Contains a procedurally generated sub-shape. |
| [Terrain](api.type.html#Terrain) | Contains information about the map. |
| [TerrainTile](api.type.html#TerrainTile) | Contains information about a single tile of the map. |
| [TerrainTileBrush](api.type.html#TerrainTileBrush) | Contains information about the brush layer of a tile of the map. |
| [TerrainTileHeightmap](api.type.html#TerrainTileHeightmap) | Contains information about the geometry of the tile. |
| [TickEpoch](api.type.html#TickEpoch) | Tracks information about the last time an entity was modified or added. |
| [Town](api.type.html#Town) | Contains information about a single town. |
| [TownBuilding](api.type.html#TownBuilding) | Contains information about a town building. |
| [TownConnection](api.type.html#TownConnection) | Defines a connection between towns. |
| [TpNetLink](api.type.html#TpNetLink) | Represents a link between transport networks. |
| [Train](api.type.html#Train) | Represents an entire train |
| [Tram](api.type.html#Tram) | Represents a tram |
| [TransportHistory](api.type.html#TransportHistory) | Contains the history of transported cargo for the entity. |
| [TransportNetwork](api.type.html#TransportNetwork) | Contains the graph of edges and nodes onto which vehicles and person move. |
| [TransportVehicle](api.type.html#TransportVehicle) | Represents a single transport vehicle |
| [VehicleDepot](api.type.html#VehicleDepot) | Defines a vehicle depot |
| [VehicleOrder](api.type.html#VehicleOrder) | Contains information about precedence and breaking. |
| [WaterMesh](api.type.html#WaterMesh) | Contains the geometry information for a single tile of water. |

## [Station](api.type.html#Station)

|  |  |
|----|----|
| [Pool](api.type.html#Pool) | Defines a common pool in a station for overflowing terminal capacities |

## [MapGeneration](api.type.html#MapGeneration)

|  |  |
|----|----|
| [Asset](api.type.html#Asset) | A single asset |
| [Industry](api.type.html#Industry) | Data about industry |
| [Map](api.type.html#Map) | Information about the map, for map generation purposes. |
| [MapAsset](api.type.html#MapAsset) | Information about assets to be placed on the map |
| [MapIndustry](api.type.html#MapIndustry) | Information about industries on a map |
| [MapTown](api.type.html#MapTown) | Information about towns on a map |
| [MapTree](api.type.html#MapTree) | Information about trees to be placed on the map |
| [Town](api.type.html#Town) | Data about town |
| [TownInfo](api.type.html#TownInfo) | Information about towns for map generation. |
| [Tree](api.type.html#Tree) | A single tree |

## [Class type.BoundingInfo](api.type.html#Class_type_BoundingInfo)

|  |  |
|----|----|
| [type.BoundingInfo.bbMax](api.type.html#type.BoundingInfo.bbMax) | Second corner |
| [type.BoundingInfo.bbMin](api.type.html#type.BoundingInfo.bbMin) | First corner |
| [type.BoundingInfo.new(bbMin, bbMax)](api.type.html#type.BoundingInfo.new) | Creates a new bounding info |

## [Class type.Collider](api.type.html#Class_type_Collider)

|  |  |
|----|----|
| [type.Collider.box](api.type.html#type.Collider.box) | Only if type == 3, a collider made up of a set of points |
| [type.Collider.box](api.type.html#type.Collider.box) | Only if type == 2, a collider with a cylindrical shape |
| [type.Collider.box](api.type.html#type.Collider.box) | Only if type == 1, a collider with a cuboidal shape |
| [type.Collider.type](api.type.html#type.Collider.type) | The type of collider 0 = NONE, 1 = BOX, 2 = CYLINDER, 3 = POINT_CLOUD |
| [type.Collider.type](api.type.html#type.Collider.type) | The transform of the collider, relative to which the other data is transformed |

## [Class type.Collider.Box](api.type.html#Class_type_Collider_Box)

|  |  |
|----|----|
| [type.Collider.Box.halfExtents](api.type.html#type.Collider.Box.halfExtents) | Distance from transform position to define the cuboid (in the direction relative to the transform) |
| [type.Collider.Box.halfExtents](api.type.html#type.Collider.Box.halfExtents) | The dimensions from the center the cylinder extends to. |

## [Class type.Collider.PointCloud](api.type.html#Class_type_Collider_PointCloud)

|  |  |
|----|----|
| [type.Collider.PointCloud.points](api.type.html#type.Collider.PointCloud.points) | A list of points specifying all collision points |

## [Class type.MetadataMap](api.type.html#Class_type_MetadataMap)

|  |  |
|----|----|
| [type.MetadataMap.airVehicle](api.type.html#type.MetadataMap.airVehicle) | Defines a model to be used as a air vehicle |
| [type.MetadataMap.animal](api.type.html#type.MetadataMap.animal) | Defines the properties of an animal |
| [type.MetadataMap.autoGroundTex](api.type.html#type.MetadataMap.autoGroundTex) | Defines a model to place automatic ground textures when placed in-world |
| [type.MetadataMap.availability](api.type.html#type.MetadataMap.availability) | In-game availability of the object |
| [type.MetadataMap.cameraConfig](api.type.html#type.MetadataMap.cameraConfig) | Defines custom camera configurations for in-game cockpit view |
| [type.MetadataMap.car](api.type.html#type.MetadataMap.car) | Empty placeholder to define which models are to be used as car, must also have a roadVehicle entry |
| [type.MetadataMap.cargoSlotProvider](api.type.html#type.MetadataMap.cargoSlotProvider) | Used in conjuncion with transport vehicle metadata to define cargo positioning of custom cargo models |
| [type.MetadataMap.category](api.type.html#type.MetadataMap.category) | Defines UI categories to sort the model in the menu |
| [type.MetadataMap.categoryList](api.type.html#type.MetadataMap.categoryList) | Additional metadata tags used for terrain generation and other purposes |
| [type.MetadataMap.colorConfig](api.type.html#type.MetadataMap.colorConfig) | Defines the color configurations of the vehicle |
| [type.MetadataMap.cost](api.type.html#type.MetadataMap.cost) | In-game cost of the object |
| [type.MetadataMap.description](api.type.html#type.MetadataMap.description) | Name, icons and description for UI display |
| [type.MetadataMap.emission](api.type.html#type.MetadataMap.emission) | In-game emission configuration of the object |
| [type.MetadataMap.labelList](api.type.html#type.MetadataMap.labelList) | Defines additional information for the emission of labels in-game |
| [type.MetadataMap.maintenance](api.type.html#type.MetadataMap.maintenance) | In-game maintenance cost and other data of the object |
| [type.MetadataMap.order](api.type.html#type.MetadataMap.order) | Defines UI ordering when the item is placed in the menu |
| [type.MetadataMap.particleSystem](api.type.html#type.MetadataMap.particleSystem) | Particles emitted by the object when placed in-game |
| [type.MetadataMap.person](api.type.html#type.MetadataMap.person) | Definition for in-game persons |
| [type.MetadataMap.roadVehicle](api.type.html#type.MetadataMap.roadVehicle) | Defines a model to be used as a rail vehicle |
| [type.MetadataMap.roadVehicle](api.type.html#type.MetadataMap.roadVehicle) | Defines a model to be used as a road vehicle |
| [type.MetadataMap.rock](api.type.html#type.MetadataMap.rock) | Used to define which models can be placed as rock assets |
| [type.MetadataMap.seatProvider](api.type.html#type.MetadataMap.seatProvider) | Used in conjuncion with transport vehicle metadata to define seating, driving and person places within the vehicle |
| [type.MetadataMap.signal](api.type.html#type.MetadataMap.signal) | Used to define a model to be usable as signal |
| [type.MetadataMap.soundConfig](api.type.html#type.MetadataMap.soundConfig) | Defines the sound emitted by the model when in-game |
| [type.MetadataMap.streetTerminal](api.type.html#type.MetadataMap.streetTerminal) | Defines a model to be used as a street stop |
| [type.MetadataMap.terrainAlignmentProvider](api.type.html#type.MetadataMap.terrainAlignmentProvider) | Used to define additional terrain modifications the model applies to the terrain when placed |
| [type.MetadataMap.transportNetworkProvider](api.type.html#type.MetadataMap.transportNetworkProvider) | Defines a transport network to be created when the model is placed |
| [type.MetadataMap.transportVehicle](api.type.html#type.MetadataMap.transportVehicle) | Used to define a model to be usable as transport vehicle |
| [type.MetadataMap.tree](api.type.html#type.MetadataMap.tree) | Used to define which models can be placed as tree assets |
| [type.MetadataMap.vehicleDepot](api.type.html#type.MetadataMap.vehicleDepot) | Used to define a model to be usable as vehicle depot |
| [type.MetadataMap.waterVehicle](api.type.html#type.MetadataMap.waterVehicle) | Defines a model to be used as a water vehicle |

## [Resources](api.type.html#Resources)

|  |  |
|----|----|
| [AutoGroundTex](api.type.html#AutoGroundTex) | Specification for auto-generated ground textures |
| [BridgeType](api.type.html#BridgeType) | Specification for bridge types |
| [BuildMode](api.type.html#BuildMode) | How the construction reacts to mouse inputs while building. |
| [BuildingType](api.type.html#BuildingType) | Specification for town building types |
| [CargoType](api.type.html#CargoType) | Specification for cargo types |
| [ConstructionDesc.SnapConfig](api.type.html#ConstructionDesc.SnapConfig) | Defines if the construction can be snapped to tracks, roads or the water surface |
| [ConstructionType](api.type.html#ConstructionType) | Type of the construction for displaying in the correct UI category and controlling specific behaviour for the type. |
| [GroundTexture](api.type.html#GroundTexture) | Specification for ground textures |
| [GroundTexture.Data](api.type.html#GroundTexture.Data) | Extra information for ground textures |
| [IconRenderDistances](api.type.html#IconRenderDistances) | Used to configure the HUD icon render distances from the camera view. |
| [LandUseType](api.type.html#LandUseType) | Enumeration for land use types |
| [LaneConfig](api.type.html#LaneConfig) | Specification for the lanes of street |
| [ModuleDesc](api.type.html#ModuleDesc) | Used to configure new modules. |
| [MultipleUnit](api.type.html#MultipleUnit) | Specification for multiple units |
| [MultipleUnit.Vehicle](api.type.html#MultipleUnit.Vehicle) | Specification for multiple units individual vehicles |
| [RailroadCrossingType](api.type.html#RailroadCrossingType) | Specification for railroad crossings |
| [RailroadCrossingType.ConfigEntry](api.type.html#RailroadCrossingType.ConfigEntry) | Specification for railroad crossings models |
| [ScriptParamType](api.type.html#ScriptParamType) | UI Type for displaying the parameter. |
| [StreetType](api.type.html#StreetType) | Specification for street types |
| [TownBuildingParams](api.type.html#TownBuildingParams) | Extra information for town buildings |
| [TrackType](api.type.html#TrackType) | Specification for a track type |
| [TrafficLightType](api.type.html#TrafficLightType) | Specification for traffic lights |
| [TunnelType](api.type.html#TunnelType) | Specification for tunnel types |

## [Class ScriptRef](api.type.html#Class_ScriptRef)

|  |  |
|----|----|
| [ScriptRef.fileName](api.type.html#ScriptRef.fileName) | The script path, toghether with the lua path inside the function For example, this is the reference for a Crane flock function: "models/model/animal/animal.flock.crane" \* the tokens separated by '/' before '.' are taken as part of the the path: "models/model/animal/animal" \* the tokens after the second '.' represent the lua path (in this case "flock.crane") |
| [ScriptRef.params](api.type.html#ScriptRef.params) | A lua table of closure parameters that will be added at the end of the parameter list when the script is called. |

## [Class ScriptParam](api.type.html#Class_ScriptParam)

|  |  |
|----|----|
| [ScriptParam.defaultIndex](api.type.html#ScriptParam.defaultIndex) | Default index/state |
| [ScriptParam.key](api.type.html#ScriptParam.key) | Unique key that is passed to the construction functions |
| [ScriptParam.name](api.type.html#ScriptParam.name) | Display name |
| [ScriptParam.tooltip](api.type.html#ScriptParam.tooltip) | Tooltip to display over certain parameters |
| [ScriptParam.uiType](api.type.html#ScriptParam.uiType) | Type of ui shown in user interface selection |
| [ScriptParam.values](api.type.html#ScriptParam.values) | All possible values of the params |
| [ScriptParam.yearFrom](api.type.html#ScriptParam.yearFrom) | Availability from |
| [ScriptParam.yearTo](api.type.html#ScriptParam.yearTo) | Availability to |

## [Class ConstructionDesc](api.type.html#Class_ConstructionDesc)

|  |  |
|----|----|
| [ConstructionDesc.costs](api.type.html#ConstructionDesc.costs) | Render distance for costs and income HUD icons |
| [ConstructionDesc.depots](api.type.html#ConstructionDesc.depots) | Render distance for depots HUD icons |
| [ConstructionDesc.fileName](api.type.html#ConstructionDesc.fileName) | fileName |
| [ConstructionDesc.industries](api.type.html#ConstructionDesc.industries) | Render distance for industries HUD icons |
| [ConstructionDesc.params](api.type.html#ConstructionDesc.params) | Configuration |
| [ConstructionDesc.planes](api.type.html#ConstructionDesc.planes) | Render distance planes HUD icons |
| [ConstructionDesc.roadVehicles](api.type.html#ConstructionDesc.roadVehicles) | Render distance for roadVehicles HUD icons |
| [ConstructionDesc.ships](api.type.html#ConstructionDesc.ships) | Render distance for ships HUD icons |
| [ConstructionDesc.signals](api.type.html#ConstructionDesc.signals) | Render distance signals HUD icons |
| [ConstructionDesc.stations](api.type.html#ConstructionDesc.stations) | Render distance for stations HUD icons |
| [ConstructionDesc.towns](api.type.html#ConstructionDesc.towns) | Render distance for towns HUD icons |
| [ConstructionDesc.towns](api.type.html#ConstructionDesc.towns) | Render distance for townBuildingsCargo HUD icons |
| [ConstructionDesc.trains](api.type.html#ConstructionDesc.trains) | Render distance trains HUD icons |

## [Transport](api.type.html#Transport)

|  |  |
|----|----|
| [EdgeGeometry](api.type.html#EdgeGeometry) | Defines the geometry (shape) of an edge. |
| [EdgeGeometry.Arc](api.type.html#EdgeGeometry.Arc) | Arc |
| [EdgeGeometry.CubicOffsetSpline](api.type.html#EdgeGeometry.CubicOffsetSpline) | CubicOffsetSpline |
| [EdgeGeometry.CubicSpline](api.type.html#EdgeGeometry.CubicSpline) | CubicSpline |
| [EdgeGeometry.Straight](api.type.html#EdgeGeometry.Straight) | Straight |
| [EdgeIdDir](api.type.html#EdgeIdDir) | Input helper type. |
| [EdgeIdDirAndLength](api.type.html#EdgeIdDirAndLength) | Input helper type. |
| [EdgeIsect](api.type.html#EdgeIsect) | Specifies the intersection of two edges, with waiting area for vehicles. |
| [EdgeIsect.Info](api.type.html#EdgeIsect.Info) | Data for an edge intersect |
| [ExtPath.ExtPathEdge](api.type.html#ExtPath.ExtPathEdge) | A path edge of an ExtPath. |
| [ExtPath.ExtPathEdge.EdgeRange](api.type.html#ExtPath.ExtPathEdge.EdgeRange) | An EdgeRange of an ExtPath.ExtPathEdge |
| [ExtPath.ExtPathEdge::LinkEdge](api.type.html#ExtPath.ExtPathEdge::LinkEdge) | An LinkEdge of an ExtPath.ExtPathEdge |
| [NodeId](api.type.html#NodeId) | References a single transport network node within a transport network entity |
| [PortId](api.type.html#PortId) | Identifies a [TransportNodeData.Port](api.type.html#TransportNodeData.Port) of a Node within a [type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK |
| [SignalId](api.type.html#SignalId) | Identifies a street/track signal |
| [StationTerminal](api.type.html#StationTerminal) | Identifies a Terminal inside a StationGroup |
| [TpNetData](api.type.html#TpNetData) | Contains additional data about the transport network. |
| [TransportEdge](api.type.html#TransportEdge) | A single edge within a [type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK. |
| [TransportEdgeData](api.type.html#TransportEdgeData) | Data attached to a [transport network edge](api.type.html#TransportEdge). |
| [TransportNode](api.type.html#TransportNode) | A single node within a [type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK. |
| [TransportNodeData](api.type.html#TransportNodeData) | Data attached to a [transport network node](api.type.html#TransportNode). |
| [TransportNodeData.Port](api.type.html#TransportNodeData.Port) | Specifies the connectivity of the node. |

## [Pathfinding](api.type.html#Pathfinding)

|  |  |
|----|----|
| [type.EdgeIdDir.new(edgeID, direction)](api.type.html#type.EdgeIdDir.new) | Generates a new [EdgeIdDir](api.type.html#EdgeIdDir) item. |
| [type.EdgeIdDirAndLength.new(edgeID, direction, length)](api.type.html#type.EdgeIdDirAndLength.new) | Generates a new [EdgeIdDirAndLength](api.type.html#EdgeIdDirAndLength) item. |

## [Class EdgeId](api.type.html#Class_EdgeId)

|  |  |
|----|----|
| [EdgeId.edgeId](api.type.html#EdgeId.edgeId) | The [type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK entity |
| [EdgeId.index](api.type.html#EdgeId.index) | The index within the edges field of the transport network component (starting at 0) |
| [EdgeId.new()](api.type.html#EdgeId.new) | Constructor: either no parameters or and entity and an index |

## [Class EdgePos](api.type.html#Class_EdgePos)

|  |  |
|----|----|
| [EdgePos.edgeId](api.type.html#EdgePos.edgeId) | The edge (entity and index within transport network) |
| [EdgePos.param](api.type.html#EdgePos.param) | The position on the edge |

## [Class Path](api.type.html#Class_Path)

|  |  |
|----|----|
| [Path.edges](api.type.html#Path.edges) | The path data |
| [Path.endOffset](api.type.html#Path.endOffset) | The actual end of the path (i.e. |

## [Class PathPos](api.type.html#Class_PathPos)

|  |  |
|----|----|
| [PathPos.edgeIndex](api.type.html#PathPos.edgeIndex) | The index within a path |
| [PathPos.pos](api.type.html#PathPos.pos) | The position on the spline, relative to the length of the spline |
| [PathPos.pos01](api.type.html#PathPos.pos01) | The position on the spline, normalized as parameter from 0 to 1 |

## [Class Terminal](api.type.html#Class_Terminal)

|  |  |
|----|----|
| [Terminal.personEdges](api.type.html#Terminal.personEdges) | List of all edges for the person/cargo wait area |
| [Terminal.personNodes](api.type.html#Terminal.personNodes) | list of all nodes for the person/cargo wait area |
| [Terminal.tag](api.type.html#Terminal.tag) | Identifying tag |
| [Terminal.vehicleNodeId](api.type.html#Terminal.vehicleNodeId) | The position (node) where the vehicle will attempt to stop |

## [Class PathPosData](api.type.html#Class_PathPosData)

|  |  |
|----|----|
| [PathPosData.Signal](api.type.html#PathPosData.Signal) | Contains information about a street/track signal |
| [PathPosData.SignalType](api.type.html#PathPosData.SignalType) | Enum containing the type of the signal |
| [PathPosData.pPrime](api.type.html#PathPosData.pPrime) | The first derivative |
| [PathPosData.pPrimePrime](api.type.html#PathPosData.pPrimePrime) | The second derivative |
| [PathPosData.position](api.type.html#PathPosData.position) | The position in the world |

## [Proposal](api.type.html#Proposal)

|  |  |
|----|----|
| [CollisionInfo](api.type.html#CollisionInfo) | Collision information of the [type.Proposal](api.type.html#Proposal). |
| [CollisionInfo.EntityData](api.type.html#CollisionInfo.EntityData) | More data about the collision. |
| [Context](api.type.html#Context) | A structure containing extra options for the building of a proposal. |
| [ErrorState](api.type.html#ErrorState) | Contains error information for a proposal. |
| [NodeAndEntity](api.type.html#NodeAndEntity) | An entity with a [type.ComponentType](api.type.html#ComponentType).BASE_NODE component. |
| [Proposal](api.type.html#Proposal) | A more complete version of the [type.SimpleProposal](api.type.html#SimpleProposal). |
| [Proposal.ConstructionEntity](api.type.html#Proposal.ConstructionEntity) | A more complete version of the [type.ConstructionEntity](api.type.html#ConstructionEntity). |
| [ProposalCreateCallbackResult](api.type.html#ProposalCreateCallbackResult) | Contains only the error message. |
| [ProposalData](api.type.html#ProposalData) | Contains the processed result of a [type.Proposal](api.type.html#Proposal). |
| [SegmentAndEntity](api.type.html#SegmentAndEntity) | An entity with a [type.ComponentType](api.type.html#ComponentType).BASE_EDGE component and extra information. |
| [StreetProposal](api.type.html#StreetProposal) | A more complete version of the [type.SimpleStreetProposal](api.type.html#SimpleStreetProposal). |
| [StreetProposal.EdgeObject](api.type.html#StreetProposal.EdgeObject) | A more complete version of the [type.EdgeObject](api.type.html#EdgeObject). |
| [TpNetLinkProposal](api.type.html#TpNetLinkProposal) | Contains the processed result with all edge links. |
| [TpNetLinkProposal.Data](api.type.html#TpNetLinkProposal.Data) | Information about a single link. |

  
  

## <span id="Tables"></span>Tables

<span id="AircraftInfo"></span> **AircraftInfo**  
Information about the aircraft.

<span id="ComponentType"></span> **ComponentType**  
Represents a single component that can be attached to an entity.

### Fields:

- <span class="parameter">ACCOUNT</span> = 0
- <span class="parameter">AIRCRAFT</span> = 1
- <span class="parameter">ANIMAL</span> = 2
- <span class="parameter">ASSET_GROUP</span> = 3
- <span class="parameter">ASSET_GROUP_AUTOREMOVE</span> = 4
- <span class="parameter">AUDIO_EMITTER</span> = 73
- <span class="parameter">BASE_EDGE</span> = 5
- <span class="parameter">BASE_EDGE_STREET</span> = 6
- <span class="parameter">BASE_EDGE_TRACK</span> = 7
- <span class="parameter">BASE_NODE</span> = 8
- <span class="parameter">BASE_NODE_TRAFFIC_LIGHT</span> = 9
- <span class="parameter">BASE_PARALLEL_STRIP</span> = 10
- <span class="parameter">BOUNDING_VOLUME</span> = 56
- <span class="parameter">BRIDGE</span> = 76
- <span class="parameter">BUILD_COST</span> = 11
- <span class="parameter">COLLIDER_LIST</span> = 12
- <span class="parameter">COLOR</span> = 64
- <span class="parameter">CONSTRUCTION</span> = 13
- <span class="parameter">EMISSION_GRID</span> = 14
- <span class="parameter">FIELD</span> = 57
- <span class="parameter">GAME_SPEED</span> = 15
- <span class="parameter">GAME_TIME</span> = 16
- <span class="parameter">LINE</span> = 65
- <span class="parameter">LOG_BOOK</span> = 74
- <span class="parameter">LOT_LIST</span> = 17
- <span class="parameter">MAINTENANCE_COST</span> = 18
- <span class="parameter">MODEL_INSTANCE_LIST</span> = 58
- <span class="parameter">MODEL_PERSON</span> = 19
- <span class="parameter">MOVE_PATH</span> = 66
- <span class="parameter">MOVE_PATH_AIRCRAFT</span> = 20
- <span class="parameter">NAME</span> = 63
- <span class="parameter">PARCEL</span> = 71
- <span class="parameter">PARTICLE_SYSTEM</span> = 72
- <span class="parameter">PERSON_CAPACITY</span> = 47
- <span class="parameter">PLAYER</span> = 21
- <span class="parameter">PLAYER_OWNED</span> = 75
- <span class="parameter">RAIL_VEHICLE</span> = 68
- <span class="parameter">RAILROAD_CROSSING</span> = 22
- <span class="parameter">ROAD_VEHICLE</span> = 67
- <span class="parameter">RUNWAY_LIST</span> = 23
- <span class="parameter">SCAFFOLD</span> = 48
- <span class="parameter">SHAPE_LIST</span> = 24
- <span class="parameter">SHIP</span> = 25
- <span class="parameter">SIGNAL_LIST</span> = 26
- <span class="parameter">SIM_BUILDING</span> = 27
- <span class="parameter">SIM_CARGO</span> = 29
- <span class="parameter">SIM_CARGO_AT_TERMINAL</span> = 38
- <span class="parameter">SIM_ENTITY_AT_BUILDING</span> = 30
- <span class="parameter">SIM_ENTITY_AT_STOCK</span> = 31
- <span class="parameter">SIM_ENTITY_AT_TERMINAL</span> = 32
- <span class="parameter">SIM_ENTITY_AT_VEHICLE</span> = 33
- <span class="parameter">SIM_ENTITY_IDLE</span> = 34
- <span class="parameter">SIM_ENTITY_MOVING</span> = 35
- <span class="parameter">SIM_PERSON</span> = 28
- <span class="parameter">SIM_PERSON_AT_TERMINAL</span> = 36
- <span class="parameter">SIM_PERSON_AT_VEHICLE</span> = 37
- <span class="parameter">STATION</span> = 59
- <span class="parameter">STATION_GROUP</span> = 60
- <span class="parameter">STOCK_LIST</span> = 39
- <span class="parameter">TERRAIN</span> = 40
- <span class="parameter">TERRAIN_ALIGNMENT_LIST</span> = 41
- <span class="parameter">TERRAIN_TILE</span> = 42
- <span class="parameter">TERRAIN_TILE_BRUSH</span> = 43
- <span class="parameter">TERRAIN_TILE_HEIGHTMAP</span> = 44
- <span class="parameter">TICK_EPOCH</span> = 45
- <span class="parameter">TOWN</span> = 46
- <span class="parameter">TOWN_BUILDING</span> = 49
- <span class="parameter">TOWN_CONNECTION</span> = 61
- <span class="parameter">TRAIN</span> = 69
- <span class="parameter">TRANSPORT_HISTORY</span> = 51
- <span class="parameter">TRANSPORT_NETWORK</span> = 52
- <span class="parameter">TRANSPORT_VEHICLE</span> = 70
- <span class="parameter">TP_NET_LINK</span> = 50
- <span class="parameter">VEHICLE_DEPOT</span> = 62
- <span class="parameter">VEHICLE_ORDER</span> = 53
- <span class="parameter">WATER_MESH</span> = 54
- <span class="parameter">WORLD</span> = 55

<span id="ConstructionEntity"></span> **ConstructionEntity**  
A structure holding information to add construction entities together
with a [type.SimpleProposal](api.type.html#SimpleProposal). It uses the
data contained in a ".con" file (or added via
[api.res.constructionRep](api.res.html#constructionRep)) to specify a
construction.

### Fields:

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> A fileName (or identifier in the case
  of dynamic constructions)
- <span class="parameter">params</span>
  <span class="types"><span class="type">Table</span></span> the
  parameters, as received by the `updateFn`
- <span class="parameter">transf</span>
  <span class="types"><a href="api.type.html#Mat4f" class="type">type.Mat4f</a></span>
  the local transformation in the world, used also as local
  transformation for models and modules.
- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> a name to give to the final resulting
  entity
- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the player
  entity who will own the construction
- <span class="parameter">headquarters</span>
  <span class="types"><span class="type">Entity</span></span> can be set
  to -1 to specify no headquarter owenership, or it can be a
  playerEntity if the construction is the headquarter.

<span id="EdgeObject"></span> **EdgeObject**  
A structure that holds information about new edgeobjects added to the
streets

### Fields:

- <span class="parameter">edgeEntity</span>
  <span class="types"><span class="type">Entity</span></span> must be a
  new edge in
  [type.SimpleStreetProposal](api.type.html#SimpleStreetProposal).edgesToAdd,
  starting from -1 and decreasing.
- <span class="parameter">param</span>
  <span class="types"><span class="type">double</span></span> the
  position between 0.0 and 1.0 within said edge.
- <span class="parameter">oneWay</span>
  <span class="types"><span class="type">bool</span></span> a flag
  specifying if one way or not.
- <span class="parameter">left</span>
  <span class="types"><span class="type">bool</span></span> a flag
  specifying the side of the road
- <span class="parameter">model</span>
  <span class="types"><span class="type">int</span></span> the model id
  of the edge object
- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the owner
  of the object
- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name to give the object

<span id="Interval"></span> **Interval**  
A subsection of a bridge.

<span id="LineLoadMode"></span> **LineLoadMode**  
Type of loading/waiting for the line.

### Fields:

- <span class="parameter">LOAD_IF_AVAILABLE</span> 0
- <span class="parameter">FULL_LOAD_ANY</span> 1
- <span class="parameter">FULL_LOAD_ALL</span> 2

<span id="LogBook.Log"></span> **LogBook.Log**  
A Log is an entry into a LogBook and keeps track of the evolution of
data in time.

### Fields:

- <span class="parameter">times</span>
  <span class="types"><span class="type">{int,...}</span></span>
- <span class="parameter">values</span>
  <span class="types"><span class="type">{int,...}</span></span>

<span id="Lot"></span> **Lot**  
Actual information of a [type.LotList](api.type.html#LotList)

### Fields:

- <span class="parameter">vertices</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{type.Vec2f,...}</a></span>
  list vertices of the lot
- <span class="parameter">texCoords</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{type.Vec2f,...}</a></span>
  list of texture coordinates for the lot (same length as vertices)
- <span class="parameter">triangles</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{type.Vec2f,...}</a></span>
  alternative to vertices, a list of triangles can be specified instead
  (must be a multiple of 3)
- <span class="parameter">texKey</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the ground texture key to use
- <span class="parameter">solid</span>
  <span class="types"><span class="type">bool</span></span>

<span id="Model"></span> **Model**  
Information about a single model file: metadata and bounding information

### Fields:

- <span class="parameter">metadata</span>
  <span class="types"><a href="api.type.html#type.MetadataMap"
  class="type">type.MetadataMap</a></span> Additional information about
  the model
- <span class="parameter">boundingInfo</span>
  <span class="types"><a href="api.type.html#type.BoundingInfo"
  class="type">type.BoundingInfo</a></span> Bounding box for the model
- <span class="parameter">collider</span>
  <span class="types"><a href="api.type.html#type.Collider" class="type">type.Collider</a></span>
  Collider information

<span id="MovePath.DynState"></span> **MovePath.DynState**  
The fast-changing component of the position on a path. This portion will
be interpolated between simulation frames.

### Fields:

- <span class="parameter">pathPos</span>
  <span class="types"><a href="api.type.html#PathPos" class="type">PathPos</a></span>
  the position on the path
- <span class="parameter">pathPos0</span>
  <span class="types"><a href="api.type.html#PathPos" class="type">PathPos</a></span>
  (**deprecated**) Always nil, use MovePath.dyn0.pathPos instead
- <span class="parameter">speed</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">speed0</span>
  <span class="types"><span class="type">float</span></span>
  (**deprecated**) Always nil, use MovePath.dyn0.speed instead
- <span class="parameter">brakeDecel</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">accel</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">timeUntilAccel</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">timeStanding</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">timeToIgnore</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">approachingStation</span>
  <span class="types"><span class="type">bool</span></span>

<span id="RailroadCrossingState"></span> **RailroadCrossingState**  
Animation state of a railroad crossing

### Fields:

- <span class="parameter">OPEN</span> 0
- <span class="parameter">CLOSED</span> 1
- <span class="parameter">WAITING</span> 2

<span id="RoadVehicle.DynState"></span> **RoadVehicle.DynState**  
The fast-changing component of a RoadVehicle.

### Fields:

- <span class="parameter">brakingTimer</span>
  <span class="types"><span class="type">float</span></span> time in
  seconds that counts down. When positive, braking lights are on
- <span class="parameter">turnLeft</span>
  <span class="types"><span class="type">bool</span></span> true if the
  vehicle is turning left
- <span class="parameter">turnRight</span>
  <span class="types"><span class="type">bool</span></span> true if the
  vehicle is turning right

<span id="ShipInfo"></span> **ShipInfo**  
Information about the ship.

<span id="SimpleProposal"></span> **SimpleProposal**  
A structure holding information to build/remove and update constructions
and streets. It offers much more functionality than a simple ".con"
file. See also [build_street.lua](../examples/build_street.lua.html#)
for an example. The most important operations that can be performed with
a Simple Proposal is adding/removing and modifying the following
objects: constructions (stations, depots, ), (base) edges and (base)
nodes, and edgeobjects (signals, street terminals, waypoints).

In general, there are a few rules concerning this proposal. First, old
entities are reference with the usual non-negative id, whilst new
entities are assigned a decreasing negative number starting at -1.

The general rule is that the modification/upgrade of a construction
entails removing it and adding it anew. The same rule applies to streets
and edgeobjects.

The proposal will take care of updating lines, stop, people and cargo.

### Fields:

- <span class="parameter">streetProposal</span>
  <span class="types"><a href="api.type.html#SimpleStreetProposal"
  class="type">SimpleStreetProposal</a></span> a block defining
  modification and addition of streets
- <span class="parameter">constructionsToAdd</span>
  <span class="types"><span class="type">Vector\[type.ConstructionEntity\]</span></span>
  a list of constructions to add (the entity id for constructions in
  this vector are an decreasing starting from -1)
- <span class="parameter">constructionsToRemove</span>
  <span class="types"><span class="type">Vector\[Entity\]</span></span>
  a list of construction entities to remove
- <span class="parameter">old2new</span>
  <span class="types"><span class="type">Table\[Entity,int\]</span></span>
  a mapping from old construction entities to new construction entities
  (must be an index in `constructionsToAdd}`.

<span id="SimpleStreetProposal"></span> **SimpleStreetProposal**  
A structure holding information to add street and track entities
together with a [type.SimpleProposal](api.type.html#SimpleProposal).

A street proposal can add, remove and modify street, tracks, nodes and
edge objects. To modify a street, you need to remove all appropriate
entities and add them with the correct information.

### Fields:

- <span class="parameter">nodesToAdd</span>
  <span class="types"><span class="type">Vector\[NodeAndEntity\]</span></span>
  a list of base nodes to add (entity id will be decreasing starting
  from -1 for all new entities).
- <span class="parameter">edgesToAdd</span>
  <span class="types"><span class="type">Vector\[SegmentAndEntity\]</span></span>
  a list of [base edges](api.type.html#SegmentAndEntity) to add
  (includes edge object reference which must match the content of
  edgeObjectsToRemove).
- <span class="parameter">nodesToRemove</span>
  <span class="types"><span class="type">Vector\[Entity\]</span></span>
  a list of entities with component
  [type.BaseNode](api.type.html#BaseNode) to remove.
- <span class="parameter">edgesToRemove</span>
  <span class="types"><span class="type">Vector\[Entity\]</span></span>
  list of entities with component
  [type.BaseEdge](api.type.html#BaseEdge) to remove.
- <span class="parameter">edgeObjectsToAdd</span>
  <span class="types"><span class="type">Vector\[EdgeObject\]</span></span>
  a list of [type.EdgeObject](api.type.html#EdgeObject) to add (must be
  compatible with `edgesToAdd`).
- <span class="parameter">edgeObjectsToRemove</span>
  <span class="types"><span class="type">Vector\[Entity\]</span></span>
  a list of entities to be removed.

<span id="TrainMoveInfo"></span> **TrainMoveInfo**  
Information about the train.

<span id="Tram.DynState"></span> **Tram.DynState**  
The fast-changing component of a Tram.

### Fields:

- <span class="parameter">brakingTimer</span>
  <span class="types"><span class="type">number</span></span> time in
  seconds that counts down. When positive, braking lights are on
- <span class="parameter">turnLeft</span>
  <span class="types"><span class="type">bool</span></span> true if the
  vehicle is turning left
- <span class="parameter">turnRight</span>
  <span class="types"><span class="type">bool</span></span> true if the
  vehicle is turning right

<span id="TransportVehicle.Config"></span> **TransportVehicle.Config**  
Contatins additional data for the transport vehicle

### Fields:

- <span class="parameter">capacities</span>
  <span class="types"><span class="type">{int,...}</span></span> all
  cargo capacities of the vehicle

<span id="TransportVehicleConfig"></span> **TransportVehicleConfig**  
Vehicles and data for a single transport vehicle.

### Fields:

- <span class="parameter">vehicles</span>
  <span class="types"><a href="api.type.html#TransportVehiclePart"
  class="type">{TransportVehiclePart,...}</a></span>
- <span class="parameter">vehicleGroups</span>
  <span class="types"><span class="type">{int,...}</span></span>
  Vehicles can be composed into groups, each entry is the size of the
  group. The sum of all entries must be the total of vehicles. Example:
  for a train made of a multiple unit with three cars and 1 extra waggon
  would be `{3, 1}`.

<span id="TransportVehicleInfo"></span> **TransportVehicleInfo**  
Information about all cargo of a transport vehicle

### Fields:

- <span class="parameter">cargoInfos</span>
  <span class="types"><a href="api.type.html#VehicleCargoInfo"
  class="type">{{{VehicleCargoInfo,...},...},...}</a></span> list of
  VehicleCargoInfo for vehicles, compartments and cargo types

<span id="TransportVehiclePart"></span> **TransportVehiclePart**  
A subsection of a transport Vehicle.

### Fields:

- <span class="parameter">part</span>
  <span class="types"><a href="api.type.html#VehiclePart" class="type">VehiclePart</a></span>
- <span class="parameter">purchaseTime</span>
  <span class="types"><span class="type">number</span></span>
- <span class="parameter">maintenanceState</span>
  <span class="types"><span class="type">number</span></span>
- <span class="parameter">targetMaintenanceState</span>
  <span class="types"><span class="type">number</span></span>
- <span class="parameter">autoLoadConfig</span>
  <span class="types"><span class="type">{number,...}</span></span>

<span id="TransportationStats"></span> **TransportationStats**  
A structure that holds information about the transportation data
statistics.

### Fields:

- <span class="parameter">cargoTransported</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">passengersTransported</span>
  <span class="types"><span class="type">int</span></span>

<span id="VehicleCargoInfo"></span> **VehicleCargoInfo**  
Information about cargo of a single compartment of a transport vehicle

### Fields:

- <span class="parameter">capacity</span>
  <span class="types"><span class="type">number</span></span> capacity
  of this vehicle
- <span class="parameter">offset</span>
  <span class="types"><span class="type">number</span></span> sum of the
  cargo capacities up to this vehicle

<span id="VehicleInfo"></span> **VehicleInfo**  
Infomation about train carriages

<span id="VehiclePart"></span> **VehiclePart**  
Infomation about a single vehicle in a transport vehicle

### Fields:

- <span class="parameter">modelId</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">reversed</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">loadConfig</span>
  <span class="types"><span class="type">{int,...}</span></span> Cargo
  configuration for the model. One entry per compartment. -1 means
  automatic selection of load config.
- <span class="parameter">color</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">Vec3f</a></span>
- <span class="parameter">logo</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span>

<span id="VehiclePartInfo.Seat"></span> **VehiclePartInfo.Seat**  
A single seat in a vehicle.

<span id="VehiclePartInfo.VehiclePartInfo"></span> **VehiclePartInfo.VehiclePartInfo**  
Details about a vehicle part.

<span id="WaterMesh.Contour"></span> **WaterMesh.Contour**  
Represents the boundary of a water mesh.

### Fields:

- <span class="parameter">vertices</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">{Vec3f,...}</a></span>
  The list of vertices of the contour
- <span class="parameter">edges</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">{Vec3f,...}</a></span>
  The list of normals at the vertex

## <span id="Util"></span>Util

<span id="AppConfig"></span> **AppConfig**  
Game settings

<span id="AppConfig.AudioEffectSettings"></span> **AppConfig.AudioEffectSettings**  
Specification for audio settings

### Fields:

- <span class="parameter">bulldozer</span>
  <span class="types"><span class="type">bool</span></span> sound
  effects
- <span class="parameter">construction</span>
  <span class="types"><span class="type">bool</span></span> sound
  effects

<span id="AppConfig.NewGameMenuState"></span> **AppConfig.NewGameMenuState**  
Specification for new game settings

### Fields:

- <span class="parameter">industryFrequency</span>
  <span class="types"><span class="type">int</span></span>
  (**deprecated**) the number of industries, use AppConfig.modParams
  instead

<span id="ModId"></span> **ModId**  
Mod identifier

### Fields:

- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> of the mod
- <span class="parameter">version</span>
  <span class="types"><span class="type">int</span></span> of the mod

<span id="Value"></span> **Value**  
A Value

### Fields:

- <span class="parameter">value</span>
  <span class="types"><span class="type">int</span></span>

<span id="ValuesMap"></span> **ValuesMap**  
A map of string to Value

### Fields:

- <span class="parameter">map</span>
  <span class="types"><a href="api.type.html#ValuesMap" class="type">ValuesMap</a></span>

## <span id="Class_Vec2i"></span>Class Vec2i

A 2d vector of integers.

Available in every [Lua state](../topics/states.md.html#)

Supports array subscript with `vec[i]` access. Supports addition `+`,
subtraction `-`.

<span id="Vec2i.new"></span> **Vec2i.new()**  
Creates a new vector.

### Returns:

1.  Vec2i(0,0)

<span id="Vec2i.new"></span> **Vec2i.new(v)**  
Creates a new vector.

### Parameters:

- <span class="parameter">v</span>
  <span class="types"><span class="type">int</span></span>

### Returns:

1.  Vec2i(v,v)

<span id="Vec2i.new"></span> **Vec2i.new(x, y)**  
Creates a new vector.

### Parameters:

- <span class="parameter">x</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">y</span>
  <span class="types"><span class="type">int</span></span>

### Returns:

1.  Vec2i(x,y)

<span id="Vec2i.x"></span> **Vec2i.x**  
x

- <span class="parameter">x</span>

<span id="Vec2i.y"></span> **Vec2i.y**  
y

- <span class="parameter">y</span>

## <span id="Class_Vec2f"></span>Class Vec2f

A 2d vector of floats

Available in every [Lua state](../topics/states.md.html#)

Supports array subscript with `vec[i]` access. Supports addition `+`,
subtraction `-` and dot product `*`.

<span id="Vec2f.new"></span> **Vec2f.new()**  
Creates a new vector.

### Returns:

1.  Vec2f(0,0)

<span id="Vec2f.new"></span> **Vec2f.new(v)**  
Creates a new vector.

### Parameters:

- <span class="parameter">v</span>
  <span class="types"><span class="type">float</span></span>

### Returns:

1.  Vec2f(v,v)

<span id="Vec2f.new"></span> **Vec2f.new(x, y)**  
Creates a new vector.

### Parameters:

- <span class="parameter">x</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">y</span>
  <span class="types"><span class="type">float</span></span>

### Returns:

1.  Vec2f(x,y)

<span id="Vec2f.x"></span> **Vec2f.x**  
x

- <span class="parameter">x</span>

<span id="Vec2f.y"></span> **Vec2f.y**  
y

- <span class="parameter">y</span>

## <span id="Class_Vec3f"></span>Class Vec3f

A 3d vector of floats

Supports array subscript with `vec[i]` access. Supports addition `+`,
subtraction `-` and dot product `*`.

<span id="Vec3f.new"></span> **Vec3f.new()**  
Creates a new vector.

### Returns:

1.  Vec3f(0,0,0)

<span id="Vec3f.new"></span> **Vec3f.new(v)**  
Creates a new vector.

### Parameters:

- <span class="parameter">v</span>
  <span class="types"><span class="type">float</span></span>

### Returns:

1.  Vec3f(v,v,v)

<span id="Vec3f.new"></span> **Vec3f.new(x, y, z)**  
Creates a new vector.

### Parameters:

- <span class="parameter">x</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">y</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">z</span>
  <span class="types"><span class="type">float</span></span>

### Returns:

1.  Vec3f(x,y,z)

<span id="Vec3f.x"></span> **Vec3f.x**  
x

- <span class="parameter">x</span>

<span id="Vec3f.y"></span> **Vec3f.y**  
y

- <span class="parameter">y</span>

<span id="Vec3f.z"></span> **Vec3f.z**  
z

- <span class="parameter">z</span>

## <span id="Class_Vec4f"></span>Class Vec4f

A 4d vector of floats

Supports array subscript with `vec[i]` access. Supports addition `+`,
subtraction `-` and dot product `*`.

<span id="Vec4f.new"></span> **Vec4f.new()**  
Creates a new vector.

### Returns:

1.  Vec4f(0,0,0,0)

<span id="Vec4f.new"></span> **Vec4f.new(v)**  
Creates a new vector.

### Parameters:

- <span class="parameter">v</span>
  <span class="types"><span class="type">float</span></span>

### Returns:

1.  Vec4f(v,v,v,v)

<span id="Vec4f.new"></span> **Vec4f.new(x, y, z, w)**  
Creates a new vector.

### Parameters:

- <span class="parameter">x</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">y</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">z</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">w</span>
  <span class="types"><span class="type">float</span></span>

### Returns:

1.  Vec4f(x,y,z,w)

<span id="Vec4f.w"></span> **Vec4f.w**  
w

- <span class="parameter">w</span>

<span id="Vec4f.x"></span> **Vec4f.x**  
x

- <span class="parameter">x</span>

<span id="Vec4f.y"></span> **Vec4f.y**  
y

- <span class="parameter">y</span>

<span id="Vec4f.z"></span> **Vec4f.z**  
z

- <span class="parameter">z</span>

## <span id="Class_Mat4f"></span>Class Mat4f

A 4x4 matrix of floats

Supports array subscript with `mat[i]` access. Supports addition `+`,
subtraction `-` and matrix-matrix multiplication `*`.

<span id="Mat4f.new"></span> **Mat4f.new()**  
Creates a new matrix.

### Returns:

1.  Mat4f()

<span id="Mat4f.new"></span> **Mat4f.new(col0, col1, col2, col3)**  
Creates a new matrix.

### Parameters:

- <span class="parameter">col0</span>
  <span class="types"><a href="api.type.html#Vec4f" class="type">Vec4f</a></span>
- <span class="parameter">col1</span>
  <span class="types"><a href="api.type.html#Vec4f" class="type">Vec4f</a></span>
- <span class="parameter">col2</span>
  <span class="types"><a href="api.type.html#Vec4f" class="type">Vec4f</a></span>
- <span class="parameter">col3</span>
  <span class="types"><a href="api.type.html#Vec4f" class="type">Vec4f</a></span>

### Returns:

1.  Mat4f(col0, col1, col2, col3)

<span id="Mat4f.new"></span> **Mat4f.new(v)**  
Creates a new matrix.

### Parameters:

- <span class="parameter">v</span>
  <span class="types"><span class="type">float</span></span>

### Returns:

1.  diagonal Mat4f matrix

<span id="Mat4f:col"></span> **Mat4f:col()**  
Return i-th column as reference

## <span id="Class_Date"></span>Class Date

A date for the Gregorian calendar.

<span id="Date.day"></span> **Date.day**  
Day

- <span class="parameter">day</span>

<span id="Date.month"></span> **Date.month**  
Month

- <span class="parameter">month</span>

<span id="Date.year"></span> **Date.year**  
Year

- <span class="parameter">year</span>

## <span id="Class_Connection"></span>Class Connection

An object used to disconnect callbacks.

<span id="Connection:disconnect"></span> **Connection:disconnect()**  
The callback will be no longer called

## <span id="Class_Box2"></span>Class Box2

A 2d bounding Box.

<span id="Box2.max"></span> **Box2.max**  
Max

- <span class="parameter">max</span>

<span id="Box2.min"></span> **Box2.min**  
Min

- <span class="parameter">min</span>

<span id="Box2.new"></span> **Box2.new(min, max)**  
Creates a new Box2.

### Parameters:

- <span class="parameter">min</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">Vec2f</a></span>
- <span class="parameter">max</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">Vec2f</a></span>

### Returns:

1.  Box2(min,max)

<span id="Box2.new"></span> **Box2.new()**  
Creates a new Box2.

### Returns:

1.  Box2

## <span id="Class_Box3"></span>Class Box3

A 3d bounding Box.

<span id="Box3.max"></span> **Box3.max**  
Max

- <span class="parameter">max</span>

<span id="Box3.min"></span> **Box3.min**  
Min

- <span class="parameter">min</span>

<span id="Box3.new"></span> **Box3.new(min, max)**  
Creates a new Box3.

### Parameters:

- <span class="parameter">min</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">Vec3f</a></span>
- <span class="parameter">max</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">Vec3f</a></span>

### Returns:

1.  Box3(min,max)

<span id="Box3.new"></span> **Box3.new()**  
Creates a new Box3.

### Returns:

1.  Box3

## <span id="Commands"></span>Commands

<span id="Book"></span> **Book**  
Command to add a new entry to the Player Journal.

### Fields:

- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the player
- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  The world position of the journal entry
- <span class="parameter">journalEntry</span>
  <span class="types"><a href="api.type.html#enum.JournalEntry"
  class="type">type.JournalEntry</a></span> the entry to add

<span id="BuildProposal"></span> **BuildProposal**  
Command to build a proposal, use cmd.make.buildProposal to generate this
command.

### Fields:

- <span class="parameter">proposal</span>
  <span class="types"><a href="api.type.html#Proposal" class="type">Proposal</a></span>
  The definition of the proposal
- <span class="parameter">context</span>
  <span class="types"><a href="api.type.html#Context" class="type">type.Context</a></span>
  A context with extra options for the build
- <span class="parameter">withCostRep</span>
  <span class="types"><span class="type">bool</span></span> tells to
  ingore costs if set to true
- <span class="parameter">ignoreErrors</span>
  <span class="types"><span class="type">bool</span></span> tells to
  ingore soft errors
- <span class="parameter">resultProposalData</span>
  <span class="types"><a href="api.type.html#ProposalData" class="type">ProposalData</a></span>
  The resulting data generated by the proposal
- <span class="parameter">resultEntities</span>
  <span class="types"><span class="type">Vector\[Entity\]</span></span>
  only relevant when obtained in callback result, after command has been
  ran

<span id="BuyVehicle"></span> **BuyVehicle**  
Command to buy a vehicle, in a given depot

### Fields:

- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the player
- <span class="parameter">depotEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the depot
- <span class="parameter">config</span>
  <span class="types"><a href="api.type.html#TransportVehicleConfig"
  class="type">type.TransportVehicleConfig</a></span> data containing
  information about the vehicle being purchased
- <span class="parameter">resultVehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  id of the new vehicle, used only as output when the command is
  successful (*optional*)

<span id="ConnectTownsAndIndustries"></span> **ConnectTownsAndIndustries**  
Command to automatically connect all towns and industries with roads.

### Fields:

- <span class="parameter">townEntities</span>
  <span class="types"><span class="type">{Entity,...}</span></span> the
  [entity](../topics/types.md.html#Entity) ids of the towns to connect
- <span class="parameter">connections</span>
  <span class="types"><a href="api.type.html#Vec2i" class="type">{type.Vec2i,...}</a></span>
  list with pairs of [entity](../topics/types.md.html#Entity) ids for
  start and end destinations
- <span class="parameter">keep</span>
  <span class="types"><span class="type">bool</span></span> set to true
  if existing street connections should be kept

<span id="CreateLine"></span> **CreateLine**  
Command to create a new line entity, with stop configuration, owner,
color and name.

### Fields:

- <span class="parameter">line</span>
  <span class="types"><a href="api.type.html#Line" class="type">type.Line</a></span>
  the configuration data of the line
- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name of the line
- <span class="parameter">color</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  the line color
- <span class="parameter">playerOwned</span>
  <span class="types"><span class="type">bool</span></span> Sets the
  line to be owned by the player entity. (*optional*)
- <span class="parameter">resultEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  id of the created line, used only as output whenever the command is
  successful. (*optional*)

<span id="CreateTowns"></span> **CreateTowns**  
Command to build create a set of new towns

### Fields:

- <span class="parameter">towns</span>
  <span class="types"><a href="api.type.html#TownInfo" class="type">{type.TownInfo,...}</a></span>
  a list of town information sets

<span id="DeleteLine"></span> **DeleteLine**  
Command to delete a single line.

### Fields:

- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the line
  that should be removed

<span id="DevelopTown"></span> **DevelopTown**  
Command to trigger town developement at the given position.

### Fields:

- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  the position where development should happen

<span id="InstantlyUpdateTownCargoNeeds"></span> **InstantlyUpdateTownCargoNeeds**  
Command to change the cargo need of a town immediately and for all
buildings.

### Fields:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the town that should be
  updated
- <span class="parameter">cargoNeeds</span>
  <span class="types"><span class="type">{{int,...},{int,...},{int,...}}</span></span>
  a list of cargo type ids for the needs of each of the three town
  districts **residential**, **commercial** and **industrial**.

<span id="RemoveField"></span> **RemoveField**  
Command to remove a field

### Fields:

- <span class="parameter">fieldEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the field that should
  be removed

<span id="RemoveTown"></span> **RemoveTown**  
Command to remove a single town.

### Fields:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the town that should be
  removed

<span id="ReplaceTerrain"></span> **ReplaceTerrain**  
Command to redo the map generation. This command imports a new map from
a given configuration which includes: the heightmap, towns, indudstries,
assets and trees.

### Fields:

- <span class="parameter">map</span>
  <span class="types"><a href="api.type.html#Map" class="type">type.Map</a></span>
- <span class="parameter">config</span>
  <span class="types"><a href="api.type.html#Terrain" class="type">type.Terrain</a></span>
- <span class="parameter">seedText</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> a seed for randomization purposes
- <span class="parameter">worldEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the world, usually 0
- <span class="parameter">keepAssets</span>
  <span class="types"><span class="type">bool</span></span> if set to
  true, existing landscape assets are conserved

<span id="ReplaceVehicle"></span> **ReplaceVehicle**  
Command to replace a vehicle

### Fields:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the vehicle that should
  be replaced
- <span class="parameter">config</span>
  <span class="types"><a href="api.type.html#TransportVehicleConfig"
  class="type">type.TransportVehicleConfig</a></span> data containing
  information about the new vehicle being purchased

<span id="Reverse"></span> **Reverse**  
Command to reverse a vehicle

### Fields:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the vehicle that should
  be reversed

<span id="SellVehicle"></span> **SellVehicle**  
Command to sell a vehicle immediately

### Fields:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the vehicle that should
  be sold

<span id="SendScriptEvent"></span> **SendScriptEvent**  
Command to send and event from the gui state to the engine state. See
also [GUI State](../topics/states.md.html#GUI_State) for more
information.

### Fields:

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the filename of the game_script that
  should be the pretended origin of the event
- <span class="parameter">id</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> identifier of the element that caused
  the event
- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> identifier of the event type
- <span class="parameter">param</span>
  <span class="types"><span class="type">bool</span>,
  <span class="type">number</span>,
  <a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a>,
  <a href="https://www.lua.org/manual/5.3/manual.html#6.6"
  class="type">table</a> or <span class="type">nil</span></span>
  parameters that depend on the context of the event

<span id="SendToDepot"></span> **SendToDepot**  
Command to send a vehicle to the nearest depot

### Fields:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the vehicle that should
  be sent to the depot
- <span class="parameter">sellOnArrival</span>
  <span class="types"><span class="type">bool</span></span> if set to
  true, the vehicle will be sold upon arrival at the depot

<span id="SetAnimalState"></span> **SetAnimalState**  
Sends a command object to be executed later or immediately depending on
the context.

### Fields:

- <span class="parameter">animalEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the animal that should
  be updated
- <span class="parameter">movementType</span>
  <span class="types"><span class="type">int</span></span> the index of
  the configuration in the animals metadata movementTypes list
- <span class="parameter">targetChangedElapsed</span>
  <span class="types"><span class="type">float</span></span> time since
  the current target destination was selected
- <span class="parameter">invalidTileElapsed</span>
  <span class="types"><span class="type">float</span></span> time since
  the animal got into an invalid area
- <span class="parameter">movementSpeed</span>
  <span class="types"><span class="type">float</span></span> speed that
  should be used
- <span class="parameter">angularSpeed</span>
  <span class="types"><span class="type">float</span></span> angular
  speed that should be used

<span id="SetCalendarSpeed"></span> **SetCalendarSpeed**  
Command to set the calendar speed (does affect only availability of
objects).

### Fields:

- <span class="parameter">millisPerDay</span>
  <span class="types"><span class="type">int</span></span> day length in
  milliseconds

<span id="SetColor"></span> **SetColor**  
Changes the color of an entity. This will set the value of
[api.type.ComponentType](api.type.html#ComponentType).COLOR.

### Fields:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the entity that should
  be colored
- <span class="parameter">color</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  the rgb color

<span id="SetDate"></span> **SetDate**  
Changes the current in-game date.

### Fields:

- <span class="parameter">date</span>
  <span class="types"><a href="api.type.html#Date" class="type">type.Date</a></span>
  the date that should be set

<span id="SetGameSpeed"></span> **SetGameSpeed**  
Command to set the game speed (does affect simulation speed).

### Fields:

- <span class="parameter">speedup</span>
  <span class="types"><span class="type">double</span></span> the
  positive speed that should be set

<span id="SetLine"></span> **SetLine**  
Command to set a vehicle to a given line and stop

### Fields:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the vehicle that should
  be sent to the depot
- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the line on which the
  vehicle should be sent
- <span class="parameter">stopIndex</span>
  <span class="types"><span class="type">int</span></span> the position
  of the stop on the line to which the vehicle should be sent

<span id="SetName"></span> **SetName**  
Command to change the name of an entity.

### Fields:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the entity that should
  be renamed
- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name that should be set

<span id="SetSimBuildingClosureTimeStamp"></span> **SetSimBuildingClosureTimeStamp**  
Command to change the closureTimeStamp of a building entity.

### Fields:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity)Id of the building entity of
  which the closureTimeStamp should change
- <span class="parameter">closureTimeStamp</span>
  <span class="types"><span class="type">int</span></span> time after
  which the building should be closed

<span id="SetSimBuildingManualDevelopment"></span> **SetSimBuildingManualDevelopment**  
Command to change the development mode of a building entity.

### Fields:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the building entity of
  which the manual mode should change
- <span class="parameter">manual</span>
  <span class="types"><span class="type">bool</span></span> whether the
  entity should manually be developed

<span id="SetTownInfo"></span> **SetTownInfo**  
Command to set the town information.

### Fields:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the town that should be
  updated
- <span class="parameter">initialLandUseCapacities</span>
  <span class="types"><span class="type">{int,int,int}</span></span>
  initial capacities for the residential, commercial and industrial
  district of the town

<span id="SetUserStopped"></span> **SetUserStopped**  
Command to stop the vehicle

### Fields:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the vehicle that should
  be stopped or started
- <span class="parameter">userStopped</span>
  <span class="types"><span class="type">bool</span></span> true if the
  vehicle should be stopped

<span id="SetVehicleManualDeparture"></span> **SetVehicleManualDeparture**  
Command to change the departure mode of a vehicle entity.

### Fields:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle entity of
  which the departure mode should change
- <span class="parameter">manual</span>
  <span class="types"><span class="type">bool</span></span> whether the
  entity should wait at the terminal or not

<span id="SetVehicleShouldDepart"></span> **SetVehicleShouldDepart**  
Command to force the vehicle to depart immediately, after closing the
doors

### Fields:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> a valid
  [entity](../topics/types.md.html#Entity) Id with component
  [type.TransportVehicle](api.type.html#TransportVehicle) of the vehicle
  that should depart now

<span id="SetVehicleTargetMaintenanceState"></span> **SetVehicleTargetMaintenanceState**  
Command to stop the vehicle

### Fields:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the vehicle that should
  be stopped or started
- <span class="parameter">value</span>
  <span class="types"><span class="type">float</span></span> the
  maintenance level state that should be achieved

<span id="SpawnAnimal"></span> **SpawnAnimal**  
Command to spawn animals.

### Fields:

- <span class="parameter">modelId</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> reference to the animal model that
  should be spawned
- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  coordinates of the position where the animal should be spawned
- <span class="parameter">lookAt</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  the direction the animal is looking
- <span class="parameter">resultEntity</span>
  <span class="types"><span class="type">Entity</span></span> The entity
  id of the spawned animal, used as a result only (*optional*)

<span id="UpdateLine"></span> **UpdateLine**  
Command to modify a single line.

### Fields:

- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the line which should
  be updated
- <span class="parameter">line</span>
  <span class="types"><a href="api.type.html#Line" class="type">type.Line</a></span>
  the new line configuration

## <span id="Enum"></span>Enum

<span id="enum.Carrier"></span> **enum.Carrier**  
Defines the carrier.

### Fields:

- <span class="parameter">ROAD</span>
  <span class="types"><span class="type">int</span></span> = 0
- <span class="parameter">RAIL</span>
  <span class="types"><span class="type">int</span></span> = 1
- <span class="parameter">TRAM</span>
  <span class="types"><span class="type">int</span></span> = 2
- <span class="parameter">AIR</span>
  <span class="types"><span class="type">int</span></span> = 3
- <span class="parameter">WATER</span>
  <span class="types"><span class="type">int</span></span> = 4

<span id="enum.DistanceUnit"></span> **enum.DistanceUnit**  
DistanceUnit represents the unit of measurement used for distance.

### Fields:

- <span class="parameter">KM</span> 0
- <span class="parameter">M</span> 1
- <span class="parameter">Mile</span> 2
- <span class="parameter">Yard</span> 3
- <span class="parameter">Feet</span> 4

<span id="enum.EdgeObjectType"></span> **enum.EdgeObjectType**  
Defines the type of an edge object.

### Fields:

- <span class="parameter">STOP_LEFT</span>
  <span class="types"><span class="type">int</span></span> = 0
- <span class="parameter">STOP_RIGHT</span>
  <span class="types"><span class="type">int</span></span> = 1
- <span class="parameter">SIGNAL</span>
  <span class="types"><span class="type">int</span></span> = 2

<span id="enum.ForceUnit"></span> **enum.ForceUnit**  
ForceUnit represents the unit of measurement used for force.

### Fields:

- <span class="parameter">KN</span> 0
- <span class="parameter">KGF</span> 1
- <span class="parameter">LBF</span> 2

<span id="enum.InputMode"></span> **enum.InputMode**  
InputMode represents the current input mode.

### Fields:

- <span class="parameter">Undefined</span> 0
- <span class="parameter">KeyboardMouse</span> 1
- <span class="parameter">Gamepad</span> 2

<span id="enum.MoneyMode"></span> **enum.MoneyMode**  
MoneyMode represents the money mode.

### Fields:

- <span class="parameter">RAW</span> 0
- <span class="parameter">KMB</span> 1

<span id="enum.MultisamplingMode"></span> **enum.MultisamplingMode**  
MultisamplingMode for anti aliasing.

### Fields:

- <span class="parameter">OFF</span> 0
- <span class="parameter">TWO</span> 1
- <span class="parameter">FOUR</span> 2

<span id="enum.PowerUnit"></span> **enum.PowerUnit**  
PowerUnit represents the unit of measurement used for power.

### Fields:

- <span class="parameter">KW</span> 0
- <span class="parameter">HP</span> 1

<span id="enum.RendererBackend"></span> **enum.RendererBackend**  
RendererBackend represents the backend used for rendering.

### Fields:

- <span class="parameter">VULKAN</span> 0
- <span class="parameter">OPENGL</span> 1
- <span class="parameter">NONE</span> 2

<span id="enum.SpeedUnit"></span> **enum.SpeedUnit**  
SpeedUnit represents the unit of measurement used for speed.

### Fields:

- <span class="parameter">KMH</span> 0
- <span class="parameter">MPH</span> 1

<span id="enum.TransportMode"></span> **enum.TransportMode**  
Defines the transport mode (this is used to blacklist/whitelist vehicles
onto transport network edges). These values are mosly used in a bit
field to influence the pathfinding for vehicles and people.

### Fields:

- <span class="parameter">PERSON</span>
  <span class="types"><span class="type">int</span></span> = 0
- <span class="parameter">CARGO</span>
  <span class="types"><span class="type">int</span></span> = 1
- <span class="parameter">CAR</span>
  <span class="types"><span class="type">int</span></span> = 2
- <span class="parameter">BUS</span>
  <span class="types"><span class="type">int</span></span> = 3
- <span class="parameter">TRUCK</span>
  <span class="types"><span class="type">int</span></span> = 4
- <span class="parameter">TRAM</span>
  <span class="types"><span class="type">int</span></span> = 5
- <span class="parameter">ELECTRIC_TRAM</span>
  <span class="types"><span class="type">int</span></span> = 6
- <span class="parameter">TRAIN</span>
  <span class="types"><span class="type">int</span></span> = 7
- <span class="parameter">ELECTRIC_TRAIN</span>
  <span class="types"><span class="type">int</span></span> = 8
- <span class="parameter">AIRCRAFT</span>
  <span class="types"><span class="type">int</span></span> = 9
- <span class="parameter">SHIP</span>
  <span class="types"><span class="type">int</span></span> = 10
- <span class="parameter">SMALL_AIRCRAFT</span>
  <span class="types"><span class="type">int</span></span> = 11
- <span class="parameter">SMALL_SHIP</span>
  <span class="types"><span class="type">int</span></span> = 12

<span id="enum.TransportVehicleState"></span> **enum.TransportVehicleState**  
TransportVehicleState represents the state the vehicle is currently at.

### Fields:

- <span class="parameter">IN_DEPOT</span> 0
- <span class="parameter">EN_ROUTE</span> 1
- <span class="parameter">AT_TERMINAL</span> 2
- <span class="parameter">GOING_TO_DEPOT</span> 3

<span id="enum.UiMode"></span> **enum.UiMode**  
UiMode represents the current UI visualization mode.

### Fields:

- <span class="parameter">Classic</span> 0
- <span class="parameter">Couch</span> 1

<span id="enum.WeightUnit"></span> **enum.WeightUnit**  
WeightUnit represents the unit of measurement used for power.

### Fields:

- <span class="parameter">T</span> 0
- <span class="parameter">KG</span> 1
- <span class="parameter">TN_SH</span> 2
- <span class="parameter">LB</span> 3

## <span id="Journal"></span>Journal

<span id="enum.JournalEntry"></span> **enum.JournalEntry**  
Configuration of vehicles that can use the line

### Fields:

- <span class="parameter">time</span>
  <span class="types"><span class="type">number</span></span> the
  in-game time when the entry was logged
- <span class="parameter">amount</span>
  <span class="types"><span class="type">number</span></span> Amount
  logged
- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">Vec3f</a></span>
  (**deprecated**) the position in the world (returns invalid value)
- <span class="parameter">category</span>
  <span class="types"><a href="api.type.html#enum.JournalEntryCategory"
  class="type">JournalEntryCategory</a></span> The category

<span id="enum.JournalEntryCarrier"></span> **enum.JournalEntryCarrier**  
Journal entry Carrier Category

### Fields:

- <span class="parameter">ROAD</span> 0
- <span class="parameter">RAIL</span> 1
- <span class="parameter">TRAM</span> 2
- <span class="parameter">OTHER</span> 3
- <span class="parameter">AIR</span> 4
- <span class="parameter">WATER</span> 5

<span id="enum.JournalEntryCategory"></span> **enum.JournalEntryCategory**  
Details about the classification of the journal entry

### Fields:

- <span class="parameter">type</span>
  <span class="types"><span class="type">JournalEntry.Type</span></span>
  The principal category
- <span class="parameter">construction</span>
  <span class="types"><span class="type">JournalEntry.Construction</span></span>
  The construction subcategory, only if type == Construction
- <span class="parameter">maintenance</span>
  <span class="types"><span class="type">JournalEntry.Maintenance</span></span>
  The construction subcategory, only if type == Construction
- <span class="parameter">other</span>
  <span class="types"><span class="type">JournalEntry.Other</span></span>
  The other subcategory, only if type == Other
- <span class="parameter">carrier</span>
  <span class="types"><span class="type">JournalEntry.Carrier</span></span>
  The carrier subcategory, only if type == Carrier

<span id="enum.JournalEntryConstruction"></span> **enum.JournalEntryConstruction**  
Journal entry Construction Category

### Fields:

- <span class="parameter">STREET</span> 0
- <span class="parameter">TRACK</span> 1
- <span class="parameter">SIGNAL</span> 2
- <span class="parameter">STATION</span> 3
- <span class="parameter">DEPOT</span> 4
- <span class="parameter">BULLDOZER</span> 5
- <span class="parameter">OTHER</span> 6

<span id="enum.JournalEntryMaintenance"></span> **enum.JournalEntryMaintenance**  
Journal entry Maintenance Category

### Fields:

- <span class="parameter">VEHICLE</span> 0
- <span class="parameter">INFRASTRUCTURE</span> 1
- <span class="parameter">OTHER</span> 2

<span id="enum.JournalEntryOther"></span> **enum.JournalEntryOther**  
Journal entry Other Category

### Fields:

- <span class="parameter">OTHER</span> 0

<span id="enum.JournalEntryType"></span> **enum.JournalEntryType**  
Journal entry Type Category

### Fields:

- <span class="parameter">LOAN</span> 0
- <span class="parameter">INTEREST</span> 1
- <span class="parameter">CONSTRUCTION</span> 2
- <span class="parameter">ACQUISITION</span> 3
- <span class="parameter">MAINTENANCE</span> 4
- <span class="parameter">INCOME</span> 5
- <span class="parameter">OTHER</span> 6

## <span id="Model"></span>Model

<span id="ModelInstance"></span> **ModelInstance**  
A model in the world, with complete information

### Fields:

- <span class="parameter">modelId</span>
  <span class="types"><span class="type">int</span></span> the model id,
  referenced in modelRep
- <span class="parameter">transf0</span>
  <span class="types"><a href="api.type.html#Mat4f" class="type">Mat4f</a></span>
  the model transform at the previous frame
- <span class="parameter">transf</span>
  <span class="types"><a href="api.type.html#Mat4f" class="type">Mat4f</a></span>
  the model transform
- <span class="parameter">transformator</span>
  <span class="types"><span class="type">int</span></span> -1 or the
  index of the transformator for the model

<span id="ThinModelInstance"></span> **ThinModelInstance**  
A model in the world, with very light information

### Fields:

- <span class="parameter">modelId</span>
  <span class="types"><span class="type">int</span></span> the model id,
  referenced in modelRep
- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">Vec3f</a></span>
  the position in the world
- <span class="parameter">rot</span>
  <span class="types"><span class="type">number</span></span> the
  rotation angle (in radians)
- <span class="parameter">scale</span>
  <span class="types"><span class="type">number</span></span> the scale
  in all directions

## <span id="Line"></span>Line

<span id="Line.Stop"></span> **Line.Stop**  
Configuration for a line stop

### Fields:

- <span class="parameter">stationGroup</span>
  <span class="types"><span class="type">Entity</span></span> the
  station group entity to which the line stop belongs
- <span class="parameter">station</span>
  <span class="types"><span class="type">int</span></span> the station
  (within the station group)
- <span class="parameter">terminal</span>
  <span class="types"><span class="type">int</span></span> the terminal
  (within the station) for the stop
- <span class="parameter">alternativeTerminals</span>
  <span class="types"><a href="api.type.html#StationTerminal"
  class="type">{type.StationTerminal,...}</a></span> Alternative
  terminals for the stop
- <span class="parameter">loadMode</span>
  <span class="types"><span class="type">Line.LoadMode</span></span> the
  configuration of what to load and not to load
- <span class="parameter">minWaitingTime</span>
  <span class="types"><span class="type">float</span></span> minimum
  waiting time at this stop
- <span class="parameter">maxWaitingTime</span>
  <span class="types"><span class="type">float</span></span> maximum
  waiting time at this stop
- <span class="parameter">waypoints</span>
  <span class="types"><span class="type">{Entity,...}</span></span> all
  waypoints after the stop
- <span class="parameter">how</span>
  <span class="types"><a href="api.type.html#Line.StopConfig"
  class="type">{StopConfig,...}</a></span> much to load and unload

<span id="Line.StopConfig"></span> **Line.StopConfig**  
Configuration details for a line stop

### Fields:

- <span class="parameter">load</span>
  <span class="types"><span class="type">{int,...}</span></span> for
  each cargo type, if it should be loaded
- <span class="parameter">unload</span>
  <span class="types"><span class="type">{int,...}</span></span> for
  each cargo type, if it should be unloaded
- <span class="parameter">maxLoad</span>
  <span class="types"><span class="type">{int,...}</span></span> for
  each cargo type, its max allowed fraction of total capacity (from 0 to
  1)

<span id="LineVehicleInfo"></span> **LineVehicleInfo**  
Configuration of vehicles that can use the line

### Fields:

- <span class="parameter">transportModes</span>
  <span class="types"><span class="type">{int,...}</span></span> Type of
  tranport modes that can use the line
- <span class="parameter">defaultPrice</span>
  <span class="types"><span class="type">float</span></span> Default
  Ticket price for the line

## <span id="Entity_Components"></span>Entity Components

<span id="Account"></span> **Account**  
Contains financial data. Usually attached to the player Entity.

### Fields:

- <span class="parameter">number</span>
  <span class="types"><span class="type">minimumLoan</span></span>
  minimum load that is possible to repay
- <span class="parameter">Vec3f</span>
  <span class="types"><a href="api.type.html#PathPosData.position" class="type">position</a></span>
  ,...} Ledger containing the positions of the last journal entries
- <span class="parameter">JournalEntry</span>
  <span class="types"><span class="type">journal</span></span> ,...}
  Ledger containing all categorized transactions
- <span class="parameter">number</span>
  <span class="types"><span class="type">minimumLoan</span></span>
  minimum load that is possible to repay
- <span class="parameter">number</span>
  <span class="types"><span class="type">minimumLoan</span></span>
  minimum load that is possible to repay
- <span class="parameter">number</span>
  <span class="types"><span class="type">minimumLoan</span></span>
  minimum load that is possible to repay

<span id="Aircraft"></span> **Aircraft**  
Data attached to aircraft.

### Fields:

- <span class="parameter">bool</span>
  <span class="types"><span class="type">reservedLandingRunway</span></span>
  Has the runway been reserved for landing
- <span class="parameter">bool</span>
  <span class="types"><span class="type">reservedLandingRunway</span></span>
  Has the runway been reserved for landing
- <span class="parameter">number</span>
  <span class="types"><span class="type">reservedTo</span></span> Edge
  index on the path on which the reservation stops
- <span class="parameter">number</span>
  <span class="types"><span class="type">reservedTo</span></span> Edge
  index on the path on which the reservation stops
- <span class="parameter">number</span>
  <span class="types"><span class="type">reservedTo</span></span> Edge
  index on the path on which the reservation stops
- <span class="parameter">particleSystems</span>
  <span class="types"><span class="type">{Entity,...}</span></span> a
  list of particles emitted by the aircraft

<span id="Animal"></span> **Animal**  
Data attached to animals. Contains information about position and
movement.

### Fields:

- <span class="parameter">worldPosition</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">Vec3f</a></span>
  current location in the game world
- <span class="parameter">lookingAt</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">Vec2f</a></span>
  direction in which the animal is oriented
- <span class="parameter">targetCoord</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">Vec2f</a></span>
  destination where the animal is heading
- <span class="parameter">movementSpeed</span>
  <span class="types"><span class="type">float</span></span> the forward
  speed
- <span class="parameter">angularSpeed</span>
  <span class="types"><span class="type">float</span></span> the turn
  speed
- <span class="parameter">terrainHeightOffset</span>
  <span class="types"><span class="type">float</span></span> the offset
  to the terrain surface
- <span class="parameter">lastUpdateElapsed</span>
  <span class="types"><span class="type">float</span></span> time since
  the last update of the animal
- <span class="parameter">targetChangedElapsed</span>
  <span class="types"><span class="type">float</span></span> time since
  the last reorientation of the animal
- <span class="parameter">invalidTileElapsed</span>
  <span class="types"><span class="type">float</span></span> time since
  the animal is in an invalid location
- <span class="parameter">movementType</span>
  <span class="types"><span class="type">int</span></span> index of the
  current movementType
- <span class="parameter">roll</span>
  <span class="types"><span class="type">float</span></span> current
  roll value
- <span class="parameter">scaling</span>
  <span class="types"><span class="type">float</span></span> scale of
  the animal
- <span class="parameter">flock</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">{type.Vec3f,...}</a></span>
  offset for each of the flock animals relative to the worldPosition

<span id="AssetGroup"></span> **AssetGroup**  
Data attached to assets, in particular trees.  
Assets are grouped together when built together in order to speed up
rendering performance. Usually comes together with a
[type.ModelInstanceList](api.type.html#ModelInstanceList).

<span id="AssetGroupAutoRemove"></span> **AssetGroupAutoRemove**  
Data attached to assets entities to enable automatic removal when it
collides with newly built objects.

<span id="AudioEmitter"></span> **AudioEmitter**  
An entity with an AudioEmitter emits a sound source

### Fields:

- <span class="parameter">emitter</span>
  <span class="types"><span class="type">Emitter</span></span>

<span id="BaseEdge"></span> **BaseEdge**  
Type attached to strets and tracks, specifying the street type and other
details. A BaseEdge usually also has a
[type.BaseEdgeStreet](api.type.html#BaseEdgeStreet) or
[type.BaseEdgeTrack](api.type.html#BaseEdgeTrack) and a
[type.TransportNetwork](api.type.html#TransportNetwork).

<span id="BaseEdgeStreet"></span> **BaseEdgeStreet**  
Contains details about a base edge when it is a street.

<span id="BaseEdgeTrack"></span> **BaseEdgeTrack**  
Contains details about a base edge when it is a track.

<span id="BaseNode"></span> **BaseNode**  
A node in a street graph, e.g. a railroad crossing, a switch, or street
crossing.

<span id="BaseNodeTrafficLight"></span> **BaseNodeTrafficLight**  
Additional traffic light data for a base node.

<span id="BoundingVolume"></span> **BoundingVolume**  
Contains the bounding box of an entity.

### Fields:

- <span class="parameter">bbox</span>
  <span class="types"><a href="api.type.html#Box3" class="type">Box3</a></span>
  The axis aligned bounding box

<span id="Bridge"></span> **Bridge**  
Contains the full information and the entire spline of a bridge, if this
was configured to do so.

<span id="BuildCost"></span> **BuildCost**  
Stores the costs of an entity (e.g. Constructions or Edges)

<span id="BulldozerInfo"></span> **BulldozerInfo**  
Allows to set certain entities to be not bulldozable.

<span id="Color"></span> **Color**  
Specifies the color of an entity

### Fields:

- <span class="parameter">color</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">Vec3f</a></span>
  the color of the entity

<span id="Construction"></span> **Construction**  
A construction: usually contains stations, depots, town buildings or
industries.

### Fields:

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name of the construction (or the id
  in case of dynamic constructions)
- <span class="parameter">params</span>
  <span class="types"><span class="type">Table</span></span> the
  parameters, passed to the `updateFn`.
- <span class="parameter">transf</span>
  <span class="types"><a href="api.type.html#Mat4f" class="type">type.Mat4f</a></span>
  the world transformation of the construction
- <span class="parameter">timeBuild</span>
  <span class="types"><span class="type">int</span></span> the in-game
  time when the construction was first placed
- <span class="parameter">frozenNodes</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  nodes that belong to the construction and cannot be moved
- <span class="parameter">frozenEdges</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  edges that belong to the construction and cannot be moved
- <span class="parameter">depots</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  depots that belong to the construction
- <span class="parameter">stations</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  stations that belong to the construction
- <span class="parameter">simBuildings</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  industries that belong to the construction
- <span class="parameter">townBuilding</span>
  <span class="types"><span class="type">{Entity,...}</span></span> town
  building that belong to the construction
- <span class="parameter">particleSystems</span>
  <span class="types"><span class="type">{Entity,...}</span></span> all
  particles generated by the construction

<span id="EmissionGrid"></span> **EmissionGrid**  
The grid containing the emission data

### Fields:

- <span class="parameter">X0</span>
  <span class="types"><span class="type">int</span></span> the bottom
  left corner x coordinate
- <span class="parameter">Y0</span>
  <span class="types"><span class="type">int</span></span> the bottom
  left corner y coordinate
- <span class="parameter">height</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">width</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">gridPointSize</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">Vec2f</a></span>
  the resolution of the grid

<span id="Field"></span> **Field**  
Contains data representing a farm field on the terrain

### Fields:

- <span class="parameter">indices</span>
  <span class="types"><span class="type">{int,...}</span></span> Indices
  to define triangles over vertices
- <span class="parameter">vertices</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">{Vec3f,...}</a></span>
  A list of positions on the terrain

<span id="GameSpeed"></span> **GameSpeed**  
Information about the current game simulation and calendar speed.

### Fields:

- <span class="parameter">millisPerDay</span>
  <span class="types"><span class="type">int</span></span> length of an
  in-game calendar day in milliseconds (affected by speedup, 0 = paused)
- <span class="parameter">speedup</span>
  <span class="types"><span class="type">int</span></span> multiplier
  for game simulation speed (non-negative, 0 = paused)

<span id="GameTime"></span> **GameTime**  
Information about the current ingame time.

### Fields:

- <span class="parameter">gameTime</span>
  <span class="types"><span class="type">int</span></span> the current
  ingame time
- <span class="parameter">gameTime0</span>
  <span class="types"><span class="type">int</span></span> the ingame
  time when the last update occured
- <span class="parameter">tickCount</span>
  <span class="types"><span class="type">int</span></span> number of
  simulation ticks, ticks also when the game is paused (once per frame)
- <span class="parameter">updateCount</span>
  <span class="types"><span class="type">int</span></span> number of
  simulation updates, does not tick when the simulation is paused

<span id="Line"></span> **Line**  
An line with stops and configurations

### Fields:

- <span class="parameter">stops</span>
  <span class="types"><a href="api.type.html#Line.Stop" class="type">{Stop,...}</a></span>
  all line stops in order
- <span class="parameter">waitingTime</span>
  <span class="types"><span class="type">number</span></span>
  (**deprecated**) the waiting time for the line
- <span class="parameter">vehicleInfo</span>
  <span class="types"><a href="api.type.html#LineVehicleInfo" class="type">LineVehicleInfo</a></span>
  information about vehicles of the line

<span id="LogBook"></span> **LogBook**  
A LogBook contains information about the evolution of a variable (e.g.
amounts of money) over time.

### Fields:

- <span class="parameter">name2log</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">{[string]=LogBook.Log}</a></span> A map from a key to a
  LogBook.Log

<span id="LotList"></span> **LotList**  
Information about ground textures that are paining the terrain

### Fields:

- <span class="parameter">lots</span>
  <span class="types"><a href="api.type.html#LotList" class="type">{type.LotList,...}</a></span>
  a list of lots for the entity

<span id="MaintenanceCost"></span> **MaintenanceCost**  
Contains the maintenance cost of objects

### Fields:

- <span class="parameter">maintenanceCost</span>
  <span class="types"><span class="type">int</span></span> the
  maintenance cost of an object

<span id="ModelInstanceList"></span> **ModelInstanceList**  
Contains all models rendered by the entity

### Fields:

- <span class="parameter">thinInstances</span>
  <span class="types"><a href="api.type.html#ThinModelInstance"
  class="type">{ThinModelInstance,...}</a></span> A list of models with
  very simple data attached
- <span class="parameter">fatInstances</span>
  <span class="types"><a href="api.type.html#ModelInstance"
  class="type">{ModelInstance,...}</a></span> A list of models with a
  full transform attached
- <span class="parameter">dynamic</span>
  <span class="types"><span class="type">bool</span></span>

<span id="ModelPerson"></span> **ModelPerson**  
Additional data for persons walking in the world

### Fields:

- <span class="parameter">path</span>
  <span class="types"><a href="api.type.html#Path" class="type">Path</a></span>
  the current path of the person
- <span class="parameter">pathPos</span>
  <span class="types"><a href="api.type.html#PathPos" class="type">PathPos</a></span>
  the current position on the path
- <span class="parameter">stopped</span>
  <span class="types"><span class="type">bool</span></span> whether a
  person is currently not walking
- <span class="parameter">topSpeed</span>
  <span class="types"><span class="type">number</span></span> the
  maximal speed of a person
- <span class="parameter">speed</span>
  <span class="types"><span class="type">number</span></span> the
  current speed of a person
- <span class="parameter">brakeDecel</span>
  <span class="types"><span class="type">number</span></span> the
  current deceleration speed of persons
- <span class="parameter">offset</span>
  <span class="types"><span class="type">number</span></span> an offset
  perpendicular to the path
- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  the position in the world
- <span class="parameter">movementType</span>
  <span class="types"><span class="type">int</span></span> the animation
  used to move the person
- <span class="parameter">dist</span>
  <span class="types"><span class="type">number</span></span> distance
  from the target
- <span class="parameter">dist0</span>
  <span class="types"><span class="type">number</span></span> distance
  from the target (last frame)
- <span class="parameter">stateTime</span>
  <span class="types"><span class="type">number</span></span> the
  animation timer

<span id="ModelPersonIdle"></span> **ModelPersonIdle**  
Additional data for idle person

### Fields:

- <span class="parameter">arrivalTime</span>
  <span class="types"><span class="type">number</span></span> the time
  since the person stopped

<span id="MovePath"></span> **MovePath**  
Represents a path a vehicle is currently following

### Fields:

- <span class="parameter">path</span>
  <span class="types"><a href="api.type.html#Path" class="type">Path</a></span>
  a series of edges the vehicle is following
- <span class="parameter">endParam</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">endPos</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">state</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">blocked</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">allowEarlyArrival</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">reverse</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">dyn</span>
  <span class="types"><a href="api.type.html#MovePath.DynState"
  class="type">MovePath.DynState</a></span> the fast-changing component
  of the position on the path
- <span class="parameter">dyn0</span>
  <span class="types"><a href="api.type.html#MovePath.DynState"
  class="type">MovePath.DynState</a></span> the dyn state at the
  beginning of the simulation frame (optional)

<span id="MovePathAircraft"></span> **MovePathAircraft**  
Additional data for aircraft

### Fields:

- <span class="parameter">speed</span>
  <span class="types"><span class="type">number</span></span> the
  current speed of the aircraft

<span id="Name"></span> **Name**  
Specifies the name of an entity

### Fields:

- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name of the entity

<span id="Parcel"></span> **Parcel**  
A parcel is a region of space near a road where a town building can be
built.

### Fields:

- <span class="parameter">streetSegment</span>
  <span class="types"><span class="type">Entity</span></span> the street
  edge to which the parcel belongs
- <span class="parameter">left</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">curveParam</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">offset</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">faces</span>
  <span class="types"><span class="type">{Face,...}</span></span>

<span id="ParcelData"></span> **ParcelData**  
Entities attached to a segment

### Fields:

- <span class="parameter">leftParcels</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  parcels on the left of the segment
- <span class="parameter">rightParcels</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  parcels on the right of the segment

<span id="ParticleSystem"></span> **ParticleSystem**  
A particle emitted as graphical effect

### Fields:

- <span class="parameter">color</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">Vec3f</a></span>
  the color of the particle

<span id="PersonCapacity"></span> **PersonCapacity**  
Contains information about a workplace of household.

### Fields:

- <span class="parameter">type</span>
  <span class="types"><span class="type">int</span></span> the type of
  capacity (1 = residential, 2 = commercial, 3 = industrial)
- <span class="parameter">capacity</span>
  <span class="types"><span class="type">int</span></span> total
  capacity (tenants or workers) of the Entity

<span id="Player"></span> **Player**  
Represent a player

### Fields:

- <span class="parameter">logo</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the players logo
- <span class="parameter">headquarters</span>
  <span class="types"><span class="type">Entity</span></span> the
  current headquarters construction

<span id="PlayerOwned"></span> **PlayerOwned**  
An entity with player owner is property of the owner and can be
bulldozed only by him.

### Fields:

- <span class="parameter">player</span>
  <span class="types"><span class="type">Entity</span></span> the owner
  of the entity

<span id="RailVehicle"></span> **RailVehicle**  
Represents a single waggon of a train (a single carriage or engine)

### Fields:

- <span class="parameter">reversed</span>
  <span class="types"><span class="type">bool</span></span> true if the
  train travels reversed
- <span class="parameter">particleSystems</span>
  <span class="types"><span class="type">{Entity,...}</span></span> list
  of particles emitted by the train

<span id="RailroadCrossing"></span> **RailroadCrossing**  
A railroad crossing

### Fields:

- <span class="parameter">nodes</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  nodes belonging to the railroad crossing
- <span class="parameter">edges</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  edges belonging to the railroad crossing
- <span class="parameter">typeIndex</span>
  <span class="types"><span class="type">int</span></span> the type of
  crossing, as an index in
  [api.res.railroadCrossingTypeRep](api.res.html#railroadCrossingTypeRep).
- <span class="parameter">state</span>
  <span class="types"><span class="type">int</span></span> the current
  animation
- <span class="parameter">stateTime</span>
  <span class="types"><span class="type">int</span></span> the animation
  timer

<span id="RoadVehicle"></span> **RoadVehicle**  
Represents a vehicle travelling on roads (either bus or truck)

### Fields:

- <span class="parameter">particleSystems</span>
  <span class="types"><span class="type">{Entity,...}</span></span> a
  list of particles emitted by the vehicle
- <span class="parameter">dyn</span>
  <span class="types"><a href="api.type.html#RoadVehicle.DynState"
  class="type">RoadVehicle.DynState</a></span> the fast-changing
  component of the RoadVehicle
- <span class="parameter">brakingTimer</span>
  <span class="types"><span class="type">float</span></span>
  (**deprecated**) time in seconds that counts down. When positive,
  braking lights are on
- <span class="parameter">turnLeft</span>
  <span class="types"><span class="type">bool</span></span>
  (**deprecated**) true if the vehicle is turning left
- <span class="parameter">turnRight</span>
  <span class="types"><span class="type">bool</span></span>
  (**deprecated**) true if the vehicle is turning right

<span id="RunwayList"></span> **RunwayList**  
All runways for the entity transport network.

### Fields:

- <span class="parameter">runways</span>
  <span class="types"><span class="type">{Runway,...}</span></span>

<span id="Shape"></span> **Shape**  
Contains a procedurally generated shape.

### Fields:

- <span class="parameter">subShapes</span>
  <span class="types"><a href="api.type.html#SubShape" class="type">{SubShape,...}</a></span>
  list of subshapes for the shape
- <span class="parameter">generator</span>
  <span class="types"><span class="type">int</span></span> procedural
  generator (index) used to generate the shape

<span id="ShapeList"></span> **ShapeList**  
Contains a list procedurally generated shapes.

### Fields:

- <span class="parameter">shapes</span>
  <span class="types"><a href="api.type.html#Shape" class="type">{Shape,...}</a></span>
  a list of shapes

<span id="Ship"></span> **Ship**  
Contains information about pathing and extra data of ships.

### Fields:

- <span class="parameter">pathIndex</span>
  <span class="types"><span class="type">int</span></span> the current
  position on the path
- <span class="parameter">reservedFrom</span>
  <span class="types"><span class="type">int</span></span> the starting
  edge reserved by the ship
- <span class="parameter">reservedTo</span>
  <span class="types"><span class="type">int</span></span> the ending
  edge reserved by the ship
- <span class="parameter">particleSystems</span>
  <span class="types"><span class="type">{Entity,...}</span></span> a
  list of particles emitted by the ship

<span id="SignalList"></span> **SignalList**  
Contains a list of signals for the entity.

### Fields:

- <span class="parameter">signals</span>
  <span class="types"><a href="api.type.html#PathPosData.Signal" class="type">{Signal,...}</a></span>
  a list of signals

<span id="SimBuilding"></span> **SimBuilding**  
Contains information about industries.

### Fields:

- <span class="parameter">stockList</span>
  <span class="types"><span class="type">{Entity,...}</span></span> a
  list of stocks
- <span class="parameter">level</span>
  <span class="types"><span class="type">int</span></span> the current
  level of the construction
- <span class="parameter">closureTimeStamp</span>
  <span class="types"><span class="type">int</span></span> time after
  which the building will be closed
- <span class="parameter">upgradeProgress</span>
  <span class="types"><span class="type">number</span></span> the
  progress towards upgrade/downgrade
- <span class="parameter">manualDevelopment</span>
  <span class="types"><span class="type">bool</span></span> set to true
  if industries do not start to close/stop countdown and do not level up
  or down

<span id="SimCargo"></span> **SimCargo**  
Additional data for cargo.

### Fields:

- <span class="parameter">cargoType</span>
  <span class="types"><span class="type">int</span></span> The cargo
  type of the cargo (never 0)
- <span class="parameter">targetEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the target where the cargo item heads to
- <span class="parameter">sourceEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the source where the cargo item came from
- <span class="parameter">speed</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">vehicleUsed</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">startTime</span>
  <span class="types"><span class="type">int</span></span> the timestamp
  when the cargo item was produced

<span id="SimCargoAtTerminal"></span> **SimCargoAtTerminal**  
Additional data for cargo waiting at the terminal

### Fields:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">EdgeId</a></span>
  the edge the cargo is currently using
- <span class="parameter">place</span>
  <span class="types"><span class="type">int</span></span> the place the
  cargo is occupying

<span id="SimEntityAtBuilding"></span> **SimEntityAtBuilding**  
Additional data for entities waiting at buildings.

### Fields:

- <span class="parameter">waitingTime</span>
  <span class="types"><span class="type">int</span></span> How long the
  entity has been waiting

<span id="SimEntityAtStock"></span> **SimEntityAtStock**  
Additional data for entities waiting at industries.

### Fields:

- <span class="parameter">stock</span>
  <span class="types"><span class="type">Entity</span></span> The
  industry the entity is waiting at
- <span class="parameter">arrivalTime</span>
  <span class="types"><span class="type">int</span></span> the timestamp
  when the item arrived at the industry

<span id="SimEntityAtTerminal"></span> **SimEntityAtTerminal**  
Additional data for entities waiting at terminals.

### Fields:

- <span class="parameter">line</span>
  <span class="types"><span class="type">Entity</span></span> The line
  the entity is waiting for
- <span class="parameter">lineStop0</span>
  <span class="types"><span class="type">int</span></span> The stop the
  entity is waiting at
- <span class="parameter">lineStop1</span>
  <span class="types"><span class="type">int</span></span> The stop the
  entity will get off the vehicle
- <span class="parameter">arrivalTime</span>
  <span class="types"><span class="type">int</span></span> the timestamp
  when the item arrived at the station terminal
- <span class="parameter">vehicle</span>
  <span class="types"><span class="type">Entity</span></span> the
  vehicle the entity is currently waiting for

<span id="SimEntityAtVehicle"></span> **SimEntityAtVehicle**  
Additional data for entities travelling on a vehicle.

### Fields:

- <span class="parameter">line</span>
  <span class="types"><span class="type">Entity</span></span> The line
  the entity is currently using
- <span class="parameter">lineStop0</span>
  <span class="types"><span class="type">int</span></span> The stop the
  entity waited at
- <span class="parameter">lineStop1</span>
  <span class="types"><span class="type">int</span></span> The stop the
  entity will get off the vehicle
- <span class="parameter">vehicle</span>
  <span class="types"><span class="type">Entity</span></span> the
  vehicle the entity is currently in

<span id="SimEntityIdle"></span> **SimEntityIdle**  
Additional data for entities that are idle.

### Fields:

- <span class="parameter">input</span>
  <span class="types"><span class="type">PathFactoryInput</span></span>
- <span class="parameter">output</span>
  <span class="types"><span class="type">PathFactoryOutput</span></span>

<span id="SimEntityMoving"></span> **SimEntityMoving**  
Additional data for entities that are moving.

### Fields:

- <span class="parameter">line</span>
  <span class="types"><span class="type">Entity</span></span> The line
  the entity is currently using
- <span class="parameter">lineStop0</span>
  <span class="types"><span class="type">int</span></span> The stop the
  entity waited at
- <span class="parameter">lineStop1</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">partialPath</span>
  <span class="types"><span class="type">bool</span></span> true if the
  path complete until the destination

<span id="SimPerson"></span> **SimPerson**  
Additional data for persons.

### Fields:

- <span class="parameter">cargoType</span>
  <span class="types"><span class="type">int</span></span> the cargo
  type of the person (always 0)
- <span class="parameter">destinations</span>
  <span class="types"><span class="type">{Entity,Entity,Entity}</span></span>
  the destinations for residence, shopping and work
- <span class="parameter">moveModes</span>
  <span class="types"><span class="type">{int,int,int}</span></span>
- <span class="parameter">travelTimes</span>
  <span class="types"><span class="type">{int,int,int}</span></span>
- <span class="parameter">targetOrAtEntity</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  where the person is or where the person heads to
- <span class="parameter">lastNonResType</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">lastMoveMode</span>
  <span class="types"><span class="type">int</span></span> the last used
  move mode
- <span class="parameter">speed</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">modelIdPerson</span>
  <span class="types"><span class="type">int</span></span> the model
  that is used for the person
- <span class="parameter">colorConfigPerson</span>
  <span class="types"><span class="type">int</span></span> the color
  config for the clothes of the person
- <span class="parameter">modelIdCar</span>
  <span class="types"><span class="type">int</span></span> the model
  that is used as a car
- <span class="parameter">colorConfigCar</span>
  <span class="types"><span class="type">int</span></span> the color
  config for the car
- <span class="parameter">lastDestinationUpdate</span>
  <span class="types"><span class="type">int</span></span> the timestamp
  of the latest destination recalculation
- <span class="parameter">landUse2ReachableWalkDrive</span>
  <span class="types"><span class="type">{int,int}</span></span>
- <span class="parameter">landUse2ReachableLines</span>
  <span class="types"><span class="type">{int,int}</span></span>

<span id="SimPersonAtTerminal"></span> **SimPersonAtTerminal**  
Additional data for a person waiting at the terminal

### Fields:

- <span class="parameter">edgeId</span>
  <span class="types"><span class="type">EdgeID</span></span> the edge
  of the transport network the entity is waiting at
- <span class="parameter">place</span>
  <span class="types"><span class="type">int</span></span> the place on
  the edge

<span id="SimPersonAtVehicle"></span> **SimPersonAtVehicle**  
Additional data for a person travelling on a vehicle

### Fields:

- <span class="parameter">vehicle</span>
  <span class="types"><span class="type">Entity</span></span> the
  vehicle the entity is using
- <span class="parameter">part</span>
  <span class="types"><span class="type">int</span></span> the vehicle
  part (carriage) the entity is using
- <span class="parameter">place</span>
  <span class="types"><span class="type">int</span></span> the place
  (seat) in the vehicle

<span id="Station"></span> **Station**  
Defines a station, i.e. a group of terminals (places where a vehicle
stops and loads cargo)

### Fields:

- <span class="parameter">cargo</span>
  <span class="types"><span class="type">bool</span></span> True if all
  edges of all terminals are set to accept cargo, a station cannot have
  mixed cargo and non-cargo terminals
- <span class="parameter">terminals</span>
  <span class="types"><a href="api.type.html#Terminal" class="type">{Terminal,...}</a></span>
  A list of all terminals withing a station
- <span class="parameter">tag</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> A tag for identifying station between
  upgrades
- <span class="parameter">pool</span>
  <span class="types"><a href="api.type.html#Pool" class="type">Pool</a></span>
  A station pool for overflowing terminals

<span id="StationGroup"></span> **StationGroup**  
Defines a group of stations, can group together stations with very
different transport modes

### Fields:

- <span class="parameter">stations</span>
  <span class="types"><span class="type">{Entity,...}</span></span> A
  list of stations that are grouped together

<span id="SubShape"></span> **SubShape**  
Contains a procedurally generated sub-shape.

### Fields:

- <span class="parameter">faces</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">{{Vec3f,...},...}</a></span>
- <span class="parameter">height0</span>
  <span class="types"><span class="type">Number</span></span> min height
  for collision purposes
- <span class="parameter">height1</span>
  <span class="types"><span class="type">Number</span></span> max height
  for collision purposes

<span id="Terrain"></span> **Terrain**  
Contains information about the map.

### Fields:

- <span class="parameter">size</span>
  <span class="types"><a href="api.type.html#Vec2i" class="type">Vec2i</a></span>
  the number of tiles of the terrain
- <span class="parameter">baseLevels</span>
  <span class="types"><span class="type">int</span></span> number of
  base levels
- <span class="parameter">baseResolution</span>
  <span class="types"><span class="type">Vec3i</span></span> resolution
  for all three dimensions
- <span class="parameter">highLevels</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">offsetZ</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">waterLevel</span>
  <span class="types"><span class="type">float</span></span> level for
  the surface of the navigatable water

<span id="TerrainTile"></span> **TerrainTile**  
Contains information about a single tile of the map. A tile is a 256m x
256m chunk of the map.

### Fields:

- <span class="parameter">terrainEntity</span>
  <span class="types"><span class="type">Entity</span></span> a
  reference to the entity with Terrain information
- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec2i" class="type">Vec2i</a></span>
  the position of the tile in the tile grid

<span id="TerrainTileBrush"></span> **TerrainTileBrush**  
Contains information about the brush layer of a tile of the map.

### Fields:

- <span class="parameter">materialIndexBrush</span>
  <span class="types"><span class="type">Entity</span></span> contains
  the material id of the brush layer

<span id="TerrainTileHeightmap"></span> **TerrainTileHeightmap**  
Contains information about the geometry of the tile.

### Fields:

- <span class="parameter">vertices</span>
  <span class="types"><span class="type">{int,...}</span></span>
  contains the heightmap information for the tile. Each value is for a
  position in the heightmap grid of the tile with a 4m resolution

<span id="TickEpoch"></span> **TickEpoch**  
Tracks information about the last time an entity was modified or added.

### Fields:

- <span class="parameter">time</span>
  <span class="types"><span class="type">int</span></span> a unique
  index incrementing each simulation update step
- <span class="parameter">commandIndex</span>
  <span class="types"><span class="type">int</span></span> a unique
  index counting commands within a frame
- <span class="parameter">subIndex</span>
  <span class="types"><span class="type">int</span></span> a unique
  increasing index within a command

<span id="Town"></span> **Town**  
Contains information about a single town.

### Fields:

- <span class="parameter">initialLandUseCapacities</span>
  <span class="types"><span class="type">{int,int,int}</span></span>
  initial capacities for the residential, commercial and industrial
  district of the town
- <span class="parameter">sizeFactor</span>
  <span class="types"><span class="type">float</span></span> a base size
  of the town
- <span class="parameter">growthTendency</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">cargoNeeds</span>
  <span class="types"><span class="type">{{int,...},{int,...},{int,...}}</span></span>
  list of cargo type ids for the needs of each of the three town
  districts **residential**, **commercial** and **industrial**
- <span class="parameter">customCargoNeeds</span>
  <span class="types"><span class="type">bool</span></span> true: all
  cargoNeeds will be required per building, false: cargoNeeds are based
  on the building level and the cargoNeedsPerTown setting
- <span class="parameter">developmentActive</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">emission</span>
  <span class="types"><span class="type">float</span></span>
- <span class="parameter">trafficSpeed</span>
  <span class="types"><span class="type">float</span></span>

<span id="TownBuilding"></span> **TownBuilding**  
Contains information about a town building.

### Fields:

- <span class="parameter">personCapacity</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">stockList</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">level</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">parcels</span>
  <span class="types"><span class="type">{Entity,...}</span></span>
  parcels occupied by the building
- <span class="parameter">depth</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">height</span>
  <span class="types"><span class="type">float</span></span> the height
  of the building
- <span class="parameter">town</span>
  <span class="types"><span class="type">Entity</span></span> the town
  entity
- <span class="parameter">timeBuilt</span>
  <span class="types"><span class="type">int</span></span> the timestamp
  when the building was built

<span id="TownConnection"></span> **TownConnection**  
Defines a connection between towns.

### Fields:

- <span class="parameter">entity0</span>
  <span class="types"><span class="type">Entity</span></span> first town
- <span class="parameter">entity1</span>
  <span class="types"><span class="type">Entity</span></span> second
  town
- <span class="parameter">position0</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">Vec2f</a></span>
  position of the first town
- <span class="parameter">position1</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">Vec2f</a></span>
  position of the second town
- <span class="parameter">time</span>
  <span class="types"><span class="type">number</span></span>
  approximate time taken to travel the connection
- <span class="parameter">lastUpgradeYear</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">currentTime</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">valid</span>
  <span class="types"><span class="type">bool</span></span>

<span id="TpNetLink"></span> **TpNetLink**  
Represents a link between transport networks. A link is an automatic
pedestrian connection.

### Fields:

- <span class="parameter">from</span>
  <span class="types"><a href="api.type.html#EdgePos" class="type">EdgePos</a></span>
  link starting edge position
- <span class="parameter">to</span>
  <span class="types"><a href="api.type.html#EdgePos" class="type">EdgePos</a></span>
  link end edge position

<span id="Train"></span> **Train**  
Represents an entire train

### Fields:

- <span class="parameter">vehicles</span>
  <span class="types"><span class="type">{Entity,...}</span></span> all
  waggons and engines of the train
- <span class="parameter">reservedFrom</span>
- <span class="parameter">reservedTo</span>

<span id="Tram"></span> **Tram**  
Represents a tram

### Fields:

- <span class="parameter">particleSystems</span>
  <span class="types"><span class="type">{Entity,...}</span></span> a
  list of particles emitted by the tram
- <span class="parameter">dyn</span>
  <span class="types"><a href="api.type.html#Tram.DynState" class="type">Tram.DynState</a></span>
  the fast-changing component of the Tram
- <span class="parameter">leftStationSince</span>
  <span class="types"><span class="type">number</span></span>
  (**deprecated**) counts time since station was left

<span id="TransportHistory"></span> **TransportHistory**  
Contains the history of transported cargo for the entity. A link is an
automatic pedestrian connection.

### Fields:

- <span class="parameter">samples</span>
  <span class="types"><a href="api.type.html#EdgePos" class="type">EdgePos</a></span>

<span id="TransportNetwork"></span> **TransportNetwork**  
Contains the graph of edges and nodes onto which vehicles and person
move.

### Fields:

- <span class="parameter">nodes</span>
  <span class="types"><span class="type">{Node,...}</span></span> The
  list of nodes of the transport network
- <span class="parameter">edges</span>
  <span class="types"><span class="type">{Edge,...}</span></span> The
  list of edges of the transport network
- <span class="parameter">for</span>
  <span class="types"><span class="type">{int,...}</span></span> each
  edge, the index of the first edge on the opposite lane

<span id="TransportVehicle"></span> **TransportVehicle**  
Represents a single transport vehicle

### Fields:

- <span class="parameter">carrier</span>
  <span class="types"><a href="api.type.html#enum.Carrier" class="type">Carrier</a></span>
  the type of transport vehicle
- <span class="parameter">transportVehicleConfig</span>
  <span class="types"><a href="api.type.html#TransportVehicleConfig"
  class="type">type.TransportVehicleConfig</a></span> the configuration
  of vehicle models in this vehicle
- <span class="parameter">config</span>
  <span class="types"><a href="api.type.html#TransportVehicle.Config"
  class="type">TransportVehicle.Config</a></span> various configuration
  properties for the vehicle
- <span class="parameter">state</span>
  <span class="types"><a href="api.type.html#enum.TransportVehicleState"
  class="type">TransportVehicleState</a></span> current state of the
  vehicle
- <span class="parameter">userStopped</span>
  <span class="types"><span class="type">bool</span></span> whether or
  not the user stopped the vehicle
- <span class="parameter">depot</span>
  <span class="types"><span class="type">Entity</span></span> if in
  depot, the Entity Id of the depot
- <span class="parameter">sellOnArrival</span>
  <span class="types"><span class="type">bool</span></span> whether or
  not the vehicle will be sold on arrival
- <span class="parameter">line</span>
  <span class="types"><span class="type">Entity</span></span> the entity
  of the line (if assigned to one)
- <span class="parameter">stopIndex</span>
  <span class="types"><span class="type">int</span></span> the stop
  index of the line (if assigned to one)
- <span class="parameter">arrivalStationTerminal</span>
  <span class="types"><a href="api.type.html#StationTerminal"
  class="type">type.StationTerminal</a></span> The terminal to which the
  vehicle currently tries to go
- <span class="parameter">arrivalStationTerminalLocked</span>
  <span class="types"><span class="type">bool</span></span> If the
  arrivalStationTerminal is the final decision
- <span class="parameter">timeUntilLoad</span>
  <span class="types"><span class="type">number</span></span> how much
  time is left until the vehicle will start loading cargo
- <span class="parameter">timeUntilCloseDoors</span>
  <span class="types"><span class="type">number</span></span> how much
  time is left until the vehicle starts closing the doors
- <span class="parameter">timeUntilDeparture</span>
  <span class="types"><span class="type">number</span></span> how much
  time is left until the vehicle leaves the terminal
- <span class="parameter">noPath</span>
  <span class="types"><span class="type">bool</span></span> whether or
  not the vehicle has a path
- <span class="parameter">daysInDepot</span>
  <span class="types"><span class="type">int</span></span> amount of
  days waiting in depot
- <span class="parameter">daysAtTerminal</span>
  <span class="types"><span class="type">int</span></span> amount of
  days waiting at terminal
- <span class="parameter">doorsOpen</span>
  <span class="types"><span class="type">bool</span></span> whether
  doors should be open or closed
- <span class="parameter">doorsTime</span>
  <span class="types"><span class="type">number</span></span> time at
  which the door have been closed/open
- <span class="parameter">autoDeparture</span>
  <span class="types"><span class="type">bool</span></span> whether the
  vehicle departure is managed by the game or not

<span id="VehicleDepot"></span> **VehicleDepot**  
Defines a vehicle depot

### Fields:

- <span class="parameter">carrier</span>
  <span class="types"><a href="api.type.html#enum.Carrier" class="type">enum.Carrier</a></span>
  The transport method for the depot, affects available vehicles
- <span class="parameter">inNodes</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">{NodeId,...}</a></span>
  the nodes that are entry points for the depot
- <span class="parameter">outNodes</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">{NodeId,...}</a></span>
  the nodes that are exit points for the depot
- <span class="parameter">state</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">doors</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">stateTime</span>
  <span class="types"><span class="type">int</span></span>

<span id="VehicleOrder"></span> **VehicleOrder**  
Contains information about precedence and breaking.

### Fields:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  vehicle entity of the vehicle before this vehicle
- <span class="parameter">strongBrakeEntity</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">waitingForSpace</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">waitingForTrafficLight</span>
  <span class="types"><span class="type">bool</span></span>

<span id="WaterMesh"></span> **WaterMesh**  
Contains the geometry information for a single tile of water.

### Fields:

- <span class="parameter">waterLevel</span>
  <span class="types"><span class="type">float</span></span> level for
  the surface of the navigatable water
- <span class="parameter">vertices</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{Vec2f,...}</a></span>
  the list of vertices of the mesh
- <span class="parameter">dephts</span>
  <span class="types"><span class="type">{float,...}</span></span> the
  water depth at the vertex position
- <span class="parameter">indices</span>
  <span class="types"><span class="type">{int,...}</span></span>
- <span class="parameter">contours</span>
  <span class="types"><a href="api.type.html#WaterMesh.Contour" class="type">{Contour,...}</a></span>
  a list with boundaries of the water mesh
- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec2i" class="type">Vec2i</a></span>
  coordinate of the tile

## <span id="Station"></span>Station

<span id="Pool"></span> **Pool**  
Defines a common pool in a station for overflowing terminal capacities

### Fields:

- <span class="parameter">edges</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">{EdgeId,...}</a></span>
  the list of edges of the shared waiting area
- <span class="parameter">moreCapacity</span>
  <span class="types"><span class="type">int</span></span> the size of
  the shared pool

## <span id="MapGeneration"></span>MapGeneration

<span id="Asset"></span> **Asset**  
A single asset

### Fields:

- <span class="parameter">id</span>
  <span class="types"><span class="type">number</span></span>

<span id="Industry"></span> **Industry**  
Data about industry

### Fields:

- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  position of the industry

<span id="Map"></span> **Map**  
Information about the map, for map generation purposes.

### Fields:

- <span class="parameter">numTilesX</span>
  <span class="types"><span class="type">number</span></span> number of
  tiles (256 m x 256 blocks) in X direction
- <span class="parameter">numTilesY</span>
  <span class="types"><span class="type">number</span></span> number of
  tiles (256 m x 256 blocks) in Y direction

<span id="MapAsset"></span> **MapAsset**  
Information about assets to be placed on the map

<span id="MapIndustry"></span> **MapIndustry**  
Information about industries on a map

### Fields:

- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>

<span id="MapTown"></span> **MapTown**  
Information about towns on a map

### Fields:

- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>

<span id="MapTree"></span> **MapTree**  
Information about trees to be placed on the map

<span id="Town"></span> **Town**  
Data about town

### Fields:

- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  position of the town

<span id="TownInfo"></span> **TownInfo**  
Information about towns for map generation.

### Fields:

- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> name of the town
- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  world position of the town
- <span class="parameter">number</span>
  <span class="types"><span class="type">{number,</span></span> ,
  number} initialLandUseCapacities initial size for residential,
  commercial, industrial zones
- <span class="parameter">landUse2CargoNeeds</span>
  <span class="types"><a href="api.type.html#CargoType"
  class="type">{{type.CargoType,...},...}</a></span> cargo needs for
  residential, commercial, industrial zones

<span id="Tree"></span> **Tree**  
A single tree

### Fields:

- <span class="parameter">id</span>
  <span class="types"><span class="type">number</span></span>

## <span id="Class_type_BoundingInfo"></span>Class type.BoundingInfo

Information about the axis aligned bounding box of the model

<span id="type.BoundingInfo.bbMax"></span> **type.BoundingInfo.bbMax**  
Second corner

- <span class="parameter">bbMax</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>

<span id="type.BoundingInfo.bbMin"></span> **type.BoundingInfo.bbMin**  
First corner

- <span class="parameter">bbMin</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>

<span id="type.BoundingInfo.new"></span> **type.BoundingInfo.new(bbMin, bbMax)**  
Creates a new bounding info

### Parameters:

- <span class="parameter">bbMin</span> <span class="types">optional
  <a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
- <span class="parameter">bbMax</span> <span class="types">optional
  <a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>

## <span id="Class_type_Collider"></span>Class type.Collider

Information about the collider of the model

<span id="type.Collider.box"></span> **type.Collider.box**  
Only if type == 3, a collider made up of a set of points

- <span class="parameter">box</span>
  <span class="types"><a href="api.type.html#type.Collider.PointCloud"
  class="type">type.Collider.PointCloud</a></span>

<span id="type.Collider.box"></span> **type.Collider.box**  
Only if type == 2, a collider with a cylindrical shape

- <span class="parameter">box</span>
  <span class="types"><span class="type">type.Collider.Cylinder</span></span>

<span id="type.Collider.box"></span> **type.Collider.box**  
Only if type == 1, a collider with a cuboidal shape

- <span class="parameter">box</span>
  <span class="types"><a href="api.type.html#type.Collider.Box"
  class="type">type.Collider.Box</a></span>

<span id="type.Collider.type"></span> **type.Collider.type**  
The type of collider 0 = NONE, 1 = BOX, 2 = CYLINDER, 3 = POINT_CLOUD

- <span class="parameter">type</span>
  <span class="types"><span class="type">number</span></span>

<span id="type.Collider.type"></span> **type.Collider.type**  
The transform of the collider, relative to which the other data is
transformed

- <span class="parameter">type</span>
  <span class="types"><span class="type">number</span></span>

## <span id="Class_type_Collider_Box"></span>Class type.Collider.Box

A rectangular parallelepiped used for colliders

<span id="type.Collider.Box.halfExtents"></span> **type.Collider.Box.halfExtents**  
Distance from transform position to define the cuboid (in the direction
relative to the transform)

- <span class="parameter">halfExtents</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>

<span id="type.Collider.Box.halfExtents"></span> **type.Collider.Box.halfExtents**  
The dimensions from the center the cylinder extends to. Before being
transformed.

- <span class="parameter">halfExtents</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>

## <span id="Class_type_Collider_PointCloud"></span>Class type.Collider.PointCloud

A set of points used for collision

<span id="type.Collider.PointCloud.points"></span> **type.Collider.PointCloud.points**  
A list of points specifying all collision points

- <span class="parameter">points</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">{type.Vec3f,...}</a></span>

## <span id="Class_type_MetadataMap"></span>Class type.MetadataMap

Contains all metadata of a model. A specific metadata might be nil.

<span id="type.MetadataMap.airVehicle"></span> **type.MetadataMap.airVehicle**  
Defines a model to be used as a air vehicle

- <span class="parameter">airVehicle</span>
  <span class="types"><span class="type">type.MetadataMap.AirVehicle</span></span>

<span id="type.MetadataMap.animal"></span> **type.MetadataMap.animal**  
Defines the properties of an animal

- <span class="parameter">animal</span>
  <span class="types"><span class="type">type.MetadataMap.Animal</span></span>

<span id="type.MetadataMap.autoGroundTex"></span> **type.MetadataMap.autoGroundTex**  
Defines a model to place automatic ground textures when placed in-world

- <span class="parameter">autoGroundTex</span>
  <span class="types"><span class="type">type.MetadataMap.AutoGroundTex</span></span>

<span id="type.MetadataMap.availability"></span> **type.MetadataMap.availability**  
In-game availability of the object

- <span class="parameter">availability</span>
  <span class="types"><span class="type">type.MetadataMap.Availability</span></span>

<span id="type.MetadataMap.cameraConfig"></span> **type.MetadataMap.cameraConfig**  
Defines custom camera configurations for in-game cockpit view

- <span class="parameter">cameraConfig</span>
  <span class="types"><span class="type">type.MetadataMap.CameraConfig</span></span>

<span id="type.MetadataMap.car"></span> **type.MetadataMap.car**  
Empty placeholder to define which models are to be used as car, must
also have a roadVehicle entry

- <span class="parameter">car</span>
  <span class="types"><span class="type">type.MetadataMap.Car</span></span>

<span id="type.MetadataMap.cargoSlotProvider"></span> **type.MetadataMap.cargoSlotProvider**  
Used in conjuncion with transport vehicle metadata to define cargo
positioning of custom cargo models

- <span class="parameter">cargoSlotProvider</span>
  <span class="types"><span class="type">type.MetadataMap.CargoSlotProvider</span></span>

<span id="type.MetadataMap.category"></span> **type.MetadataMap.category**  
Defines UI categories to sort the model in the menu

- <span class="parameter">category</span>
  <span class="types"><span class="type">type.MetadataMap.Category</span></span>

<span id="type.MetadataMap.categoryList"></span> **type.MetadataMap.categoryList**  
Additional metadata tags used for terrain generation and other purposes

- <span class="parameter">categoryList</span>
  <span class="types"><span class="type">type.MetadataMap.CategoryList</span></span>

<span id="type.MetadataMap.colorConfig"></span> **type.MetadataMap.colorConfig**  
Defines the color configurations of the vehicle

- <span class="parameter">colorConfig</span>
  <span class="types"><span class="type">type.MetadataMap.ColorConfig</span></span>

<span id="type.MetadataMap.cost"></span> **type.MetadataMap.cost**  
In-game cost of the object

- <span class="parameter">cost</span>
  <span class="types"><span class="type">type.MetadataMap.Cost</span></span>

<span id="type.MetadataMap.description"></span> **type.MetadataMap.description**  
Name, icons and description for UI display

- <span class="parameter">description</span>
  <span class="types"><span class="type">type.MetadataMap.Description</span></span>

<span id="type.MetadataMap.emission"></span> **type.MetadataMap.emission**  
In-game emission configuration of the object

- <span class="parameter">emission</span>
  <span class="types"><span class="type">type.MetadataMap.Emission</span></span>

<span id="type.MetadataMap.labelList"></span> **type.MetadataMap.labelList**  
Defines additional information for the emission of labels in-game

- <span class="parameter">labelList</span>
  <span class="types"><span class="type">type.MetadataMap.LabelList</span></span>

<span id="type.MetadataMap.maintenance"></span> **type.MetadataMap.maintenance**  
In-game maintenance cost and other data of the object

- <span class="parameter">maintenance</span>
  <span class="types"><span class="type">type.MetadataMap.Maintenance</span></span>

<span id="type.MetadataMap.order"></span> **type.MetadataMap.order**  
Defines UI ordering when the item is placed in the menu

- <span class="parameter">order</span>
  <span class="types"><span class="type">type.MetadataMap.Order</span></span>

<span id="type.MetadataMap.particleSystem"></span> **type.MetadataMap.particleSystem**  
Particles emitted by the object when placed in-game

- <span class="parameter">particleSystem</span>
  <span class="types"><span class="type">type.MetadataMap.ParticleSystem</span></span>

<span id="type.MetadataMap.person"></span> **type.MetadataMap.person**  
Definition for in-game persons

- <span class="parameter">person</span>
  <span class="types"><span class="type">type.MetadataMap.Person</span></span>

<span id="type.MetadataMap.roadVehicle"></span> **type.MetadataMap.roadVehicle**  
Defines a model to be used as a rail vehicle

- <span class="parameter">roadVehicle</span>
  <span class="types"><span class="type">type.MetadataMap.RailVehicle</span></span>

<span id="type.MetadataMap.roadVehicle"></span> **type.MetadataMap.roadVehicle**  
Defines a model to be used as a road vehicle

- <span class="parameter">roadVehicle</span>
  <span class="types"><span class="type">type.MetadataMap.RoadVehicle</span></span>

<span id="type.MetadataMap.rock"></span> **type.MetadataMap.rock**  
Used to define which models can be placed as rock assets

- <span class="parameter">rock</span>
  <span class="types"><span class="type">type.MetadataMap.Rock</span></span>

<span id="type.MetadataMap.seatProvider"></span> **type.MetadataMap.seatProvider**  
Used in conjuncion with transport vehicle metadata to define seating,
driving and person places within the vehicle

- <span class="parameter">seatProvider</span>
  <span class="types"><span class="type">type.MetadataMap.SeatProvider</span></span>

<span id="type.MetadataMap.signal"></span> **type.MetadataMap.signal**  
Used to define a model to be usable as signal

- <span class="parameter">signal</span>
  <span class="types"><span class="type">type.MetadataMap.Signal</span></span>

<span id="type.MetadataMap.soundConfig"></span> **type.MetadataMap.soundConfig**  
Defines the sound emitted by the model when in-game

- <span class="parameter">soundConfig</span>
  <span class="types"><span class="type">type.MetadataMap.SoundConfig</span></span>

<span id="type.MetadataMap.streetTerminal"></span> **type.MetadataMap.streetTerminal**  
Defines a model to be used as a street stop

- <span class="parameter">streetTerminal</span>
  <span class="types"><span class="type">type.MetadataMap.StreetTerminal</span></span>

<span id="type.MetadataMap.terrainAlignmentProvider"></span> **type.MetadataMap.terrainAlignmentProvider**  
Used to define additional terrain modifications the model applies to the
terrain when placed

- <span class="parameter">terrainAlignmentProvider</span>
  <span class="types"><span class="type">type.MetadataMap.TerrainAlignmentProvider</span></span>

<span id="type.MetadataMap.transportNetworkProvider"></span> **type.MetadataMap.transportNetworkProvider**  
Defines a transport network to be created when the model is placed

- <span class="parameter">transportNetworkProvider</span>
  <span class="types"><span class="type">type.MetadataMap.TransportNetworkProvider</span></span>

<span id="type.MetadataMap.transportVehicle"></span> **type.MetadataMap.transportVehicle**  
Used to define a model to be usable as transport vehicle

- <span class="parameter">transportVehicle</span>
  <span class="types"><span class="type">type.MetadataMap.TransportVehicle</span></span>

<span id="type.MetadataMap.tree"></span> **type.MetadataMap.tree**  
Used to define which models can be placed as tree assets

- <span class="parameter">tree</span>
  <span class="types"><span class="type">type.MetadataMap.Tree</span></span>

<span id="type.MetadataMap.vehicleDepot"></span> **type.MetadataMap.vehicleDepot**  
Used to define a model to be usable as vehicle depot

- <span class="parameter">vehicleDepot</span>
  <span class="types"><span class="type">type.MetadataMap.VehicleDepot</span></span>

<span id="type.MetadataMap.waterVehicle"></span> **type.MetadataMap.waterVehicle**  
Defines a model to be used as a water vehicle

- <span class="parameter">waterVehicle</span>
  <span class="types"><span class="type">type.MetadataMap.WaterVehicle</span></span>

## <span id="Resources"></span>Resources

<span id="AutoGroundTex"></span> **AutoGroundTex**  
Specification for auto-generated ground textures

<span id="BridgeType"></span> **BridgeType**  
Specification for bridge types

### Fields:

- <span class="parameter">costFactors</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  factors for computing costs: a thresold, an exponent, and an offset

<span id="BuildMode"></span> **BuildMode**  
How the construction reacts to mouse inputs while building.

### Fields:

- <span class="parameter">SINGLE</span> 0
- <span class="parameter">MULTI</span> 1
- <span class="parameter">BRUSH</span> 2

<span id="BuildingType"></span> **BuildingType**  
Specification for town building types

<span id="CargoType"></span> **CargoType**  
Specification for cargo types

### Fields:

- <span class="parameter">id</span>
  <span class="types"><span class="type">number</span></span> Unique
  identifier for the type
- <span class="parameter">order</span>
  <span class="types"><span class="type">number</span></span> Order (for
  sorting in cargo type lists)
- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> display name
- <span class="parameter">icon</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> display icon path
- <span class="parameter">iconSmall</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> display icon path for small contextes
- <span class="parameter">weight</span>
  <span class="types"><span class="type">number</span></span> cargo
  weigth for a unit of cargo

<span id="ConstructionDesc.SnapConfig"></span> **ConstructionDesc.SnapConfig**  
Defines if the construction can be snapped to tracks, roads or the water
surface

<span id="ConstructionType"></span> **ConstructionType**  
Type of the construction for displaying in the correct UI category and
controlling specific behaviour for the type.

### Fields:

- <span class="parameter">STREET_STATION</span> 0
- <span class="parameter">RAIL_STATION</span> 1
- <span class="parameter">AIRPORT</span> 2
- <span class="parameter">HARBOR</span> 3
- <span class="parameter">STREET_STATION_CARGO</span> 4
- <span class="parameter">RAIL_STATION_CARGO</span> 5
- <span class="parameter">HARBOR_CARGO</span> 6
- <span class="parameter">STREET_DEPOT</span> 7
- <span class="parameter">RAIL_DEPOT</span> 8
- <span class="parameter">WATER_DEPOT</span> 9
- <span class="parameter">INDUSTRY</span> 10
- <span class="parameter">ASSET_DEFAULT</span> 11
- <span class="parameter">ASSET_TRACK</span> 12
- <span class="parameter">TOWN_BUILDING</span> 13
- <span class="parameter">STREET_CONSTRUCTION</span> 14
- <span class="parameter">NONE</span> 15
- <span class="parameter">AIRPORT_CARGO</span> 16
- <span class="parameter">TRACK_CONSTRUCTION</span> 17
- <span class="parameter">WATER_WAYPOINT</span> 18

<span id="GroundTexture"></span> **GroundTexture**  
Specification for ground textures

<span id="GroundTexture.Data"></span> **GroundTexture.Data**  
Extra information for ground textures

<span id="IconRenderDistances"></span> **IconRenderDistances**  
Used to configure the HUD icon render distances from the camera view.

<span id="LandUseType"></span> **LandUseType**  
Enumeration for land use types

<span id="LaneConfig"></span> **LaneConfig**  
Specification for the lanes of street

<span id="ModuleDesc"></span> **ModuleDesc**  
Used to configure new modules.

<span id="MultipleUnit"></span> **MultipleUnit**  
Specification for multiple units

<span id="MultipleUnit.Vehicle"></span> **MultipleUnit.Vehicle**  
Specification for multiple units individual vehicles

<span id="RailroadCrossingType"></span> **RailroadCrossingType**  
Specification for railroad crossings

<span id="RailroadCrossingType.ConfigEntry"></span> **RailroadCrossingType.ConfigEntry**  
Specification for railroad crossings models

<span id="ScriptParamType"></span> **ScriptParamType**  
UI Type for displaying the parameter. Used to configure the parameters
used for constructions.

### Fields:

- <span class="parameter">BUTTON</span> 0
- <span class="parameter">SLIDER</span> 1
- <span class="parameter">COMBOBOX</span> 2
- <span class="parameter">ICON_BUTTON</span> 3
- <span class="parameter">CHECKBOX</span> 4

<span id="StreetType"></span> **StreetType**  
Specification for street types

<span id="TownBuildingParams"></span> **TownBuildingParams**  
Extra information for town buildings

<span id="TrackType"></span> **TrackType**  
Specification for a track type

<span id="TrafficLightType"></span> **TrafficLightType**  
Specification for traffic lights

<span id="TunnelType"></span> **TunnelType**  
Specification for tunnel types

## <span id="Class_ScriptRef"></span>Class ScriptRef

References a function in another file with ".script" exctension.

<span id="ScriptRef.fileName"></span> **ScriptRef.fileName**  
The script path, toghether with the lua path inside the function For
example, this is the reference for a Crane flock function:
"models/model/animal/animal.flock.crane" \* the tokens separated by '/'
before '.' are taken as part of the the path:
"models/model/animal/animal" \* the tokens after the second '.'
represent the lua path (in this case "flock.crane")

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span>

<span id="ScriptRef.params"></span> **ScriptRef.params**  
A lua table of closure parameters that will be added at the end of the
parameter list when the script is called.

- <span class="parameter">params</span>
  <span class="types"><span class="type">Table</span></span>

## <span id="Class_ScriptParam"></span>Class ScriptParam

Used to configure the parameter-based UI.

<span id="ScriptParam.defaultIndex"></span> **ScriptParam.defaultIndex**  
Default index/state

- <span class="parameter">defaultIndex</span>
  <span class="types"><span class="type">number</span></span>

<span id="ScriptParam.key"></span> **ScriptParam.key**  
Unique key that is passed to the construction functions

- <span class="parameter">key</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span>

<span id="ScriptParam.name"></span> **ScriptParam.name**  
Display name

- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span>

<span id="ScriptParam.tooltip"></span> **ScriptParam.tooltip**  
Tooltip to display over certain parameters

- <span class="parameter">tooltip</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span>

<span id="ScriptParam.uiType"></span> **ScriptParam.uiType**  
Type of ui shown in user interface selection

- <span class="parameter">uiType</span>
  <span class="types"><span class="type">ScriptParam.Type</span></span>

<span id="ScriptParam.values"></span> **ScriptParam.values**  
All possible values of the params

- <span class="parameter">values</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">{string,...}</a></span>

<span id="ScriptParam.yearFrom"></span> **ScriptParam.yearFrom**  
Availability from

- <span class="parameter">yearFrom</span>
  <span class="types"><span class="type">number</span></span>

<span id="ScriptParam.yearTo"></span> **ScriptParam.yearTo**  
Availability to

- <span class="parameter">yearTo</span>
  <span class="types"><span class="type">number</span></span>

## <span id="Class_ConstructionDesc"></span>Class ConstructionDesc

Describes a construction

<span id="ConstructionDesc.costs"></span> **ConstructionDesc.costs**  
Render distance for costs and income HUD icons

- <span class="parameter">costs</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.depots"></span> **ConstructionDesc.depots**  
Render distance for depots HUD icons

- <span class="parameter">depots</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.fileName"></span> **ConstructionDesc.fileName**  
fileName

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> A fileName or unique identifier for the
  construction.

<span id="ConstructionDesc.industries"></span> **ConstructionDesc.industries**  
Render distance for industries HUD icons

- <span class="parameter">industries</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.params"></span> **ConstructionDesc.params**  
Configuration

- <span class="parameter">params</span>
  <span class="types"><a href="api.type.html#ScriptParam" class="type">{ScriptParam,...}</a></span>
  A list of parameters that can be used to configure the construction.

<span id="ConstructionDesc.planes"></span> **ConstructionDesc.planes**  
Render distance planes HUD icons

- <span class="parameter">planes</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.roadVehicles"></span> **ConstructionDesc.roadVehicles**  
Render distance for roadVehicles HUD icons

- <span class="parameter">roadVehicles</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.ships"></span> **ConstructionDesc.ships**  
Render distance for ships HUD icons

- <span class="parameter">ships</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.signals"></span> **ConstructionDesc.signals**  
Render distance signals HUD icons

- <span class="parameter">signals</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.stations"></span> **ConstructionDesc.stations**  
Render distance for stations HUD icons

- <span class="parameter">stations</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.towns"></span> **ConstructionDesc.towns**  
Render distance for towns HUD icons

- <span class="parameter">towns</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.towns"></span> **ConstructionDesc.towns**  
Render distance for townBuildingsCargo HUD icons

- <span class="parameter">towns</span>
  <span class="types"><span class="type">float</span></span>

<span id="ConstructionDesc.trains"></span> **ConstructionDesc.trains**  
Render distance trains HUD icons

- <span class="parameter">trains</span>
  <span class="types"><span class="type">float</span></span>

## <span id="Transport"></span>Transport

<span id="EdgeGeometry"></span> **EdgeGeometry**  
Defines the geometry (shape) of an edge.

### Fields:

- <span class="parameter">tangent</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  vertical tangents at 0.0 and 1.0
- <span class="parameter">height</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  heights at 0.0 and 1.0
- <span class="parameter">length</span>
  <span class="types"><span class="type">Number</span></span>
- <span class="parameter">width</span>
  <span class="types"><span class="type">Number</span></span>
- <span class="parameter">Parameters</span>
  <span class="types"><a href="api.type.html#EdgeGeometry.Arc" class="type">Arc</a>,
  <a href="api.type.html#EdgeGeometry.Straight" class="type">Straight</a>,
  <a href="api.type.html#EdgeGeometry.CubicOffsetSpline"
  class="type">CubicOffsetSpline</a> or
  <a href="api.type.html#EdgeGeometry.CubicSpline"
  class="type">CubicSpline</a></span> for the 2D shape (xy)

<span id="EdgeGeometry.Arc"></span> **EdgeGeometry.Arc**  
Arc

### Fields:

- <span class="parameter">angle</span>
  <span class="types"><span class="type">Number</span></span>
- <span class="parameter">center</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
- <span class="parameter">radius</span>
  <span class="types"><span class="type">Number</span></span>
- <span class="parameter">startAngle</span>
  <span class="types"><span class="type">Number</span></span>

<span id="EdgeGeometry.CubicOffsetSpline"></span> **EdgeGeometry.CubicOffsetSpline**  
CubicOffsetSpline

### Fields:

- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{type.Vec2f,type.Vec2f}</a></span>
- <span class="parameter">tangent</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{type.Vec2f,type.Vec2f}</a></span>
- <span class="parameter">offset</span>
  <span class="types"><span class="type">Number</span></span>

<span id="EdgeGeometry.CubicSpline"></span> **EdgeGeometry.CubicSpline**  
CubicSpline

### Fields:

- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{type.Vec2f,type.Vec2f}</a></span>
- <span class="parameter">tangent</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{type.Vec2f,type.Vec2f}</a></span>

<span id="EdgeGeometry.Straight"></span> **EdgeGeometry.Straight**  
Straight

### Fields:

- <span class="parameter">pos</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">{type.Vec2f,type.Vec2f}</a></span>

<span id="EdgeIdDir"></span> **EdgeIdDir**  
Input helper type.

### Fields:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
- <span class="parameter">dir</span>
  <span class="types"><span class="type">boolean</span></span>

<span id="EdgeIdDirAndLength"></span> **EdgeIdDirAndLength**  
Input helper type.

### Fields:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
- <span class="parameter">dir</span>
  <span class="types"><span class="type">boolean</span></span>
- <span class="parameter">length</span>
  <span class="types"><span class="type">float</span></span>

<span id="EdgeIsect"></span> **EdgeIsect**  
Specifies the intersection of two edges, with waiting area for vehicles.

<span id="EdgeIsect.Info"></span> **EdgeIsect.Info**  
Data for an edge intersect

<span id="ExtPath.ExtPathEdge"></span> **ExtPath.ExtPathEdge**  
A path edge of an ExtPath. It can be either an EdgeRange, which is a
sub-interval of an edge (see
[type.edgeId](api.type.html#EdgeId.edgeId)), or a link connecting two
arbitrary points of different edges.

### Fields:

- <span class="parameter">range</span>
  <span class="types"><a href="api.type.html#ExtPath.ExtPathEdge.EdgeRange"
  class="type">ExtPath.ExtPathEdge.EdgeRange</a></span> If the Edge
  represents an EdgeRange, this provides access to its data (nil
  otherwise)
- <span class="parameter">link</span>
  <span class="types"><span class="type">ExtPath.ExtPathEdge.LinkEdge</span></span>
  If the Edge represents a LinkEdge, this provides access to its data
  (nil otherwise)

<span id="ExtPath.ExtPathEdge.EdgeRange"></span> **ExtPath.ExtPathEdge.EdgeRange**  
An EdgeRange of an ExtPath.ExtPathEdge

### Fields:

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>
  The ID of the corresponding transport edge
- <span class="parameter">params</span>
  <span class="types"><span class="type">{Number,Number}</span></span>
  the start and end positions (range: 0.0 - 1.0)
- <span class="parameter">dir</span>
  <span class="types"><span class="type">bool</span></span> direction
  along the edge (true if along the direction specified by the edgeId,
  false for reverse)

<span id="ExtPath.ExtPathEdge::LinkEdge"></span> **ExtPath.ExtPathEdge::LinkEdge**  
An LinkEdge of an ExtPath.ExtPathEdge

### Fields:

- <span class="parameter">The</span>
  <span class="types"><a href="api.type.html#type.Collider.PointCloud.points"
  class="type">points</a></span> two locations that are connected

<span id="NodeId"></span> **NodeId**  
References a single transport network node within a transport network
entity

### Fields:

- <span class="parameter">new</span>
  <span class="types"><span class="type">func</span></span> constructor,
  either no parameters or and entity and an index
- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK
  entity
- <span class="parameter">index</span>
  <span class="types"><span class="type">int</span></span> the index
  within the edges field of the transport network component (starting at
  0)

<span id="PortId"></span> **PortId**  
Identifies a
[TransportNodeData.Port](api.type.html#TransportNodeData.Port) of a Node
within a
[type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK

### Fields:

- <span class="parameter">node</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">type.NodeId</a></span>
  the node ID
- <span class="parameter">port</span>
  <span class="types"><span class="type">int</span></span> the port
  number

<span id="SignalId"></span> **SignalId**  
Identifies a street/track signal

### Fields:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> The entity
  of the SignalList
- <span class="parameter">index</span>
  <span class="types"><span class="type">int</span></span> The index of
  the signal inside the signal list

<span id="StationTerminal"></span> **StationTerminal**  
Identifies a Terminal inside a StationGroup

### Fields:

- <span class="parameter">station</span>
  <span class="types"><span class="type">int</span></span> The station
  index in the StationGroup
- <span class="parameter">terminal</span>
  <span class="types"><span class="type">int</span></span> The terminal
  index in the Station

<span id="TpNetData"></span> **TpNetData**  
Contains additional data about the transport network.

<span id="TransportEdge"></span> **TransportEdge**  
A single edge within a
[type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK.
Also a referenced by [type.EdgeId](api.type.html#EdgeId).

<span id="TransportEdgeData"></span> **TransportEdgeData**  
Data attached to a [transport network
edge](api.type.html#TransportEdge).

<span id="TransportNode"></span> **TransportNode**  
A single node within a
[type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK.
Also a referenced by [type.NodeId](api.type.html#NodeId).

<span id="TransportNodeData"></span> **TransportNodeData**  
Data attached to a [transport network
node](api.type.html#TransportNode).

<span id="TransportNodeData.Port"></span> **TransportNodeData.Port**  
Specifies the connectivity of the node. A Port associates a neighbouring
edge with the node and defines which other ports (and thus edges) are
connected to it.

## <span id="Pathfinding"></span>Pathfinding

<span id="type.EdgeIdDir.new"></span> **type.EdgeIdDir.new(edgeID, direction)**  
Generates a new [EdgeIdDir](api.type.html#EdgeIdDir) item.

### Parameters:

- <span class="parameter">edgeID</span>
  <span class="types"><span class="type">type.EdgeID</span></span>
- <span class="parameter">direction</span>
  <span class="types"><span class="type">bool</span></span>

<span id="type.EdgeIdDirAndLength.new"></span> **type.EdgeIdDirAndLength.new(edgeID, direction, length)**  
Generates a new [EdgeIdDirAndLength](api.type.html#EdgeIdDirAndLength)
item.

### Parameters:

- <span class="parameter">edgeID</span>
  <span class="types"><span class="type">type.EdgeID</span></span>
- <span class="parameter">direction</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">length</span>
  <span class="types"><span class="type">float</span></span>

## <span id="Class_EdgeId"></span>Class EdgeId

References a single transport network edge within a transport network
entity

<span id="EdgeId.edgeId"></span> **EdgeId.edgeId**  
The [type.ComponentType](api.type.html#ComponentType).TRANSPORT_NETWORK
entity

- <span class="parameter">edgeId</span>
  <span class="types"><span class="type">Entity</span></span>

<span id="EdgeId.index"></span> **EdgeId.index**  
The index within the edges field of the transport network component
(starting at 0)

- <span class="parameter">index</span>
  <span class="types"><span class="type">number</span></span>

<span id="EdgeId.new"></span> **EdgeId.new()**  
Constructor: either no parameters or and entity and an index

## <span id="Class_EdgePos"></span>Class EdgePos

References a position inside an [type.EdgeId](api.type.html#EdgeId)

<span id="EdgePos.edgeId"></span> **EdgePos.edgeId**  
The edge (entity and index within transport network)

- <span class="parameter">edgeId</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">type.EdgeId</a></span>

<span id="EdgePos.param"></span> **EdgePos.param**  
The position on the edge

- <span class="parameter">param</span>
  <span class="types"><span class="type">number</span></span>

## <span id="Class_Path"></span>Class Path

A path comprised of EdgeId and directions

<span id="Path.edges"></span> **Path.edges**  
The path data

- <span class="parameter">edges</span>
  <span class="types"><a href="api.type.html#EdgeIdDir" class="type">{type.EdgeIdDir,...}</a></span>

<span id="Path.endOffset"></span> **Path.endOffset**  
The actual end of the path (i.e. where to stop) as offset from the end

- <span class="parameter">endOffset</span>
  <span class="types"><span class="type">number</span></span>

## <span id="Class_PathPos"></span>Class PathPos

The position on a Path

<span id="PathPos.edgeIndex"></span> **PathPos.edgeIndex**  
The index within a path

- <span class="parameter">edgeIndex</span>
  <span class="types"><span class="type">number</span></span>

<span id="PathPos.pos"></span> **PathPos.pos**  
The position on the spline, relative to the length of the spline

- <span class="parameter">pos</span>
  <span class="types"><span class="type">number</span></span>

<span id="PathPos.pos01"></span> **PathPos.pos01**  
The position on the spline, normalized as parameter from 0 to 1

- <span class="parameter">pos01</span>
  <span class="types"><span class="type">number</span></span>

## <span id="Class_Terminal"></span>Class Terminal

Data for a station Terminal.

<span id="Terminal.personEdges"></span> **Terminal.personEdges**  
List of all edges for the person/cargo wait area

- <span class="parameter">personEdges</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">{EdgeId,...}</a></span>

<span id="Terminal.personNodes"></span> **Terminal.personNodes**  
list of all nodes for the person/cargo wait area

- <span class="parameter">personNodes</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">{NodeId,...}</a></span>

<span id="Terminal.tag"></span> **Terminal.tag**  
Identifying tag

- <span class="parameter">tag</span> <span class="types">optional
  <span class="type">int</span></span>

<span id="Terminal.vehicleNodeId"></span> **Terminal.vehicleNodeId**  
The position (node) where the vehicle will attempt to stop

- <span class="parameter">vehicleNodeId</span>
  <span class="types"><a href="api.type.html#NodeId" class="type">NodeId</a></span>

## <span id="Class_PathPosData"></span>Class PathPosData

The position in the world

<span id="PathPosData.Signal"></span> **PathPosData.Signal**  
Contains information about a street/track signal

### Fields:

- <span class="parameter">edgePr</span>
  <span class="types"><a href="api.type.html#EdgeId" class="type">{EdgeId,bool}</a></span>
  EdgeId and direction
- <span class="parameter">type</span>
  <span class="types"><span class="type">Type</span></span> the type of
  the signal
- <span class="parameter">state</span>
  <span class="types"><span class="type">int</span></span> current
  animation playing
- <span class="parameter">stateTime</span>
  <span class="types"><span class="type">int</span></span> timer for the
  animation

<span id="PathPosData.SignalType"></span> **PathPosData.SignalType**  
Enum containing the type of the signal

### Fields:

- <span class="parameter">SIGNAL</span> 0
- <span class="parameter">ONE_WAY_SIGNAL</span> 1
- <span class="parameter">WAYPOINT</span> 2

<span id="PathPosData.pPrime"></span> **PathPosData.pPrime**  
The first derivative

- <span class="parameter">pPrime</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>

<span id="PathPosData.pPrimePrime"></span> **PathPosData.pPrimePrime**  
The second derivative

- <span class="parameter">pPrimePrime</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>

<span id="PathPosData.position"></span> **PathPosData.position**  
The position in the world

- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>

## <span id="Proposal"></span>Proposal

<span id="CollisionInfo"></span> **CollisionInfo**  
Collision information of the [type.Proposal](api.type.html#Proposal).

<span id="CollisionInfo.EntityData"></span> **CollisionInfo.EntityData**  
More data about the collision.

<span id="Context"></span> **Context**  
A structure containing extra options for the building of a proposal.

<span id="ErrorState"></span> **ErrorState**  
Contains error information for a proposal. Wherever a construction
cannot be built for any reason, then the ErrorState will contain one or
more message signaling the error type.

<span id="NodeAndEntity"></span> **NodeAndEntity**  
An entity with a
[type.ComponentType](api.type.html#ComponentType).BASE_NODE component.

Used to specify a new base node entity to be added.

<span id="Proposal"></span> **Proposal**  
A more complete version of the
[type.SimpleProposal](api.type.html#SimpleProposal).

Most data can be read from a
[type.ProposalData](api.type.html#ProposalData) or in the result of
cmd.make.buildProposal.

<span id="Proposal.ConstructionEntity"></span> **Proposal.ConstructionEntity**  
A more complete version of the
[type.ConstructionEntity](api.type.html#ConstructionEntity).

Most data can be read from a
[type.ProposalData](api.type.html#ProposalData) or in the result of
cmd.make.buildProposal.

<span id="ProposalCreateCallbackResult"></span> **ProposalCreateCallbackResult**  
Contains only the error message.

<span id="ProposalData"></span> **ProposalData**  
Contains the processed result of a
[type.Proposal](api.type.html#Proposal).

<span id="SegmentAndEntity"></span> **SegmentAndEntity**  
An entity with a
[type.ComponentType](api.type.html#ComponentType).BASE_EDGE component
and extra information.

Used to specify a new base edge entity to be added.

<span id="StreetProposal"></span> **StreetProposal**  
A more complete version of the
[type.SimpleStreetProposal](api.type.html#SimpleStreetProposal).

Most data can be read from a
[type.ProposalData](api.type.html#ProposalData) or in the result of
cmd.make.buildProposal.

<span id="StreetProposal.EdgeObject"></span> **StreetProposal.EdgeObject**  
A more complete version of the
[type.EdgeObject](api.type.html#EdgeObject).

Most data can be read from a
[type.ProposalData](api.type.html#ProposalData) or in the result of
cmd.make.buildProposal.

<span id="TpNetLinkProposal"></span> **TpNetLinkProposal**  
Contains the processed result with all edge links.

<span id="TpNetLinkProposal.Data"></span> **TpNetLinkProposal.Data**  
Information about a single link.

</div>

</div>

<div id="about">

*generated by [LDoc 1.4.3](http://github.com/stevedonovan/LDoc)* *Last
updated 2023-04-18 15:10:38*

</div>

</div>
