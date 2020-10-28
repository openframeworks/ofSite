---
.. title: Load a 3d model
.. type: howto
---

To load a 3d model in your openFrameworks app you have to use the
`ofxAssimpModelLoader` addon, that already comes with your openFrameworks
installation. To do so, generate a project using the project generator and include the `ofxAssimpModelLoader` in the addons selection. 

Drop your 3D models in the "data" folder situated here `\YourOpenFrameworksInstallation\apps\myApps\YourAppName\bin\data`.
In this example the 3D model is named `NewSquirrel.3ds`.

First, you have to include and define `ofxAssimpModelLoader` in your `ofApp.h`:
    
```cpp
#include "ofxAssimpModelLoader.h"
ofxAssimpModelLoader yourModel;
```

Then, in your `ofApp.cpp` file you load the model and draw it like this:

```cpp
void ofApp::setup(){
  yourModel.loadModel("NewSquirrel.3ds", 20);
}

void ofApp::draw(){
  yourModel.drawFaces();
}
```

In the folder `examples/3d/3DModelLoaderExample/` of your openFrameworks installation you can find the complete working example.
