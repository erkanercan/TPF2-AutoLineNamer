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

- [Functions](api.util.html#Functions)

## Modules

- [api.cmd](api.cmd.html)
- [api.engine](api.engine.html)
- [api.gui](api.gui.html)
- [api.res](api.res.html)
- [api.type](api.type.html)
- **api.util**
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

# Module `api.util`

Contains generic util functions that are not associated with a specific
game instance.

All functions in this namespace can be called from anywhere.

## [Functions](api.util.html#Functions)

|  |  |
|----|----|
| [formatForce(number)](api.util.html#formatForce) | Formats a number as force with the correct locale. |
| [formatLength(length)](api.util.html#formatLength) | Formats a distance with the correct locale and unit of measurement. |
| [formatMoney(money)](api.util.html#formatMoney) | Formats a money amount with the correct locale and currency. |
| [formatNumber(number)](api.util.html#formatNumber) | Formats a number with the correct locale. |
| [formatPower(number)](api.util.html#formatPower) | Formats a number as power with the correct locale. |
| [formatSpeed(speed)](api.util.html#formatSpeed) | Formats a speed value with the correct locale and unit of measurement. |
| [formatweight(number)](api.util.html#formatweight) | Formats a number as weight with the correct locale. |
| [getAppConfig()](api.util.html#getAppConfig) | Returns the game settings |
| [getBuildVersion()](api.util.html#getBuildVersion) | Returns the build version |
| [getKeyName(keyCommand)](api.util.html#getKeyName) | Returns the key sequence associated to the command. |
| [getLanguage()](api.util.html#getLanguage) | Returns the current language settings |
| [getLuaUsedMemory()](api.util.html#getLuaUsedMemory) | Obtains the total used memory by this lua state. |
| [getUiMode()](api.util.html#getUiMode) | Funcion to be used to obtain the actual UiMode of the apllication |

  
  

## <span id="Functions"></span>Functions

<span id="formatForce"></span> **formatForce(number)**  
Formats a number as force with the correct locale.

### Parameters:

- <span class="parameter">number</span>
  <span class="types"><span class="type">long</span></span> The number
  in kN

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> with formatted number

<span id="formatLength"></span> **formatLength(length)**  
Formats a distance with the correct locale and unit of measurement.
Defaults to meters unless the user selected another system of
measurement.

### Parameters:

- <span class="parameter">length</span>
  <span class="types"><span class="type">float</span></span> distance in
  meters

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> with formatted distance

<span id="formatMoney"></span> **formatMoney(money)**  
Formats a money amount with the correct locale and currency.

### Parameters:

- <span class="parameter">money</span>
  <span class="types"><span class="type">long</span></span> amount of
  money

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> with formatted amount of money

<span id="formatNumber"></span> **formatNumber(number)**  
Formats a number with the correct locale.

### Parameters:

- <span class="parameter">number</span>
  <span class="types"><span class="type">long</span></span>

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> with formatted number

<span id="formatPower"></span> **formatPower(number)**  
Formats a number as power with the correct locale.

### Parameters:

- <span class="parameter">number</span>
  <span class="types"><span class="type">long</span></span> The number
  in kW

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> with formatted number

<span id="formatSpeed"></span> **formatSpeed(speed)**  
Formats a speed value with the correct locale and unit of measurement.
Defaults to km/h unless the user selected another system of measurement.

### Parameters:

- <span class="parameter">speed</span>
  <span class="types"><span class="type">float</span></span> speed in
  meter per second

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> with formatted speed

<span id="formatweight"></span> **formatweight(number)**  
Formats a number as weight with the correct locale.

### Parameters:

- <span class="parameter">number</span>
  <span class="types"><span class="type">long</span></span> The number
  in metric tons

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> with formatted number

<span id="getAppConfig"></span> **getAppConfig()**  
Returns the game settings

### Returns:

1.  <span class="types"><a href="api.type.html#AppConfig" class="type">type.AppConfig</a></span>
    game settings

<span id="getBuildVersion"></span> **getBuildVersion()**  
Returns the build version

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> the build version

<span id="getKeyName"></span> **getKeyName(keyCommand)**  
Returns the key sequence associated to the command. See the
''settings.lua'' file in the userdata local folder for a list of all
available key commands.

### Parameters:

- <span class="parameter">keyCommand</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the command to which the key sequence
  is associated.

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> the key sequence associated with the
    given key command

### Usage:

- ``` example
  api.util.getKeyName("constructOptPrecise1")
  ```

<span id="getLanguage"></span> **getLanguage()**  
Returns the current language settings

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.6"
    class="type">table</a></span> language settings

<span id="getLuaUsedMemory"></span> **getLuaUsedMemory()**  
Obtains the total used memory by this lua state.

### Returns:

1.  <span class="types"><span class="type">int</span></span> used memory
    in kb

<span id="getUiMode"></span> **getUiMode()**  
Funcion to be used to obtain the actual UiMode of the apllication

### Returns:

1.  <span class="types"><a href="api.type.html#enum.UiMode" class="type">type.UiMode</a></span>
    Return actual used by the application UiMode.

</div>

</div>

<div id="about">

*generated by [LDoc 1.4.3](http://github.com/stevedonovan/LDoc)* *Last
updated 2023-04-18 15:10:38*

</div>

</div>
