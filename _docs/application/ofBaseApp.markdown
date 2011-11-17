#class ofBaseApp

Example



Reference



Methods



//----------------------

##void gotMessage(ofMessage msg)

_syntax: gotMessage(ofMessage msg)_

_name: gotMessage_

_returns: void_

_parameters: ofMessage_



_description: _















//----------------------

##void windowResized(int w, int h)

_syntax: windowResized(int w, int h)_

_name: windowResized_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void keyPressed(int key)

_syntax: keyPressed(int key)_

_name: keyPressed_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void keyReleased(int key)

_syntax: keyReleased(int key)_

_name: keyReleased_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void mouseMoved(int x, int y)

_syntax: mouseMoved(int x, int y)_

_name: mouseMoved_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void mouseDragged(int x, int y, int button)

_syntax: mouseDragged(int x, int y, int button)_

_name: mouseDragged_

_returns: void_

_parameters: int, int, int_



_description: _















//----------------------

##void mousePressed(int x, int y, int button)

_syntax: mousePressed(int x, int y, int button)_

_name: mousePressed_

_returns: void_

_parameters: int, int, int_



_description: _















//----------------------

##void mouseReleased(int x, int y, int button)

_syntax: mouseReleased(int x, int y, int button)_

_name: mouseReleased_

_returns: void_

_parameters: int, int, int_



_description: _















//----------------------

##void dragEvent(ofDragInfo dragInfo)

_syntax: dragEvent(ofDragInfo dragInfo)_

_name: dragEvent_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setup()

_syntax: setup()_

_name: setup_

_returns: void_

_parameters: _



_description: _

This function gets called once, just at the start of the app. It would be a good place, for example, to allocate variables or load in any files. 

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void update()

_syntax: update()_

_name: update_

_returns: void_

_parameters: _



_description: _

This function gets called repeatedly. It gets just before draw, so it is an ideal place to do any updating of variables. For example, imagine you have a varibale already defined in your testApp.h called "xpos"


$$code(lang=c++)

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

$$/code


<br/><br/>return type changed from  to void in 0.07













//----------------------

##void draw()

_syntax: draw()_

_name: draw_

_returns: void_

_parameters: _



_description: _

This function gets called regularly just after update. It's where you draw things:


$$code(lang=c++)

void draw(){
	ofSetColor(255,255,255);
	ofNoFill();
	ofRect(20,20,100,100);
}

$$/code


<br/><br/>return type changed from  to void in 0.07













//----------------------

##void exit()

_syntax: exit()_

_name: exit_

_returns: void_

_parameters: _



_description: _

Add this function to your testApp to have it called at the moment before the app is terminated. This is useful for doing cleanup stuff or making sure files are saved before the app terminates. 

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void windowResized(w, h)

_syntax: windowResized(w, h)_

_name: windowResized_

_returns: void_

_parameters: int w, int h_



_description: _

This function gets called when ever we resize the application window. You receive the new width (w) and the new height (h) of the window.















//----------------------

##void keyPressed(key)

_syntax: keyPressed(key)_

_name: keyPressed_

_returns: void_

_parameters: int key_



_description: _

This function gets called when a key is pressed. The value key can be tested against:

$$code(lang=c++)

void keyPressed(int key){

	if (key == 't'){
		; // do something
	} else if (key == ' '){
		; // do something else
	}
}


$$/code


There are more complicated character codes, for keys such as F1-F12, Down, Enter: OF_KEY_BACKSPACE, OF_KEY_RETURN, OF_KEY_PRINTSCR, OF_KEY_F1 - OF_KEY_F12, OF_KEY_LEFT, OF_KEY_UP, OF_KEY_RIGHT, OF_KEY_DOWN, OF_KEY_PAGE_UP, OF_KEY_PAGE_DOWN, OF_KEY_HOME, OF_KEY_END, OF_KEY_INSERT 














//----------------------

##void keyReleased(key)

_syntax: keyReleased(key)_

_name: keyReleased_

_returns: void_

_parameters: int key_



_description: _

This function gets called when a key is released. The value key can be tested against:

$$code(lang=c++)

void keyReleased(int key){

	if (key == 't'){
		; // do something
	} else if (key == ' '){
		; // do something else
	}
}

$$/code

There are more complicated character codes, for keys such as F1-F12, Down, Enter: OF_KEY_BACKSPACE, OF_KEY_RETURN, OF_KEY_PRINTSCR, OF_KEY_F1 - OF_KEY_F12, OF_KEY_LEFT, OF_KEY_UP, OF_KEY_RIGHT, OF_KEY_DOWN, OF_KEY_PAGE_UP, OF_KEY_PAGE_DOWN, OF_KEY_HOME, OF_KEY_END, OF_KEY_INSERT 













//----------------------

##void mouseMoved(x, y)

_syntax: mouseMoved(x, y)_

_name: mouseMoved_

_returns: void_

_parameters: int x, int y_



_description: _

This function gets when ever the mouse moves. You receive the x and y corrdinates of the mouse. 













//----------------------

##void mouseDragged(x, y, button)

_syntax: mouseDragged(x, y, button)_

_name: mouseDragged_

_returns: void_

_parameters: int x, int y, int button_



_description: _

This function gets called when the mouse is moving and the button is down. The button variable can be used to test against left or right button drags. You also receive the x and y corrdinates of the mouse.













//----------------------

##void mousePressed(x, y, button)

_syntax: mousePressed(x, y, button)_

_name: mousePressed_

_returns: void_

_parameters: int x, int y, int button_



_description: _

This function gets called when the mouse is pushed down. The button (left, right, center) is passed in, along with the x and y corrdinate. 













//----------------------

##void mouseReleased()

_syntax: mouseReleased()_

_name: mouseReleased_

_returns: void_

_parameters: _



_description: _

This function gets called when the mouse is released.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void mouseReleased(x, y, button)

_syntax: mouseReleased(x, y, button)_

_name: mouseReleased_

_returns: void_

_parameters: int x, int y, int button_



_description: _

This function gets called when the mouse is released. The button (left, right, center) is passed in, along with the x and y corrdinate. 













//----------------------

##void audioReceived(input, bufferSize, nChannels)

_syntax: audioReceived(input, bufferSize, nChannels)_

_name: audioReceived_

_returns: void_

_parameters: float * input, int bufferSize, int nChannels_



_description: _

If you have setup audio input, via ofSetupAudio, this function will be called when you have one buffers worth of audio. Since you may have requested mutli-channel audio (for example, stereo input), you get not only an array of floating point info, also the size of the buffer, and the number of channels. The size of input (the float array with audio data) is: bufferSize * nChannels; The data will come interleaved, so if, for example, you request 2 channel (left / right) input, the samples come:

$$code(lang=c++)

l r l r l r l r l r ....
0 1 2 3 4 5 6 7 8 9 ....

$$/code

so to access an individual sample "n" for channel "j" , you could write something like:

$$code(lang=c++)

input[n*(nChannels) + j];

$$/code














//----------------------

##void audioRequested(output, bufferSize, nChannels)

_syntax: audioRequested(output, bufferSize, nChannels)_

_name: audioRequested_

_returns: void_

_parameters: float * output, int bufferSize, int nChannels_



_description: _

If you have setup audio output, via ofSetupAudio, this function will be called when the system needs one buffers worth of audio. Since you may have requested mutli-channel audio (for example, stereo output), you get not only an array of floating point info, also the size of the buffer, and the number of channels. 













