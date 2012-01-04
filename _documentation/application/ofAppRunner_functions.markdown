#functions

##Description





<!----------------------------------------------------------------------------->

###float ofGetFrameRate()

<!--
_syntax: ofGetFrameRate()_
_name: ofGetFrameRate_
_returns: float_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

note: this code is implemented inside the ofAppRunner.






<!----------------------------------------------------------------------------->

###int ofGetFrameNum()

<!--
_syntax: ofGetFrameNum()_
_name: ofGetFrameNum_
_returns: int_
_returns_description: _
_parameters: _
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

###void ofSetFrameRate(targetRate)

<!--
_syntax: ofSetFrameRate(targetRate)_
_name: ofSetFrameRate_
_returns: void_
_returns_description: _
_parameters: int targetRate_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Attempts to set the frame rate to a given target by sleeping a certain amount per frame. The results of this may vary based if vertical sync is enabled or disabled (either at the card level or via code), because this locks the drawing to intervals where the screen refreshes.






<!----------------------------------------------------------------------------->

###void ofSleepMillis(timeMillis)

<!--
_syntax: ofSleepMillis(timeMillis)_
_name: ofSleepMillis_
_returns: void_
_returns_description: _
_parameters: int timeMillis_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Makes the app or a thread sleep for some time expressed in ms. Usually used inside threads when we want to wait till something happens to continue the process to run instead of making it running continously. This way the thread doesn't consume processor time while it's aslept.
Forces the app to pause execution ( or 'sleep' ) for the specfied number of milliseconds.
note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###void ofSetupOpenGL(*window, w, h, screenMode)

<!--
_syntax: ofSetupOpenGL(*window, w, h, screenMode)_
_name: ofSetupOpenGL_
_returns: void_
_returns_description: _
_parameters: ofAppBaseWindow * windowPtr, int w, int h, int screenMode_
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets up the window aspect and mode. This function should be called only from the main function in main.cpp.

w and h are the width and height of the window.

screenMode can be one of:

- OF_WINDOW: normal window

- OF_FULLSCREEN: fullscreen, the size of the app will be that of the current screen resolution. The w and h parameters will be ignored. This mode with the default glut window is just a window of the size of the screen without borders.

- OF_GAME_MODE: fullscreen, the size of the app will be that passed as an argument to the function. The screen resolution will be also changed to fit that size so if the computer doesn't support that resolution, chances are that it won't work. Under glut this is real fullscreen and it's meant to be faster than window and fullscreen modes. Under linux this is the only way of getting fullscreen.


From 0.06 you can also pass a diferent version of ofAppBaseWindow than the default glut one. To pass a different windowing toolkit than glut, first create an instance of it, and then pass a pointer to it to ofSetupOpenGL.

ie:
~~~~{.cpp}

ofAppCocoaWindow window;
ofSetupOpenGL(&window, 800, 600, OF_WINDOW);
~~~~

You need to have the windowing toolkit files included in your project.






<!----------------------------------------------------------------------------->

###void ofSetupOpenGL(windowPtr, w, h, screenMode)

<!--
_syntax: ofSetupOpenGL(windowPtr, w, h, screenMode)_
_name: ofSetupOpenGL_
_returns: void_
_returns_description: _
_parameters: ofPtr< ofAppBaseWindow > windowPtr, int w, int h, int screenMode_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetupOpenGL(w, h, screenMode)

<!--
_syntax: ofSetupOpenGL(w, h, screenMode)_
_name: ofSetupOpenGL_
_returns: void_
_returns_description: _
_parameters: int w, int h, int screenMode_
_version_started: 0.01_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets up the window aspect and mode. This function should be called only from the main function in main.cpp.

w and h are the width and height of the window.

screenMode can be one of:

- OF_WINDOW: normal window

- OF_FULLSCREEN: fullscreen, the size of the app will be that of the current screen resolution. The w and h parameters will be ignored. 






<!----------------------------------------------------------------------------->

###void ofRunApp(new testApp)

<!--
_syntax: ofRunApp(new testApp)_
_name: ofRunApp_
_returns: void_
_returns_description: _
_parameters: ofBaseApp * app_
_version_started: 0.01_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Begins the openGL cycle of the application. It's only called once from main function in main.cpp after setting the window with ofSetupOpenGL.

