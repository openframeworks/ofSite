#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






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

_inlined_description: _








_description: _


Every update/draw cycle, the function ofSetupScreen is called. That function sets the perspective, coordinate system, and some other openGL parameters. If you need to use your own parameters, the call to that function can be disabled with ofDisableSetupScreen.







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

_inlined_description: _








_description: _


This returns whether your current device does hardware orientation. An iPhone, for instance, does hardware orientation, which you might notice when you tilt your iPhone to the side, hence ofDoesHWOrientation() would return true. Tilting your laptop to the side does not do the same thing, hence ofDoesHWOrientation() would return false.







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

_inlined_description: _








_description: _


Re-enables the call to ofSetupScreen after being disabled with ofDisableSetupScreen







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

_inlined_description: _








_description: _


This exits your app, causing it to quit.







<!----------------------------------------------------------------------------->

###ofBaseApp * ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofGetAppPtr_
_returns: ofBaseApp *_
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

_inlined_description: _








_description: _


Useful to access the variables in the main app from other classes. The pointer returned by this function has to be cast from an ofBaseApp pointer, to a pointer to your inherited class, before being used.
ie:
~~~~{.cpp}

//ofApp.h
class ofApp: public ofBaseApp{
   // ...
   int someVar;
}
//myClass.cpp
void myClass::method(){
   doSomething( ((ofApp*)ofGetAppPtr())->someVar );
}
~~~~







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

_inlined_description: _








_description: _


note: this code is implemented inside the ofAppRunner.







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

_inlined_description: _








_description: _


This gets the height of your ofApp window. Useful for finding the middle of the screen like so: ofVec2f middle(ofGetWidth()/2, ofGetHeight()/2)







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

_inlined_description: _








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

_inlined_description: _








_description: _








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

_inlined_description: _








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

_inlined_description: _








_description: _


note: this code is implemented inside the ofAppRunner







<!----------------------------------------------------------------------------->

###float ofGetTargetFrameRate()

<!--
_syntax: ofGetTargetFrameRate()_
_name: ofGetTargetFrameRate_
_returns: float_
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

_inlined_description: _








_description: _








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

_inlined_description: _








_description: _


This gets the width of your ofApp window. Useful for finding the middle of the screen like so: ofVec2f middle(ofGetWidth()/2, ofGetHeight()/2)







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

_inlined_description: _








_description: _








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

_inlined_description: _








_description: _


eg:
~~~~{.cpp}
int mode = ofGetWindowMode();
		
if(mode == OF_WINDOW){
	cout << "mode is: window mode " << endl;
}else if(mode == OF_FULLSCREEN){
	cout << "mode is: fullscreen mode" << endl;
}else if(mode == OF_GAME_MODE){
	cout << "mode is: game mode" << endl;	
}
~~~~
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

_inlined_description: _








_description: _


This is the x position of your window inside your screen. How exactly this is returned is dependent on your operating system but it's pretty consistent across platforms.
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

_inlined_description: _








_description: _


This is the y position of your window inside your screen. How exactly this is returned is dependent on your operating system but it's pretty consistent across platforms.
note: this code is implemented inside the ofAppRunner







<!----------------------------------------------------------------------------->

###ofAppBaseWindow * ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofGetWindowPtr_
_returns: ofAppBaseWindow *_
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

_inlined_description: _








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

_inlined_description: _








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

_inlined_description: _








_description: _


This is the size of your window as it's drawn on your screen. How exactly this is returned is dependent on your operating system but it's pretty consistent across platforms.







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

_inlined_description: _








_description: _








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

_inlined_description: _








_description: _


This hides the mouse cursor, useful if you're doing a clever app that has no need for mouse interaction, evil if you are.
note: this code is implemented inside the ofAppRunner.







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

_inlined_description: _








_description: _


Attempts to set the frame rate to a given target by sleeping a certain amount per frame. The results of this may vary based if vertical sync is enabled or disabled (either at the card level or via code), because this locks the drawing to intervals where the screen refreshes.







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

_inlined_description: _








_description: _


Change the app window mode to fullscreen or window depending on the boolean parameter.
Enables or disables fullscreen mode for your app's window.
note: this code is implemented inside the ofAppRunner.







<!----------------------------------------------------------------------------->

###void ofSetOrientation(orientation, vFlip = true)

<!--
_syntax: ofSetOrientation(orientation, vFlip = true)_
_name: ofSetOrientation_
_returns: void_
_returns_description: _
_parameters: ofOrientation orientation, bool vFlip=true_
_version_started: _
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

###void ofSetVerticalSync(bSync)

<!--
_syntax: ofSetVerticalSync(bSync)_
_name: ofSetVerticalSync_
_returns: void_
_returns_description: _
_parameters: bool bSync_
_version_started: _
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

_inlined_description: _








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

_inlined_description: _








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

_inlined_description: _








_description: _








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

_inlined_description: _








_description: _


Shows the mouse cursor again when it's been hidden with ofHideCursor
makes the cursor visible.
note: this code is implemented inside the ofAppRunner







<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###GLXContext ofToggleFullscreen()

<!--
_syntax: ofToggleFullscreen()_
_name: ofToggleFullscreen_
_returns: GLXContext_
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

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

