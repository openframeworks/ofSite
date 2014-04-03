#class ofAppGLFWWindow


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

This is the base class for the [GLFW](https://github.com/glfw) renderer that you can optionally use with openFrameworks. We've moved away from GLUT and towards GLFW for our windowing system. You probably won't deal with this a great deal (hopefully).





##Methods



###void disableSetupScreen()

<!--
_syntax: disableSetupScreen()_
_name: disableSetupScreen_
_returns: void_
_returns_description: _
_parameters: _
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

###void display(void)

<!--
_syntax: display(void)_
_name: display_
_returns: void_
_returns_description: _
_parameters: void_
_access: private_
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

###void drop_cb(*windowP_, *dropString)

<!--
_syntax: drop_cb(*windowP_, *dropString)_
_name: drop_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, const char *dropString_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This is the drag and drop callback. This should be handled in your ofBaseApp instance.







<!----------------------------------------------------------------------------->

###void enableSetupScreen()

<!--
_syntax: enableSetupScreen()_
_name: enableSetupScreen_
_returns: void_
_returns_description: _
_parameters: _
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

###void error_cb(errorCode, *errorDescription)

<!--
_syntax: error_cb(errorCode, *errorDescription)_
_name: error_cb_
_returns: void_
_returns_description: _
_parameters: int errorCode, const char *errorDescription_
_access: private_
_version_started: 0.8.0_
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

###void exitApp()

<!--
_syntax: exitApp()_
_name: exitApp_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0073_
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

###void exit_cb(*windowP_)

<!--
_syntax: exit_cb(*windowP_)_
_name: exit_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP__
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This is the exit callback that is called by your the ofAppRunner [exit()](../ofAppRunner_functions.html#ofExit) method.







<!----------------------------------------------------------------------------->

###int getCurrentMonitor()

<!--
_syntax: getCurrentMonitor()_
_name: getCurrentMonitor_
_returns: int_
_returns_description: _
_parameters: _
_access: private_
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

###int getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: int_
_returns_description: _
_parameters: _
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


Gets the height of the current window and is mirrored in the ofGetScreenHeight() method.







<!----------------------------------------------------------------------------->

###ofOrientation getOrientation()

<!--
_syntax: getOrientation()_
_name: getOrientation_
_returns: ofOrientation_
_returns_description: _
_parameters: _
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

###int getPixelScreenCoordScale()

<!--
_syntax: getPixelScreenCoordScale()_
_name: getPixelScreenCoordScale_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###ofVec3f getScreenSize()

<!--
_syntax: getScreenSize()_
_name: getScreenSize_
_returns: ofVec3f_
_returns_description: _
_parameters: _
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


Gets the height of the current window and is mirrored in the ofGetWindowSize() method.







<!----------------------------------------------------------------------------->

###int getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: int_
_returns_description: _
_parameters: _
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


Gets the height of the current window and is mirrored in the ofGetScreenWidth() method.







<!----------------------------------------------------------------------------->

###int getWindowMode()

<!--
_syntax: getWindowMode()_
_name: getWindowMode_
_returns: int_
_returns_description: _
_parameters: _
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


Returns one of the following: OF_FULLSCREEN or OF_WINDOW.







<!----------------------------------------------------------------------------->

###ofVec3f getWindowPosition()

<!--
_syntax: getWindowPosition()_
_name: getWindowPosition_
_returns: ofVec3f_
_returns_description: _
_parameters: _
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


This returns the location of the window relative to the deivce that it's being displayed on.







<!----------------------------------------------------------------------------->

###ofVec3f getWindowSize()

<!--
_syntax: getWindowSize()_
_name: getWindowSize_
_returns: ofVec3f_
_returns_description: _
_parameters: _
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

###void hideCursor()

<!--
_syntax: hideCursor()_
_name: hideCursor_
_returns: void_
_returns_description: _
_parameters: _
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

###void iconify(bIconify)

<!--
_syntax: iconify(bIconify)_
_name: iconify_
_returns: void_
_returns_description: _
_parameters: bool bIconify_
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

###void initializeWindow()

<!--
_syntax: initializeWindow()_
_name: initializeWindow_
_returns: void_
_returns_description: _
_parameters: _
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

###bool isWindowActive()

<!--
_syntax: isWindowActive()_
_name: isWindowActive_
_returns: bool_
_returns_description: _
_parameters: _
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


Hardcoded to return true right now.







<!----------------------------------------------------------------------------->

###bool isWindowIconified()

<!--
_syntax: isWindowIconified()_
_name: isWindowIconified_
_returns: bool_
_returns_description: _
_parameters: _
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

###bool isWindowResizeable()

<!--
_syntax: isWindowResizeable()_
_name: isWindowResizeable_
_returns: bool_
_returns_description: _
_parameters: _
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

###void keyboard_cb(*windowP_, key, scancode, action, mods)

<!--
_syntax: keyboard_cb(*windowP_, key, scancode, action, mods)_
_name: keyboard_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, int key, int scancode, int action, int mods_
_access: private_
_version_started: 0073_
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

###void listVideoModes()

<!--
_syntax: listVideoModes()_
_name: listVideoModes_
_returns: void_
_returns_description: _
_parameters: _
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

###void motion_cb(*windowP_, x, y)

<!--
_syntax: motion_cb(*windowP_, x, y)_
_name: motion_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, double x, double y_
_access: private_
_version_started: 0073_
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

###void mouse_cb(*windowP_, button, state, mods)

<!--
_syntax: mouse_cb(*windowP_, button, state, mods)_
_name: mouse_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, int button, int state, int mods_
_access: private_
_version_started: 0073_
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

### ofAppGLFWWindow()

<!--
_syntax: ofAppGLFWWindow()_
_name: ofAppGLFWWindow_
_returns: _
_returns_description: _
_parameters: _
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

###void resize_cb(*windowP_, w, h)

<!--
_syntax: resize_cb(*windowP_, w, h)_
_name: resize_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, int w, int h_
_access: private_
_version_started: 0073_
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

###void runAppViaInfiniteLoop(*appPtr)

<!--
_syntax: runAppViaInfiniteLoop(*appPtr)_
_name: runAppViaInfiniteLoop_
_returns: void_
_returns_description: _
_parameters: ofBaseApp *appPtr_
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

###void scroll_cb(*windowP_, x, y)

<!--
_syntax: scroll_cb(*windowP_, x, y)_
_name: scroll_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, double x, double y_
_access: private_
_version_started: 0073_
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

###void setAlphaBits(a)

<!--
_syntax: setAlphaBits(a)_
_name: setAlphaBits_
_returns: void_
_returns_description: _
_parameters: int a_
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

###void setColorBits(r, g, b)

<!--
_syntax: setColorBits(r, g, b)_
_name: setColorBits_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b_
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

###void setDepthBits(depth)

<!--
_syntax: setDepthBits(depth)_
_name: setDepthBits_
_returns: void_
_returns_description: _
_parameters: int depth_
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

###void setDoubleBuffering(doubleBuff)

<!--
_syntax: setDoubleBuffering(doubleBuff)_
_name: setDoubleBuffering_
_returns: void_
_returns_description: _
_parameters: bool doubleBuff_
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

###void setFullscreen(fullscreen)

<!--
_syntax: setFullscreen(fullscreen)_
_name: setFullscreen_
_returns: void_
_returns_description: _
_parameters: bool fullscreen_
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

###void setMultiDisplayFullscreen(bMultiFullscreen)

<!--
_syntax: setMultiDisplayFullscreen(bMultiFullscreen)_
_name: setMultiDisplayFullscreen_
_returns: void_
_returns_description: _
_parameters: bool bMultiFullscreen_
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

###void setNumSamples(samples)

<!--
_syntax: setNumSamples(samples)_
_name: setNumSamples_
_returns: void_
_returns_description: _
_parameters: int samples_
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

###void setOpenGLVersion(major, minor)

<!--
_syntax: setOpenGLVersion(major, minor)_
_name: setOpenGLVersion_
_returns: void_
_returns_description: _
_parameters: int major, int minor_
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

###void setOrientation(orientation)

<!--
_syntax: setOrientation(orientation)_
_name: setOrientation_
_returns: void_
_returns_description: _
_parameters: ofOrientation orientation_
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

###void setStencilBits(stencil)

<!--
_syntax: setStencilBits(stencil)_
_name: setStencilBits_
_returns: void_
_returns_description: _
_parameters: int stencil_
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

###void setVerticalSync(bSync)

<!--
_syntax: setVerticalSync(bSync)_
_name: setVerticalSync_
_returns: void_
_returns_description: _
_parameters: bool bSync_
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

###void setWindowPosition(x, y)

<!--
_syntax: setWindowPosition(x, y)_
_name: setWindowPosition_
_returns: void_
_returns_description: _
_parameters: int x, int y_
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

###void setWindowShape(w, h)

<!--
_syntax: setWindowShape(w, h)_
_name: setWindowShape_
_returns: void_
_returns_description: _
_parameters: int w, int h_
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

###void setWindowTitle(title)

<!--
_syntax: setWindowTitle(title)_
_name: setWindowTitle_
_returns: void_
_returns_description: _
_parameters: string title_
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

###void setupOpenGL(w, h, screenMode)

<!--
_syntax: setupOpenGL(w, h, screenMode)_
_name: setupOpenGL_
_returns: void_
_returns_description: _
_parameters: int w, int h, int screenMode_
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

###void showCursor()

<!--
_syntax: showCursor()_
_name: showCursor_
_returns: void_
_returns_description: _
_parameters: _
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

###void toggleFullscreen()

<!--
_syntax: toggleFullscreen()_
_name: toggleFullscreen_
_returns: void_
_returns_description: _
_parameters: _
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

### ~ofAppGLFWWindow()

<!--
_syntax: ~ofAppGLFWWindow()_
_name: ~ofAppGLFWWindow_
_returns: _
_returns_description: _
_parameters: _
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

##Variables



###int aBits

<!--
_name: aBits_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int bBits

<!--
_name: bBits_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bDoubleBuffered

<!--
_name: bDoubleBuffered_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bEnableSetupScreen

<!--
_name: bEnableSetupScreen_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bMultiWindowFullscreen

<!--
_name: bMultiWindowFullscreen_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int buttonInUse

<!--
_name: buttonInUse_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool buttonPressed

<!--
_name: buttonPressed_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int depthBits

<!--
_name: depthBits_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int gBits

<!--
_name: gBits_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int glVersionMajor

<!--
_name: glVersionMajor_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int glVersionMinor

<!--
_name: glVersionMinor_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

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

_description: _








<!----------------------------------------------------------------------------->

###ofAppGLFWWindow instance

<!--
_name: instance_
_type: ofAppGLFWWindow_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int nFramesSinceWindowResized

<!--
_name: nFramesSinceWindowResized_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int nonFullScreenH

<!--
_name: nonFullScreenH_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int nonFullScreenW

<!--
_name: nonFullScreenW_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int nonFullScreenX

<!--
_name: nonFullScreenX_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int nonFullScreenY

<!--
_name: nonFullScreenY_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofBaseApp ofAppPtr

<!--
_name: ofAppPtr_
_type: ofBaseApp_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofOrientation orientation

<!--
_name: orientation_
_type: ofOrientation_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int  pixelScreenCoordScale

<!--
_name: pixelScreenCoordScale_
_type: int _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int rBits

<!--
_name: rBits_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int requestedHeight

<!--
_name: requestedHeight_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int requestedWidth

<!--
_name: requestedWidth_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int samples

<!--
_name: samples_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int stencilBits

<!--
_name: stencilBits_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int windowH

<!--
_name: windowH_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int windowMode

<!--
_name: windowMode_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLFWwindow * windowP

<!--
_name: windowP_
_type: GLFWwindow *_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int windowW

<!--
_name: windowW_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

