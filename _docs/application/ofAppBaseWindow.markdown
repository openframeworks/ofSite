#class ofAppBaseWindow

##Description



Base class for all windowing classes. Extend this to create a different version of the default glut window in oF.

##Methods



###void ofAppBaseWindow()

_syntax: ofAppBaseWindow()_

_name: ofAppBaseWindow_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 0_

_advanced: 0_



_description: _

















###void ~ofAppBaseWindow()

_syntax: ~ofAppBaseWindow()_

_name: ~ofAppBaseWindow_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 0_

_advanced: 0_



_description: _

















###void setupOpenGL(w, h, screenMode)

_syntax: setupOpenGL(w, h, screenMode)_

_name: setupOpenGL_

_returns: void_

_returns_description: _

_parameters: int w, int h, int screenMode_

_access: public_

_version_started: 006_

_version_deprecated: 0.01_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void initializeWindow()

_syntax: initializeWindow()_

_name: initializeWindow_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void runAppViaInfiniteLoop(appPtr)

_syntax: runAppViaInfiniteLoop(appPtr)_

_name: runAppViaInfiniteLoop_

_returns: void_

_returns_description: _

_parameters: ofBaseApp * appPtr_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void hideCursor()

_syntax: hideCursor()_

_name: hideCursor_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void showCursor()

_syntax: showCursor()_

_name: showCursor_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void setWindowPosition(x, y)

_syntax: setWindowPosition(x, y)_

_name: setWindowPosition_

_returns: void_

_returns_description: _

_parameters: int x, int y_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void setWindowShape(w, h)

_syntax: setWindowShape(w, h)_

_name: setWindowShape_

_returns: void_

_returns_description: _

_parameters: int w, int h_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###int getFrameNum()

_syntax: getFrameNum()_

_name: getFrameNum_

_returns: int_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###float getFrameRate()

_syntax: getFrameRate()_

_name: getFrameRate_

_returns: float_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###ofPoint getWindowPosition()

_syntax: getWindowPosition()_

_name: getWindowPosition_

_returns: ofPoint_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###ofPoint getWindowSize()

_syntax: getWindowSize()_

_name: getWindowSize_

_returns: ofPoint_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###ofPoint getScreenSize()

_syntax: getScreenSize()_

_name: getScreenSize_

_returns: ofPoint_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void setFrameRate(targetRate)

_syntax: setFrameRate(targetRate)_

_name: setFrameRate_

_returns: void_

_returns_description: _

_parameters: float targetRate_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void setWindowTitle(title)

_syntax: setWindowTitle(title)_

_name: setWindowTitle_

_returns: void_

_returns_description: _

_parameters: string title_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###int getWindowMode()

_syntax: getWindowMode()_

_name: getWindowMode_

_returns: int_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void setFullscreen(fullscreen)

_syntax: setFullscreen(fullscreen)_

_name: setFullscreen_

_returns: void_

_returns_description: _

_parameters: bool fullscreen_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void toggleFullscreen()

_syntax: toggleFullscreen()_

_name: toggleFullscreen_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void enableSetupScreen()

_syntax: enableSetupScreen()_

_name: enableSetupScreen_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















###void disableSetupScreen()

_syntax: disableSetupScreen()_

_name: disableSetupScreen_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_advanced: 0_



_description: _

















##Variables



