#class ofBaseApp


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseSoundInput, ofBaseSoundOutput_
-->

##InlineDescription






##Description

The openFrameworks engine is contained in the "app" category. The project works, similar to processing, in that you have a base class which extends a class that already exists. In the case of OF, there is a class called "ofBaseApp" which contains various event driven functions. When you create an OF project, you use a main.cpp which is the boot-strap, that kicks off the application and another class, which inherits the properties of ofBaseApp. Essentially, when you write code in the testApp, you are re-writing already defined functions that exist in OF, such as update, draw, etc.

In versions pre 0.06 this class was called ofSimpleApp





##Methods



###void dragEvent(dragInfo)

<!--
_syntax: dragEvent(dragInfo)_
_name: dragEvent_
_returns: void_
_returns_description: _
_parameters: ofDragInfo dragInfo_
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

###void dragged(&drag)

<!--
_syntax: dragged(&drag)_
_name: dragged_
_returns: void_
_returns_description: _
_parameters: ofDragInfo &drag_
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

###void draw()

<!--
_syntax: draw()_
_name: draw_
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

This function gets called regularly just after update. It's where you draw things:

~~~~{.cpp}

void draw(){
	ofSetColor(255,255,255);
	ofNoFill();
	ofDrawRectangle(20,20,100,100);
}
~~~~





<!----------------------------------------------------------------------------->

###void draw(&args)

<!--
_syntax: draw(&args)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &args_
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

###void exit()

<!--
_syntax: exit()_
_name: exit_
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

Add this function to your ofApp to have it called at the moment before the app is terminated. This is useful for doing cleanup stuff or making sure files are saved before the app terminates. If you want to terminate the execution of your ofApp (from the inside), call ofExit().





<!----------------------------------------------------------------------------->

###void exit(&args)

<!--
_syntax: exit(&args)_
_name: exit_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &args_
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

###void gotMessage(msg)

<!--
_syntax: gotMessage(msg)_
_name: gotMessage_
_returns: void_
_returns_description: _
_parameters: ofMessage msg_
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

###void keyPressed(key)

<!--
_syntax: keyPressed(key)_
_name: keyPressed_
_returns: void_
_returns_description: _
_parameters: int key_
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

This function gets called when a key is pressed. The value key can be tested against:
~~~~{.cpp}

void keyPressed(int key){

	if (key == 't'){
		; // do something
	} else if (key == ' '){
		; // do something else
	}
}

~~~~

There are more complicated character codes, for keys such as F1-F12, Down, Enter: OF_KEY_BACKSPACE, OF_KEY_RETURN, OF_KEY_PRINTSCR, OF_KEY_F1 - OF_KEY_F12, OF_KEY_LEFT, OF_KEY_UP, OF_KEY_RIGHT, OF_KEY_DOWN, OF_KEY_PAGE_UP, OF_KEY_PAGE_DOWN, OF_KEY_HOME, OF_KEY_END, OF_KEY_INSERT





<!----------------------------------------------------------------------------->

###void keyPressed(&key)

<!--
_syntax: keyPressed(&key)_
_name: keyPressed_
_returns: void_
_returns_description: _
_parameters: ofKeyEventArgs &key_
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

###void keyReleased(key)

<!--
_syntax: keyReleased(key)_
_name: keyReleased_
_returns: void_
_returns_description: _
_parameters: int key_
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

This function gets called when a key is released. The value key can be tested against:
~~~~{.cpp}

void keyReleased(int key){

	if (key == 't'){
		; // do something
	} else if (key == ' '){
		; // do something else
	}
}
~~~~

There are more complicated character codes, for keys such as F1-F12, Down, Enter: OF_KEY_BACKSPACE, OF_KEY_RETURN, OF_KEY_PRINTSCR, OF_KEY_F1 - OF_KEY_F12, OF_KEY_LEFT, OF_KEY_UP, OF_KEY_RIGHT, OF_KEY_DOWN, OF_KEY_PAGE_UP, OF_KEY_PAGE_DOWN, OF_KEY_HOME, OF_KEY_END, OF_KEY_INSERT





<!----------------------------------------------------------------------------->

###void keyReleased(&key)