From 0.06 the app is deleted on exit, so you need to call this function as shown in syntax:

~~~~{.cpp}
ofRunApp(new testApp);
~~~~


Previous versions of the examples can be using this syntax:

testApp app;
ofRunApp(&app);

which will make the app crash when closing it.






<!----------------------------------------------------------------------------->

###ofBaseApp ofGetAppPtr()

<!--
_syntax: ofGetAppPtr()_
_name: ofGetAppPtr_
_returns: ofBaseApp_
_returns_description: _
_parameters: _
_version_started: 0.061_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Useful to access the variables in the main app from other classes.

ie:

~~~~{.cpp}

//testApp.h

class testApp: public ofBaseApp{
...

   int someVar;
}

//myClass.cpp

void myClass::method(){
   doSomething( ofGetAppPtr()->someVar );
}
~~~~






<!----------------------------------------------------------------------------->

###void ofHideCursor()

<!--
_syntax: ofHideCursor()_
_name: ofHideCursor_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 0.01_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Hides the mouse cursor
makes the cursor invisible.
note: this code is implemented inside the ofAppRunner.






<!----------------------------------------------------------------------------->

###void ofShowCursor()

<!--
_syntax: ofShowCursor()_
_name: ofShowCursor_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Shows the mouse cursor again when it's been hidden with ofHideCursor
makes the cursor visible.
note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###int ofGetWindowPositionX()

<!--
_syntax: ofGetWindowPositionX()_
_name: ofGetWindowPositionX_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###int ofGetWindowPositionY()

<!--
_syntax: ofGetWindowPositionY()_
_name: ofGetWindowPositionY_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###int ofGetScreenWidth()

<!--
_syntax: ofGetScreenWidth()_
_name: ofGetScreenWidth_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###int ofGetScreenHeight()

<!--
_syntax: ofGetScreenHeight()_
_name: ofGetScreenHeight_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###int ofGetWindowMode()

<!--
_syntax: ofGetWindowMode()_
_name: ofGetWindowMode_
_returns: int_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

eg:
~~~~{.cpp}

int mode = ofGetWindowMode();
		
