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

- [Resources](examples.md.html#Resources)
- [GUI](examples.md.html#GUI)
- [Building objects](examples.md.html#Building_objects)
- [Misc commands](examples.md.html#Misc_commands)
- [Pathfinding](examples.md.html#Pathfinding)
- [Useful ID for UI
  elements](examples.md.html#Useful_ID_for_UI_elements)

## Topics

- **Examples**
- [Lua states](states.md.html)
- [Types](types.md.html)

## Modules

- [api.cmd](../modules/api.cmd.html)
- [api.engine](../modules/api.engine.html)
- [api.gui](../modules/api.gui.html)
- [api.res](../modules/api.res.html)
- [api.type](../modules/api.type.html)
- [api.util](../modules/api.util.html)
- [app](../modules/app.html)

## Examples

- [base_mod_postRunFn.lua](../examples/base_mod_postRunFn.lua.html)
- [build_street.lua](../examples/build_street.lua.html)
- [construction_postRunFn.lua](../examples/construction_postRunFn.lua.html)
- [replace_street.lua](../examples/replace_street.lua.html)

</div>

<div id="content">

# Examples

<span id="Resources"></span>

## Resources

[Adding dynamic modules](../examples/base_mod_postRunFn.lua.html#)

[Adding dynamic
constructions](../examples/construction_postRunFn.lua.html#)

<span id="GUI"></span>

## GUI

<span id="Building_objects"></span>

## Building objects

[Adding a street with signals](../examples/build_street.lua.html#)

[Replacing a street](../examples/replace_street.lua.html#)

<span id="Misc_commands"></span>

## Misc commands

Spawning a crane and an eagle:


    cmd = api.cmd.make.spawnAnimal("animal/bird_eagle.mdl", api.type.Vec2f.new(50, 50))
    api.cmd.sendCommand(cmd, function(res, valid) end)
    a = api.cmd.make.spawnAnimal("animal/bird_crane.mdl", api.type.Vec2f.new(.0, .0))
    api.cmd.sendCommand(a)

Replacing a vehicle:


    tv = api.engine.getComponent(66814, api.type.ComponentType.TRANSPORT_VEHICLE)

    -- fileName = "vehicle/truck/40_tons.mdl",

    cfg = api.type.TransportVehicleConfig.new()

    vehicle = api.type.TransportVehiclePart.new()

    vehicle.purchaseTime = 2933600
    vehicle.maintenanceState = 0.99765330553055
    vehicle.targetMaintenanceState = 0
    vehicle.autoLoadConfig = { 1 }

    part = api.type.VehiclePart.new()

    part.modelId = apt.type. -- 6864
    part.loadConfig[1] = 0

    vehicle.part = part

    cfg.vehicles[1] = vehicle
    cfg.vehicleGroups[1] = 1

    cmd = api.cmd.make.replaceVehicle(66814, cfg)

    api.cmd.sendCommand(cmd, function(cmd, valid) print(valid) end)

<span id="Pathfinding"></span>

## Pathfinding

Find a path from two edges of the street entity 170679 to the nodes of
the street entity 171540:


    e1 = api.type.EdgeId.new(170679, 0)
    e2 = api.type.EdgeId.new(170679, 1)
    n1 = api.type.NodeId.new(171540, 0)
    n2 = api.type.NodeId.new(171540, 1)
    n3 = api.type.NodeId.new(171540, 2)
    n4 = api.type.NodeId.new(171540, 3)

    -- g = api.engine.getComponent(171540, api.type.ComponentType.TRANSPORT_NETWORK)

    z = api.engine.util.pathfinding.findPath(
        {
            api.type.EdgeIdDirAndLength.new(e1, true, .0),
            api.type.EdgeIdDirAndLength.new(e2, true, .0),
        },
        {
            n1, n2, n3, n4
        },
        {},
        1000
    )

<span id="Useful_ID_for_UI_elements"></span>

## Useful ID for UI elements

In-game UI elements can be obtained in the following way:


    g = api.gui.util.getById("menu.construction.rail.settings")

The id of elements can be obtained with the debug tools "AltGr + D",
under "Show UI Element Name".

The main menu has two sub-layouts with ids "mainMenuLeftLayout" and
"mainMenuRightLayout".

The id "menu.construction" is reserved to sub-menus of the construction
menu, with the following categories: "rail", "road", "air", "water",
"town", "terrain" and "industry".

The "settings" suffix tab references the Settings window. Notice that
the element is destroyed once a new element is selected.

The individual entries in the construction menus can be obtained using
the following


    menu.construction.<submenu>.<category>.item.<resource_id>

for example:


    menu.construction.road.street-constructions.item.street/roundabout.con

The bottom information bar can be reached with id "gameInfo".

The temporary window displaying information about an entity is


    temp.view.entity_<entity_id>

notice that this window is only temporary and will be destroyed once the
window is closed.

The module menu can has id "menu.addModuleComp" whereas the temporary
menu with parameters has id:


    temp.addModuleComp.params.entity_<entity_id>

The cockpit view can be reached with the id "cockpit-view".

</div>

</div>

<div id="about">

*generated by [LDoc 1.4.3](http://github.com/stevedonovan/LDoc)* *Last
updated 2023-04-18 15:10:38*

</div>

</div>