<!--
_syntax: keyReleased(&key)_
_name: keyReleased_
_returns: void_
_returns_description: _
_parameters: ofKeyEventArgs &key_
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

###void messageReceived(&message)

<!--
_syntax: messageReceived(&message)_
_name: messageReceived_
_returns: void_
_returns_description: _
_parameters: ofMessage &message_
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

###void mouseDragged(x, y, button)

<!--
_syntax: mouseDragged(x, y, button)_
_name: mouseDragged_
_returns: void_
_returns_description: _
_parameters: int x, int y, int button_
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

Called on the active window when the mouse is dragged, i.e.
moved with a button pressed





_description: _

This function gets called when the mouse is moving and the button is down. The button variable can be used to test against left or right button drags. You also receive the x and y coordinates of the mouse.





<!----------------------------------------------------------------------------->

###void mouseDragged(&mouse)

<!--
_syntax: mouseDragged(&mouse)_
_name: mouseDragged_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
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

###void mouseEntered(x, y)

<!--
_syntax: mouseEntered(x, y)_
_name: mouseEntered_
_returns: void_
_returns_description: _
_parameters: int x, int y_
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

Called on the active window when the mouse cursor enters the
window area

Note that the mouse coordinates are the last known x/y before the
event occurred, i.e. from the previous frame





_description: _







<!----------------------------------------------------------------------------->

###void mouseEntered(&mouse)

<!--
_syntax: mouseEntered(&mouse)_
_name: mouseEntered_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
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

###void mouseExited(x, y)

<!--
_syntax: mouseExited(x, y)_
_name: mouseExited_
_returns: void_
_returns_description: _
_parameters: int x, int y_
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

Called on the active window when the mouse cursor leaves the
window area

Note that the mouse coordinates are the last known x/y before the
event occurred, i.e. from the previous frame





_description: _







<!----------------------------------------------------------------------------->

###void mouseExited(&mouse)

<!--
_syntax: mouseExited(&mouse)_
_name: mouseExited_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
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

###void mouseMoved(x, y)

<!--
_syntax: mouseMoved(x, y)_
_name: mouseMoved_
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

Called on the active window when the mouse is moved





_description: _

This function gets when ever the mouse moves. You receive the x and y coordinates of the mouse.





<!----------------------------------------------------------------------------->

###void mouseMoved(&mouse)

<!--
_syntax: mouseMoved(&mouse)_
_name: mouseMoved_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
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

###void mousePressed(x, y, button)

<!--
_syntax: mousePressed(x, y, button)_
_name: mousePressed_
_returns: void_
_returns_description: _
_parameters: int x, int y, int button_
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

Called on the active window when a mouse button is pressed





_description: _

This function gets called when the mouse is pushed down. The button (left, right, center) is passed in, along with the x and y coordinate.





<!----------------------------------------------------------------------------->

###void mousePressed(&mouse)

<!--
_syntax: mousePressed(&mouse)_
_name: mousePressed_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
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

###void mouseReleased(x, y, button)

<!--
_syntax: mouseReleased(x, y, button)_
_name: mouseReleased_
_returns: void_
_returns_description: _
_parameters: int x, int y, int button_
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

Called on the active window when a mouse button is released





_description: _

This function gets called when the mouse is released. The button (left, right, center) is passed in, along with the x and y coordinate.





<!----------------------------------------------------------------------------->

###void mouseReleased(&mouse)

<!--
_syntax: mouseReleased(&mouse)_
_name: mouseReleased_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
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

###void mouseScrolled(x, y, scrollX, scrollY)

<!--
_syntax: mouseScrolled(x, y, scrollX, scrollY)_
_name: mouseScrolled_
_returns: void_
_returns_description: _
_parameters: int x, int y, float scrollX, float scrollY_
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

Called on the active window when the mouse wheel is scrolled





_description: _







<!----------------------------------------------------------------------------->

###void mouseScrolled(&mouse)

<!--
_syntax: mouseScrolled(&mouse)_
_name: mouseScrolled_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
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

### ofBaseApp()

<!--
_syntax: ofBaseApp()_
_name: ofBaseApp_
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

