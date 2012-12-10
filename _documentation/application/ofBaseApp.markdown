#class ofBaseApp


##Description


The openframeworks engine is contained in the "app" category. The project works, similar to processing, in that you have a base class which extends a class that already exists. In the case of OF, there is a class called "ofBaseApp" which contains various event driven functions. When you create an OF project, you use a main.cpp which is the boot-strap, that kicks off the application and another class, which inherits the properties of ofBaseApp. Essentially, when you write code in the testApp, you are re-writing already defined functions that exist in OF, such as update, draw, etc. 

In versions pre 0.06 this class was called ofSimpleApp





##Methods



###void audioReceived(input, bufferSize, nChannels)

<!--
_syntax: audioReceived(input, bufferSize, nChannels)_
_name: audioReceived_
_returns: void_
_returns_description: _
_parameters: float * input, int bufferSize, int nChannels_
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


If you have setup audio input, via ofSetupAudio, this function will be called when you have one buffers worth of audio. Since you may have requested mutli-channel audio (for example, stereo input), you get not only an array of floating point info, also the size of the buffer, and the number of channels. The size of input (the float array with audio data) is: bufferSize * nChannels; The data will come interleaved, so if, for example, you request 2 channel (left / right) input, the samples come:
~~~~{.cpp}

l r l r l r l r l r ....
0 1 2 3 4 5 6 7 8 9 ....
~~~~

so to access an individual sample "n" for channel "j" , you could write something like:
~~~~{.cpp}

input[n*(nChannels) + j];
~~~~







<!----------------------------------------------------------------------------->

###void audioRequested(output, bufferSize, nChannels)

<!--
_syntax: audioRequested(output, bufferSize, nChannels)_
_name: audioRequested_
_returns: void_
_returns_description: _
_parameters: float * output, int bufferSize, int nChannels_
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


If you have setup audio output, via ofSetupAudio, this function will be called when the system needs one buffers worth of audio. Since you may have requested mutli-channel audio (for example, stereo output), you get not only an array of floating point info, also the size of the buffer, and the number of channels. 







<!----------------------------------------------------------------------------->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Add this function to your testApp to have it called at the moment before the app is terminated. This is useful for doing cleanup stuff or making sure files are saved before the app terminates. 







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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This function gets called when the mouse is moving and the button is down. The button variable can be used to test against left or right button drags. You also receive the x and y corrdinates of the mouse.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This function gets when ever the mouse moves. You receive the x and y corrdinates of the mouse. 







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This function gets called when the mouse is pushed down. The button (left, right, center) is passed in, along with the x and y corrdinate. 







<!----------------------------------------------------------------------------->

###void mouseReleased()

<!--
_syntax: mouseReleased()_
_name: mouseReleased_
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


This function gets called when the mouse is released.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This function gets called when the mouse is released. The button (left, right, center) is passed in, along with the x and y corrdinate. 







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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _


The openframeworks engine is contained in the "app" category. The project works, similar to processing, in that you have a base class which extends a class that already exists. In the case of OF, there is a class called "ofBaseApp" which contains various event driven functions. When you create an OF project, you use a main.cpp which is the boot-strap, that kicks off the application and another class, which inherits the properties of ofSimpleApp. Essentially, when you write code in the testApp, you are re-writing already defined functions that exist in OF, such as update, draw, etc. 







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This function gets called once, just at the start of the app. It would be a good place, for example, to allocate variables or load in any files. 







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This function gets called repeatedly. It gets just before draw, so it is an ideal place to do any updating of variables. For example, imagine you have a varibale already defined in your testApp.h called "xpos"

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This function gets called when ever we resize the application window. You receive the new width (w) and the new height (h) of the window.








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
_static: no_
_visible: False_
_advanced: False_
-->

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

