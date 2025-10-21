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

- [Functions](api.res.html#Functions)
- [Tables](api.res.html#Tables)
- [GenericRepositoryFunctions](api.res.html#GenericRepositoryFunctions)

## Modules

- [api.cmd](api.cmd.html)
- [api.engine](api.engine.html)
- [api.gui](api.gui.html)
- **api.res**
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

# Module `api.res`

Repositories containing game resources (models, tracks, streets, ...)

## [Functions](api.res.html#Functions)

|  |  |
|----|----|
| [getBaseConfig()](api.res.html#getBaseConfig) | A resource repository containing most of the data which was read from "res/config/base_config.lua". |

## [Tables](api.res.html#Tables)

|  |  |
|----|----|
| [autoGroundTexRep](api.res.html#autoGroundTexRep) | A resource repository containing data from the ".lua" files from "res/config/auto_ground_tex/" folder. |
| [bridgeTypeRep](api.res.html#bridgeTypeRep) | A resource repository containing data from the bridge configuration files and from dynamically generated bridges. |
| [buildingTypeRep](api.res.html#buildingTypeRep) | A resource repository containing data for town buildings. |
| [cargoTypeRep](api.res.html#cargoTypeRep) | A resource repository containing data with all the cargo types. |
| [constructionRep](api.res.html#constructionRep) | A resource repository containing data from the ".con" files and from dynamically generated constructions. |
| [modelRep](api.res.html#modelRep) | A resource repository containing all the game models and metadata. |
| [moduleRep](api.res.html#moduleRep) | A resource repository containing data from the ".modules" files and from dynamically generated modules. |
| [multipleUnitRep](api.res.html#multipleUnitRep) | A resource repository containing data from the multiple unit files and from dynamically generated multiple units. |
| [railroadCrossingTypeRep](api.res.html#railroadCrossingTypeRep) | A resource repository containing data from the railroad crossing files and from dynamically generated railroad crossing types. |
| [streetTypeRep](api.res.html#streetTypeRep) | A resource repository containing data from the street type files and from dynamically generated street types. |
| [trackTypeRep](api.res.html#trackTypeRep) | A resource repository containing data from the track type files and from dynamically generated track types. |
| [trafficLightTypeRep](api.res.html#trafficLightTypeRep) | A resource repository containing data from the traffic lights. |
| [tunnelTypeRep](api.res.html#tunnelTypeRep) | A resource repository containing data from the tunnel configuration files and from dynamically generated tunnels. |

## [GenericRepositoryFunctions](api.res.html#GenericRepositoryFunctions)

|  |  |
|----|----|
| [repository.add(fileName, resource, visible)](api.res.html#repository.add) | Adds a new resource into the repository. |
| [repository.find(fileName)](api.res.html#repository.find) | Find the repository index of the given resource. |
| [repository.get(index)](api.res.html#repository.get) | Obtains the resource with the given index. |
| [repository.getAll()](api.res.html#repository.getAll) | Fetches a list of all resources registered in the repository. |
| [repository.getName(index)](api.res.html#repository.getName) | Returns the fileName (or identifier in case of dynamic resources) for the given index. |

  
  

## <span id="Functions"></span>Functions

<span id="getBaseConfig"></span> **getBaseConfig()**  
A resource repository containing most of the data which was read from
"res/config/base_config.lua".

### Returns:

1.  <span class="types"><span class="type">Table</span></span> the
    configuration table. See [base
    config](https://www.transportfever2.com/wiki/doku.php?id=modding:baseconfig)
    for a detailed explanation.

## <span id="Tables"></span>Tables

<span id="autoGroundTexRep"></span> **autoGroundTexRep**  
A resource repository containing data from the ".lua" files from
"res/config/auto_ground_tex/" folder.

<span id="bridgeTypeRep"></span> **bridgeTypeRep**  
A resource repository containing data from the bridge configuration
files and from dynamically generated bridges.

<span id="buildingTypeRep"></span> **buildingTypeRep**  
A resource repository containing data for town buildings.

<span id="cargoTypeRep"></span> **cargoTypeRep**  
A resource repository containing data with all the cargo types.

<span id="constructionRep"></span> **constructionRep**  
A resource repository containing data from the ".con" files and from
dynamically generated constructions.

<span id="modelRep"></span> **modelRep**  
A resource repository containing all the game models and metadata.

<span id="moduleRep"></span> **moduleRep**  
A resource repository containing data from the ".modules" files and from
dynamically generated modules.

<span id="multipleUnitRep"></span> **multipleUnitRep**  
A resource repository containing data from the multiple unit files and
from dynamically generated multiple units.

<span id="railroadCrossingTypeRep"></span> **railroadCrossingTypeRep**  
A resource repository containing data from the railroad crossing files
and from dynamically generated railroad crossing types.

<span id="streetTypeRep"></span> **streetTypeRep**  
A resource repository containing data from the street type files and
from dynamically generated street types.

<span id="trackTypeRep"></span> **trackTypeRep**  
A resource repository containing data from the track type files and from
dynamically generated track types.

<span id="trafficLightTypeRep"></span> **trafficLightTypeRep**  
A resource repository containing data from the traffic lights.

<span id="tunnelTypeRep"></span> **tunnelTypeRep**  
A resource repository containing data from the tunnel configuration
files and from dynamically generated tunnels.

## <span id="GenericRepositoryFunctions"></span>GenericRepositoryFunctions

<span id="repository.add"></span> **repository.add(fileName, resource, visible)**  
Adds a new resource into the repository.

Notice that not all repositories have an add function, and that the add
function is available **only within the "postRunFn" function**.

Additionally, all objects requiring a function need to be added with a
script file instead. Additional state can be set in the script file.
E.g.: a construction will have to use an "updateScript" instead of
"updateFn" in order to add new resources. Additional state that will be
passed to the construction will be placed in "updateScript.params". See
the default [postRunFn](../examples/base_mod_postRunFn.lua.html#) in the
"base_mod.lua" as an example for generation of track type station
modules.

### Parameters:

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> a unique identifier for the resource,
  akin to a fileName for static resources
- <span class="parameter">resource</span>
  <span class="types"><span class="type">Resource</span></span> the
  resource to add
- <span class="parameter">visible</span>
  <span class="types"><span class="type">bool</span></span> the
  visibility (for GUI purposes) of the object

<span id="repository.find"></span> **repository.find(fileName)**  
Find the repository index of the given resource. Might return -1 when no
resource is found.

### Parameters:

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> The fileName (or unique identifier in
  the case of dynamic resources).

### Returns:

1.  <span class="types"><span class="type">int</span></span> the index
    of the requested resource in the repository or -1

### Usage:

- ``` example
  api.res.modelRep.find("bridge/suspension/pillar_main_top_rep.mdl")
  ```

<span id="repository.get"></span> **repository.get(index)**  
Obtains the resource with the given index.

During postRunRn the resource obtained can be modified. However, during
the game the result is just a copy of the data. Therefore modifications
to the data won't have an effect.

### Parameters:

- <span class="parameter">index</span>
  <span class="types"><span class="type">int</span></span> the index of
  the resource to obtain

### Returns:

1.  the requested resource

### Usage:

- ``` example
  api.res.groundTextureRep.get(1)
  ```

<span id="repository.getAll"></span> **repository.getAll()**  
Fetches a list of all resources registered in the repository.

### Returns:

1.  <span class="types"><span class="type">Table</span></span> A mapping
    from integer indices to fileNames (or identifier)

### Usage:

- ``` example
  api.res.cargoTypeRep.getAll()
  ```

<span id="repository.getName"></span> **repository.getName(index)**  
Returns the fileName (or identifier in case of dynamic resources) for
the given index.

### Parameters:

- <span class="parameter">index</span>
  <span class="types"><span class="type">int</span></span> the index of
  the resource

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> the filename of the resource at the
    requested repository index

### Usage:

- ``` example
  api.res.railroadCrossingTypeRep.getName(2)
  ```

</div>

</div>

<div id="about">

*generated by [LDoc 1.4.3](http://github.com/stevedonovan/LDoc)* *Last
updated 2023-04-18 15:10:38*

</div>

</div>
