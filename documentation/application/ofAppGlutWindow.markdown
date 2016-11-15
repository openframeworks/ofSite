#class ofAppGlutWindow


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofAppBaseGLWindow_
-->

##InlineDescription






##Description

Default window manager based on glut. This class provides all the functionality to create a window, change/query it's size, position... and all the keyboard and mouse events.

Introduced in 006 along with ofAppBaseWindow to provide a mean of substituting the underlying windowing toolkit in oF.

The functionality provided by this class or any other inheriting from ofAppBaseWindow should not be accessed directly but through the functions available in ofAppRunner.





##Methods



###bool allowsMultiWindow()

<!--
_syntax: allowsMultiWindow()_
_name: allowsMultiWindow_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void close()

<!--
_syntax: close()_
_name: close_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void disableSetupScreen()

<!--
_syntax: disableSetupScreen()_
_name: disableSetupScreen_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void display()

<!--
_syntax: display()_
_name: display_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool doesLoop()

<!--
_syntax: doesLoop()_
_name: doesLoop_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void dragEvent(**fileNames, howManyFiles, dragX, dragY)

<!--
_syntax: dragEvent(**fileNames, howManyFiles, dragX, dragY)_
_name: dragEvent_
_returns: void_
_returns_description: _
_parameters: char **fileNames, int howManyFiles, int dragX, int dragY_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void draw()

<!--
_syntax: draw()_
_name: draw_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void enableSetupScreen()

<!--
_syntax: enableSetupScreen()_
_name: enableSetupScreen_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void entry_cb(state)

<!--
_syntax: entry_cb(state)_
_name: entry_cb_
_returns: void_
_returns_description: _
_parameters: int state_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofCoreEvents & events()

<!--
_syntax: events()_
_name: events_
_returns: ofCoreEvents &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void exit_cb()

<!--
_syntax: exit_cb()_
_name: exit_cb_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofOrientation getOrientation()

<!--
_syntax: getOrientation()_
_name: getOrientation_
_returns: ofOrientation_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPoint getScreenSize()

<!--
_syntax: getScreenSize()_
_name: getScreenSize_
_returns: ofPoint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofWindowMode getWindowMode()

<!--
_syntax: getWindowMode()_
_name: getWindowMode_
_returns: ofWindowMode_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPoint getWindowPosition()

<!--
_syntax: getWindowPosition()_
_name: getWindowPosition_
_returns: ofPoint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPoint getWindowSize()

<!--
_syntax: getWindowSize()_
_name: getWindowSize_
_returns: ofPoint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void hideCursor()

<!--
_syntax: hideCursor()_
_name: hideCursor_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void idle_cb()

<!--
_syntax: idle_cb()_
_name: idle_cb_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void keyboard_cb(key, x, y)

<!--
_syntax: keyboard_cb(key, x, y)_
_name: keyboard_cb_
_returns: void_
_returns_description: _
_parameters: unsigned char key, int x, int y_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void keyboard_up_cb(key, x, y)

<!--
_syntax: keyboard_up_cb(key, x, y)_
_name: keyboard_up_cb_
_returns: void_
_returns_description: _
_parameters: unsigned char key, int x, int y_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void loop()

<!--
_syntax: loop()_
_name: loop_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void motion_cb(x, y)

<!--
_syntax: motion_cb(x, y)_
_name: motion_cb_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void mouse_cb(button, state, x, y)

<!--
_syntax: mouse_cb(button, state, x, y)_
_name: mouse_cb_
_returns: void_
_returns_description: _
_parameters: int button, int state, int x, int y_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool needsPolling()

<!--
_syntax: needsPolling()_
_name: needsPolling_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

### ofAppGlutWindow()

<!--
_syntax: ofAppGlutWindow()_
_name: ofAppGlutWindow_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void passive_motion_cb(x, y)

<!--
_syntax: passive_motion_cb(x, y)_
_name: passive_motion_cb_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void pollEvents()

<!--
_syntax: pollEvents()_
_name: pollEvents_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###shared_ptr< ofBaseRenderer > & renderer()

<!--
_syntax: renderer()_
_name: renderer_
_returns: shared_ptr< ofBaseRenderer > &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void resize_cb(w, h)

<!--
_syntax: resize_cb(w, h)_
_name: resize_cb_
_returns: void_
_returns_description: _
_parameters: int w, int h_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setDoubleBuffering(_bDoubleBuffered)

<!--
_syntax: setDoubleBuffering(_bDoubleBuffered)_
_name: setDoubleBuffering_
_returns: void_
_returns_description: _
_parameters: bool _bDoubleBuffered_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setFullscreen(fullScreen)

<!--
_syntax: setFullscreen(fullScreen)_
_name: setFullscreen_
_returns: void_
_returns_description: _
_parameters: bool fullScreen_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setGlutDisplayString(str)

<!--
_syntax: setGlutDisplayString(str)_
_name: setGlutDisplayString_
_returns: void_
_returns_description: _
_parameters: string str_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setOrientation(orientation)

<!--
_syntax: setOrientation(orientation)_
_name: setOrientation_
_returns: void_
_returns_description: _
_parameters: ofOrientation orientation_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setVerticalSync(enabled)

<!--
_syntax: setVerticalSync(enabled)_
_name: setVerticalSync_
_returns: void_
_returns_description: _
_parameters: bool enabled_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setWindowIcon(&path)

<!--
_syntax: setWindowIcon(&path)_
_name: setWindowIcon_
_returns: void_
_returns_description: _
_parameters: const string &path_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setWindowIcon(&iconPixels)

<!--
_syntax: setWindowIcon(&iconPixels)_
_name: setWindowIcon_
_returns: void_
_returns_description: _
_parameters: const ofPixels &iconPixels_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setWindowPosition(x, y)

<!--
_syntax: setWindowPosition(x, y)_
_name: setWindowPosition_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setWindowShape(w, h)

<!--
_syntax: setWindowShape(w, h)_
_name: setWindowShape_
_returns: void_
_returns_description: _
_parameters: int w, int h_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setWindowTitle(title)

<!--
_syntax: setWindowTitle(title)_
_name: setWindowTitle_
_returns: void_
_returns_description: _
_parameters: string title_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setup(&settings)

<!--
_syntax: setup(&settings)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: const ofGLWindowSettings &settings_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void showCursor()

<!--
_syntax: showCursor()_
_name: showCursor_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void special_key_cb(key, x, y)

<!--
_syntax: special_key_cb(key, x, y)_
_name: special_key_cb_
_returns: void_
_returns_description: _
_parameters: int key, int x, int y_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void special_key_up_cb(key, x, y)

<!--
_syntax: special_key_up_cb(key, x, y)_
_name: special_key_up_cb_
_returns: void_
_returns_description: _
_parameters: int key, int x, int y_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void toggleFullscreen()

<!--
_syntax: toggleFullscreen()_
_name: toggleFullscreen_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

### ~ofAppGlutWindow()

<!--
_syntax: ~ofAppGlutWindow()_
_name: ~ofAppGlutWindow_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

##Variables



###ofCoreEvents coreEvents

<!--
_name: coreEvents_
_type: ofCoreEvents_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###shared_ptr< ofBaseRenderer > currentRenderer

<!--
_name: currentRenderer_
_type: shared_ptr< ofBaseRenderer >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###string displayString

<!--
_name: displayString_
_type: string_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool iconSet

<!--
_name: iconSet_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int windowId

<!--
_name: windowId_
_type: int_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

