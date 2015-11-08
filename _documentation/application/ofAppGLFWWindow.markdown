#class ofAppGLFWWindow


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofAppBaseGLWindow_
-->

##InlineDescription






##Description

This is the base class for the [GLFW](https://github.com/glfw) renderer that you can optionally use with openFrameworks. We've moved away from GLUT and towards GLFW for our windowing system. You probably won't deal with this a great deal (hopefully).





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

###void drop_cb(*windowP_, numFiles, **dropString)

<!--
_syntax: drop_cb(*windowP_, numFiles, **dropString)_
_name: drop_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, int numFiles, const char **dropString_
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

###void entry_cb(*windowP_, entered)

<!--
_syntax: entry_cb(*windowP_, entered)_
_name: entry_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, int entered_
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

###string getClipboardString()

<!--
_syntax: getClipboardString()_
_name: getClipboardString_
_returns: string_
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

###GLFWwindow * getGLFWWindow()

<!--
_syntax: getGLFWWindow()_
_name: getGLFWWindow_
_returns: GLFWwindow *_
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

###GLXContext getGLXContext()

<!--
_syntax: getGLXContext()_
_name: getGLXContext_
_returns: GLXContext_
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

###void * getWindowContext()

<!--
_syntax: getWindowContext()_
_name: getWindowContext_
_returns: void *_
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

###ofWindowMode getWindowMode()

<!--
_syntax: getWindowMode()_
_name: getWindowMode_
_returns: ofWindowMode_
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

###bool getWindowShouldClose()

<!--
_syntax: getWindowShouldClose()_
_name: getWindowShouldClose_
_returns: bool_
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

###Display * getX11Display()

<!--
_syntax: getX11Display()_
_name: getX11Display_
_returns: Display *_
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

###Window getX11Window()

<!--
_syntax: getX11Window()_
_name: getX11Window_
_returns: Window_
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

###void keyboard_cb(*windowP_, key, scancode, codepoint, action, mods)

<!--
_syntax: keyboard_cb(*windowP_, key, scancode, codepoint, action, mods)_
_name: keyboard_cb_
_returns: void_
_returns_description: _
_parameters: GLFWwindow *windowP_, int key, int scancode, unsigned int codepoint, int action, int mods_
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

###void listMonitors()

<!--
_syntax: listMonitors()_
_name: listMonitors_
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

###void makeCurrent()

<!--
_syntax: makeCurrent()_
_name: makeCurrent_
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

### ofAppGLFWWindow(&w)

<!--
_syntax: ofAppGLFWWindow(&w)_
_name: ofAppGLFWWindow_
_returns: _
_returns_description: _
_parameters: const ofAppGLFWWindow &w_
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

###ofAppGLFWWindow & operator=(&w)

<!--
_syntax: operator=(&w)_
_name: operator=_
_returns: ofAppGLFWWindow &_
_returns_description: _
_parameters: const ofAppGLFWWindow &w_
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

###void setClipboardString(&text)

<!--
_syntax: setClipboardString(&text)_
_name: setClipboardString_
_returns: void_
_returns_description: _
_parameters: const string &text_
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

###ofAppGLFWWindow * setCurrent(*windowP)

<!--
_syntax: setCurrent(*windowP)_
_name: setCurrent_
_returns: ofAppGLFWWindow *_
_returns_description: _
_parameters: GLFWwindow *windowP_
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

###void setWindowShouldClose()

<!--
_syntax: setWindowShouldClose()_
_name: setWindowShouldClose_
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

###void setup(&settings)

<!--
_syntax: setup(&settings)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: const ofGLFWWindowSettings &settings_
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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bWindowNeedsShowing

<!--
_name: bWindowNeedsShowing_
_type: bool_
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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofGLFWWindowSettings settings

<!--
_name: settings_
_type: ofGLFWWindowSettings_
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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

