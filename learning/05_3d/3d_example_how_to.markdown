---
.. title: Load a 3d model
.. type: howto
---

To load a 3d model in your openFrameworks app you have to use the
`ofxAssimpModelLoader` addon, that already comes with your openFrameworks
installation.

First, you have to include and define `ofxAssimpModelLoader` in your `ofApp.h`:
    
```cpp
#include "ofxAssimpModelLoader.h"
ofxAssimpModelLoader yourModel;
```

Then, in your `ofApp.cpp` file you load the model and draw it like this:

```cpp
void ofApp::setup(){
  yourModel.loadModel("squirrel/NewSquirrel.3ds", 20);
}

void ofApp::draw(){
  yourModel.drawFaces();
}
```

In the folder `addons/3DModelLoaderExample/` of your openFrameworks installation you can find the complete working example.
