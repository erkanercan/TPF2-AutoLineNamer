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

- [Tables](api.gui.html#Tables)
- [Class util.Rect](api.gui.html#Class_util_Rect)
- [Class util.MouseEvent](api.gui.html#Class_util_MouseEvent)
- [Class util.Size](api.gui.html#Class_util_Size)
- [Class comp.ILayoutItem](api.gui.html#Class_comp_ILayoutItem)
- [Class comp.Component](api.gui.html#Class_comp_Component)
- [Util](api.gui.html#Util)
- [Class comp.Window](api.gui.html#Class_comp_Window)
- [Class comp.GameUI](api.gui.html#Class_comp_GameUI)
- [Class
  comp.RendererComponent](api.gui.html#Class_comp_RendererComponent)
- [Class
  util.CameraController](api.gui.html#Class_util_CameraController)
- [Class util.ViewManager](api.gui.html#Class_util_ViewManager)
- [Class comp.TextInputField](api.gui.html#Class_comp_TextInputField)
- [Class comp.TextView](api.gui.html#Class_comp_TextView)
- [Class comp.CheckBox](api.gui.html#Class_comp_CheckBox)
- [Class comp.ImageView](api.gui.html#Class_comp_ImageView)
- [Class comp.ContentView](api.gui.html#Class_comp_ContentView)
- [Class comp.ToggleButton](api.gui.html#Class_comp_ToggleButton)
- [Class comp.Button](api.gui.html#Class_comp_Button)
- [Class
  comp.ToggleButtonGroup](api.gui.html#Class_comp_ToggleButtonGroup)
- [Class comp.Table](api.gui.html#Class_comp_Table)
- [Class comp.ScrollArea](api.gui.html#Class_comp_ScrollArea)
- [Class comp.ComboBox](api.gui.html#Class_comp_ComboBox)
- [Class comp.DoubleSpinBox](api.gui.html#Class_comp_DoubleSpinBox)
- [Class comp.SpinBox](api.gui.html#Class_comp_SpinBox)
- [Class comp.AbstractSlider](api.gui.html#Class_comp_AbstractSlider)
- [Class comp.Slider](api.gui.html#Class_comp_Slider)
- [Class comp.Slider2](api.gui.html#Class_comp_Slider2)
- [Class comp.TabWidget](api.gui.html#Class_comp_TabWidget)
- [Class comp.ProgressBar](api.gui.html#Class_comp_ProgressBar)
- [Class comp.Chart](api.gui.html#Class_comp_Chart)
- [Class
  comp.ColorChooserButton](api.gui.html#Class_comp_ColorChooserButton)
- [Class comp.ColorPicker](api.gui.html#Class_comp_ColorPicker)
- [Class comp.ColorChooser](api.gui.html#Class_comp_ColorChooser)
- [Class comp.LineRenderView](api.gui.html#Class_comp_LineRenderView)
- [Class comp.List](api.gui.html#Class_comp_List)
- [Class layout.ILayout](api.gui.html#Class_layout_ILayout)
- [Class layout.LayoutBase](api.gui.html#Class_layout_LayoutBase)
- [Class layout.BoxLayout](api.gui.html#Class_layout_BoxLayout)
- [Class
  layout.AbsoluteLayout](api.gui.html#Class_layout_AbsoluteLayout)
- [Class
  layout.FloatingLayout](api.gui.html#Class_layout_FloatingLayout)

## Modules

- [api.cmd](api.cmd.html)
- [api.engine](api.engine.html)
- **api.gui**
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

# Module `api.gui`

Contains all GUI function, tools and classes.

The GUI is a big tree containing various elements (or widgets) (called
"components" and "layouts") nested together.

Most of the GUI functionality is available as soon as the application
starts, within the [Console
State](../topics/states.md.html#Console_State).

However, some extra functionality of the GUI is available only in the
[GUI State](../topics/states.md.html#GUI_State).

Other states do not have access to GUI functions and elements.

## [Tables](api.gui.html#Tables)

|  |  |
|----|----|
| [comp](api.gui.html#comp) | Contains all UI components (widgets) and base classes. |
| [layout](api.gui.html#layout) | Contains all UI layouts and base classes. |
| [util](api.gui.html#util) | Contains all util function for the UI. |

## [Class util.Rect](api.gui.html#Class_util_Rect)

|  |  |
|----|----|
| [util.Rect.h](api.gui.html#util.Rect.h) | Height of the rectangle |
| [util.Rect.w](api.gui.html#util.Rect.w) | Width of the rectangle |
| [util.Rect.x](api.gui.html#util.Rect.x) | Horizontal position of the upper left corner |
| [util.Rect.y](api.gui.html#util.Rect.y) | Vertical position of the upper left corner |
| [util.Rect:contains(x, y)](api.gui.html#util.Rect:contains) | Checks if Rect contains the position on the screen. |
| [util.Rect:intersects(other)](api.gui.html#util.Rect:intersects) | Checks if Rect intersects another Rect. |
| [util.Rect:new(x, y, w, h)](api.gui.html#util.Rect:new) | Creates a new Rect. |

## [Class util.MouseEvent](api.gui.html#Class_util_MouseEvent)

|  |  |
|----|----|
| [util.MouseEvent.button](api.gui.html#util.MouseEvent.button) | Mouse button related to the event: 0 = left, 1 = middle, 2 = right |
| [util.MouseEvent.type](api.gui.html#util.MouseEvent.type) | Event type: 0 = mouse pressed, 1 = mouse released, 2 = mouse clicked, 3 = mouse enter, 4 = mouse exited, 5 = mouse moved, 6 = mouse wheel event, 7 = mouse double clicked |
| [util.MouseEvent.x](api.gui.html#util.MouseEvent.x) | Horizontal position of the mouse when event was triggered |
| [util.MouseEvent.xrel](api.gui.html#util.MouseEvent.xrel) | Relative horizontal position when event was triggered |
| [util.MouseEvent.y](api.gui.html#util.MouseEvent.y) | Horizontal position of the mouse when event was triggered |
| [util.MouseEvent.yrel](api.gui.html#util.MouseEvent.yrel) | Relative vertical position when event was triggered |

## [Class util.Size](api.gui.html#Class_util_Size)

|  |  |
|----|----|
| [util.Alignment](api.gui.html#util.Alignment) | Alignment of the layout item |
| [util.Orientation](api.gui.html#util.Orientation) | Orientation of the layout item |
| [util.Size.h](api.gui.html#util.Size.h) | Height of the size |
| [util.Size.h](api.gui.html#util.Size.h) | Height of the size element |
| [util.Size.w](api.gui.html#util.Size.w) | Width of the size element |
| [util.Size.w](api.gui.html#util.Size.w) | Width of the size |
| [util.Size:new(w, h)](api.gui.html#util.Size:new) | Creates a new Size |
| [util.downcast(layout)](api.gui.html#util.downcast) | Properly set correct metatable of the object for most derived object |

## [Class comp.ILayoutItem](api.gui.html#Class_comp_ILayoutItem)

|  |  |
|----|----|
| [comp.ILayoutItem:addHighPriorityProcessingComponent()](api.gui.html#comp.ILayoutItem:addHighPriorityProcessingComponent) | Adds a component which will have priority in handling Input Actions |
| [comp.ILayoutItem:destroy()](api.gui.html#comp.ILayoutItem:destroy) | Destroys the item: the item cannot belong to a layout of component. |
| [comp.ILayoutItem:getBeginFrameTimes()](api.gui.html#comp.ILayoutItem:getBeginFrameTimes) | Returns the rendering preparation time |
| [comp.ILayoutItem:getEventTimes()](api.gui.html#comp.ILayoutItem:getEventTimes) | Returns the events processing time |
| [comp.ILayoutItem:getId()](api.gui.html#comp.ILayoutItem:getId) | Obtains the id of the ui item. |
| [comp.ILayoutItem:getRenderTimes()](api.gui.html#comp.ILayoutItem:getRenderTimes) | Returns the rendering time |
| [comp.ILayoutItem:getStepTimes()](api.gui.html#comp.ILayoutItem:getStepTimes) | Returns the gui update time |
| [comp.ILayoutItem:getSwapTimes()](api.gui.html#comp.ILayoutItem:getSwapTimes) | Returns the rendering finish time |
| [comp.ILayoutItem:removeHighPriorityProcessingComponent()](api.gui.html#comp.ILayoutItem:removeHighPriorityProcessingComponent) | Remove a component which was added via addHighPriorityProcessingComponent |

## [Class comp.Component](api.gui.html#Class_comp_Component)

|  |  |
|----|----|
| [comp.Component:addLifeTimeChecker()](api.gui.html#comp.Component:addLifeTimeChecker) | Obtains an object from the component that can be used to check whether the component has been destroyed. |
| [comp.Component:addStyleClass(class)](api.gui.html#comp.Component:addStyleClass) | Assigns a style class to the component. |
| [comp.Component:calcMinimumSize()](api.gui.html#comp.Component:calcMinimumSize) | Gets minimum size taken by the component. |
| [comp.Component:getContentRect()](api.gui.html#comp.Component:getContentRect) | Gets Rect size for the component. |
| [comp.Component:getCore()](api.gui.html#comp.Component:getCore) | Returns the Core object for all Components |
| [comp.Component:getLayout()](api.gui.html#comp.Component:getLayout) | Returns layout of the component. |
| [comp.Component:getName()](api.gui.html#comp.Component:getName) | Receives the name of the component. |
| [comp.Component:getParent()](api.gui.html#comp.Component:getParent) | Gets parent of component (automatically downcasted). |
| [comp.Component:hasFocus()](api.gui.html#comp.Component:hasFocus) | Checks if component has focus. |
| [comp.Component:insertMouseListener(func)](api.gui.html#comp.Component:insertMouseListener) | Prepends a mouse listener that will be called before all other listeners. |
| [comp.Component:invokeLater(callback)](api.gui.html#comp.Component:invokeLater) | Invoke a stored function at the beginning of the next frame. |
| [comp.Component:isEnabled()](api.gui.html#comp.Component:isEnabled) | Checks if the object is interactable. |
| [comp.Component:isVisible()](api.gui.html#comp.Component:isVisible) | Checks if the object is visible. |
| [comp.Component:new(name, id)](api.gui.html#comp.Component:new) | Creates a new Component instance. |
| [comp.Component:onDestroy(callback)](api.gui.html#comp.Component:onDestroy) | Adds a callback to be called when the item is destroyed. |
| [comp.Component:onStep(callback)](api.gui.html#comp.Component:onStep) | Adds a callback to be called each gui update. |
| [comp.Component:onVisibilityChange()](api.gui.html#comp.Component:onVisibilityChange) | Adds a callback to be called when the visibility changes. |
| [comp.Component:removeMouseListener()](api.gui.html#comp.Component:removeMouseListener) | Removes the mouse listener attached to the component. |
| [comp.Component:removeStyleClass(class)](api.gui.html#comp.Component:removeStyleClass) | Removes a style class to the component. |
| [comp.Component:setEnabled(enabled)](api.gui.html#comp.Component:setEnabled) | Makes the object (un)interactable. |
| [comp.Component:setFocus()](api.gui.html#comp.Component:setFocus) | Sets a component to have focus. |
| [comp.Component:setFocusable()](api.gui.html#comp.Component:setFocusable) | Enables/disable focus on this component |
| [comp.Component:setGravity(horizontal, vertical)](api.gui.html#comp.Component:setGravity) | Sets the alignment of the component. |
| [comp.Component:setHighlighted(highlighted)](api.gui.html#comp.Component:setHighlighted) | Sets highlighted. |
| [comp.Component:setId(id)](api.gui.html#comp.Component:setId) | Gives the component a unique identifier. |
| [comp.Component:setInputActionBubbleUpAcceptFilter(a, whether)](api.gui.html#comp.Component:setInputActionBubbleUpAcceptFilter) | Sets a handler for a list of input actions and decide whether to enable those input actions or not |
| [comp.Component:setInputActionForward(sourceIa, targetComp, targetIa)](api.gui.html#comp.Component:setInputActionForward) | Forwards an input action to a target component with a specified source and target action. |
| [comp.Component:setInputActionHandler(ia, handlerFn, func)](api.gui.html#comp.Component:setInputActionHandler) | Sets an handler for an input action, and another callback to determine whether it is enabled or not. |
| [comp.Component:setLayout(layout)](api.gui.html#comp.Component:setLayout) | Sets a layout (the component takes ownership of the layout). |
| [comp.Component:setMaximumSize(size)](api.gui.html#comp.Component:setMaximumSize) | Set the maximum size that the components takes up. |
| [comp.Component:setMinimumSize(size)](api.gui.html#comp.Component:setMinimumSize) | Set the minimum size that the components takes up. |
| [comp.Component:setMouseListener(func)](api.gui.html#comp.Component:setMouseListener) | Forwards mouse events to the component under the cursor. |
| [comp.Component:setName(name)](api.gui.html#comp.Component:setName) | Gives the component a name, used to apply styles. |
| [comp.Component:setStyleClassList(list)](api.gui.html#comp.Component:setStyleClassList) | Assigns a style class to the component. |
| [comp.Component:setTooltip(text)](api.gui.html#comp.Component:setTooltip) | Sets the tooltip of the component. |
| [comp.Component:setTransparent(transparent)](api.gui.html#comp.Component:setTransparent) | Sets transparency. |
| [comp.Component:setVisible(visible, emitSignal)](api.gui.html#comp.Component:setVisible) | Sets visibility. |

## [Util](api.gui.html#Util)

|  |  |
|----|----|
| [util.check(reference)](api.gui.html#util.check) | Checks if a component is still alive using the LifeTimeChecker. |
| [util.destroyLater(comp)](api.gui.html#util.destroyLater) | Delete a gui element at the beginning of the next frame. |
| [util.getById(id)](api.gui.html#util.getById) | Returns the component with the given id. |
| [util.getCommandTimes()](api.gui.html#util.getCommandTimes) | Returns commands processing time Available only within [GUI State](../topics/states.md.html#GUI_State). |
| [util.getGameUI()](api.gui.html#util.getGameUI) | Returns the GameUI. |
| [util.getInputMode()](api.gui.html#util.getInputMode) | Returns the current InputMode. |
| [util.getMouseScreenPos()](api.gui.html#util.getMouseScreenPos) | Returns the screet coordinate at the mouse position. |
| [util.getReplicateTimes()](api.gui.html#util.getReplicateTimes) | Returns the sync time between gui and simulation Available only within [GUI State](../topics/states.md.html#GUI_State). |
| [util.getStepTimes()](api.gui.html#util.getStepTimes) | Returns the simulation update time Available only within [GUI State](../topics/states.md.html#GUI_State). |

## [Class comp.Window](api.gui.html#Class_comp_Window)

|  |  |
|----|----|
| [comp.Window:addHideOnCloseHandler()](api.gui.html#comp.Window:addHideOnCloseHandler) | Adds a default handler for "onClose" that hides the window when it is closed. |
| [comp.Window:close()](api.gui.html#comp.Window:close) | Closes the window. |
| [comp.Window:getContent()](api.gui.html#comp.Window:getContent) | Returns the window content. |
| [comp.Window:isAttached()](api.gui.html#comp.Window:isAttached) | Checks if window is attached. |
| [comp.Window:isPinnable()](api.gui.html#comp.Window:isPinnable) | Checks if window is pinnable. |
| [comp.Window:isPinned()](api.gui.html#comp.Window:isPinned) | Checks if window is pinned. |
| [comp.Window:maximize()](api.gui.html#comp.Window:maximize) | Maximizes the window to its maximisedSize size. |
| [comp.Window:minimize()](api.gui.html#comp.Window:minimize) | Minimizes the window to its minimizedSize size. |
| [comp.Window:new(title, content)](api.gui.html#comp.Window:new) | Creates a new Window. |
| [comp.Window:onClose(callback)](api.gui.html#comp.Window:onClose) | Adds a parameterless callback, which is called when the window is closed. |
| [comp.Window:onMove(callback)](api.gui.html#comp.Window:onMove) | Adds a parameterless callback, which is called when the window is moved |
| [comp.Window:remove(win)](api.gui.html#comp.Window:remove) | Removes a window from the UI and returns it. |
| [comp.Window:setAttached(b)](api.gui.html#comp.Window:setAttached) | Sets the window to be attached. |
| [comp.Window:setContent(content)](api.gui.html#comp.Window:setContent) | Sets the window content. |
| [comp.Window:setIcon(icon)](api.gui.html#comp.Window:setIcon) | Sets the window icon. |
| [comp.Window:setLocateButtonVisible(b)](api.gui.html#comp.Window:setLocateButtonVisible) | Adds a button to follow entities and other objects. |
| [comp.Window:setMaximiseSize()](api.gui.html#comp.Window:setMaximiseSize) | Set the size when maximised. |
| [comp.Window:setMovable(b)](api.gui.html#comp.Window:setMovable) | Sets the window to be movable. |
| [comp.Window:setPinButtonVisible(b)](api.gui.html#comp.Window:setPinButtonVisible) | Adds a button to pin the window. |
| [comp.Window:setPinned(b)](api.gui.html#comp.Window:setPinned) | Sets the window to be pinned. |
| [comp.Window:setPosition(x, y)](api.gui.html#comp.Window:setPosition) | Sets the window position. |
| [comp.Window:setResizable(b)](api.gui.html#comp.Window:setResizable) | Sets the window to be resizable. |
| [comp.Window:setSize(size)](api.gui.html#comp.Window:setSize) | Sets the window size. |
| [comp.Window:setTitle(title)](api.gui.html#comp.Window:setTitle) | Sets the window title. |

## [Class comp.GameUI](api.gui.html#Class_comp_GameUI)

|  |  |
|----|----|
| [comp.GameUI:getMainRendererComponent()](api.gui.html#comp.GameUI:getMainRendererComponent) | Obtains the main 3d scene. |
| [comp.GameUI:getViewManager()](api.gui.html#comp.GameUI:getViewManager) | Obtains the view manager. |
| [comp.GameUI:playCutscene(fileName)](api.gui.html#comp.GameUI:playCutscene) | Plays a cutscene. |
| [comp.GameUI:playSoundEffect(name)](api.gui.html#comp.GameUI:playSoundEffect) | Plays a single sound effect. |
| [comp.GameUI:playTrack(filename, offset)](api.gui.html#comp.GameUI:playTrack) | Plays a single track with the music player. |
| [comp.GameUI:setConstructionAngle(angle)](api.gui.html#comp.GameUI:setConstructionAngle) | Sets the default construction angle for constructions. |

## [Class comp.RendererComponent](api.gui.html#Class_comp_RendererComponent)

|  |  |
|----|----|
| [comp.RendererComponent:getCameraController()](api.gui.html#comp.RendererComponent:getCameraController) | Gets the camera controller for the component. |
| [comp.RendererComponent:getTerrainPos()](api.gui.html#comp.RendererComponent:getTerrainPos) | Gets the terrain position pointed by the mouse. |
| [comp.RendererComponent:stopAction()](api.gui.html#comp.RendererComponent:stopAction) | Stops the current Action (bulldoze, build construction, etc.) |

## [Class util.CameraController](api.gui.html#Class_util_CameraController)

|  |  |
|----|----|
| [util.CameraController:focus(entity)](api.gui.html#util.CameraController:focus) | Focuses the camera on an entity. |
| [util.CameraController:follow(entity, jump)](api.gui.html#util.CameraController:follow) | Sets camera to follow an Entity. |
| [util.CameraController:getCameraData()](api.gui.html#util.CameraController:getCameraData) | Obtains the current camera data. |
| [util.CameraController:getFollowEntity()](api.gui.html#util.CameraController:getFollowEntity) | Gets the entity currently being followed. |
| [util.CameraController:setCameraData(center, dist, angle, pitch)](api.gui.html#util.CameraController:setCameraData) | Sets the camera data with custom position and other information. |

## [Class util.ViewManager](api.gui.html#Class_util_ViewManager)

|  |  |
|----|----|
| [util.ViewManager:closeAll()](api.gui.html#util.ViewManager:closeAll) | Closes all currently open entity windows. |
| [util.ViewManager:openWindow(entity, above, tabIndex)](api.gui.html#util.ViewManager:openWindow) | Focuses the camera on an entity. |

## [Class comp.TextInputField](api.gui.html#Class_comp_TextInputField)

|  |  |
|----|----|
| [comp.TextInputField:OnFocusChange(callback)](api.gui.html#comp.TextInputField:OnFocusChange) | Sets a callback that is called when the focus changes. |
| [comp.TextInputField:getSelectedText()](api.gui.html#comp.TextInputField:getSelectedText) | Gets selected text. |
| [comp.TextInputField:getText()](api.gui.html#comp.TextInputField:getText) | Returns the text in the input field. |
| [comp.TextInputField:new()](api.gui.html#comp.TextInputField:new) | Creates a new text input field with placeholder text. |
| [comp.TextInputField:onCancel(callback)](api.gui.html#comp.TextInputField:onCancel) | Sets a callback that is called when enter is pressed. |
| [comp.TextInputField:onChange(callback)](api.gui.html#comp.TextInputField:onChange) | Sets a callback that is called when the text changes. |
| [comp.TextInputField:onEnter(callback)](api.gui.html#comp.TextInputField:onEnter) | Sets a callback that is called when enter is pressed. |
| [comp.TextInputField:selectAll()](api.gui.html#comp.TextInputField:selectAll) | Selects entire text |
| [comp.TextInputField:setDeselectOnFocusLost()](api.gui.html#comp.TextInputField:setDeselectOnFocusLost) | Clear selection when focus is lost |
| [comp.TextInputField:setMaxLength()](api.gui.html#comp.TextInputField:setMaxLength) | Sets the maximal length of the input text. |
| [comp.TextInputField:setText()](api.gui.html#comp.TextInputField:setText) | Sets the text of the field to the given text. |

## [Class comp.TextView](api.gui.html#Class_comp_TextView)

|  |  |
|----|----|
| [comp.TextView:getSelectedText()](api.gui.html#comp.TextView:getSelectedText) | Gets selected text. |
| [comp.TextView:getText()](api.gui.html#comp.TextView:getText) | Gets the entire text. |
| [comp.TextView:getTextAlignment()](api.gui.html#comp.TextView:getTextAlignment) | Gets the alignment of the text |
| [comp.TextView:getTextAlignment2()](api.gui.html#comp.TextView:getTextAlignment2) | Gets the alignment of the text |
| [comp.TextView:new()](api.gui.html#comp.TextView:new) | Creates a new text view with some text. |
| [comp.TextView:setSelectable()](api.gui.html#comp.TextView:setSelectable) | Sets the text as selectable. |
| [comp.TextView:setText()](api.gui.html#comp.TextView:setText) | Sets the text |
| [comp.TextView:setTextAlignment()](api.gui.html#comp.TextView:setTextAlignment) | Sets the alignment of the text |

## [Class comp.CheckBox](api.gui.html#Class_comp_CheckBox)

|  |  |
|----|----|
| [comp.CheckBox:isSelected()](api.gui.html#comp.CheckBox:isSelected) | Return selection status for the checkbox |
| [comp.CheckBox:new()](api.gui.html#comp.CheckBox:new) | Gets the entire text. |
| [comp.CheckBox:onToggle(callback)](api.gui.html#comp.CheckBox:onToggle) | Sets a callback that is called when the checkbox is selected |
| [comp.CheckBox:setSelected(value, emit)](api.gui.html#comp.CheckBox:setSelected) | Sets the checkbox as selected. |
| [comp.CheckBox:setText()](api.gui.html#comp.CheckBox:setText) | Sets the label text of the checkbox. |

## [Class comp.ImageView](api.gui.html#Class_comp_ImageView)

|  |  |
|----|----|
| [comp.ImageView:setImage()](api.gui.html#comp.ImageView:setImage) | Sets the image of the image view. |
| [comp.ImageView:setText()](api.gui.html#comp.ImageView:setText) | Creates a new imageview with a texture. |

## [Class comp.ContentView](api.gui.html#Class_comp_ContentView)

|  |  |
|----|----|
| [comp.ContentView:getContent()](api.gui.html#comp.ContentView:getContent) | Returns the content |
| [comp.ContentView:setContent()](api.gui.html#comp.ContentView:setContent) | Sets the content (takes ownership of content) |
| [comp.ContentView:setContentAlignment()](api.gui.html#comp.ContentView:setContentAlignment) | Sets the alignment of the content |

## [Class comp.ToggleButton](api.gui.html#Class_comp_ToggleButton)

|  |  |
|----|----|
| [comp.ToggleButton:isSelected()](api.gui.html#comp.ToggleButton:isSelected) | TReturns whether the toggle button is toggled |
| [comp.ToggleButton:new(child)](api.gui.html#comp.ToggleButton:new) | Creates a toggle button with a child element. |
| [comp.ToggleButton:onToggle()](api.gui.html#comp.ToggleButton:onToggle) | Calls the callback when the button is toggled |
| [comp.ToggleButton:setSelected()](api.gui.html#comp.ToggleButton:setSelected) | TReturns whether the toggle status of the button |
| [comp.ToggleButton:toggle()](api.gui.html#comp.ToggleButton:toggle) | TToggles the button |

## [Class comp.Button](api.gui.html#Class_comp_Button)

|  |  |
|----|----|
| [comp.Button:click()](api.gui.html#comp.Button:click) | Triggers a button click |
| [comp.Button:new(child, clickOnPress)](api.gui.html#comp.Button:new) | Creates a button with a child element. |
| [comp.Button:onClick()](api.gui.html#comp.Button:onClick) | Calls the callback when the button is clicked |

## [Class comp.ToggleButtonGroup](api.gui.html#Class_comp_ToggleButtonGroup)

|  |  |
|----|----|
| [comp.ToggleButtonGroup:add()](api.gui.html#comp.ToggleButtonGroup:add) | Adds a new toggle button to the group, takes ownership of the button |
| [comp.ToggleButtonGroup:getButton()](api.gui.html#comp.ToggleButtonGroup:getButton) | Returns a button with the given index |
| [comp.ToggleButtonGroup:getNumButtons()](api.gui.html#comp.ToggleButtonGroup:getNumButtons) | Returns the number of buttons |
| [comp.ToggleButtonGroup:getSelectedIndex()](api.gui.html#comp.ToggleButtonGroup:getSelectedIndex) | Returns the index of the selected button |
| [comp.ToggleButtonGroup:new()](api.gui.html#comp.ToggleButtonGroup:new) | Creates a toggle button group. |
| [comp.ToggleButtonGroup:onCurrentIndexChanged()](api.gui.html#comp.ToggleButtonGroup:onCurrentIndexChanged) | Calls the callback when one button is toggled with the index of the button |
| [comp.ToggleButtonGroup:setEmitSignal()](api.gui.html#comp.ToggleButtonGroup:setEmitSignal) | Sets the group to trigger a signal when pressed |
| [comp.ToggleButtonGroup:setOneButtonMustAlwaysBeSelected()](api.gui.html#comp.ToggleButtonGroup:setOneButtonMustAlwaysBeSelected) | Prevents deselecting all buttons |

## [Class comp.Table](api.gui.html#Class_comp_Table)

|  |  |
|----|----|
| [comp.Table:addRow(components)](api.gui.html#comp.Table:addRow) | Adds a new row of components |
| [comp.Table:deleteAll()](api.gui.html#comp.Table:deleteAll) | Remove all rows and all components |
| [comp.Table:deleteRows()](api.gui.html#comp.Table:deleteRows) | Remove all rows between first and last |
| [comp.Table:getNumCols()](api.gui.html#comp.Table:getNumCols) | Gets the number of columns of the table |
| [comp.Table:getNumRows()](api.gui.html#comp.Table:getNumRows) | Gets the number of rows of the cable |
| [comp.Table:insertRow(components)](api.gui.html#comp.Table:insertRow) | Adds a new row of components at the given index |
| [comp.Table:new(numColumns, selectable)](api.gui.html#comp.Table:new) | Create a new table with a set number of columns and an optional selection policy. |
| [comp.Table:setColWeight()](api.gui.html#comp.Table:setColWeight) | Sets the column weight (affects the width) |
| [comp.Table:setColWidth()](api.gui.html#comp.Table:setColWidth) | Set the column default width. |
| [comp.Table:setHeader(components)](api.gui.html#comp.Table:setHeader) | Sets the header for the table |
| [comp.Table:setMaxColWidth()](api.gui.html#comp.Table:setMaxColWidth) | Sets the column maximum width |
| [comp.Table:setMinColWidth()](api.gui.html#comp.Table:setMinColWidth) | Sets the column minimum width |
| [comp.Table:setNumCols()](api.gui.html#comp.Table:setNumCols) | Sets the number of columns. |
| [comp.Table:setOrder()](api.gui.html#comp.Table:setOrder) | Sort the rows with a given order. |

## [Class comp.ScrollArea](api.gui.html#Class_comp_ScrollArea)

|  |  |
|----|----|
| [comp.ScrollArea:SetHorizontalScrollBarPolicy(policy)](api.gui.html#comp.ScrollArea:SetHorizontalScrollBarPolicy) | Sets the policy for the horizontal scrollbar |
| [comp.ScrollArea:ensureVisible()](api.gui.html#comp.ScrollArea:ensureVisible) | Ensures a child component is visible |
| [comp.ScrollArea:getContent()](api.gui.html#comp.ScrollArea:getContent) | Returns content of the scroll area. |
| [comp.ScrollArea:getScrollOffset()](api.gui.html#comp.ScrollArea:getScrollOffset) | Returns current scroll offset. |
| [comp.ScrollArea:getViewportRect()](api.gui.html#comp.ScrollArea:getViewportRect) | Return the Rect of the visible portion |
| [comp.ScrollArea:new()](api.gui.html#comp.ScrollArea:new) | Makes a new scroll area with given component and names. |
| [comp.ScrollArea:onScroll()](api.gui.html#comp.ScrollArea:onScroll) | Sets a callback for scrolling |
| [comp.ScrollArea:setContent()](api.gui.html#comp.ScrollArea:setContent) | Sets the content of the scroll area |
| [comp.ScrollArea:setScrollOffset()](api.gui.html#comp.ScrollArea:setScrollOffset) | Scrolls to given position. |
| [comp.ScrollArea:setVerticalScrollBarPolicy(policy)](api.gui.html#comp.ScrollArea:setVerticalScrollBarPolicy) | Sets the policy for the vertical scrollbar |
| [comp.ScrollBarPolicy](api.gui.html#comp.ScrollBarPolicy) | The visibility policy for the ScrollBar |

## [Class comp.ComboBox](api.gui.html#Class_comp_ComboBox)

|  |  |
|----|----|
| [comp.ComboBox:addItem()](api.gui.html#comp.ComboBox:addItem) | Adds a new item at the bottom of the combo box |
| [comp.ComboBox:addItemFactory(callback)](api.gui.html#comp.ComboBox:addItemFactory) | Adds a new component at the bottom of the combo box, callback is called each time the combbox is open |
| [comp.ComboBox:clear()](api.gui.html#comp.ComboBox:clear) | Remove all entries from the combo box |
| [comp.ComboBox:getCurrentIndex()](api.gui.html#comp.ComboBox:getCurrentIndex) | Gets currently selected index. |
| [comp.ComboBox:getNumItems()](api.gui.html#comp.ComboBox:getNumItems) | Returns the number of items in a layout. |
| [comp.ComboBox:new()](api.gui.html#comp.ComboBox:new) | Makes a new empty combo box. |
| [comp.ComboBox:onIndexChanged(callback)](api.gui.html#comp.ComboBox:onIndexChanged) | Add callback that is called when the current index changes. |

## [Class comp.DoubleSpinBox](api.gui.html#Class_comp_DoubleSpinBox)

|  |  |
|----|----|
| [comp.DoubleSpinBox:getMaximum()](api.gui.html#comp.DoubleSpinBox:getMaximum) | Returns the current maximum possible value for the spinbox |
| [comp.DoubleSpinBox:getMinimum()](api.gui.html#comp.DoubleSpinBox:getMinimum) | Returns the current minimum possible value for the spinbox |
| [comp.DoubleSpinBox:getValue()](api.gui.html#comp.DoubleSpinBox:getValue) | Returns the current value of the spinbox |
| [comp.DoubleSpinBox:new()](api.gui.html#comp.DoubleSpinBox:new) | Makes a new spin box with default values. |
| [comp.DoubleSpinBox:onChange(callback)](api.gui.html#comp.DoubleSpinBox:onChange) | Adds a callback for when the spinbox changes value. |
| [comp.DoubleSpinBox:setMaximum()](api.gui.html#comp.DoubleSpinBox:setMaximum) | Sets maximum selectable value for the spin box |
| [comp.DoubleSpinBox:setMinimum()](api.gui.html#comp.DoubleSpinBox:setMinimum) | Sets minimum selectable value for the spin box |
| [comp.DoubleSpinBox:setStep()](api.gui.html#comp.DoubleSpinBox:setStep) | Sets the interval between values of the spinbox |
| [comp.DoubleSpinBox:setValue()](api.gui.html#comp.DoubleSpinBox:setValue) | Sets the current value of the spinbox |

## [Class comp.SpinBox](api.gui.html#Class_comp_SpinBox)

|  |  |
|----|----|
| [comp.SpinBox:getValue()](api.gui.html#comp.SpinBox:getValue) | Returns the current value of the spinbox |
| [comp.SpinBox:new()](api.gui.html#comp.SpinBox:new) | Makes a new spin box with default values. |
| [comp.SpinBox:onChange(callback)](api.gui.html#comp.SpinBox:onChange) | Adds a callback for when the spinbox changes value. |
| [comp.SpinBox:setRange()](api.gui.html#comp.SpinBox:setRange) | Sets minimum and maximum selectable values for the spin box |
| [comp.SpinBox:setValue()](api.gui.html#comp.SpinBox:setValue) | Sets the current value of the spinbox |

## [Class comp.AbstractSlider](api.gui.html#Class_comp_AbstractSlider)

|  |  |
|----|----|
| [comp.AbstractSlider:getPageStep()](api.gui.html#comp.AbstractSlider:getPageStep) | Gets the current page step of the slider |
| [comp.AbstractSlider:getPageStep()](api.gui.html#comp.AbstractSlider:getPageStep) | Gets the current minimum value of the slider |
| [comp.AbstractSlider:getPageStep()](api.gui.html#comp.AbstractSlider:getPageStep) | Gets the current maximum value of the slider |
| [comp.AbstractSlider:getStep()](api.gui.html#comp.AbstractSlider:getStep) | Gets the current step of the slider |
| [comp.AbstractSlider:getValue()](api.gui.html#comp.AbstractSlider:getValue) | Sets the current value of the slider |
| [comp.AbstractSlider:onValueChanged()](api.gui.html#comp.AbstractSlider:onValueChanged) | Get called when the slider value changes. |
| [comp.AbstractSlider:setDefaultValue()](api.gui.html#comp.AbstractSlider:setDefaultValue) | Sets the default value of the slider |
| [comp.AbstractSlider:setMaximum()](api.gui.html#comp.AbstractSlider:setMaximum) | Sets the maximum value of the slider |
| [comp.AbstractSlider:setMinimum()](api.gui.html#comp.AbstractSlider:setMinimum) | Sets the minimum size of the slider |
| [comp.AbstractSlider:setPageStep()](api.gui.html#comp.AbstractSlider:setPageStep) | Sets the big increment size of the slider (controlled with page buttons) |
| [comp.AbstractSlider:setStep()](api.gui.html#comp.AbstractSlider:setStep) | Sets the increment size of the slider |
| [comp.AbstractSlider:setValue()](api.gui.html#comp.AbstractSlider:setValue) | Sets the value of the slider |

## [Class comp.Slider](api.gui.html#Class_comp_Slider)

|  |  |
|----|----|
| [comp.Slider:new()](api.gui.html#comp.Slider:new) | Creates a new vertical or horizontal slider |

## [Class comp.Slider2](api.gui.html#Class_comp_Slider2)

|  |  |
|----|----|
| [comp.Slider2:getValue()](api.gui.html#comp.Slider2:getValue) | Sets the current value of the slider |
| [comp.Slider2:new()](api.gui.html#comp.Slider2:new) | Creates a new 2d slider |
| [comp.Slider2:onValueChanged(callback)](api.gui.html#comp.Slider2:onValueChanged) | Adds a callback for the slider, that is called when the slider value changes |
| [comp.Slider2:setMaximum()](api.gui.html#comp.Slider2:setMaximum) | Sets the maximum value for the slider |
| [comp.Slider2:setMinimum()](api.gui.html#comp.Slider2:setMinimum) | Sets the minimum value for the slider |
| [comp.Slider2:setValue()](api.gui.html#comp.Slider2:setValue) | Sets the default value for the slider |
| [comp.Slider2:setValue()](api.gui.html#comp.Slider2:setValue) | Sets the value of the slider to the given one |
| [comp.Slider2:setValue()](api.gui.html#comp.Slider2:setValue) | Sets the default step for the slider |

## [Class comp.TabWidget](api.gui.html#Class_comp_TabWidget)

|  |  |
|----|----|
| [comp.TabWidget:addSpace()](api.gui.html#comp.TabWidget:addSpace) | Adds a space after the selected tab |
| [comp.TabWidget:addTab()](api.gui.html#comp.TabWidget:addTab) | Adds tab at the end, uses indicator to display the tab |
| [comp.TabWidget:addTabText()](api.gui.html#comp.TabWidget:addTabText) | Adds tab at the end, uses text as indicator for the tab |
| [comp.TabWidget:getCurrentTab()](api.gui.html#comp.TabWidget:getCurrentTab) | (**deprecated**) Use getCurrentTabIndex instead |
| [comp.TabWidget:getCurrentTabIndex()](api.gui.html#comp.TabWidget:getCurrentTabIndex) | Gets the tab index that is currently selected |
| [comp.TabWidget:getIndicator()](api.gui.html#comp.TabWidget:getIndicator) | Gets the indicator component at the given index |
| [comp.TabWidget:getNumTabs()](api.gui.html#comp.TabWidget:getNumTabs) | Gets the numer of tabs |
| [comp.TabWidget:getTab()](api.gui.html#comp.TabWidget:getTab) | Gets the tab at specified index |
| [comp.TabWidget:insertTab()](api.gui.html#comp.TabWidget:insertTab) | Inserts tab at given position, uses indicator to display the tab |
| [comp.TabWidget:new(orientation)](api.gui.html#comp.TabWidget:new) | Creates a new tab widget with tabs on the given position |
| [comp.TabWidget:onCurrentChanged(int)](api.gui.html#comp.TabWidget:onCurrentChanged) | Called when the tab changes, |
| [comp.TabWidget:setCurrentTab()](api.gui.html#comp.TabWidget:setCurrentTab) | Sets the tab that is currently selected |
| [comp.TabWidget:setDeselectAllowed()](api.gui.html#comp.TabWidget:setDeselectAllowed) | Allow selecting no tab at all |

## [Class comp.ProgressBar](api.gui.html#Class_comp_ProgressBar)

|  |  |
|----|----|
| [comp.ProgressBar:getProgress()](api.gui.html#comp.ProgressBar:getProgress) | Gets the current progress |
| [comp.ProgressBar:new()](api.gui.html#comp.ProgressBar:new) | Creates a new progress bar |
| [comp.ProgressBar:setColor()](api.gui.html#comp.ProgressBar:setColor) | Sets the color of the progress bar |
| [comp.ProgressBar:setProgress(The)](api.gui.html#comp.ProgressBar:setProgress) | Sets the current progress |
| [comp.ProgressBar:setTask()](api.gui.html#comp.ProgressBar:setTask) | Adds some text to the bar |

## [Class comp.Chart](api.gui.html#Class_comp_Chart)

|  |  |
|----|----|
| [comp.Chart:addSeries()](api.gui.html#comp.Chart:addSeries) | Adds a new data series to the graph |
| [comp.Chart:clear()](api.gui.html#comp.Chart:clear) | Clears all data from the graph |
| [comp.Chart:new()](api.gui.html#comp.Chart:new) | Creates a new chart |
| [comp.Chart:setColor()](api.gui.html#comp.Chart:setColor) | Sets the color of the bar |
| [comp.Chart:setLineWidth()](api.gui.html#comp.Chart:setLineWidth) | Sets the line with of the graph |
| [comp.Chart:setSeriesLabels()](api.gui.html#comp.Chart:setSeriesLabels) | Sets the labels for the series |
| [comp.Chart:setType(type)](api.gui.html#comp.Chart:setType) | Sets the type of graph |

## [Class comp.ColorChooserButton](api.gui.html#Class_comp_ColorChooserButton)

|  |  |
|----|----|
| [comp.ColorChooserButton:new()](api.gui.html#comp.ColorChooserButton:new) | Creates a new color picker button. |
| [comp.ColorChooserButton:onSelect(callback)](api.gui.html#comp.ColorChooserButton:onSelect) | Called when the color is selected |
| [comp.ColorChooserButton:setColor()](api.gui.html#comp.ColorChooserButton:setColor) | Sets the currently selected color. |

## [Class comp.ColorPicker](api.gui.html#Class_comp_ColorPicker)

|  |  |
|----|----|
| [comp.ColorPicker:new()](api.gui.html#comp.ColorPicker:new) | Creates a new color picker |
| [comp.ColorPicker:onColorChanged(callback)](api.gui.html#comp.ColorPicker:onColorChanged) | Called when the selected color changes |
| [comp.ColorPicker:setColor()](api.gui.html#comp.ColorPicker:setColor) | Sets the color of the color picker |

## [Class comp.ColorChooser](api.gui.html#Class_comp_ColorChooser)

|  |  |
|----|----|
| [comp.ColorChooser:new()](api.gui.html#comp.ColorChooser:new) | Creates a new color chooser |
| [comp.ColorChooser:onSelect(callback)](api.gui.html#comp.ColorChooser:onSelect) | Called when the color is selected. |

## [Class comp.LineRenderView](api.gui.html#Class_comp_LineRenderView)

|  |  |
|----|----|
| [comp.LineRenderView:addLine(from, to)](api.gui.html#comp.LineRenderView:addLine) | Add a new displayed line from from to to |
| [comp.LineRenderView:clear()](api.gui.html#comp.LineRenderView:clear) | Clear all lines added so far. |
| [comp.LineRenderView:new()](api.gui.html#comp.LineRenderView:new) | Creates a new line render component |
| [comp.LineRenderView:setColor(color)](api.gui.html#comp.LineRenderView:setColor) | Called to set the color of all lines added to this |
| [comp.LineRenderView:setWidth(width)](api.gui.html#comp.LineRenderView:setWidth) | Set the width of all lines of the component. |

## [Class comp.List](api.gui.html#Class_comp_List)

|  |  |
|----|----|
| [comp.List:addItem(item)](api.gui.html#comp.List:addItem) | Adds an item to the list |
| [comp.List:clear(emitSignal)](api.gui.html#comp.List:clear) | Clear items from list |
| [comp.List:getItem(index)](api.gui.html#comp.List:getItem) | Returns component at position index |
| [comp.List:getNumItems()](api.gui.html#comp.List:getNumItems) | Returns number of items in the list |
| [comp.List:getSelectedIndex()](api.gui.html#comp.List:getSelectedIndex) | Returns currently selected item |
| [comp.List:new(drawBackground, orientation, autoDeselectDisabledItems)](api.gui.html#comp.List:new) | Creates a new list component |
| [comp.List:onActivate(callback)](api.gui.html#comp.List:onActivate) | Called when an item is activated |
| [comp.List:onHover(callback)](api.gui.html#comp.List:onHover) | Called when an item is hovered on |
| [comp.List:onSelect(callback)](api.gui.html#comp.List:onSelect) | Called when an item is selected |
| [comp.List:removeItem(index, emitSignal)](api.gui.html#comp.List:removeItem) | Removes an item from the list |
| [comp.List:select(index, emitSignal)](api.gui.html#comp.List:select) | Selects an item in the list |
| [comp.List:setDeselectAllowed(deselectAllowed)](api.gui.html#comp.List:setDeselectAllowed) | Set policy to allow no selected item |
| [comp.List:setEmitSignalOnReselect(emitSignal)](api.gui.html#comp.List:setEmitSignalOnReselect) | Set policy not to emit a signal when the same item is selected |

## [Class layout.ILayout](api.gui.html#Class_layout_ILayout)

|  |  |
|----|----|
| [layout.ILayout:getItem()](api.gui.html#layout.ILayout:getItem) | Get the item at the given index. |
| [layout.ILayout:getNumItems()](api.gui.html#layout.ILayout:getNumItems) | Get the number of items in a layout |
| [layout.ILayout:removeItem()](api.gui.html#layout.ILayout:removeItem) | Removes an item from the layout, returns an object having ownership of the removed item. |

## [Class layout.LayoutBase](api.gui.html#Class_layout_LayoutBase)

|  |  |
|----|----|
| [layout.LayoutBase:addItem()](api.gui.html#layout.LayoutBase:addItem) | Adds an item to the layout. |
| [layout.LayoutBase:getComponent()](api.gui.html#layout.LayoutBase:getComponent) | Get the component stored in the layout. |
| [layout.LayoutBase:insertItem()](api.gui.html#layout.LayoutBase:insertItem) | Adds an item to the layout at given position. |
| [layout.LayoutBase:setGravity()](api.gui.html#layout.LayoutBase:setGravity) | Sets the alignment of the component. |
| [layout.LayoutBase:setId()](api.gui.html#layout.LayoutBase:setId) | Sets a name for the layout. |
| [layout.LayoutBase:setId()](api.gui.html#layout.LayoutBase:setId) | Sets a unique id for the layout. |

## [Class layout.BoxLayout](api.gui.html#Class_layout_BoxLayout)

|  |  |
|----|----|
| [layout.BoxLayout:new(orientation)](api.gui.html#layout.BoxLayout:new) | Creates a new layout with the given orientation. |

## [Class layout.AbsoluteLayout](api.gui.html#Class_layout_AbsoluteLayout)

|  |  |
|----|----|
| [layout.AbsoluteLayout:addItem()](api.gui.html#layout.AbsoluteLayout:addItem) | Adds an item with the given geometry to the layout. |
| [layout.AbsoluteLayout:deleteAll()](api.gui.html#layout.AbsoluteLayout:deleteAll) | Removes all childs and deletes them. |
| [layout.AbsoluteLayout:getIndex()](api.gui.html#layout.AbsoluteLayout:getIndex) | Get the index of the item at given position. |
| [layout.AbsoluteLayout:new(orientation)](api.gui.html#layout.AbsoluteLayout:new) | Creates a new layout with the given orientation. |
| [layout.AbsoluteLayout:setItemPosition()](api.gui.html#layout.AbsoluteLayout:setItemPosition) | \[Deprecated\] Sets item at position. |
| [layout.AbsoluteLayout:setPosition()](api.gui.html#layout.AbsoluteLayout:setPosition) | Sets the position of the item at given index at the given position. |

## [Class layout.FloatingLayout](api.gui.html#Class_layout_FloatingLayout)

|  |  |
|----|----|
| [layout.FloatingLayout:addItem()](api.gui.html#layout.FloatingLayout:addItem) | Adds an item with the given alignments. |
| [layout.FloatingLayout:deleteAll()](api.gui.html#layout.FloatingLayout:deleteAll) | Removes and deletes all elements in the layout. |
| [layout.FloatingLayout:insertItem()](api.gui.html#layout.FloatingLayout:insertItem) | Adds and items (and takes ownership), at the given position and with the given alignments. |
| [layout.FloatingLayout:new()](api.gui.html#layout.FloatingLayout:new) | Creates a new layout |
| [layout.FloatingLayout:setAlignment()](api.gui.html#layout.FloatingLayout:setAlignment) | Sets the alignment of the item at the position. |

  
  

## <span id="Tables"></span>Tables

<span id="comp"></span> **comp**  
Contains all UI components (widgets) and base classes.

<span id="layout"></span> **layout**  
Contains all UI layouts and base classes.

<span id="util"></span> **util**  
Contains all util function for the UI.

## <span id="Class_util_Rect"></span>Class util.Rect

A UI Rectangle.

<span id="util.Rect.h"></span> **util.Rect.h**  
Height of the rectangle

- <span class="parameter">h</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.Rect.w"></span> **util.Rect.w**  
Width of the rectangle

- <span class="parameter">w</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.Rect.x"></span> **util.Rect.x**  
Horizontal position of the upper left corner

- <span class="parameter">x</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.Rect.y"></span> **util.Rect.y**  
Vertical position of the upper left corner

- <span class="parameter">y</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.Rect:contains"></span> **util.Rect:contains(x, y)**  
Checks if Rect contains the position on the screen.

### Parameters:

- <span class="parameter">x</span>
  <span class="types"><span class="type">int</span></span> x coordinate
- <span class="parameter">y</span>
  <span class="types"><span class="type">int</span></span> y coordinate

<span id="util.Rect:intersects"></span> **util.Rect:intersects(other)**  
Checks if Rect intersects another Rect.

### Parameters:

- <span class="parameter">other</span>
  <span class="types"><a href="api.gui.html#util.Rect" class="type">Rect</a></span>
  the other Rect

<span id="util.Rect:new"></span> **util.Rect:new(x, y, w, h)**  
Creates a new Rect. It can be called either empty or with all
parameters.

### Parameters:

- <span class="parameter">x</span> <span class="types">optional
  <span class="type">int</span></span> x coordinate of the upper left
  corner
- <span class="parameter">y</span> <span class="types">optional
  <span class="type">int</span></span> y coordinate of the upper left
  corner
- <span class="parameter">w</span> <span class="types">optional
  <span class="type">int</span></span> width of the rectangle
- <span class="parameter">h</span> <span class="types">optional
  <span class="type">int</span></span> height of the rectangle

## <span id="Class_util_MouseEvent"></span>Class util.MouseEvent

Represents a mouse event

<span id="util.MouseEvent.button"></span> **util.MouseEvent.button**  
Mouse button related to the event: 0 = left, 1 = middle, 2 = right

- <span class="parameter">button</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.MouseEvent.type"></span> **util.MouseEvent.type**  
Event type: 0 = mouse pressed, 1 = mouse released, 2 = mouse clicked, 3
= mouse enter, 4 = mouse exited, 5 = mouse moved, 6 = mouse wheel event,
7 = mouse double clicked

- <span class="parameter">type</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.MouseEvent.x"></span> **util.MouseEvent.x**  
Horizontal position of the mouse when event was triggered

- <span class="parameter">x</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.MouseEvent.xrel"></span> **util.MouseEvent.xrel**  
Relative horizontal position when event was triggered

- <span class="parameter">xrel</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.MouseEvent.y"></span> **util.MouseEvent.y**  
Horizontal position of the mouse when event was triggered

- <span class="parameter">y</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.MouseEvent.yrel"></span> **util.MouseEvent.yrel**  
Relative vertical position when event was triggered

- <span class="parameter">yrel</span>
  <span class="types"><span class="type">int</span></span>

## <span id="Class_util_Size"></span>Class util.Size

A UI Size.

<span id="util.Alignment"></span> **util.Alignment**  
Alignment of the layout item

### Fields:

- <span class="parameter">LEFT</span> 0
- <span class="parameter">CENTER</span> 1
- <span class="parameter">RIGHT</span> 2

<span id="util.Orientation"></span> **util.Orientation**  
Orientation of the layout item

### Fields:

- <span class="parameter">HORIZONTAL</span> 0
- <span class="parameter">VERTICAL</span> 1

<span id="util.Size.h"></span> **util.Size.h**  
Height of the size

- <span class="parameter">h</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.Size.h"></span> **util.Size.h**  
Height of the size element

- <span class="parameter">h</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.Size.w"></span> **util.Size.w**  
Width of the size element

- <span class="parameter">w</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.Size.w"></span> **util.Size.w**  
Width of the size

- <span class="parameter">w</span>
  <span class="types"><span class="type">int</span></span>

<span id="util.Size:new"></span> **util.Size:new(w, h)**  
Creates a new Size

### Parameters:

- <span class="parameter">w</span>
  <span class="types"><span class="type">int</span></span> width of the
  size
- <span class="parameter">h</span>
  <span class="types"><span class="type">int</span></span> height of the
  size

<span id="util.downcast"></span> **util.downcast(layout)**  
Properly set correct metatable of the object for most derived object

### Parameters:

- <span class="parameter">layout</span>
  <span class="types"><a href="api.gui.html#layout.ILayout" class="type">layout.ILayout</a></span>
  to downcast

### Returns:

1.  <span class="types"><span class="type">Object</span></span>
    representing item, but with the most derived metatable

## <span id="Class_comp_ILayoutItem"></span>Class comp.ILayoutItem

The base abstract class to all layouts and components.

Internally, this is just a pointer to a C memory location. Since lua
does not have a concept of ownership, a layout item is never owened by
lua, and is just referenced by it.

The object might therefore become invalid if kept around. If you keep a
layout item around, and you are not controlling the lifetime yourself,
you can add a lifetime checker.

<span id="comp.ILayoutItem:addHighPriorityProcessingComponent"></span> **comp.ILayoutItem:addHighPriorityProcessingComponent()**  
Adds a component which will have priority in handling Input Actions

<span id="comp.ILayoutItem:destroy"></span> **comp.ILayoutItem:destroy()**  
Destroys the item: the item cannot belong to a layout of component. This
can not be used during a callback of the component itself or one of its
children. To destroy a component from a callback, see
[util.destroyLater](api.gui.html#util.destroyLater).

<span id="comp.ILayoutItem:getBeginFrameTimes"></span> **comp.ILayoutItem:getBeginFrameTimes()**  
Returns the rendering preparation time

<span id="comp.ILayoutItem:getEventTimes"></span> **comp.ILayoutItem:getEventTimes()**  
Returns the events processing time

<span id="comp.ILayoutItem:getId"></span> **comp.ILayoutItem:getId()**  
Obtains the id of the ui item.

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> the id of the ui item.

<span id="comp.ILayoutItem:getRenderTimes"></span> **comp.ILayoutItem:getRenderTimes()**  
Returns the rendering time

<span id="comp.ILayoutItem:getStepTimes"></span> **comp.ILayoutItem:getStepTimes()**  
Returns the gui update time

<span id="comp.ILayoutItem:getSwapTimes"></span> **comp.ILayoutItem:getSwapTimes()**  
Returns the rendering finish time

<span id="comp.ILayoutItem:removeHighPriorityProcessingComponent"></span> **comp.ILayoutItem:removeHighPriorityProcessingComponent()**  
Remove a component which was added via
addHighPriorityProcessingComponent

## <span id="Class_comp_Component"></span>Class comp.Component

A very simple UI component with basic functionality. Inherits all
functions from [comp.ILayoutItem](api.gui.html#Class_comp_ILayoutItem).

Base class: [comp.ILayoutItem](api.gui.html#Class_comp_ILayoutItem).

<span id="comp.Component:addLifeTimeChecker"></span> **comp.Component:addLifeTimeChecker()**  
Obtains an object from the component that can be used to check whether
the component has been destroyed. Especially useful if you do not have
control over the lifetime of the component and the component does not
live for the entirety of the game.

You can keep around this object as long as you need.

### Returns:

1.  <span class="types"><span class="type">LifeTimeChecker</span></span>
    the object reference that can be used with
    api.gui.util.check(reference)

<span id="comp.Component:addStyleClass"></span> **comp.Component:addStyleClass(class)**  
Assigns a style class to the component.

### Parameters:

- <span class="parameter">class</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> Class to add

<span id="comp.Component:calcMinimumSize"></span> **comp.Component:calcMinimumSize()**  
Gets minimum size taken by the component.

### Returns:

1.  <span class="types"><a href="api.gui.html#util.Size" class="type">Size</a></span>
    the minimum size that the component needs

<span id="comp.Component:getContentRect"></span> **comp.Component:getContentRect()**  
Gets Rect size for the component.

### Returns:

1.  <span class="types"><a href="api.gui.html#util.Rect" class="type">Rect</a></span>
    the Rect representing the size of the component

<span id="comp.Component:getCore"></span> **comp.Component:getCore()**  
Returns the Core object for all Components

### Returns:

1.  <span class="types"><span class="type">Core</span></span> the core
    component

<span id="comp.Component:getLayout"></span> **comp.Component:getLayout()**  
Returns layout of the component.

### Returns:

1.  <span class="types"><span class="type">Layout</span></span> the
    layout of the component

<span id="comp.Component:getName"></span> **comp.Component:getName()**  
Receives the name of the component.

### Returns:

1.  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
    class="type">string</a></span> the name of the component

<span id="comp.Component:getParent"></span> **comp.Component:getParent()**  
Gets parent of component (automatically downcasted).

### Returns:

1.  <span class="types"><a href="api.gui.html#comp.Component" class="type">Component</a></span>
    the parent component

<span id="comp.Component:hasFocus"></span> **comp.Component:hasFocus()**  
Checks if component has focus.

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    the component has focus

<span id="comp.Component:insertMouseListener"></span> **comp.Component:insertMouseListener(func)**  
Prepends a mouse listener that will be called before all other
listeners. Listeners can only be removed all at once

### Parameters:

- <span class="parameter">func</span>
  <span class="types"><span class="type">bool</span></span> (MouseEvent)
  callback The function to call when an event is triggered on the
  component

### Returns:

1.  <span class="types"><span class="type">bool</span></span> Whether
    the event was handled or not

<span id="comp.Component:invokeLater"></span> **comp.Component:invokeLater(callback)**  
Invoke a stored function at the beginning of the next frame.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func()</span></span> A
  parameterless callback which will be invoked at the beginning of the
  next frame

<span id="comp.Component:isEnabled"></span> **comp.Component:isEnabled()**  
Checks if the object is interactable.

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    the object is interactable

<span id="comp.Component:isVisible"></span> **comp.Component:isVisible()**  
Checks if the object is visible.

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    the object is visible

<span id="comp.Component:new"></span> **comp.Component:new(name, id)**  
Creates a new Component instance.

### Parameters:

- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name of the component (used for
  styles)
- <span class="parameter">id</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the id of the component

### Returns:

1.  <span class="types"><a href="api.gui.html#comp.Component" class="type">Component</a></span>
    the new Component instance.

<span id="comp.Component:onDestroy"></span> **comp.Component:onDestroy(callback)**  
Adds a callback to be called when the item is destroyed.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func()</span></span> the
  parameterless function called when the component is destroyed

### Returns:

1.  <span class="types"><a href="api.type.html#Connection" class="type">type.Connection</a></span>
    to disconnect the callback if no longer needed

<span id="comp.Component:onStep"></span> **comp.Component:onStep(callback)**  
Adds a callback to be called each gui update.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(long,long)</span></span>
  The function takes two numbers as input, specifying the frame time and
  the elapsed time

### Returns:

1.  <span class="types"><a href="api.type.html#Connection" class="type">type.Connection</a></span>
    to disconnect the callback if no longer needed

<span id="comp.Component:onVisibilityChange"></span> **comp.Component:onVisibilityChange()**  
Adds a callback to be called when the visibility changes.

### Returns:

1.  <span class="types"><a href="api.type.html#Connection" class="type">type.Connection</a></span>
    to disconnect the callback if no longer needed

<span id="comp.Component:removeMouseListener"></span> **comp.Component:removeMouseListener()**  
Removes the mouse listener attached to the component.

<span id="comp.Component:removeStyleClass"></span> **comp.Component:removeStyleClass(class)**  
Removes a style class to the component.

### Parameters:

- <span class="parameter">class</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> Class to remove

<span id="comp.Component:setEnabled"></span> **comp.Component:setEnabled(enabled)**  
Makes the object (un)interactable.

### Parameters:

- <span class="parameter">enabled</span>
  <span class="types"><span class="type">bool</span></span> true if
  should be interactable

<span id="comp.Component:setFocus"></span> **comp.Component:setFocus()**  
Sets a component to have focus.

<span id="comp.Component:setFocusable"></span> **comp.Component:setFocusable()**  
Enables/disable focus on this component

<span id="comp.Component:setGravity"></span> **comp.Component:setGravity(horizontal, vertical)**  
Sets the alignment of the component. Both parameters can be set to 0.0
for left/top position, 0.5 for center positioning and 1.0 for
right/bottom positioning. If set to -1, the element will grow in that
dimension to fill up space.

### Parameters:

- <span class="parameter">horizontal</span>
  <span class="types"><span class="type">float</span></span> the
  horizontal gravity setting
- <span class="parameter">vertical</span>
  <span class="types"><span class="type">float</span></span> the
  vertical gravity setting

<span id="comp.Component:setHighlighted"></span> **comp.Component:setHighlighted(highlighted)**  
Sets highlighted.

### Parameters:

- <span class="parameter">highlighted</span>
  <span class="types"><span class="type">bool</span></span> true if the
  component should be highlighted (usually the yellow flashing)

<span id="comp.Component:setId"></span> **comp.Component:setId(id)**  
Gives the component a unique identifier.

### Parameters:

- <span class="parameter">id</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the id for the component

<span id="comp.Component:setInputActionBubbleUpAcceptFilter"></span> **comp.Component:setInputActionBubbleUpAcceptFilter(a, whether)**  
Sets a handler for a list of input actions and decide whether to enable
those input actions or not

### Parameters:

- <span class="parameter">a</span>
  <span class="types"><span class="type">vector</span></span> list of
  input actions
- <span class="parameter">whether</span>
  <span class="types"><span class="type">bool</span></span> to enable or
  disable the provided list of input actions

<span id="comp.Component:setInputActionForward"></span> **comp.Component:setInputActionForward(sourceIa, targetComp, targetIa)**  
Forwards an input action to a target component with a specified source
and target action.

### Parameters:

- <span class="parameter">sourceIa</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> The name of the source input action
- <span class="parameter">targetComp</span>
  <span class="types"><a href="api.gui.html#comp.Component" class="type">Component</a></span>
  The target component
- <span class="parameter">targetIa</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> The name of the target input action

<span id="comp.Component:setInputActionHandler"></span> **comp.Component:setInputActionHandler(ia, handlerFn, func)**  
Sets an handler for an input action, and another callback to determine
whether it is enabled or not.

### Parameters:

- <span class="parameter">ia</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> The name of the input action
- <span class="parameter">handlerFn</span>
  <span class="types"><span class="type">func()</span></span> A
  parameterless callback which will be invoked when the input action is
  triggered
- <span class="parameter">func</span>
  <span class="types"><span class="type">bool</span></span> () enabledFn
  A parameterless callback returning "bool" deciding whether the input
  action is enabled

<span id="comp.Component:setLayout"></span> **comp.Component:setLayout(layout)**  
Sets a layout (the component takes ownership of the layout).

### Parameters:

- <span class="parameter">layout</span>
  <span class="types"><span class="type">Layout</span></span> the layout
  that should be used for this component

<span id="comp.Component:setMaximumSize"></span> **comp.Component:setMaximumSize(size)**  
Set the maximum size that the components takes up.

### Parameters:

- <span class="parameter">size</span>
  <span class="types"><a href="api.gui.html#util.Size" class="type">util.Size</a></span>
  the maximum size that the component may reach

<span id="comp.Component:setMinimumSize"></span> **comp.Component:setMinimumSize(size)**  
Set the minimum size that the components takes up.

### Parameters:

- <span class="parameter">size</span>
  <span class="types"><a href="api.gui.html#util.Size" class="type">util.Size</a></span>
  the minimum size that the component may reach

<span id="comp.Component:setMouseListener"></span> **comp.Component:setMouseListener(func)**  
Forwards mouse events to the component under the cursor. Listener is
unique.

### Parameters:

- <span class="parameter">func</span>
  <span class="types"><span class="type">bool</span></span> (MouseEvent)
  callback The function to call when an event is triggered on the
  component

### Returns:

1.  <span class="types"><span class="type">bool</span></span> Whether
    the event was handled or not

<span id="comp.Component:setName"></span> **comp.Component:setName(name)**  
Gives the component a name, used to apply styles.

### Parameters:

- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name for the component

<span id="comp.Component:setStyleClassList"></span> **comp.Component:setStyleClassList(list)**  
Assigns a style class to the component.

### Parameters:

- <span class="parameter">list</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">{string,...}</a></span> the list of style classes that
  should be added

<span id="comp.Component:setTooltip"></span> **comp.Component:setTooltip(text)**  
Sets the tooltip of the component.

### Parameters:

- <span class="parameter">text</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the text that should be used for the
  tooltip

<span id="comp.Component:setTransparent"></span> **comp.Component:setTransparent(transparent)**  
Sets transparency.

### Parameters:

- <span class="parameter">transparent</span>
  <span class="types"><span class="type">bool</span></span> true if the
  component should be transparent

<span id="comp.Component:setVisible"></span> **comp.Component:setVisible(visible, emitSignal)**  
Sets visibility.

### Parameters:

- <span class="parameter">visible</span>
  <span class="types"><span class="type">bool</span></span> true if
  component should be visible
- <span class="parameter">emitSignal</span>
  <span class="types"><span class="type">bool</span></span> true if
  "onVisibilityChanged" callback should be called

## <span id="Util"></span>Util

<span id="util.check"></span> **util.check(reference)**  
Checks if a component is still alive using the LifeTimeChecker.

### Parameters:

- <span class="parameter">reference</span>
  <span class="types"><span class="type">LifeTimeChecker</span></span>
  The lifetime checker reference for the component

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    the component is still alive.

<span id="util.destroyLater"></span> **util.destroyLater(comp)**  
Delete a gui element at the beginning of the next frame. The user must
have obtained ownership of the item by removing from the layout.

### Parameters:

- <span class="parameter">comp</span>
  <span class="types"><a href="api.gui.html#comp.Component" class="type">gui.Component</a></span>
  the component to delete

<span id="util.getById"></span> **util.getById(id)**  
Returns the component with the given id.

### Parameters:

- <span class="parameter">id</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the id of the ui component with the
  given id

### Returns:

1.  <span class="types"><a href="api.gui.html#comp.Component" class="type">Component</a></span>
    the component that was requested

<span id="util.getCommandTimes"></span> **util.getCommandTimes()**  
Returns commands processing time Available only within [GUI
State](../topics/states.md.html#GUI_State).

### Returns:

1.  <span class="types"><span class="type">The</span></span> commands
    processing time

<span id="util.getGameUI"></span> **util.getGameUI()**  
Returns the GameUI. Available only within [GUI
State](../topics/states.md.html#GUI_State).

### Returns:

1.  <span class="types"><a href="api.gui.html#comp.Component" class="type">Component</a></span>
    the main game ui component

<span id="util.getInputMode"></span> **util.getInputMode()**  
Returns the current InputMode. Available only within [GUI
State](../topics/states.md.html#GUI_State).

### Returns:

1.  <span class="types"><span class="type">The</span></span> input mode

<span id="util.getMouseScreenPos"></span> **util.getMouseScreenPos()**  
Returns the screet coordinate at the mouse position.

### Returns:

1.  <span class="types"><a href="api.type.html#Vec2i" class="type">type.Vec2i</a></span>
    the vector containing the x and y coordinate of the mouse pointer on
    the screen

<span id="util.getReplicateTimes"></span> **util.getReplicateTimes()**  
Returns the sync time between gui and simulation Available only within
[GUI State](../topics/states.md.html#GUI_State).

### Returns:

1.  <span class="types"><span class="type">The</span></span> sync time
    between gui and simulation

<span id="util.getStepTimes"></span> **util.getStepTimes()**  
Returns the simulation update time Available only within [GUI
State](../topics/states.md.html#GUI_State).

### Returns:

1.  <span class="types"><span class="type">The</span></span> simulation
    update time

## <span id="Class_comp_Window"></span>Class comp.Window

A special component with window-like behaviour.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

Available only within [GUI State](../topics/states.md.html#GUI_State).

<span id="comp.Window:addHideOnCloseHandler"></span> **comp.Window:addHideOnCloseHandler()**  
Adds a default handler for "onClose" that hides the window when it is
closed.

Without the callback, the close button does nothing.

<span id="comp.Window:close"></span> **comp.Window:close()**  
Closes the window. Calls the onClose callback.

<span id="comp.Window:getContent"></span> **comp.Window:getContent()**  
Returns the window content.

### Returns:

1.  <span class="types"><a href="api.gui.html#comp.ILayoutItem" class="type">ILayoutItem</a></span>
    the current content of the window

<span id="comp.Window:isAttached"></span> **comp.Window:isAttached()**  
Checks if window is attached.

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    the window is attached

<span id="comp.Window:isPinnable"></span> **comp.Window:isPinnable()**  
Checks if window is pinnable.

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    the pin button is visible

<span id="comp.Window:isPinned"></span> **comp.Window:isPinned()**  
Checks if window is pinned.

### Returns:

1.  <span class="types"><span class="type">bool</span></span> true if
    the window is pinned

<span id="comp.Window:maximize"></span> **comp.Window:maximize()**  
Maximizes the window to its maximisedSize size.

Must have set the maximisedSize with setMaximisedSize

<span id="comp.Window:minimize"></span> **comp.Window:minimize()**  
Minimizes the window to its minimizedSize size.

Must have set the maximisedSize with setMaximisedSize

<span id="comp.Window:new"></span> **comp.Window:new(title, content)**  
Creates a new Window.

### Parameters:

- <span class="parameter">title</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the window title displayed in the top
  right corner
- <span class="parameter">content</span>
  <span class="types"><a href="api.gui.html#comp.Component" class="type">Component</a></span>
  the component that holds the content of the window

### Returns:

1.  <span class="types"><a href="api.gui.html#comp.Window" class="type">Window</a></span>
    the window component

<span id="comp.Window:onClose"></span> **comp.Window:onClose(callback)**  
Adds a parameterless callback, which is called when the window is
closed.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func()</span></span> the
  callback function that should be called when close() is called

<span id="comp.Window:onMove"></span> **comp.Window:onMove(callback)**  
Adds a parameterless callback, which is called when the window is moved

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func()</span></span> the
  callback function that should be called when the window is moved

<span id="comp.Window:remove"></span> **comp.Window:remove(win)**  
Removes a window from the UI and returns it.

### Parameters:

- <span class="parameter">win</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the window to remove from the UI and
  return

### Returns:

1.  <span class="types"><a href="api.gui.html#comp.Window" class="type">Window</a></span>
    the removed window

<span id="comp.Window:setAttached"></span> **comp.Window:setAttached(b)**  
Sets the window to be attached.

### Parameters:

- <span class="parameter">b</span>
  <span class="types"><span class="type">bool</span></span> true if the
  window should get the :attached pseudoclass

<span id="comp.Window:setContent"></span> **comp.Window:setContent(content)**  
Sets the window content.

### Parameters:

- <span class="parameter">content</span>
  <span class="types"><a href="api.gui.html#comp.ILayoutItem" class="type">ILayoutItem</a></span>
  the component or layout that should be used as the window content

<span id="comp.Window:setIcon"></span> **comp.Window:setIcon(icon)**  
Sets the window icon.

### Parameters:

- <span class="parameter">icon</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the reference to the icon that should
  be set

<span id="comp.Window:setLocateButtonVisible"></span> **comp.Window:setLocateButtonVisible(b)**  
Adds a button to follow entities and other objects.

### Parameters:

- <span class="parameter">b</span>
  <span class="types"><span class="type">bool</span></span> true if the
  locate button left to the title should be visible

<span id="comp.Window:setMaximiseSize"></span> **comp.Window:setMaximiseSize()**  
Set the size when maximised.

<span id="comp.Window:setMovable"></span> **comp.Window:setMovable(b)**  
Sets the window to be movable.

### Parameters:

- <span class="parameter">b</span>
  <span class="types"><span class="type">bool</span></span> true if the
  window should be movable

<span id="comp.Window:setPinButtonVisible"></span> **comp.Window:setPinButtonVisible(b)**  
Adds a button to pin the window. It automatically reflects the pin
status of the window.

### Parameters:

- <span class="parameter">b</span>
  <span class="types"><span class="type">bool</span></span> true if the
  pin button right to the title should be visible

<span id="comp.Window:setPinned"></span> **comp.Window:setPinned(b)**  
Sets the window to be pinned. Then the window is not closed when

key is used.

### Parameters:

- <span class="parameter">b</span>
  <span class="types"><span class="type">bool</span></span> true if the
  window should be pinned

<span id="comp.Window:setPosition"></span> **comp.Window:setPosition(x, y)**  
Sets the window position.

### Parameters:

- <span class="parameter">x</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">y</span>
  <span class="types"><span class="type">int</span></span>

<span id="comp.Window:setResizable"></span> **comp.Window:setResizable(b)**  
Sets the window to be resizable.

### Parameters:

- <span class="parameter">b</span>
  <span class="types"><span class="type">bool</span></span> true if the
  window should be resizable

<span id="comp.Window:setSize"></span> **comp.Window:setSize(size)**  
Sets the window size.

### Parameters:

- <span class="parameter">size</span>
  <span class="types"><a href="api.gui.html#util.Size" class="type">util.Size</a></span>
  the size for the window

<span id="comp.Window:setTitle"></span> **comp.Window:setTitle(title)**  
Sets the window title.

### Parameters:

- <span class="parameter">title</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the title that should be set

## <span id="Class_comp_GameUI"></span>Class comp.GameUI

A special component which is the root of many other in-game components,
including the entire ingame menu and the windowing system. In
particular, it displays the main 3d representation of the world, in the
form of a RendererComponent.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

Available only within [GUI State](../topics/states.md.html#GUI_State).

<span id="comp.GameUI:getMainRendererComponent"></span> **comp.GameUI:getMainRendererComponent()**  
Obtains the main 3d scene.

### Returns:

1.  <span class="types"><span class="type">RenderComponent</span></span>
    the main render component for the game world

<span id="comp.GameUI:getViewManager"></span> **comp.GameUI:getViewManager()**  
Obtains the view manager.

### Returns:

1.  <span class="types"><a href="api.gui.html#util.ViewManager" class="type">ViewManager</a></span>
    the view manager for entity windows

<span id="comp.GameUI:playCutscene"></span> **comp.GameUI:playCutscene(fileName)**  
Plays a cutscene.

### Parameters:

- <span class="parameter">fileName</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the reference to the cutscene keyframe
  definition that should be played

<span id="comp.GameUI:playSoundEffect"></span> **comp.GameUI:playSoundEffect(name)**  
Plays a single sound effect.

### Parameters:

- <span class="parameter">name</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the name of the sound effect

<span id="comp.GameUI:playTrack"></span> **comp.GameUI:playTrack(filename, offset)**  
Plays a single track with the music player.

### Parameters:

- <span class="parameter">filename</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> the reference to the soundtrack file
  that should be played
- <span class="parameter">offset</span>
  <span class="types"><span class="type">float</span></span> the start
  position of the track

<span id="comp.GameUI:setConstructionAngle"></span> **comp.GameUI:setConstructionAngle(angle)**  
Sets the default construction angle for constructions.

### Parameters:

- <span class="parameter">angle</span>
  <span class="types"><span class="type">float</span></span> the default
  construction angle

## <span id="Class_comp_RendererComponent"></span>Class comp.RendererComponent

Contains the 3d scene and control most actions.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

Available only within [GUI State](../topics/states.md.html#GUI_State).

<span id="comp.RendererComponent:getCameraController"></span> **comp.RendererComponent:getCameraController()**  
Gets the camera controller for the component.

### Returns:

1.  <span class="types"><a href="api.gui.html#util.CameraController"
    class="type">CameraController</a></span> the camera controller of
    the RendererComponent

<span id="comp.RendererComponent:getTerrainPos"></span> **comp.RendererComponent:getTerrainPos()**  
Gets the terrain position pointed by the mouse.

### Returns:

1.  <span class="types"><span class="type">{float,float,float}</span></span>
    x, y and z coordinates of the terrain position

<span id="comp.RendererComponent:stopAction"></span> **comp.RendererComponent:stopAction()**  
Stops the current Action (bulldoze, build construction, etc.)

## <span id="Class_util_CameraController"></span>Class util.CameraController

Controls the camera view.

Available only within [GUI State](../topics/states.md.html#GUI_State).

<span id="util.CameraController:focus"></span> **util.CameraController:focus(entity)**  
Focuses the camera on an entity.

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the id of
  the entity that should be focussed on

<span id="util.CameraController:follow"></span> **util.CameraController:follow(entity, jump)**  
Sets camera to follow an Entity.

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the id of
  the entity that should be followed
- <span class="parameter">jump</span>
  <span class="types"><span class="type">bool</span></span> true if the
  camera should directly jump to the entity and not slide there

<span id="util.CameraController:getCameraData"></span> **util.CameraController:getCameraData()**  
Obtains the current camera data.

### Returns:

1.  <span class="types"><span class="type">type.Vec5f</span></span> the
    current camera data

<span id="util.CameraController:getFollowEntity"></span> **util.CameraController:getFollowEntity()**  
Gets the entity currently being followed.

<span id="util.CameraController:setCameraData"></span> **util.CameraController:setCameraData(center, dist, angle, pitch)**  
Sets the camera data with custom position and other information.

### Parameters:

- <span class="parameter">center</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  position on the map where the camera should point
- <span class="parameter">dist</span>
  <span class="types"><span class="type">float</span></span> the
  distance from this position
- <span class="parameter">angle</span>
  <span class="types"><span class="type">float</span></span> the
  rotation angle
- <span class="parameter">pitch</span>
  <span class="types"><span class="type">float</span></span> the pitch
  angle

## <span id="Class_util_ViewManager"></span>Class util.ViewManager

Controls the small entity windows.

Available only within [GUI State](../topics/states.md.html#GUI_State).

<span id="util.ViewManager:closeAll"></span> **util.ViewManager:closeAll()**  
Closes all currently open entity windows.

<span id="util.ViewManager:openWindow"></span> **util.ViewManager:openWindow(entity, above, tabIndex)**  
Focuses the camera on an entity.

### Parameters:

- <span class="parameter">entity</span>
  <span class="types"><span class="type">Entity</span></span> the id of
  the entity of which to open the window
- <span class="parameter">above</span>
  <span class="types"><span class="type">bool</span></span> whether the
  window should go on top
- <span class="parameter">tabIndex</span>
  <span class="types"><span class="type">int</span></span> the tab index
  on which to open the window

### Returns:

1.  <span class="types"><a href="api.gui.html#comp.Window" class="type">Window</a></span>
    the opened window or nil

## <span id="Class_comp_TextInputField"></span>Class comp.TextInputField

A simple component for input of lines of text.

Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.TextInputField:OnFocusChange"></span> **comp.TextInputField:OnFocusChange(callback)**  
Sets a callback that is called when the focus changes.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func</span></span> Function
  taking a boolean telling if focus was lost or gained.

<span id="comp.TextInputField:getSelectedText"></span> **comp.TextInputField:getSelectedText()**  
Gets selected text.

<span id="comp.TextInputField:getText"></span> **comp.TextInputField:getText()**  
Returns the text in the input field.

<span id="comp.TextInputField:new"></span> **comp.TextInputField:new()**  
Creates a new text input field with placeholder text.

<span id="comp.TextInputField:onCancel"></span> **comp.TextInputField:onCancel(callback)**  
Sets a callback that is called when enter is pressed.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func</span></span> Function.

<span id="comp.TextInputField:onChange"></span> **comp.TextInputField:onChange(callback)**  
Sets a callback that is called when the text changes.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func</span></span> Function
  with the new text.

<span id="comp.TextInputField:onEnter"></span> **comp.TextInputField:onEnter(callback)**  
Sets a callback that is called when enter is pressed.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func</span></span> Function.

<span id="comp.TextInputField:selectAll"></span> **comp.TextInputField:selectAll()**  
Selects entire text

<span id="comp.TextInputField:setDeselectOnFocusLost"></span> **comp.TextInputField:setDeselectOnFocusLost()**  
Clear selection when focus is lost

<span id="comp.TextInputField:setMaxLength"></span> **comp.TextInputField:setMaxLength()**  
Sets the maximal length of the input text.

<span id="comp.TextInputField:setText"></span> **comp.TextInputField:setText()**  
Sets the text of the field to the given text.

## <span id="Class_comp_TextView"></span>Class comp.TextView

A simple component for displaying (large amounts) of text.

Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.TextView:getSelectedText"></span> **comp.TextView:getSelectedText()**  
Gets selected text.

<span id="comp.TextView:getText"></span> **comp.TextView:getText()**  
Gets the entire text.

<span id="comp.TextView:getTextAlignment"></span> **comp.TextView:getTextAlignment()**  
Gets the alignment of the text

<span id="comp.TextView:getTextAlignment2"></span> **comp.TextView:getTextAlignment2()**  
Gets the alignment of the text

### Returns:

1.  { horizontal, vertical }

<span id="comp.TextView:new"></span> **comp.TextView:new()**  
Creates a new text view with some text.

<span id="comp.TextView:setSelectable"></span> **comp.TextView:setSelectable()**  
Sets the text as selectable.

<span id="comp.TextView:setText"></span> **comp.TextView:setText()**  
Sets the text

<span id="comp.TextView:setTextAlignment"></span> **comp.TextView:setTextAlignment()**  
Sets the alignment of the text

## <span id="Class_comp_CheckBox"></span>Class comp.CheckBox

A simple component for displaying (large amounts) of text.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

<span id="comp.CheckBox:isSelected"></span> **comp.CheckBox:isSelected()**  
Return selection status for the checkbox

<span id="comp.CheckBox:new"></span> **comp.CheckBox:new()**  
Gets the entire text.

<span id="comp.CheckBox:onToggle"></span> **comp.CheckBox:onToggle(callback)**  
Sets a callback that is called when the checkbox is selected

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func</span></span> Function
  taking a boolean telling if box was selected or unselected.

<span id="comp.CheckBox:setSelected"></span> **comp.CheckBox:setSelected(value, emit)**  
Sets the checkbox as selected.

### Parameters:

- <span class="parameter">value</span>
  <span class="types"><span class="type">bool</span></span> Whether the
  box is selected or not
- <span class="parameter">emit</span>
  <span class="types"><span class="type">bool</span></span> Signal When
  true, "onToggle" will be called

<span id="comp.CheckBox:setText"></span> **comp.CheckBox:setText()**  
Sets the label text of the checkbox.

## <span id="Class_comp_ImageView"></span>Class comp.ImageView

A simple component for displaying images.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

<span id="comp.ImageView:setImage"></span> **comp.ImageView:setImage()**  
Sets the image of the image view.

<span id="comp.ImageView:setText"></span> **comp.ImageView:setText()**  
Creates a new imageview with a texture.

## <span id="Class_comp_ContentView"></span>Class comp.ContentView

The base classes for components containing a single component.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

<span id="comp.ContentView:getContent"></span> **comp.ContentView:getContent()**  
Returns the content

<span id="comp.ContentView:setContent"></span> **comp.ContentView:setContent()**  
Sets the content (takes ownership of content)

<span id="comp.ContentView:setContentAlignment"></span> **comp.ContentView:setContentAlignment()**  
Sets the alignment of the content

## <span id="Class_comp_ToggleButton"></span>Class comp.ToggleButton

A simple button that can be toggled on and off.

Base class: [comp.ContentView](api.gui.html#Class_comp_ContentView).

<span id="comp.ToggleButton:isSelected"></span> **comp.ToggleButton:isSelected()**  
TReturns whether the toggle button is toggled

<span id="comp.ToggleButton:new"></span> **comp.ToggleButton:new(child)**  
Creates a toggle button with a child element.

### Parameters:

- <span class="parameter">child</span>
  <span class="types"><a href="api.gui.html#comp.ILayoutItem" class="type">ILayoutItem</a></span>
  The content of the button

<span id="comp.ToggleButton:onToggle"></span> **comp.ToggleButton:onToggle()**  
Calls the callback when the button is toggled

<span id="comp.ToggleButton:setSelected"></span> **comp.ToggleButton:setSelected()**  
TReturns whether the toggle status of the button

<span id="comp.ToggleButton:toggle"></span> **comp.ToggleButton:toggle()**  
TToggles the button

## <span id="Class_comp_Button"></span>Class comp.Button

A simple button that can be clicked and triggers an event.

Base class: [comp.ContentView](api.gui.html#Class_comp_ContentView).

<span id="comp.Button:click"></span> **comp.Button:click()**  
Triggers a button click

<span id="comp.Button:new"></span> **comp.Button:new(child, clickOnPress)**  
Creates a button with a child element.

### Parameters:

- <span class="parameter">child</span>
  <span class="types"><a href="api.gui.html#comp.ILayoutItem" class="type">ILayoutItem</a></span>
  The content of the button
- <span class="parameter">clickOnPress</span>
  <span class="types"><span class="type">bool</span></span> Whether the
  button tirggers a "onClick" callback when released, instead as when
  pressed

<span id="comp.Button:onClick"></span> **comp.Button:onClick()**  
Calls the callback when the button is clicked

## <span id="Class_comp_ToggleButtonGroup"></span>Class comp.ToggleButtonGroup

A group of buttons that can be toggled exclusively.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

<span id="comp.ToggleButtonGroup:add"></span> **comp.ToggleButtonGroup:add()**  
Adds a new toggle button to the group, takes ownership of the button

<span id="comp.ToggleButtonGroup:getButton"></span> **comp.ToggleButtonGroup:getButton()**  
Returns a button with the given index

<span id="comp.ToggleButtonGroup:getNumButtons"></span> **comp.ToggleButtonGroup:getNumButtons()**  
Returns the number of buttons

<span id="comp.ToggleButtonGroup:getSelectedIndex"></span> **comp.ToggleButtonGroup:getSelectedIndex()**  
Returns the index of the selected button

<span id="comp.ToggleButtonGroup:new"></span> **comp.ToggleButtonGroup:new()**  
Creates a toggle button group.

<span id="comp.ToggleButtonGroup:onCurrentIndexChanged"></span> **comp.ToggleButtonGroup:onCurrentIndexChanged()**  
Calls the callback when one button is toggled with the index of the
button

<span id="comp.ToggleButtonGroup:setEmitSignal"></span> **comp.ToggleButtonGroup:setEmitSignal()**  
Sets the group to trigger a signal when pressed

<span id="comp.ToggleButtonGroup:setOneButtonMustAlwaysBeSelected"></span> **comp.ToggleButtonGroup:setOneButtonMustAlwaysBeSelected()**  
Prevents deselecting all buttons

## <span id="Class_comp_Table"></span>Class comp.Table

Creates a simple table which supports selection and has an header.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

<span id="comp.Table:addRow"></span> **comp.Table:addRow(components)**  
Adds a new row of components

### Parameters:

- <span class="parameter">components</span>
  <span class="types"><span class="type">{gui.comp.Component,...}</span></span>
  Header components

<span id="comp.Table:deleteAll"></span> **comp.Table:deleteAll()**  
Remove all rows and all components

<span id="comp.Table:deleteRows"></span> **comp.Table:deleteRows()**  
Remove all rows between first and last

<span id="comp.Table:getNumCols"></span> **comp.Table:getNumCols()**  
Gets the number of columns of the table

<span id="comp.Table:getNumRows"></span> **comp.Table:getNumRows()**  
Gets the number of rows of the cable

<span id="comp.Table:insertRow"></span> **comp.Table:insertRow(components)**  
Adds a new row of components at the given index

### Parameters:

- <span class="parameter">components</span>
  <span class="types"><span class="type">{gui.comp.Component,...}</span></span>
  Header components

<span id="comp.Table:new"></span> **comp.Table:new(numColumns, selectable)**  
Create a new table with a set number of columns and an optional
selection policy.

### Parameters:

- <span class="parameter">numColumns</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> number of columns
- <span class="parameter">selectable</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> one of "NONE", "SELECTABLE" or "MULTI".

<span id="comp.Table:setColWeight"></span> **comp.Table:setColWeight()**  
Sets the column weight (affects the width)

<span id="comp.Table:setColWidth"></span> **comp.Table:setColWidth()**  
Set the column default width.

<span id="comp.Table:setHeader"></span> **comp.Table:setHeader(components)**  
Sets the header for the table

### Parameters:

- <span class="parameter">components</span>
  <span class="types"><span class="type">{gui.comp.Component,...}</span></span>
  Header components

<span id="comp.Table:setMaxColWidth"></span> **comp.Table:setMaxColWidth()**  
Sets the column maximum width

<span id="comp.Table:setMinColWidth"></span> **comp.Table:setMinColWidth()**  
Sets the column minimum width

<span id="comp.Table:setNumCols"></span> **comp.Table:setNumCols()**  
Sets the number of columns.

<span id="comp.Table:setOrder"></span> **comp.Table:setOrder()**  
Sort the rows with a given order.

## <span id="Class_comp_ScrollArea"></span>Class comp.ScrollArea

Creates an area with (optional) scrollbar to fit bigger components.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

<span id="comp.ScrollArea:SetHorizontalScrollBarPolicy"></span> **comp.ScrollArea:SetHorizontalScrollBarPolicy(policy)**  
Sets the policy for the horizontal scrollbar

### Parameters:

- <span class="parameter">policy</span>
  <span class="types"><a href="api.gui.html#comp.ScrollBarPolicy"
  class="type">ScrollBarPolicy</a></span>

<span id="comp.ScrollArea:ensureVisible"></span> **comp.ScrollArea:ensureVisible()**  
Ensures a child component is visible

<span id="comp.ScrollArea:getContent"></span> **comp.ScrollArea:getContent()**  
Returns content of the scroll area.

<span id="comp.ScrollArea:getScrollOffset"></span> **comp.ScrollArea:getScrollOffset()**  
Returns current scroll offset.

<span id="comp.ScrollArea:getViewportRect"></span> **comp.ScrollArea:getViewportRect()**  
Return the Rect of the visible portion

<span id="comp.ScrollArea:new"></span> **comp.ScrollArea:new()**  
Makes a new scroll area with given component and names.

<span id="comp.ScrollArea:onScroll"></span> **comp.ScrollArea:onScroll()**  
Sets a callback for scrolling

<span id="comp.ScrollArea:setContent"></span> **comp.ScrollArea:setContent()**  
Sets the content of the scroll area

<span id="comp.ScrollArea:setScrollOffset"></span> **comp.ScrollArea:setScrollOffset()**  
Scrolls to given position.

<span id="comp.ScrollArea:setVerticalScrollBarPolicy"></span> **comp.ScrollArea:setVerticalScrollBarPolicy(policy)**  
Sets the policy for the vertical scrollbar

### Parameters:

- <span class="parameter">policy</span>
  <span class="types"><a href="api.gui.html#comp.ScrollBarPolicy"
  class="type">ScrollBarPolicy</a></span>

<span id="comp.ScrollBarPolicy"></span> **comp.ScrollBarPolicy**  
The visibility policy for the ScrollBar

### Fields:

- <span class="parameter">AS_NEEDED</span> 0
- <span class="parameter">ALWAYS_OFF</span> 1
- <span class="parameter">ALWAYS_ON</span> 2
- <span class="parameter">SIMPLE</span> 3

## <span id="Class_comp_ComboBox"></span>Class comp.ComboBox

A combo box with dropdown menu for selecting entries.

Base class: [comp.Component](api.gui.html#Class_comp_Component).

<span id="comp.ComboBox:addItem"></span> **comp.ComboBox:addItem()**  
Adds a new item at the bottom of the combo box

<span id="comp.ComboBox:addItemFactory"></span> **comp.ComboBox:addItemFactory(callback)**  
Adds a new component at the bottom of the combo box, callback is called
each time the combbox is open

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func</span></span> A function
  returning a new Component

<span id="comp.ComboBox:clear"></span> **comp.ComboBox:clear()**  
Remove all entries from the combo box

<span id="comp.ComboBox:getCurrentIndex"></span> **comp.ComboBox:getCurrentIndex()**  
Gets currently selected index.

<span id="comp.ComboBox:getNumItems"></span> **comp.ComboBox:getNumItems()**  
Returns the number of items in a layout.

<span id="comp.ComboBox:new"></span> **comp.ComboBox:new()**  
Makes a new empty combo box.

<span id="comp.ComboBox:onIndexChanged"></span> **comp.ComboBox:onIndexChanged(callback)**  
Add callback that is called when the current index changes.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(int)</span></span>
  Function to be called

## <span id="Class_comp_DoubleSpinBox"></span>Class comp.DoubleSpinBox

A spin box with input for floating point numbers.

Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.DoubleSpinBox:getMaximum"></span> **comp.DoubleSpinBox:getMaximum()**  
Returns the current maximum possible value for the spinbox

<span id="comp.DoubleSpinBox:getMinimum"></span> **comp.DoubleSpinBox:getMinimum()**  
Returns the current minimum possible value for the spinbox

<span id="comp.DoubleSpinBox:getValue"></span> **comp.DoubleSpinBox:getValue()**  
Returns the current value of the spinbox

<span id="comp.DoubleSpinBox:new"></span> **comp.DoubleSpinBox:new()**  
Makes a new spin box with default values.

<span id="comp.DoubleSpinBox:onChange"></span> **comp.DoubleSpinBox:onChange(callback)**  
Adds a callback for when the spinbox changes value.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(number)</span></span>
  called each time the spinbox changes value

<span id="comp.DoubleSpinBox:setMaximum"></span> **comp.DoubleSpinBox:setMaximum()**  
Sets maximum selectable value for the spin box

<span id="comp.DoubleSpinBox:setMinimum"></span> **comp.DoubleSpinBox:setMinimum()**  
Sets minimum selectable value for the spin box

<span id="comp.DoubleSpinBox:setStep"></span> **comp.DoubleSpinBox:setStep()**  
Sets the interval between values of the spinbox

<span id="comp.DoubleSpinBox:setValue"></span> **comp.DoubleSpinBox:setValue()**  
Sets the current value of the spinbox

## <span id="Class_comp_SpinBox"></span>Class comp.SpinBox

A spin box with input for whole numbers.

Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.SpinBox:getValue"></span> **comp.SpinBox:getValue()**  
Returns the current value of the spinbox

<span id="comp.SpinBox:new"></span> **comp.SpinBox:new()**  
Makes a new spin box with default values.

<span id="comp.SpinBox:onChange"></span> **comp.SpinBox:onChange(callback)**  
Adds a callback for when the spinbox changes value.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(number)</span></span>
  called each time the spinbox changes value

<span id="comp.SpinBox:setRange"></span> **comp.SpinBox:setRange()**  
Sets minimum and maximum selectable values for the spin box

<span id="comp.SpinBox:setValue"></span> **comp.SpinBox:setValue()**  
Sets the current value of the spinbox

## <span id="Class_comp_AbstractSlider"></span>Class comp.AbstractSlider

A base abstract class for all slider types

Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.AbstractSlider:getPageStep"></span> **comp.AbstractSlider:getPageStep()**  
Gets the current page step of the slider

<span id="comp.AbstractSlider:getPageStep"></span> **comp.AbstractSlider:getPageStep()**  
Gets the current minimum value of the slider

<span id="comp.AbstractSlider:getPageStep"></span> **comp.AbstractSlider:getPageStep()**  
Gets the current maximum value of the slider

<span id="comp.AbstractSlider:getStep"></span> **comp.AbstractSlider:getStep()**  
Gets the current step of the slider

<span id="comp.AbstractSlider:getValue"></span> **comp.AbstractSlider:getValue()**  
Sets the current value of the slider

<span id="comp.AbstractSlider:onValueChanged"></span> **comp.AbstractSlider:onValueChanged()**  
Get called when the slider value changes.

<span id="comp.AbstractSlider:setDefaultValue"></span> **comp.AbstractSlider:setDefaultValue()**  
Sets the default value of the slider

<span id="comp.AbstractSlider:setMaximum"></span> **comp.AbstractSlider:setMaximum()**  
Sets the maximum value of the slider

<span id="comp.AbstractSlider:setMinimum"></span> **comp.AbstractSlider:setMinimum()**  
Sets the minimum size of the slider

<span id="comp.AbstractSlider:setPageStep"></span> **comp.AbstractSlider:setPageStep()**  
Sets the big increment size of the slider (controlled with page buttons)

<span id="comp.AbstractSlider:setStep"></span> **comp.AbstractSlider:setStep()**  
Sets the increment size of the slider

<span id="comp.AbstractSlider:setValue"></span> **comp.AbstractSlider:setValue()**  
Sets the value of the slider

## <span id="Class_comp_Slider"></span>Class comp.Slider

An slider that can be vertical of horizontal.

Base class: [comp.AbstractSlider](api.gui.html#comp.AbstractSlider)

<span id="comp.Slider:new"></span> **comp.Slider:new()**  
Creates a new vertical or horizontal slider

## <span id="Class_comp_Slider2"></span>Class comp.Slider2

A 2d slider with 2 sets of values

Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.Slider2:getValue"></span> **comp.Slider2:getValue()**  
Sets the current value of the slider

<span id="comp.Slider2:new"></span> **comp.Slider2:new()**  
Creates a new 2d slider

<span id="comp.Slider2:onValueChanged"></span> **comp.Slider2:onValueChanged(callback)**  
Adds a callback for the slider, that is called when the slider value
changes

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(type.Vec2i)</span></span>
  called when the value changes

<span id="comp.Slider2:setMaximum"></span> **comp.Slider2:setMaximum()**  
Sets the maximum value for the slider

<span id="comp.Slider2:setMinimum"></span> **comp.Slider2:setMinimum()**  
Sets the minimum value for the slider

<span id="comp.Slider2:setValue"></span> **comp.Slider2:setValue()**  
Sets the default value for the slider

<span id="comp.Slider2:setValue"></span> **comp.Slider2:setValue()**  
Sets the value of the slider to the given one

<span id="comp.Slider2:setValue"></span> **comp.Slider2:setValue()**  
Sets the default step for the slider

## <span id="Class_comp_TabWidget"></span>Class comp.TabWidget

A component with multiple tabs to diplay the content.

Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.TabWidget:addSpace"></span> **comp.TabWidget:addSpace()**  
Adds a space after the selected tab

<span id="comp.TabWidget:addTab"></span> **comp.TabWidget:addTab()**  
Adds tab at the end, uses indicator to display the tab

<span id="comp.TabWidget:addTabText"></span> **comp.TabWidget:addTabText()**  
Adds tab at the end, uses text as indicator for the tab

<span id="comp.TabWidget:getCurrentTab"></span> **comp.TabWidget:getCurrentTab()**  
(**deprecated**) Use getCurrentTabIndex instead

<span id="comp.TabWidget:getCurrentTabIndex"></span> **comp.TabWidget:getCurrentTabIndex()**  
Gets the tab index that is currently selected

<span id="comp.TabWidget:getIndicator"></span> **comp.TabWidget:getIndicator()**  
Gets the indicator component at the given index

<span id="comp.TabWidget:getNumTabs"></span> **comp.TabWidget:getNumTabs()**  
Gets the numer of tabs

<span id="comp.TabWidget:getTab"></span> **comp.TabWidget:getTab()**  
Gets the tab at specified index

<span id="comp.TabWidget:insertTab"></span> **comp.TabWidget:insertTab()**  
Inserts tab at given position, uses indicator to display the tab

<span id="comp.TabWidget:new"></span> **comp.TabWidget:new(orientation)**  
Creates a new tab widget with tabs on the given position

### Parameters:

- <span class="parameter">orientation</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> One of "NORTH", "EAST", "SOUTH", "WEST"

<span id="comp.TabWidget:onCurrentChanged"></span> **comp.TabWidget:onCurrentChanged(int)**  
Called when the tab changes,

### Parameters:

- <span class="parameter">int</span>
  <span class="types"><span class="type">func(int,</span></span> )
  callback Will be provided an index before and after the call

<span id="comp.TabWidget:setCurrentTab"></span> **comp.TabWidget:setCurrentTab()**  
Sets the tab that is currently selected

<span id="comp.TabWidget:setDeselectAllowed"></span> **comp.TabWidget:setDeselectAllowed()**  
Allow selecting no tab at all

## <span id="Class_comp_ProgressBar"></span>Class comp.ProgressBar

A component that displays a progress

Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.ProgressBar:getProgress"></span> **comp.ProgressBar:getProgress()**  
Gets the current progress

<span id="comp.ProgressBar:new"></span> **comp.ProgressBar:new()**  
Creates a new progress bar

<span id="comp.ProgressBar:setColor"></span> **comp.ProgressBar:setColor()**  
Sets the color of the progress bar

<span id="comp.ProgressBar:setProgress"></span> **comp.ProgressBar:setProgress(The)**  
Sets the current progress

### Parameters:

- <span class="parameter">The</span>
  <span class="types"><span class="type">number</span></span> progress
  (between 0 and 1)

<span id="comp.ProgressBar:setTask"></span> **comp.ProgressBar:setTask()**  
Adds some text to the bar

## <span id="Class_comp_Chart"></span>Class comp.Chart

A line or bar plot of values on a graph Base class:
[comp.Component](api.gui.html#comp.Component)

<span id="comp.Chart:addSeries"></span> **comp.Chart:addSeries()**  
Adds a new data series to the graph

<span id="comp.Chart:clear"></span> **comp.Chart:clear()**  
Clears all data from the graph

<span id="comp.Chart:new"></span> **comp.Chart:new()**  
Creates a new chart

<span id="comp.Chart:setColor"></span> **comp.Chart:setColor()**  
Sets the color of the bar

<span id="comp.Chart:setLineWidth"></span> **comp.Chart:setLineWidth()**  
Sets the line with of the graph

<span id="comp.Chart:setSeriesLabels"></span> **comp.Chart:setSeriesLabels()**  
Sets the labels for the series

<span id="comp.Chart:setType"></span> **comp.Chart:setType(type)**  
Sets the type of graph

### Parameters:

- <span class="parameter">type</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> One of "LINE", "LINE_STEP" or "BAR"

## <span id="Class_comp_ColorChooserButton"></span>Class comp.ColorChooserButton

A button that opens a color picker Base class:
[comp.Component](api.gui.html#comp.Component)

<span id="comp.ColorChooserButton:new"></span> **comp.ColorChooserButton:new()**  
Creates a new color picker button. The reset color is
`type.Vec3f(-1, -1, -1)`.

<span id="comp.ColorChooserButton:onSelect"></span> **comp.ColorChooserButton:onSelect(callback)**  
Called when the color is selected

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(type.Vec3f)</span></span>
  The callback that is called

<span id="comp.ColorChooserButton:setColor"></span> **comp.ColorChooserButton:setColor()**  
Sets the currently selected color.

## <span id="Class_comp_ColorPicker"></span>Class comp.ColorPicker

A color picker component Base class:
[comp.Component](api.gui.html#comp.Component)

<span id="comp.ColorPicker:new"></span> **comp.ColorPicker:new()**  
Creates a new color picker

<span id="comp.ColorPicker:onColorChanged"></span> **comp.ColorPicker:onColorChanged(callback)**  
Called when the selected color changes

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(type.Vec3f)</span></span>
  The callback that is called

<span id="comp.ColorPicker:setColor"></span> **comp.ColorPicker:setColor()**  
Sets the color of the color picker

## <span id="Class_comp_ColorChooser"></span>Class comp.ColorChooser

A color chooser component Base class:
[comp.Component](api.gui.html#comp.Component)

<span id="comp.ColorChooser:new"></span> **comp.ColorChooser:new()**  
Creates a new color chooser

<span id="comp.ColorChooser:onSelect"></span> **comp.ColorChooser:onSelect(callback)**  
Called when the color is selected.

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(type.Vec3f)</span></span>
  The callback that is called

## <span id="Class_comp_LineRenderView"></span>Class comp.LineRenderView

Display lines Base class: [comp.Component](api.gui.html#comp.Component)

<span id="comp.LineRenderView:addLine"></span> **comp.LineRenderView:addLine(from, to)**  
Add a new displayed line from from to to

### Parameters:

- <span class="parameter">from</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  Start point
- <span class="parameter">to</span>
  <span class="types"><a href="api.type.html#Vec2f" class="type">type.Vec2f</a></span>
  End point

<span id="comp.LineRenderView:clear"></span> **comp.LineRenderView:clear()**  
Clear all lines added so far.

<span id="comp.LineRenderView:new"></span> **comp.LineRenderView:new()**  
Creates a new line render component

<span id="comp.LineRenderView:setColor"></span> **comp.LineRenderView:setColor(color)**  
Called to set the color of all lines added to this

### Parameters:

- <span class="parameter">color</span>
  <span class="types"><a href="api.type.html#Vec4f" class="type">type.Vec4f</a></span>
  The color or all lines

<span id="comp.LineRenderView:setWidth"></span> **comp.LineRenderView:setWidth(width)**  
Set the width of all lines of the component.

### Parameters:

- <span class="parameter">width</span>
  <span class="types"><span class="type">number</span></span> Width, in
  pixels

## <span id="Class_comp_List"></span>Class comp.List

A list of components with automatic scroll area Base class:
[comp.ScrollArea](api.gui.html#comp.ScrollArea)

<span id="comp.List:addItem"></span> **comp.List:addItem(item)**  
Adds an item to the list

### Parameters:

- <span class="parameter">item</span>
  <span class="types"><span class="type">type.Component</span></span>
  The item to add

<span id="comp.List:clear"></span> **comp.List:clear(emitSignal)**  
Clear items from list

### Parameters:

- <span class="parameter">emitSignal</span>
  <span class="types"><span class="type">bool</span></span>

<span id="comp.List:getItem"></span> **comp.List:getItem(index)**  
Returns component at position index

### Parameters:

- <span class="parameter">index</span>
  <span class="types"><span class="type">number</span></span>

### Returns:

1.  <span class="types"><span class="type">type.Component</span></span>
    Item at position index

<span id="comp.List:getNumItems"></span> **comp.List:getNumItems()**  
Returns number of items in the list

### Returns:

1.  <span class="types"><span class="type">int</span></span> Number of
    items

<span id="comp.List:getSelectedIndex"></span> **comp.List:getSelectedIndex()**  
Returns currently selected item

### Returns:

1.  <span class="types"><span class="type">int</span></span> Currently
    selected index

<span id="comp.List:new"></span> **comp.List:new(drawBackground, orientation, autoDeselectDisabledItems)**  
Creates a new list component

### Parameters:

- <span class="parameter">drawBackground</span>
  <span class="types"><span class="type">bool</span></span>
- <span class="parameter">orientation</span>
  <span class="types"><a href="api.gui.html#util.Orientation" class="type">Orientation</a></span>
- <span class="parameter">autoDeselectDisabledItems</span>
  <span class="types"><span class="type">bool</span></span>

<span id="comp.List:onActivate"></span> **comp.List:onActivate(callback)**  
Called when an item is activated

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(number)</span></span> The
  callback that is called

### Returns:

1.  <span class="types"><a href="api.type.html#Connection" class="type">type.Connection</a></span>
    A connection that needs to be disconnected when the callback should
    be removed

<span id="comp.List:onHover"></span> **comp.List:onHover(callback)**  
Called when an item is hovered on

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(number)</span></span> The
  callback that is called

### Returns:

1.  <span class="types"><a href="api.type.html#Connection" class="type">type.Connection</a></span>
    A connection that needs to be disconnected when the callback should
    be removed

<span id="comp.List:onSelect"></span> **comp.List:onSelect(callback)**  
Called when an item is selected

### Parameters:

- <span class="parameter">callback</span>
  <span class="types"><span class="type">func(number)</span></span> The
  callback that is called

### Returns:

1.  <span class="types"><a href="api.type.html#Connection" class="type">type.Connection</a></span>
    A connection that needs to be disconnected when the callback should
    be removed

<span id="comp.List:removeItem"></span> **comp.List:removeItem(index, emitSignal)**  
Removes an item from the list

### Parameters:

- <span class="parameter">index</span>
  <span class="types"><span class="type">int</span></span> The index of
  the item to remove
- <span class="parameter">emitSignal</span>
  <span class="types"><span class="type">bool</span></span> Emit select
  signal for newly selected item

### Returns:

1.  <span class="types"><span class="type">type.ILayoutItem</span></span>
    item the removed item

<span id="comp.List:select"></span> **comp.List:select(index, emitSignal)**  
Selects an item in the list

### Parameters:

- <span class="parameter">index</span>
  <span class="types"><span class="type">int</span></span>
- <span class="parameter">emitSignal</span>
  <span class="types"><span class="type">bool</span></span>

<span id="comp.List:setDeselectAllowed"></span> **comp.List:setDeselectAllowed(deselectAllowed)**  
Set policy to allow no selected item

### Parameters:

- <span class="parameter">deselectAllowed</span>
  <span class="types"><span class="type">bool</span></span>

<span id="comp.List:setEmitSignalOnReselect"></span> **comp.List:setEmitSignalOnReselect(emitSignal)**  
Set policy not to emit a signal when the same item is selected

### Parameters:

- <span class="parameter">emitSignal</span>
  <span class="types"><span class="type">bool</span></span>

## <span id="Class_layout_ILayout"></span>Class layout.ILayout

Base for all layouts, cannot be created and is used only as base class.

Base class: [comp.ILayoutItem](api.gui.html#Class_comp_ILayoutItem).

<span id="layout.ILayout:getItem"></span> **layout.ILayout:getItem()**  
Get the item at the given index.

<span id="layout.ILayout:getNumItems"></span> **layout.ILayout:getNumItems()**  
Get the number of items in a layout

<span id="layout.ILayout:removeItem"></span> **layout.ILayout:removeItem()**  
Removes an item from the layout, returns an object having ownership of
the removed item.

## <span id="Class_layout_LayoutBase"></span>Class layout.LayoutBase

Abstract layout with an id. Cannot be created and is used only as base
class.

Base class: [layout.ILayout](api.gui.html#Class_layout_ILayout).

<span id="layout.LayoutBase:addItem"></span> **layout.LayoutBase:addItem()**  
Adds an item to the layout. Gives ownership to the layout.

<span id="layout.LayoutBase:getComponent"></span> **layout.LayoutBase:getComponent()**  
Get the component stored in the layout.

<span id="layout.LayoutBase:insertItem"></span> **layout.LayoutBase:insertItem()**  
Adds an item to the layout at given position. Gives ownership to the
layout.

<span id="layout.LayoutBase:setGravity"></span> **layout.LayoutBase:setGravity()**  
Sets the alignment of the component.

<span id="layout.LayoutBase:setId"></span> **layout.LayoutBase:setId()**  
Sets a name for the layout.

<span id="layout.LayoutBase:setId"></span> **layout.LayoutBase:setId()**  
Sets a unique id for the layout.

## <span id="Class_layout_BoxLayout"></span>Class layout.BoxLayout

A layout that aligns it's childs in a stack.

Base class:
[layout.AbstractLayout](api.gui.html#Class_layout_AbstractLayout).

<span id="layout.BoxLayout:new"></span> **layout.BoxLayout:new(orientation)**  
Creates a new layout with the given orientation.

### Parameters:

- <span class="parameter">orientation</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> One of "HORIZONTAL" or "VERTICAL".

## <span id="Class_layout_AbsoluteLayout"></span>Class layout.AbsoluteLayout

A layout that aligns it childs with an absolute position, independently
of other siblings. Each item has an absolute position relative to the
parent.

Base class: [layout.LayoutBase](api.gui.html#Class_layout_LayoutBase).

<span id="layout.AbsoluteLayout:addItem"></span> **layout.AbsoluteLayout:addItem()**  
Adds an item with the given geometry to the layout. Takes ownership of
the item.

<span id="layout.AbsoluteLayout:deleteAll"></span> **layout.AbsoluteLayout:deleteAll()**  
Removes all childs and deletes them.

<span id="layout.AbsoluteLayout:getIndex"></span> **layout.AbsoluteLayout:getIndex()**  
Get the index of the item at given position.

<span id="layout.AbsoluteLayout:new"></span> **layout.AbsoluteLayout:new(orientation)**  
Creates a new layout with the given orientation.

### Parameters:

- <span class="parameter">orientation</span>
  <span class="types"><a href="https://www.lua.org/manual/5.3/manual.html#6.4"
  class="type">string</a></span> One of "HORIZONTAL" or "VERTICAL".

<span id="layout.AbsoluteLayout:setItemPosition"></span> **layout.AbsoluteLayout:setItemPosition()**  
\[Deprecated\] Sets item at position. Use setPosition instead.

<span id="layout.AbsoluteLayout:setPosition"></span> **layout.AbsoluteLayout:setPosition()**  
Sets the position of the item at given index at the given position.

## <span id="Class_layout_FloatingLayout"></span>Class layout.FloatingLayout

A layout that aligns it's childs if a position that is relative to the
parent.

Base class: [layout.LayoutBase](api.gui.html#Class_layout_LayoutBase).

<span id="layout.FloatingLayout:addItem"></span> **layout.FloatingLayout:addItem()**  
Adds an item with the given alignments.

<span id="layout.FloatingLayout:deleteAll"></span> **layout.FloatingLayout:deleteAll()**  
Removes and deletes all elements in the layout.

<span id="layout.FloatingLayout:insertItem"></span> **layout.FloatingLayout:insertItem()**  
Adds and items (and takes ownership), at the given position and with the
given alignments.

<span id="layout.FloatingLayout:new"></span> **layout.FloatingLayout:new()**  
Creates a new layout

<span id="layout.FloatingLayout:setAlignment"></span> **layout.FloatingLayout:setAlignment()**  
Sets the alignment of the item at the position.

</div>

</div>

<div id="about">

*generated by [LDoc 1.4.3](http://github.com/stevedonovan/LDoc)* *Last
updated 2023-04-18 15:10:38*

</div>

</div>
