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

- [Functions](api.cmd.html#Functions)
- [make](api.cmd.html#make)

## Modules

- **api.cmd**
- [api.engine](api.engine.html)
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

# Module `api.cmd`

The module is available on both the [GUI
State](../topics/states.md.html#GUI_State) and the [Engine
State](../topics/states.md.html#Engine_State) (and the [Console
State](../topics/states.md.html#Console_State) as well).

However, it works in a slightly different manner depending on where it
is used from.

On the engine states, commands are executed immediately and the effects
are immediately noticeable. Moreover, the callback function will be
called immediately.

On the gui and console states, commands are executed in the next
simulation step, and the effects are noticeable only after a few frames.
The callback function will be called the frame after the command has
been executed, after which the changes are visible on the gui and engine
state.

## [Functions](api.cmd.html#Functions)

|  |  |
|----|----|
| [sendCommand(command\[, callback\])](api.cmd.html#sendCommand) | Sends a command object to be executed later or immediately depending on the state context. |

## [make](api.cmd.html#make)

|  |  |
|----|----|
| [make.bookJournalEntry(playerEntity, journalEntry\[, a\])](api.cmd.html#make.bookJournalEntry) | Makes a [type.Book](api.type.html#Book) command. |
| [make.buildProposal(proposal, context, ignoreErrors)](api.cmd.html#make.buildProposal) | Makes a [type.BuildProposal](api.type.html#BuildProposal) command. |
| [make.buyVehicle(playerEntity, depotEntity, config)](api.cmd.html#make.buyVehicle) | Makes a [type.BuyVehicle](api.type.html#BuyVehicle) command. |
| [make.connectTownsAndIndustries(townEntities, connections, keep)](api.cmd.html#make.connectTownsAndIndustries) | Makes a [type.ConnectTownsAndIndustries](api.type.html#ConnectTownsAndIndustries) command. |
| [make.createLine(name, color, playerEntity, line)](api.cmd.html#make.createLine) | Makes a [type.CreateLine](api.type.html#CreateLine) command. |
| [make.createTowns(towns)](api.cmd.html#make.createTowns) | Makes a [type.CreateTowns](api.type.html#CreateTowns) command. |
| [make.deleteLine(lineEntity)](api.cmd.html#make.deleteLine) | Makes a [type.DeleteLine](api.type.html#DeleteLine) command. |
| [make.developTown(world)](api.cmd.html#make.developTown) | Makes a [type.DevelopTown](api.type.html#DevelopTown) command. |
| [make.instantlyUpdateTownCargoNeeds(townEntity, cargoNeeds)](api.cmd.html#make.instantlyUpdateTownCargoNeeds) | Makes a [type.InstantlyUpdateTownCargoNeeds](api.type.html#InstantlyUpdateTownCargoNeeds) command. |
| [make.removeField(fieldEntity)](api.cmd.html#make.removeField) | Makes a [type.RemoveField](api.type.html#RemoveField) command. |
| [make.removeTown(townEntity)](api.cmd.html#make.removeTown) | Makes a [type.RemoveTown](api.type.html#RemoveTown) command. |
| [make.replaceTerrain(map, config, seedText, worldEntity, keepAssets)](api.cmd.html#make.replaceTerrain) | Makes a [type.ReplaceTerrain](api.type.html#ReplaceTerrain) command. |
| [make.replaceVehicle(vehicleEntity, config)](api.cmd.html#make.replaceVehicle) | Makes a [type.ReplaceVehicle](api.type.html#ReplaceVehicle) command. |
| [make.reverseVehicle(vehicleEntity)](api.cmd.html#make.reverseVehicle) | Makes a [type.Reverse](api.type.html#Reverse) command. |
| [make.sellVehicle(vehicleEntity)](api.cmd.html#make.sellVehicle) | Makes a [type.SellVehicle](api.type.html#SellVehicle) command. |
| [make.sendScriptEvent(fileName, id, name, param)](api.cmd.html#make.sendScriptEvent) | Makes a [type.SendScriptEvent](api.type.html#SendScriptEvent) command. |
| [make.sendToDepot(vehicleEntity, sellOnArrival)](api.cmd.html#make.sendToDepot) | Makes a [type.SendToDepot](api.type.html#SendToDepot) command. |
| [make.setAnimalState(animalEntity, movementType, targetChangedElapsed, invalidTileElapsed, movementSpeed, angularSpeed)](api.cmd.html#make.setAnimalState) | Makes a [type.SetAnimalState](api.type.html#SetAnimalState) command. |
| [make.setCalendarSpeed(millisecondsPerDay)](api.cmd.html#make.setCalendarSpeed) | Makes a [type.SetCalendarSpeed](api.type.html#SetCalendarSpeed) command. |
| [make.setColor(entity, color)](api.cmd.html#make.setColor) | Makes a [type.SetColor](api.type.html#SetColor) command. |
| [make.setDate(date)](api.cmd.html#make.setDate) | Makes a [type.SetDate](api.type.html#SetDate) command. |
| [make.setGameSpeed(speed)](api.cmd.html#make.setGameSpeed) | Makes a [type.SetGameSpeed](api.type.html#SetGameSpeed) command. |
| [make.setLine(vehicleEntity, lineEntity, stopIndex)](api.cmd.html#make.setLine) | Makes a [type.SetLine](api.type.html#SetLine) command. |
| [make.setName(entity, name)](api.cmd.html#make.setName) | Makes a [type.SetName](api.type.html#SetName) command. |
| [make.setSimBuildingClosureTimeStamp(simBuildingEntity, closureTimeStamp)](api.cmd.html#make.setSimBuildingClosureTimeStamp) | Makes a ??? command. |
| [make.setSimBuildingManualDevelopment(simBuildingEntity, manual)](api.cmd.html#make.setSimBuildingManualDevelopment) | Makes a ??? command. |
| [make.setTownInfo(townEntity, initialLandUseCapacities)](api.cmd.html#make.setTownInfo) | Makes a [type.SetTownInfo](api.type.html#SetTownInfo) command. |
| [make.setUserStopped(vehicleEntity, userStopped)](api.cmd.html#make.setUserStopped) | Makes a [type.SetUserStopped](api.type.html#SetUserStopped) command. |
| [make.setVehicleManualDeparture(entity, manual)](api.cmd.html#make.setVehicleManualDeparture) | Makes a [type.SetVehicleManualDeparture](api.type.html#SetVehicleManualDeparture) command. |
| [make.setVehicleShouldDepart(vehicleEntity)](api.cmd.html#make.setVehicleShouldDepart) | Makes a [type.SetVehicleShouldDepart](api.type.html#SetVehicleShouldDepart) command. |
| [make.setVehicleTargetMaintenanceState(vehicleEntity, value)](api.cmd.html#make.setVehicleTargetMaintenanceState) | Makes a [type.SetVehicleTargetMaintenanceState](api.type.html#SetVehicleTargetMaintenanceState) command. |
| [make.spawnAnimal(fileName, position, lookAt)](api.cmd.html#make.spawnAnimal) | Makes a [type.SpawnAnimal](api.type.html#SpawnAnimal) command. |
| [make.updateLine(lineEntity, line)](api.cmd.html#make.updateLine) | Makes a [type.UpdateLine](api.type.html#UpdateLine) command. |

  
  

## <span id="Functions"></span>Functions

<span id="sendCommand"></span> **sendCommand(command\[, callback\])**  
Sends a command object to be executed later or immediately depending on
the state context. After the execution of the command, the callback
function is called. The callback function receives two parameters:  
**cmd** the command that has been executed, depending on the context
this might contain additional information. **success** a boolean value
to indicate whether the command was successful

### Parameters:

- <span class="parameter">command</span>
  <span class="types"><span class="type">Command</span></span> the
  [command](api.type.html#) object to be sent
- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(Command,bool)</span></span>
  an optional function that is called after the execution of the
  command. (*optional*)

## <span id="make"></span>make

<span id="make.bookJournalEntry"></span> **make.bookJournalEntry(playerEntity, journalEntry\[, a\])**  
Makes a [type.Book](api.type.html#Book) command. When executed, the new
journal entry is added to the players journal.

### Parameters:

- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the player
- <span class="parameter">journalEntry</span>
  <span class="types"><a href="api.type.html#enum.JournalEntry"
  class="type">type.JournalEntry</a></span> the entry to add
- <span class="parameter">a</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  position for the event (*optional*)

### Returns:

1.  <span class="types"><a href="api.type.html#Book" class="type">type.Book</a></span>
    a newly created [type.Book](api.type.html#Book) command

<span id="make.buildProposal"></span> **make.buildProposal(proposal, context, ignoreErrors)**  
Makes a [type.BuildProposal](api.type.html#BuildProposal) command. This
command is used to create new constructions and new streets via
scripting. When executed, the given build proposal is built. The command
might fail resulting in the proposal not being built.

### Parameters:

- <span class="parameter">proposal</span>
  <span class="types"><a href="api.type.html#SimpleProposal"
  class="type">type.SimpleProposal</a></span> a proposal containing a
  preview of the changes that will be applied with this command
- <span class="parameter">context</span>
  <span class="types"><a href="api.type.html#Context" class="type">type.Context</a>
  or <span class="type">nil</span></span> a context with extra options
  for the proposal
- <span class="parameter">ignoreErrors</span>
  <span class="types"><span class="type">bool</span></span> a flag
  enabling the building of the proposal even if non-critical errors are
  triggered

### Returns:

1.  <span class="types"><a href="api.type.html#BuildProposal"
    class="type">type.BuildProposal</a></span> a newly created
    [type.BuildProposal](api.type.html#BuildProposal) command

<span id="make.buyVehicle"></span> **make.buyVehicle(playerEntity, depotEntity, config)**  
Makes a [type.BuyVehicle](api.type.html#BuyVehicle) command. When
executed, a new vehicle is bought and placed in the given depot.

### Parameters:

- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the player
- <span class="parameter">depotEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the depot in which the
  vehicle will appear
- <span class="parameter">config</span>
  <span class="types"><a href="api.type.html#TransportVehicleConfig"
  class="type">type.TransportVehicleConfig</a></span> data containing
  information about the vehicle being purchased

### Returns:

1.  <span class="types"><a href="api.type.html#BuyVehicle" class="type">type.BuyVehicle</a></span>
    a newly created [type.BuyVehicle](api.type.html#BuyVehicle) command

<span id="make.connectTownsAndIndustries"></span> **make.connectTownsAndIndustries(townEntities, connections, keep)**  
Makes a
[type.ConnectTownsAndIndustries](api.type.html#ConnectTownsAndIndustries)
command. When executed, the command generates a new street network
connecting the given towns and all existing industries.

### Parameters:

- <span class="parameter">townEntities</span>
  <span class="types"><span class="type">{Entity,...}</span></span> the
  [entity](../topics/types.md.html#Entity) Ids of the towns to connect
  together
- <span class="parameter">connections</span>
  <span class="types"><a href="api.type.html#Vec2i" class="type">{type.Vec2i,...}</a></span>
  list with indices [type.Vec2i](api.type.html#Vec2i) into the vector
  townEntities specifying which towns are to be connected
- <span class="parameter">keep</span>
  <span class="types"><span class="type">bool</span></span> set to true
  if existing street connections should be kept, otherwise the streets
  will be removed

### Returns:

1.  <span class="types"><a href="api.type.html#ConnectTownsAndIndustries"
    class="type">type.ConnectTownsAndIndustries</a></span> a newly
    created
    [type.ConnectTownsAndIndustries](api.type.html#ConnectTownsAndIndustries)
    command

<span id="make.createLine"></span> **make.createLine(name, color, playerEntity, line)**  
Makes a [type.CreateLine](api.type.html#CreateLine) command. When
executed, creates a new line with the given parameters.

### Parameters:

- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name of the new line
- <span class="parameter">color</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  the color of the new line
- <span class="parameter">playerEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the player owning the
  line
- <span class="parameter">line</span>
  <span class="types"><a href="api.type.html#Line" class="type">type.Line</a></span>
  the configuration data for the line

### Returns:

1.  <span class="types"><a href="api.type.html#CreateLine" class="type">type.CreateLine</a></span>
    a newly created [type.CreateLine](api.type.html#CreateLine) command

<span id="make.createTowns"></span> **make.createTowns(towns)**  
Makes a [type.CreateTowns](api.type.html#CreateTowns) command. When
executed, the command initiates the genration of new towns using
information contained in [type.TownInfo](api.type.html#TownInfo).

### Parameters:

- <span class="parameter">towns</span>
  <span class="types"><a href="api.type.html#TownInfo" class="type">{type.TownInfo,...}</a></span>
  a list of town creation information, one for each new town

### Returns:

1.  <span class="types"><a href="api.type.html#CreateTowns" class="type">type.CreateTowns</a></span>
    a newly created [type.CreateTowns](api.type.html#CreateTowns)
    command

<span id="make.deleteLine"></span> **make.deleteLine(lineEntity)**  
Makes a [type.DeleteLine](api.type.html#DeleteLine) command. When
executed, the line with the given
[entity](../topics/types.md.html#Entity) Id is removed.

### Parameters:

- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the line
  that should be removed

### Returns:

1.  <span class="types"><a href="api.type.html#DeleteLine" class="type">type.DeleteLine</a></span>
    a newly created [type.DeleteLine](api.type.html#DeleteLine) command

<span id="make.developTown"></span> **make.developTown(world)**  
Makes a [type.DevelopTown](api.type.html#DevelopTown) command. When
executed, the command triggers development of towns at the given
position. By developing towns, new buildings or street segments are
added at the given position.

### Parameters:

- <span class="parameter">world</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  position the position where development should be triggered

### Returns:

1.  <span class="types"><a href="api.type.html#DevelopTown" class="type">type.DevelopTown</a></span>
    a newly created [type.DevelopTown](api.type.html#DevelopTown)
    command

<span id="make.instantlyUpdateTownCargoNeeds"></span> **make.instantlyUpdateTownCargoNeeds(townEntity, cargoNeeds)**  
Makes a
[type.InstantlyUpdateTownCargoNeeds](api.type.html#InstantlyUpdateTownCargoNeeds)
command. When executed, the cargo needs of the town districts are
updated to the provided needs.

### Parameters:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the town that should be
  updated
- <span class="parameter">cargoNeeds</span>
  <span class="types"><span class="type">{{int,...},{int,...},{int,...}}</span></span>
  a list of cargo type Ids for the needs of each of the three town
  districts **residential**, **commercial** and **industrial**.

### Returns:

1.  <span class="types"><a href="api.type.html#InstantlyUpdateTownCargoNeeds"
    class="type">type.InstantlyUpdateTownCargoNeeds</a></span> a newly
    created
    [type.InstantlyUpdateTownCargoNeeds](api.type.html#InstantlyUpdateTownCargoNeeds)
    command

<span id="make.removeField"></span> **make.removeField(fieldEntity)**  
Makes a [type.RemoveField](api.type.html#RemoveField) command. When
executed, the field with the given
[entity](../topics/types.md.html#Entity) Id is removed.

### Parameters:

- <span class="parameter">fieldEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the field that should
  be removed

### Returns:

1.  <span class="types"><a href="api.type.html#RemoveField" class="type">type.RemoveField</a></span>
    a newly created [type.RemoveField](api.type.html#RemoveField)
    command

<span id="make.removeTown"></span> **make.removeTown(townEntity)**  
Makes a [type.RemoveTown](api.type.html#RemoveTown) command. When
executed, the town with the given
[entity](../topics/types.md.html#Entity) Id is removed (all streets and
buildings belonging to the town will be removed as well).

### Parameters:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the town that should be
  removed

### Returns:

1.  <span class="types"><a href="api.type.html#RemoveTown" class="type">type.RemoveTown</a></span>
    a newly created [type.RemoveTown](api.type.html#RemoveTown) command

<span id="make.replaceTerrain"></span> **make.replaceTerrain(map, config, seedText, worldEntity, keepAssets)**  
Makes a [type.ReplaceTerrain](api.type.html#ReplaceTerrain) command.
When executed, the terrain is replaced. This is similar to the
generation in map editor.

### Parameters:

- <span class="parameter">map</span>
  <span class="types"><a href="api.type.html#Map" class="type">type.Map</a></span>
  an object that specifies the data for the new terrain (heightmap,
  assets, water level...)
- <span class="parameter">config</span>
  <span class="types"><a href="api.type.html#Terrain" class="type">type.Terrain</a></span>
  configuration parameters for the new terrain
- <span class="parameter">seedText</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> a seed for randomization purposes
- <span class="parameter">worldEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the world, usually 0
- <span class="parameter">keepAssets</span>
  <span class="types"><span class="type">bool</span></span> if set to
  true, existing landscape assets are conserved

### Returns:

1.  <span class="types"><a href="api.type.html#ReplaceTerrain"
    class="type">type.ReplaceTerrain</a></span> a newly created
    [type.ReplaceTerrain](api.type.html#ReplaceTerrain) command

<span id="make.replaceVehicle"></span> **make.replaceVehicle(vehicleEntity, config)**  
Makes a [type.ReplaceVehicle](api.type.html#ReplaceVehicle) command.
When executed, the vehicle with the given
[entity](../topics/types.md.html#Entity) Id will be replaced by the new
vehicle configuration.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle that should
  be replaced
- <span class="parameter">config</span>
  <span class="types"><a href="api.type.html#TransportVehicleConfig"
  class="type">type.TransportVehicleConfig</a></span> data containing
  information about the new vehicle being purchased

### Returns:

1.  <span class="types"><a href="api.type.html#ReplaceVehicle"
    class="type">type.ReplaceVehicle</a></span> a newly created
    [type.ReplaceVehicle](api.type.html#ReplaceVehicle) command

<span id="make.reverseVehicle"></span> **make.reverseVehicle(vehicleEntity)**  
Makes a [type.Reverse](api.type.html#Reverse) command. When executed,
the vehicle with the given [entity](../topics/types.md.html#Entity) Id
will be reversed.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle that should
  be reversed

### Returns:

1.  <span class="types"><a href="api.type.html#Reverse" class="type">type.Reverse</a></span>
    a newly created [type.Reverse](api.type.html#Reverse) command

<span id="make.sellVehicle"></span> **make.sellVehicle(vehicleEntity)**  
Makes a [type.SellVehicle](api.type.html#SellVehicle) command. When
executed, the vehicle with the given
[entity](../topics/types.md.html#Entity) Id will be sold.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) id of the vehicle that should
  be sold

### Returns:

1.  <span class="types"><a href="api.type.html#SellVehicle" class="type">type.SellVehicle</a></span>
    a newly created [type.SellVehicle](api.type.html#SellVehicle)
    command

<span id="make.sendScriptEvent"></span> **make.sendScriptEvent(fileName, id, name, param)**  
Makes a [type.SendScriptEvent](api.type.html#SendScriptEvent) command.
When executed, a script event will be broadcasted to all scripts.

Currently the script event must be fired within a script callback (e.g.
`updateGui`), it cannot be called from within, e.g., a GUI element
callback. As workaround for this, the event can be store in a closure as
follows:

    callbacks = {}

    ...

    local c = api.gui.comp.Slider.new("HORIZONTAL")
    c:onValueChanged(function(value)
        callbacks[#callbacks + 1] = api.cmd.sendCommand(api.cmd.make.sendScriptEvent(...))
    end)

    ...

    guiUpdate = function()
        for k,v in pairs(callback) do v() end
    end

### Parameters:

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

### Returns:

1.  <span class="types"><a href="api.type.html#SendScriptEvent"
    class="type">type.SendScriptEvent</a></span> a newly created
    [type.SendScriptEvent](api.type.html#SendScriptEvent) command

<span id="make.sendToDepot"></span> **make.sendToDepot(vehicleEntity, sellOnArrival)**  
Makes a [type.SendToDepot](api.type.html#SendToDepot) command. When
executed, the vehicle with the given
[entity](../topics/types.md.html#Entity) Id will be sent to the nearest
reachable depot and (optionally) be sold.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle that should
  be sent to the depot
- <span class="parameter">sellOnArrival</span>
  <span class="types"><span class="type">bool</span></span> if set to
  true, the vehicle will be sold upon arrival at the depot

### Returns:

1.  <span class="types"><a href="api.type.html#SendToDepot" class="type">type.SendToDepot</a></span>
    a newly created [type.SendToDepot](api.type.html#SendToDepot)
    command

<span id="make.setAnimalState"></span> **make.setAnimalState(animalEntity, movementType, targetChangedElapsed, invalidTileElapsed, movementSpeed, angularSpeed)**  
Makes a [type.SetAnimalState](api.type.html#SetAnimalState) command.
When executed, the animal with the given
[entity](../topics/types.md.html#Entity) Id will be updated.

### Parameters:

- <span class="parameter">animalEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the animal that should
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

### Returns:

1.  <span class="types"><a href="api.type.html#SetAnimalState"
    class="type">type.SetAnimalState</a></span> a newly created
    [type.SetAnimalState](api.type.html#SetAnimalState) command

<span id="make.setCalendarSpeed"></span> **make.setCalendarSpeed(millisecondsPerDay)**  
Makes a [type.SetCalendarSpeed](api.type.html#SetCalendarSpeed) command.
When executed, the calendar speed is set to the given value (this
affects only the speed of the calendar, and not the simulation speed).

### Parameters:

- <span class="parameter">millisecondsPerDay</span>
  <span class="types"><span class="type">int</span></span> day length in
  milliseconds

### Returns:

1.  <span class="types"><a href="api.type.html#SetCalendarSpeed"
    class="type">type.SetCalendarSpeed</a></span> a newly created
    [type.SetCalendarSpeed](api.type.html#SetCalendarSpeed) command

<span id="make.setColor"></span> **make.setColor(entity, color)**  
Makes a [type.SetColor](api.type.html#SetColor) command. When executed,
the [entity](../topics/types.md.html#Entity) Id is set to the given
color.

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the entity that should
  be colored
- <span class="parameter">color</span>
  <span class="types"><a href="api.type.html#Vec3f" class="type">type.Vec3f</a></span>
  the rgb color

### Returns:

1.  <span class="types"><a href="api.type.html#SetColor" class="type">type.SetColor</a></span>
    a newly created [type.SetColor](api.type.html#SetColor) command

<span id="make.setDate"></span> **make.setDate(date)**  
Makes a [type.SetDate](api.type.html#SetDate) command. When executed,
the calendar date (for vehicle availability, etc.) is set to the given
date.

### Parameters:

- <span class="parameter">date</span>
  <span class="types"><a href="api.type.html#Date" class="type">type.Date</a></span>
  the new date that should be set

### Returns:

1.  <span class="types"><a href="api.type.html#SetDate" class="type">type.SetDate</a></span>
    a newly created [type.SetDate](api.type.html#SetDate) command

<span id="make.setGameSpeed"></span> **make.setGameSpeed(speed)**  
Makes a [type.SetGameSpeed](api.type.html#SetGameSpeed) command. When
executed, the game (simulation) speed is set to the given value.

### Parameters:

- <span class="parameter">speed</span>
  <span class="types"><span class="type">double</span></span> a positive
  number: the speed that the simulation will run at

### Returns:

1.  <span class="types"><a href="api.type.html#SetGameSpeed" class="type">type.SetGameSpeed</a></span>
    a newly created [type.SetGameSpeed](api.type.html#SetGameSpeed)
    command

<span id="make.setLine"></span> **make.setLine(vehicleEntity, lineEntity, stopIndex)**  
Makes a [type.SetLine](api.type.html#SetLine) command. When executed,
the vehicle with the provided [entity](../topics/types.md.html#Entity)
Id is assigned to the line with given
[entity](../topics/types.md.html#Entity) Id and sent to the stop with
the given index.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle that should
  be assigned to the line
- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the line on which the
  vehicle should be sent
- <span class="parameter">stopIndex</span>
  <span class="types"><span class="type">int</span></span> the position
  of the stop on the line to which the vehicle should be sent to

### Returns:

1.  <span class="types"><a href="api.type.html#SetLine" class="type">type.SetLine</a></span>
    a newly created [type.SetLine](api.type.html#SetLine) command

<span id="make.setName"></span> **make.setName(entity, name)**  
Makes a [type.SetName](api.type.html#SetName) command. When executed,
the [entity](../topics/types.md.html#Entity) Id is renamed with the
given name.

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the entity that should
  be renamed
- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the new name that should be set

### Returns:

1.  <span class="types"><a href="api.type.html#SetName" class="type">type.SetName</a></span>
    a newly created [type.SetName](api.type.html#SetName) command

<span id="make.setSimBuildingClosureTimeStamp"></span> **make.setSimBuildingClosureTimeStamp(simBuildingEntity, closureTimeStamp)**  
Makes a ??? command. When executed, the command sets a new value to the
closure time stamp of the given industry.

### Parameters:

- <span class="parameter">simBuildingEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Ids of the industry
- <span class="parameter">closureTimeStamp</span>
  <span class="types"><span class="type">int</span></span> sets the
  closure time of the insutry

### Returns:

1.  <span class="types"><span class="type">type.setSimBuildingClosureTimeStamp</span></span>
    a newly created ??? command

<span id="make.setSimBuildingManualDevelopment"></span> **make.setSimBuildingManualDevelopment(simBuildingEntity, manual)**  
Makes a ??? command. When executed, the command sets the industry to
manual mode if manual is true, or to automatic development mode of
manual is set to false (default).

### Parameters:

- <span class="parameter">simBuildingEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the building to set the
  development mode
- <span class="parameter">manual</span>
  <span class="types"><span class="type">bool</span></span> set to true
  if industries do not start to close/stop countdown and do not level up
  or down

### Returns:

1.  <span class="types"><span class="type">type.setSimBuildingManualDevelopment</span></span>
    a newly created ??? command

<span id="make.setTownInfo"></span> **make.setTownInfo(townEntity, initialLandUseCapacities)**  
Makes a [type.SetTownInfo](api.type.html#SetTownInfo) command. When
executed, the town with the given
[entity](../topics/types.md.html#Entity) Id is set to the given initial
capacities.

### Parameters:

- <span class="parameter">townEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the town that should be
  updated
- <span class="parameter">initialLandUseCapacities</span>
  <span class="types"><span class="type">{int,int,int}</span></span>
  initial capacities for the residential, commercial and industrial
  districts of the town

### Returns:

1.  <span class="types"><a href="api.type.html#SetTownInfo" class="type">type.SetTownInfo</a></span>
    a newly created [type.SetTownInfo](api.type.html#SetTownInfo)
    command

<span id="make.setUserStopped"></span> **make.setUserStopped(vehicleEntity, userStopped)**  
Makes a [type.SetUserStopped](api.type.html#SetUserStopped) command.
When executed, the given vehicle is stopped or started as if the user
controlled it in the vehicle dialog.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle that should
  be stopped or started
- <span class="parameter">userStopped</span>
  <span class="types"><span class="type">bool</span></span> true if the
  vehicle should be stopped

### Returns:

1.  <span class="types"><a href="api.type.html#SetUserStopped"
    class="type">type.SetUserStopped</a></span> a newly created
    [type.SetUserStopped](api.type.html#SetUserStopped) command

<span id="make.setVehicleManualDeparture"></span> **make.setVehicleManualDeparture(entity, manual)**  
Makes a
[type.SetVehicleManualDeparture](api.type.html#SetVehicleManualDeparture)
command. When an entity with component
type.ComponentType.TRANSPORT_VEHICLE is set to manual departure it will
not depart from the terminal under any circumstance (the callback will
always return success). If the entity is not a transport vehicle, the
command callback will return "False".

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle of which
  the departure mode is to be changed
- <span class="parameter">manual</span>
  <span class="types"><span class="type">bool</span></span> whether the
  entity is managed or not

### Returns:

1.  <span class="types"><a href="api.type.html#SetVehicleManualDeparture"
    class="type">type.SetVehicleManualDeparture</a></span> a newly
    created
    [type.SetVehicleManualDeparture](api.type.html#SetVehicleManualDeparture)
    command

<span id="make.setVehicleShouldDepart"></span> **make.setVehicleShouldDepart(vehicleEntity)**  
Makes a
[type.SetVehicleShouldDepart](api.type.html#SetVehicleShouldDepart)
command. When executed, and the vehicle with
[entity](../topics/types.md.html#Entity) Id is at the terminal, the
vehicle will immediately close the door and depart as soon as the doors
are closed. The vhehicle will ignore any departure condition and depart
immediately. The command callback will return success if the entity is
has a type.ComponentType.TRANSPORT_VEHICLE component and is currently
waiting at the terminal.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle at terminal
  that should depart

### Returns:

1.  <span class="types"><a href="api.type.html#SetVehicleShouldDepart"
    class="type">type.SetVehicleShouldDepart</a></span> a newly created
    [type.SetVehicleShouldDepart](api.type.html#SetVehicleShouldDepart)
    command

<span id="make.setVehicleTargetMaintenanceState"></span> **make.setVehicleTargetMaintenanceState(vehicleEntity, value)**  
Makes a
[type.SetVehicleTargetMaintenanceState](api.type.html#SetVehicleTargetMaintenanceState)
command. When executed, the maintenance state for the vehicle with the
given [entity](../topics/types.md.html#Entity) Id is set.

### Parameters:

- <span class="parameter">vehicleEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the vehicle that should
  be stopped or started
- <span class="parameter">value</span>
  <span class="types"><span class="type">float</span></span> the
  maintenance level state that should be achieved

### Returns:

1.  <span class="types"><a href="api.type.html#SetVehicleTargetMaintenanceState"
    class="type">type.SetVehicleTargetMaintenanceState</a></span> a
    newly created
    [type.SetVehicleTargetMaintenanceState](api.type.html#SetVehicleTargetMaintenanceState)
    command

<span id="make.spawnAnimal"></span> **make.spawnAnimal(fileName, position, lookAt)**  
Makes a [type.SpawnAnimal](api.type.html#SpawnAnimal) command. When
executed, a new animal entity is spawned at the specified position.

### Parameters:

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> reference to the animal model for the
  animal that should be spawned
- <span class="parameter">position</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  world coordinates of the position where the animal should be spawned
- <span class="parameter">lookAt</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  the direction the animal is facin in

### Returns:

1.  <span class="types"><a href="api.type.html#SpawnAnimal" class="type">type.SpawnAnimal</a></span>
    a newly created [type.SpawnAnimal](api.type.html#SpawnAnimal)
    command

<span id="make.updateLine"></span> **make.updateLine(lineEntity, line)**  
Makes a [type.UpdateLine](api.type.html#UpdateLine) command. When
executed, the line with the given
[entity](../topics/types.md.html#Entity) Id is updated to the new line
configuration.

### Parameters:

- <span class="parameter">lineEntity</span>
  <span class="types"><span class="type">Entity</span></span> the
  [entity](../topics/types.md.html#Entity) Id of the line which should
  be updated
- <span class="parameter">line</span>
  <span class="types"><a href="api.type.html#Line" class="type">type.Line</a></span>
  the new line configuration

### Returns:

1.  <span class="types"><a href="api.type.html#UpdateLine" class="type">type.UpdateLine</a></span>
    a newly created [type.UpdateLine](api.type.html#UpdateLine) command

</div>

</div>

<div id="about">

*generated by [LDoc 1.4.3](http://github.com/stevedonovan/LDoc)* *Last
updated 2023-04-18 15:10:38*

</div>

</div>