The openFrameworks engine is contained in the "app" category. The project works, similar to processing, in that you have a base class which extends a class that already exists. In the case of OF, there is a class called "ofBaseApp" which contains various event driven functions. When you create an OF project, you use a main.cpp which is the boot-strap, that kicks off the application and another class, which inherits the properties of ofSimpleApp. Essentially, when you write code in the ofApp, you are re-writing already defined functions that exist in OF, such as update, draw, etc.





<!----------------------------------------------------------------------------->

###void setup()

<!--
_syntax: setup()_
_name: setup_
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

This function gets called once, just at the start of the app. It would be a good place, for example, to allocate variables or load in any files.





<!----------------------------------------------------------------------------->

###void setup(&args)

<!--
_syntax: setup(&args)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &args_
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

###void touchCancelled(x, y, id)

<!--
_syntax: touchCancelled(x, y, id)_
_name: touchCancelled_
_returns: void_
_returns_description: _
_parameters: int x, int y, int id_
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

###void touchCancelled(&touch)

<!--
_syntax: touchCancelled(&touch)_
_name: touchCancelled_
_returns: void_
_returns_description: _
_parameters: ofTouchEventArgs &touch_
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

###void touchDoubleTap(x, y, id)

<!--
_syntax: touchDoubleTap(x, y, id)_
_name: touchDoubleTap_
_returns: void_
_returns_description: _
_parameters: int x, int y, int id_
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

###void touchDoubleTap(&touch)

<!--
_syntax: touchDoubleTap(&touch)_
_name: touchDoubleTap_
_returns: void_
_returns_description: _
_parameters: ofTouchEventArgs &touch_
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

###void touchDown(x, y, id)

<!--
_syntax: touchDown(x, y, id)_
_name: touchDown_
_returns: void_
_returns_description: _
_parameters: int x, int y, int id_
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

###void touchDown(&touch)

<!--
_syntax: touchDown(&touch)_
_name: touchDown_
_returns: void_
_returns_description: _
_parameters: ofTouchEventArgs &touch_
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

###void touchMoved(x, y, id)

<!--
_syntax: touchMoved(x, y, id)_
_name: touchMoved_
_returns: void_
_returns_description: _
_parameters: int x, int y, int id_
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

###void touchMoved(&touch)

<!--
_syntax: touchMoved(&touch)_
_name: touchMoved_
_returns: void_
_returns_description: _
_parameters: ofTouchEventArgs &touch_
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

###void touchUp(x, y, id)

<!--
_syntax: touchUp(x, y, id)_
_name: touchUp_
_returns: void_
_returns_description: _
_parameters: int x, int y, int id_
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

###void touchUp(&touch)

<!--
_syntax: touchUp(&touch)_
_name: touchUp_
_returns: void_
_returns_description: _
_parameters: ofTouchEventArgs &touch_
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

###void update()

<!--
_syntax: update()_
_name: update_
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

This function gets called repeatedly. It gets called just before draw, so it is an ideal place to do any updating of variables. For example, imagine you have a variable already defined in your ofApp.h called "xpos"

~~~~{.cpp}

void setup(){
	xpos = 0;
}

void update(){
	xpos += 1;
	if (xPos > ofGetWidth()) xPos = 0;
}

void draw(){
	ofDrawRectangle(xPos, 30,10,10);
}
~~~~





<!----------------------------------------------------------------------------->

###void update(&args)

<!--
_syntax: update(&args)_
_name: update_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &args_
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

###void windowResized(w, h)

<!--
_syntax: windowResized(w, h)_
_name: windowResized_
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

This function gets called when ever we resize the application window. You receive the new width (w) and the new height (h) of the window.





<!----------------------------------------------------------------------------->

###void windowResized(&resize)

<!--
_syntax: windowResized(&resize)_
_name: windowResized_
_returns: void_
_returns_description: _
_parameters: ofResizeEventArgs &resize_
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

### ~ofBaseApp()

<!--
_syntax: ~ofBaseApp()_
_name: ~ofBaseApp_
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



###int mouseX

<!--
_name: mouseX_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _

Variable mouseX contains information about the current x coordinate of the mouse.





<!----------------------------------------------------------------------------->

###int mouseY

<!--
_name: mouseY_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _

Variable mouseY contains information about the current y coordinate of the mouse.





<!----------------------------------------------------------------------------->

