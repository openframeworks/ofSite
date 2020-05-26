---
.. title: Set the dimensions of the window
.. type: howto
---

####In the ```main.cpp``` file:

The ```ofSetupOpenGL ``` method allows you to specify how you want your project displayed on screen. 

	ofSetupOpenGL(width, height, OF_GAME_MODE);


The first two parameters specify the width and height of the window:

	ofSetupOpenGL(1024, 768, OF_GAME_MODE);
	
With the third parameter, you can specify how you want the window to be displayed using three possible modes:

```OF_WINDOW``` mode will create a free floating window of the size specified by width and height. 

	ofSetupOpenGL(1024, 768, OF_WINDOW);
 
```OF_FULLSCREEN``` mode will display your project in the top left corner of the screen at the size specified by width and height, with the rest of the screen a solid grey.

	ofSetupOpenGL(1024, 768, OF_FULLSCREEN);

####Alternative, using ofApp::setup():

Alternatively, you can set the window size (and position) in the setup function of ofApp, which gets called right at the start as the app launches: 

```cpp
void ofApp::setup(){
    ofSetWindowShape(500, 500);
    ofSetWindowPosition(10, 10);
}
```
    
