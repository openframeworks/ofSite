#class ofBaseApp


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The openframeworks engine is contained in the "app" category. The project works, similar to processing, in that you have a base class which extends a class that already exists. In the case of OF, there is a class called "ofBaseApp" which contains various event driven functions. When you create an OF project, you use a main.cpp which is the boot-strap, that kicks off the application and another class, which inherits the properties of ofBaseApp. Essentially, when you write code in the testApp, you are re-writing already defined functions that exist in OF, such as update, draw, etc. 

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
	ofRect(20,20,100,100);
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


Add this function to your ofApp to have it called at the moment before the app is terminated. This is useful for doing cleanup stuff or making sure files are saved before the app terminates. 







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








_description: _


This function gets called when the mouse is moving and the button is down. The button variable can be used to test against left or right button drags. You also receive the x and y corrdinates of the mouse.







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








_description: _


This function gets when ever the mouse moves. You receive the x and y corrdinates of the mouse. 







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








_description: _


This function gets called when the mouse is pushed down. The button (left, right, center) is passed in, along with the x and y corrdinate. 







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








_description: _


This function gets called when the mouse is released. The button (left, right, center) is passed in, along with the x and y corrdinate. 







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


The openframeworks engine is contained in the "app" category. The project works, similar to processing, in that you have a base class which extends a class that already exists. In the case of OF, there is a class called "ofBaseApp" which contains various event driven functions. When you create an OF project, you use a main.cpp which is the boot-strap, that kicks off the application and another class, which inherits the properties of ofSimpleApp. Essentially, when you write code in the ofApp, you are re-writing already defined functions that exist in OF, such as update, draw, etc. 







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


This function gets called repeatedly. It gets just before draw, so it is an ideal place to do any updating of variables. For example, imagine you have a varibale already defined in your ofApp.h called "xpos"

~~~~{.cpp}

void setup(){
	xpos = 0;
}

void update(){
	xpos += 1;
	if (xPos > ofGetWidth()) xPos = 0;
}

void draw(){
	ofRect(xPos, 30,10,10);
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

###void windowEntry(state)

<!--
_syntax: windowEntry(state)_
_name: windowEntry_
_returns: void_
_returns_description: _
_parameters: int state_
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

###void windowEntry(&entry)

<!--
_syntax: windowEntry(&entry)_
_name: windowEntry_
_returns: void_
_returns_description: _
_parameters: ofEntryEventArgs &entry_
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

_description: _


Variable mouseY contains information about the current y coordinate of the mouse.







<!----------------------------------------------------------------------------->

