#class ofAppGlutWindow


##Description

Default window manager based on glut. This class provides all the functionality to create a window, change/query it's size, position... and all the keyboard and mouse events.

Introduced in 006 along with ofAppBaseWindow to provide a mean of substituting the underlying windowing toolkit in oF.

The functionality provided by this class or any other inheriting from ofAppBaseWindow should not be accessed directly but through the functions available in ofAppRunner.




##Methods



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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void exitApp()

<!--
_syntax: exitApp()_
_name: exitApp_
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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void display()

<!--
_syntax: display()_
_name: display_
_returns: void_
_returns_description: _
_parameters: void _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setupOpenGL(w, h, screenMode)

<!--
_syntax: setupOpenGL(w, h, screenMode)_
_name: setupOpenGL_
_returns: void_
_returns_description: _
_parameters: int w, int h, int screenMode_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void mouse_cb(button, state, x, y)

<!--
_syntax: mouse_cb(button, state, x, y)_
_name: mouse_cb_
_returns: void_
_returns_description: _
_parameters: int button, int state, int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void initializeWindow()

<!--
_syntax: initializeWindow()_
_name: initializeWindow_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void motion_cb(x, y)

<!--
_syntax: motion_cb(x, y)_
_name: motion_cb_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void runAppViaInfiniteLoop(appPtr)

<!--
_syntax: runAppViaInfiniteLoop(appPtr)_
_name: runAppViaInfiniteLoop_
_returns: void_
_returns_description: _
_parameters: ofBaseApp * appPtr_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void passive_motion_cb(x, y)

<!--
_syntax: passive_motion_cb(x, y)_
_name: passive_motion_cb_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void idle_cb()

<!--
_syntax: idle_cb()_
_name: idle_cb_
_returns: void_
_returns_description: _
_parameters: void _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void keyboard_cb(key, x, y)

<!--
_syntax: keyboard_cb(key, x, y)_
_name: keyboard_cb_
_returns: void_
_returns_description: _
_parameters: unsigned char key, int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void keyboard_up_cb(key, x, y)

<!--
_syntax: keyboard_up_cb(key, x, y)_
_name: keyboard_up_cb_
_returns: void_
_returns_description: _
_parameters: unsigned char key, int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void special_key_cb(key, x, y)

<!--
_syntax: special_key_cb(key, x, y)_
_name: special_key_cb_
_returns: void_
_returns_description: _
_parameters: int key, int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void special_key_up_cb(key, x, y)

<!--
_syntax: special_key_up_cb(key, x, y)_
_name: special_key_up_cb_
_returns: void_
_returns_description: _
_parameters: int key, int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void resize_cb(w, h)

<!--
_syntax: resize_cb(w, h)_
_name: resize_cb_
_returns: void_
_returns_description: _
_parameters: int w, int h_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int getWindowMode()

<!--
_syntax: getWindowMode()_
_name: getWindowMode_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int getFrameNum()

<!--
_syntax: getFrameNum()_
_name: getFrameNum_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###float getFrameRate()

<!--
_syntax: getFrameRate()_
_name: getFrameRate_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setFrameRate(targetRate)

<!--
_syntax: setFrameRate(targetRate)_
_name: setFrameRate_
_returns: void_
_returns_description: _
_parameters: float targetRate_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void runAppViaInfiniteLoop(*appPtr)

<!--
_syntax: runAppViaInfiniteLoop(*appPtr)_
_name: runAppViaInfiniteLoop_
_returns: void_
_returns_description: _
_parameters: ofBaseApp *appPtr_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###double getLastFrameTime()

<!--
_syntax: getLastFrameTime()_
_name: getLastFrameTime_
_returns: double_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void display(void)

<!--
_syntax: display(void)_
_name: display_
_returns: void_
_returns_description: _
_parameters: void_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void idle_cb(void)

<!--
_syntax: idle_cb(void)_
_name: idle_cb_
_returns: void_
_returns_description: _
_parameters: void_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void dragEvent(**fileNames, howManyFiles, dragX, dragY)

<!--
_syntax: dragEvent(**fileNames, howManyFiles, dragX, dragY)_
_name: dragEvent_
_returns: void_
_returns_description: _
_parameters: char **fileNames, int howManyFiles, int dragX, int dragY_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void entry_cb(state)

<!--
_syntax: entry_cb(state)_
_name: entry_cb_
_returns: void_
_returns_description: _
_parameters: int state_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

##Variables



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

_description: _







<!----------------------------------------------------------------------------->

