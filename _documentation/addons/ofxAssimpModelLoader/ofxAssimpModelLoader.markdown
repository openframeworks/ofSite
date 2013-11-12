#class ofxAssimpModelLoader


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

ofAssimpModelLoader addon permits loading to memory and processing 3D models in a convenient and unified format. This addon is mostly a wrapper of the Open Asset Import Library, assimp, ([http://assimp.sourceforge.net/](http://assimp.sourceforge.net/)) in it s version 2.0. At least, these model formats are supported:

- 3DS
- ASE
- DXF
- HMP
- MD2
- MD3
- MD5
- MDC
- MDL
- NFF
- PLY
- STL
- X
- LWO
- OBJ
- SMD
- Collada
- LWO
- Ogre XML
- partly LWS 

In order to load a file to memory, you just need to declare a new variable of type ofAssimpModelLoader and use the function loadModel():

~~~~{.cpp}
ofxAssimpModelLoader model;
model.loadModel("file_name.3DS");
~~~~

You could draw it using:

~~~~{.cpp}
void ofApp::draw(){
   ofBackground(50, 50, 50, 0);
   ofSetColor(255, 255, 255, 255);

   model.drawFaces();
}
~~~~

But probably you would not see the entire model. In the next snippet it appears centered:

~~~~{.cpp}
void ofApp::draw(){
   ofBackground(50, 50, 50, 0);
   ofSetColor(255, 255, 255, 255);

   model.setPosition(ofGetWidth()/2, (float)ofGetHeight() * 0.75 , 0);
   model.drawFaces();
}
~~~~

There are other two ways to represent the model, by its points or by the wiring between the points. In the next snippet the three ways are represented:

~~~~{.cpp}
void ofApp::draw(){
   ofBackground(50, 50, 50, 0);
   ofSetColor(255, 255, 255, 255);

   model.setPosition(ofGetWidth()*2/6, (float)ofGetHeight() * 0.75 , 0);
   model.draw(OF_MESH_FILL); //same as model.drawFaces();
   model.setPosition(ofGetWidth()*3/6, (float)ofGetHeight() * 0.75 , 0);
   model.draw(OF_MESH_POINTS); // same as model.drawVertices();
   model.setPosition(ofGetWidth()*4/6, (float)ofGetHeight() * 0.75 , 0);
   model.draw(OF_MESH_WIREFRAME); // same as model.drawWireframe();
}
~~~~

We can use model.setScale() to change the size and setRotation() to rotate the model. The next snippet, for instance, draws the model half it's size and if it was looking at you, now is showing it's back:

~~~~{.cpp}
model.setRotation(0,90,0,1,0);
model.setScale(0.5, 0.5, 0.5);
model.setPosition(ofGetWidth()*2/6, (float)ofGetHeight() * 0.75 , 0);
model.drawFaces();
~~~~

You can accumulate setRotation() functions for rotating different degrees in different axis if you increment the value of the first variable:

~~~~{.cpp}
model.setRotation(0, actualXRotation, 1, 0, 0);
model.setRotation(1, actualYRotation, 0, 1, 0);
model.setRotation(2, actualZRotation, 0, 0, 1);
~~~~





##Methods



###void calculateDimensions()

<!--
_syntax: calculateDimensions()_
_name: calculateDimensions_
_returns: void_
_returns_description: _
_parameters: _
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

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
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

###void createEmptyModel()

<!--
_syntax: createEmptyModel()_
_name: createEmptyModel_
_returns: void_
_returns_description: _
_parameters: _
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

###void createLightsFromAiModel()

<!--
_syntax: createLightsFromAiModel()_
_name: createLightsFromAiModel_
_returns: void_
_returns_description: _
_parameters: _
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

###void disableColors()

<!--
_syntax: disableColors()_
_name: disableColors_
_returns: void_
_returns_description: _
_parameters: _
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

###void disableMaterials()

<!--
_syntax: disableMaterials()_
_name: disableMaterials_
_returns: void_
_returns_description: _
_parameters: _
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

###void disableNormals()

<!--
_syntax: disableNormals()_
_name: disableNormals_
_returns: void_
_returns_description: _
_parameters: _
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

###void disableTextures()

<!--
_syntax: disableTextures()_
_name: disableTextures_
_returns: void_
_returns_description: _
_parameters: _
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

###void draw(renderType)

<!--
_syntax: draw(renderType)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofPolyRenderMode renderType_
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

###void drawFaces()

<!--
_syntax: drawFaces()_
_name: drawFaces_
_returns: void_
_returns_description: _
_parameters: _
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

###void drawVertices()

<!--
_syntax: drawVertices()_
_name: drawVertices_
_returns: void_
_returns_description: _
_parameters: _
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

###void drawWireframe()

<!--
_syntax: drawWireframe()_
_name: drawWireframe_
_returns: void_
_returns_description: _
_parameters: _
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

###void enableColors()

<!--
_syntax: enableColors()_
_name: enableColors_
_returns: void_
_returns_description: _
_parameters: _
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

###void enableMaterials()

<!--
_syntax: enableMaterials()_
_name: enableMaterials_
_returns: void_
_returns_description: _
_parameters: _
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

###void enableNormals()

<!--
_syntax: enableNormals()_
_name: enableNormals_
_returns: void_
_returns_description: _
_parameters: _
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

###void enableTextures()

<!--
_syntax: enableTextures()_
_name: enableTextures_
_returns: void_
_returns_description: _
_parameters: _
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

###ofxAssimpAnimation & getAnimation(animationIndex)

<!--
_syntax: getAnimation(animationIndex)_
_name: getAnimation_
_returns: ofxAssimpAnimation &_
_returns_description: _
_parameters: int animationIndex_
_access: public_
_version_started: 0.8.0_
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

###unsigned int getAnimationCount()

<!--
_syntax: getAnimationCount()_
_name: getAnimationCount_
_returns: unsigned int_
_returns_description: _
_parameters: _
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

###const aiScene * getAssimpScene()

<!--
_syntax: getAssimpScene()_
_name: getAssimpScene_
_returns: const aiScene *_
_returns_description: _
_parameters: _
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

###void getBoundingBoxForNode(*nd, *min, *max, *trafo)

<!--
_syntax: getBoundingBoxForNode(*nd, *min, *max, *trafo)_
_name: getBoundingBoxForNode_
_returns: void_
_returns_description: _
_parameters: const struct aiNode *nd, struct aiVector3D *min, struct aiVector3D *max, struct aiMatrix4x4 *trafo_
_access: protected_
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

###void getBoundingBoxWithMinVector(*min, *max)

<!--
_syntax: getBoundingBoxWithMinVector(*min, *max)_
_name: getBoundingBoxWithMinVector_
_returns: void_
_returns_description: _
_parameters: struct aiVector3D *min, struct aiVector3D *max_
_access: protected_
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

###ofMesh getCurrentAnimatedMesh(name)

<!--
_syntax: getCurrentAnimatedMesh(name)_
_name: getCurrentAnimatedMesh_
_returns: ofMesh_
_returns_description: _
_parameters: string name_
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

###ofMesh getCurrentAnimatedMesh(num)

<!--
_syntax: getCurrentAnimatedMesh(num)_
_name: getCurrentAnimatedMesh_
_returns: ofMesh_
_returns_description: _
_parameters: int num_
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

###ofMaterial getMaterialForMesh(name)

<!--
_syntax: getMaterialForMesh(name)_
_name: getMaterialForMesh_
_returns: ofMaterial_
_returns_description: _
_parameters: string name_
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

###ofMaterial getMaterialForMesh(num)

<!--
_syntax: getMaterialForMesh(num)_
_name: getMaterialForMesh_
_returns: ofMaterial_
_returns_description: _
_parameters: int num_
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

###ofMesh getMesh(name)

<!--
_syntax: getMesh(name)_
_name: getMesh_
_returns: ofMesh_
_returns_description: _
_parameters: string name_
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

###ofMesh getMesh(num)

<!--
_syntax: getMesh(num)_
_name: getMesh_
_returns: ofMesh_
_returns_description: _
_parameters: int num_
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

###unsigned int getMeshCount()

<!--
_syntax: getMeshCount()_
_name: getMeshCount_
_returns: unsigned int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###ofxAssimpMeshHelper & getMeshHelper(meshIndex)

<!--
_syntax: getMeshHelper(meshIndex)_
_name: getMeshHelper_
_returns: ofxAssimpMeshHelper &_
_returns_description: _
_parameters: int meshIndex_
_access: public_
_version_started: 0.8.0_
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

###vector< string > getMeshNames()

<!--
_syntax: getMeshNames()_
_name: getMeshNames_
_returns: vector< string >_
_returns_description: _
_parameters: _
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

###ofMatrix4x4 getModelMatrix()

<!--
_syntax: getModelMatrix()_
_name: getModelMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###float getNormalizedScale()

<!--
_syntax: getNormalizedScale()_
_name: getNormalizedScale_
_returns: float_
_returns_description: _
_parameters: _
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

###int getNumMeshes()

<!--
_syntax: getNumMeshes()_
_name: getNumMeshes_
_returns: int_
_returns_description: _
_parameters: _
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

###int getNumRotations()

<!--
_syntax: getNumRotations()_
_name: getNumRotations_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###ofPoint getPosition()

<!--
_syntax: getPosition()_
_name: getPosition_
_returns: ofPoint_
_returns_description: _
_parameters: _
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

###float getRotationAngle(which)

<!--
_syntax: getRotationAngle(which)_
_name: getRotationAngle_
_returns: float_
_returns_description: _
_parameters: int which_
_access: public_
_version_started: 0.8.0_
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

###ofPoint getRotationAxis(which)

<!--
_syntax: getRotationAxis(which)_
_name: getRotationAxis_
_returns: ofPoint_
_returns_description: _
_parameters: int which_
_access: public_
_version_started: 0.8.0_
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

###ofPoint getScale()

<!--
_syntax: getScale()_
_name: getScale_
_returns: ofPoint_
_returns_description: _
_parameters: _
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

###ofPoint getSceneCenter()

<!--
_syntax: getSceneCenter()_
_name: getSceneCenter_
_returns: ofPoint_
_returns_description: _
_parameters: _
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

###ofPoint getSceneMax(bScaled = false)

<!--
_syntax: getSceneMax(bScaled = false)_
_name: getSceneMax_
_returns: ofPoint_
_returns_description: _
_parameters: bool bScaled=false_
_access: public_
_version_started: 0.8.0_
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

###ofPoint getSceneMin(bScaled = false)

<!--
_syntax: getSceneMin(bScaled = false)_
_name: getSceneMin_
_returns: ofPoint_
_returns_description: _
_parameters: bool bScaled=false_
_access: public_
_version_started: 0.8.0_
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

###ofTexture getTextureForMesh(name)

<!--
_syntax: getTextureForMesh(name)_
_name: getTextureForMesh_
_returns: ofTexture_
_returns_description: _
_parameters: string name_
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

###ofTexture getTextureForMesh(num)

<!--
_syntax: getTextureForMesh(num)_
_name: getTextureForMesh_
_returns: ofTexture_
_returns_description: _
_parameters: int num_
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

###bool hasAnimations()

<!--
_syntax: hasAnimations()_
_name: hasAnimations_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###bool hasMeshes()

<!--
_syntax: hasMeshes()_
_name: hasMeshes_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###void loadGLResources()

<!--
_syntax: loadGLResources()_
_name: loadGLResources_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

###bool loadModel(modelName, optimize = true)

<!--
_syntax: loadModel(modelName, optimize = true)_
_name: loadModel_
_returns: bool_
_returns_description: _
_parameters: string modelName, bool optimize=false_
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

###bool loadModel(&buffer, optimize = true, *extension = "")

<!--
_syntax: loadModel(&buffer, optimize = true, *extension = "")_
_name: loadModel_
_returns: bool_
_returns_description: _
_parameters: ofBuffer &buffer, bool optimize=false, const char *extension=""_
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

### ofxAssimpModelLoader()

<!--
_syntax: ofxAssimpModelLoader()_
_name: ofxAssimpModelLoader_
_returns: _
_returns_description: _
_parameters: _
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

###void onAppExit(&args)

<!--
_syntax: onAppExit(&args)_
_name: onAppExit_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &args_
_access: protected_
_version_started: 0.8.0_
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

###void optimizeScene()

<!--
_syntax: optimizeScene()_
_name: optimizeScene_
_returns: void_
_returns_description: _
_parameters: _
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

###void playAllAnimations()

<!--
_syntax: playAllAnimations()_
_name: playAllAnimations_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###void resetAllAnimations()

<!--
_syntax: resetAllAnimations()_
_name: resetAllAnimations_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###void setLoopStateForAllAnimations(state)

<!--
_syntax: setLoopStateForAllAnimations(state)_
_name: setLoopStateForAllAnimations_
_returns: void_
_returns_description: _
_parameters: ofLoopType state_
_access: public_
_version_started: 0.8.0_
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

###void setNormalizationFactor(factor)

<!--
_syntax: setNormalizationFactor(factor)_
_name: setNormalizationFactor_
_returns: void_
_returns_description: _
_parameters: float factor_
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

###void setPausedForAllAnimations(pause)

<!--
_syntax: setPausedForAllAnimations(pause)_
_name: setPausedForAllAnimations_
_returns: void_
_returns_description: _
_parameters: bool pause_
_access: public_
_version_started: 0.8.0_
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

###void setPosition(x, y, z)

<!--
_syntax: setPosition(x, y, z)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###void setPositionForAllAnimations(position)

<!--
_syntax: setPositionForAllAnimations(position)_
_name: setPositionForAllAnimations_
_returns: void_
_returns_description: _
_parameters: float position_
_access: public_
_version_started: 0.8.0_
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

###void setRotation(which, angle, rot_x, rot_y, r_z)

<!--
_syntax: setRotation(which, angle, rot_x, rot_y, r_z)_
_name: setRotation_
_returns: void_
_returns_description: _
_parameters: int which, float angle, float rot_x, float rot_y, float r_z_
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

###void setScale(x, y, z)

<!--
_syntax: setScale(x, y, z)_
_name: setScale_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###void setScaleNomalization(normalize)

<!--
_syntax: setScaleNomalization(normalize)_
_name: setScaleNomalization_
_returns: void_
_returns_description: _
_parameters: bool normalize_
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

###void stopAllAnimations()

<!--
_syntax: stopAllAnimations()_
_name: stopAllAnimations_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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
_version_started: 0.8.0_
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

###void updateAnimation(animationIndex, time)

<!--
_syntax: updateAnimation(animationIndex, time)_
_name: updateAnimation_
_returns: void_
_returns_description: _
_parameters: unsigned int animationIndex, float time_
_access: protected_
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

###void updateAnimations()

<!--
_syntax: updateAnimations()_
_name: updateAnimations_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 0.8.0_
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

###void updateBones()

<!--
_syntax: updateBones()_
_name: updateBones_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 0.8.0_
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

###void updateGLResources()

<!--
_syntax: updateGLResources()_
_name: updateGLResources_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

###void updateMeshes(*node, parentMatrix)

<!--
_syntax: updateMeshes(*node, parentMatrix)_
_name: updateMeshes_
_returns: void_
_returns_description: _
_parameters: aiNode *node, ofMatrix4x4 parentMatrix_
_access: protected_
_version_started: 0.8.0_
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

###void updateModelMatrix()

<!--
_syntax: updateModelMatrix()_
_name: updateModelMatrix_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 0.8.0_
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

### ~ofxAssimpModelLoader()

<!--
_syntax: ~ofxAssimpModelLoader()_
_name: ~ofxAssimpModelLoader_
_returns: _
_returns_description: _
_parameters: _
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

##Variables



###vector<  ofxAssimpAnimation >  animations

<!--
_name: animations_
_type: vector<  ofxAssimpAnimation > _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bUsingColors

<!--
_name: bUsingColors_
_type: bool_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bUsingMaterials

<!--
_name: bUsingMaterials_
_type: bool_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bUsingNormals

<!--
_name: bUsingNormals_
_type: bool_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bUsingTextures

<!--
_name: bUsingTextures_
_type: bool_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int currentAnimation

<!--
_name: currentAnimation_
_type: int_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofFile  file

<!--
_name: file_
_type: ofFile _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###vector< ofLight > lights

<!--
_name: lights_
_type: vector< ofLight >_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4  modelMatrix

<!--
_name: modelMatrix_
_type: ofMatrix4x4 _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofxAssimpMeshHelper modelMeshes

<!--
_name: modelMeshes_
_type: ofxAssimpMeshHelper_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float normalizeFactor

<!--
_name: normalizeFactor_
_type: float_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool normalizeScale

<!--
_name: normalizeScale_
_type: bool_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###double normalizedScale

<!--
_name: normalizedScale_
_type: double_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint pos

<!--
_name: pos_
_type: ofPoint_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###vector< float > rotAngle

<!--
_name: rotAngle_
_type: vector< float >_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###vector< ofPoint > rotAxis

<!--
_name: rotAxis_
_type: vector< ofPoint >_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint scale

<!--
_name: scale_
_type: ofPoint_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###const aiScene * scene

<!--
_name: scene_
_type: const aiScene *_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###aiVector3D scene_center

<!--
_name: scene_center_
_type: aiVector3D_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###aiVector3D scene_max

<!--
_name: scene_max_
_type: aiVector3D_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###aiVector3D scene_min

<!--
_name: scene_min_
_type: aiVector3D_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###vector<  ofxAssimpTexture * >  textures

<!--
_name: textures_
_type: vector<  ofxAssimpTexture * > _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