if(mode == OF_WINDOW){
	printf("mode is: window mode
");	
}else if(mode == OF_FULLSCREEN){
	printf("mode is: fullscreen mode
");		
}else if(mode == OF_GAME_MODE){
	printf("mode is: game mode
");	
}
~~~~

note: this code is implemented inside the ofAppRunner
	






<!----------------------------------------------------------------------------->

###int ofGetWidth()

<!--
_syntax: ofGetWidth()_
_name: ofGetWidth_
_returns: int_
_returns_description: _
_parameters: _
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

###int ofGetHeight()

<!--
_syntax: ofGetHeight()_
_name: ofGetHeight_
_returns: int_
_returns_description: _
_parameters: _
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

###void ofSetWindowPosition(x,y)

<!--
_syntax: ofSetWindowPosition(x,y)_
_name: ofSetWindowPosition_
_returns: void_
_returns_description: _
_parameters: int x_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the window position in the screen to x,y expressed in pixels.






<!----------------------------------------------------------------------------->

###void ofSetWindowShape(w,h)

<!--
_syntax: ofSetWindowShape(w,h)_
_name: ofSetWindowShape_
_returns: void_
_returns_description: _
_parameters: int width_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the window size to w,h expressed in pixels. This size is that of the drawable area, doesn't include the borders of the window.






<!----------------------------------------------------------------------------->

###void ofSetWindowTitle()

<!--
_syntax: ofSetWindowTitle()_
_name: ofSetWindowTitle_
_returns: void_
_returns_description: _
_parameters: _
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

###void ofEnableSetupScreen()

<!--
_syntax: ofEnableSetupScreen()_
_name: ofEnableSetupScreen_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _

Re-enables the call to ofSetupScreen after being disabled with ofDisableSetupScreen






<!----------------------------------------------------------------------------->

###void ofDisableSetupScreen()

<!--
_syntax: ofDisableSetupScreen()_
_name: ofDisableSetupScreen_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 0.06_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _

Every update/draw cycle, the function ofSetupScreen is called. That function sets the perspective, coordinate system, and some other openGL parameters. If you need to use your own parameters, the call to that function can be disabled with ofDisableSetupScreen.






<!----------------------------------------------------------------------------->

###void ofSetFullscreen(bFullscreen)

<!--
_syntax: ofSetFullscreen(bFullscreen)_
_name: ofSetFullscreen_
_returns: void_
_returns_description: _
_parameters: bool fullscreen_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Change the app window mode to fullscreen or window depending on the boolean parameter.
Enables or disables fullscreen mode for your app's window.
note: this code is implemented inside the ofAppRunner.






<!----------------------------------------------------------------------------->

###void ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Toggles the window between fullscreen and window modes.
Toggles fullscreen mode for your app's window. Useful for hooking up to a keypress so you don't have to keep track of the window state.
note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###void ofRunApp(OFSA)

<!--
_syntax: ofRunApp(OFSA)_
_name: ofRunApp_
_returns: void_
_returns_description: _
_parameters: ofPtr< ofBaseApp > OFSA_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRunApp(*OFSA = NULL)

<!--
_syntax: ofRunApp(*OFSA = NULL)_
_name: ofRunApp_
_returns: void_
_returns_description: _
_parameters: ofBaseApp *OFSA=NULL_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetAppPtr(appPtr)

<!--
_syntax: ofSetAppPtr(appPtr)_
_name: ofSetAppPtr_
_returns: void_
_returns_description: _
_parameters: ofPtr< ofBaseApp > appPtr_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofExit(status = 0)

<!--
_syntax: ofExit(status = 0)_
_name: ofExit_
_returns: void_
_returns_description: _
_parameters: int status=0_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetFrameRate(targetRate)

<!--
_syntax: ofSetFrameRate(targetRate)_
_name: ofSetFrameRate_
_returns: void_
_returns_description: _
_parameters: int targetRate_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Attempts to set the frame rate to a given target by sleeping a certain amount per frame. The results of this may vary based if vertical sync is enabled or disabled (either at the card level or via code), because this locks the drawing to intervals where the screen refreshes.
note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###double ofGetLastFrameTime()

<!--
_syntax: ofGetLastFrameTime()_
_name: ofGetLastFrameTime_
_returns: double_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetOrientation(orientation)

<!--
_syntax: ofSetOrientation(orientation)_
_name: ofSetOrientation_
_returns: void_
_returns_description: _
_parameters: ofOrientation orientation_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofOrientation ofGetOrientation()

<!--
_syntax: ofGetOrientation()_
_name: ofGetOrientation_
_returns: ofOrientation_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetWindowWidth()

<!--
_syntax: ofGetWindowWidth()_
_name: ofGetWindowWidth_
_returns: int_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetWindowHeight()

<!--
_syntax: ofGetWindowHeight()_
_name: ofGetWindowHeight_
_returns: int_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofDoesHWOrientation()

<!--
_syntax: ofDoesHWOrientation()_
_name: ofDoesHWOrientation_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofPoint ofGetWindowSize()

<!--
_syntax: ofGetWindowSize()_
_name: ofGetWindowSize_
_returns: ofPoint_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofRectangle ofGetWindowRect()

<!--
_syntax: ofGetWindowRect()_
_name: ofGetWindowRect_
_returns: ofRectangle_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetWindowPosition(x, y)

<!--
_syntax: ofSetWindowPosition(x, y)_
_name: ofSetWindowPosition_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Moves the app window to the x and y coordinates specified. For example: coordinates of (0,0) would set the top-left corner of your app window to the top-left corner of the screen.
note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###void ofSetWindowShape(width, height)

<!--
_syntax: ofSetWindowShape(width, height)_
_name: ofSetWindowShape_
_returns: void_
_returns_description: _
_parameters: int width, int height_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the dimension of your app's window.
note: this code is implemented inside the ofAppRunner






<!----------------------------------------------------------------------------->

###void ofSetWindowTitle(title)

<!--
_syntax: ofSetWindowTitle(title)_
_name: ofSetWindowTitle_
_returns: void_
_returns_description: _
_parameters: string title_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

