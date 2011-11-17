#class ofCamera

Example



Reference



Methods



//----------------------

##None ofCamera()

_syntax: ofCamera()_

_name: ofCamera_

_returns: None_

_parameters: _



_description: _















//----------------------

##void setFov(float f)

_syntax: setFov(float f)_

_name: setFov_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setNearClip(float f)

_syntax: setNearClip(float f)_

_name: setNearClip_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setFarClip(float f)

_syntax: setFarClip(float f)_

_name: setFarClip_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void enableOrtho()

_syntax: enableOrtho()_

_name: enableOrtho_

_returns: void_

_parameters: _



_description: _















//----------------------

##void disableOrtho()

_syntax: disableOrtho()_

_name: disableOrtho_

_returns: void_

_parameters: _



_description: _















//----------------------

##bool getOrtho() const 

_syntax: getOrtho() const _

_name: getOrtho_

_returns: bool_

_parameters: _



_description: _















//----------------------

##float getImagePlaneDistance(ofRectangle viewport=ofGetCurrentViewport()) const 

_syntax: getImagePlaneDistance(ofRectangle viewport=ofGetCurrentViewport()) const _

_name: getImagePlaneDistance_

_returns: float_

_parameters:  = ofGetCurrentViewport()_



_description: _















//----------------------

##void begin(ofRectangle viewport=ofGetCurrentViewport())

_syntax: begin(ofRectangle viewport=ofGetCurrentViewport())_

_name: begin_

_returns: void_

_parameters:  = ofGetCurrentViewport()_



_description: _















//----------------------

##void end()

_syntax: end()_

_name: end_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofMatrix4x4 getProjectionMatrix(ofRectangle viewport=ofGetCurrentViewport())

_syntax: getProjectionMatrix(ofRectangle viewport=ofGetCurrentViewport())_

_name: getProjectionMatrix_

_returns: ofMatrix4x4_

_parameters:  = ofGetCurrentViewport()_



_description: _















//----------------------

##ofMatrix4x4 getModelViewMatrix()

_syntax: getModelViewMatrix()_

_name: getModelViewMatrix_

_returns: ofMatrix4x4_

_parameters: _



_description: _















//----------------------

##ofMatrix4x4 getModelViewProjectionMatrix(ofRectangle viewport=ofGetCurrentViewport())

_syntax: getModelViewProjectionMatrix(ofRectangle viewport=ofGetCurrentViewport())_

_name: getModelViewProjectionMatrix_

_returns: ofMatrix4x4_

_parameters:  = ofGetCurrentViewport()_



_description: _















//----------------------

##ofVec3f worldToScreen(ofVec3f WorldXYZ, ofRectangle viewport=ofGetCurrentViewport())

_syntax: worldToScreen(ofVec3f WorldXYZ, ofRectangle viewport=ofGetCurrentViewport())_

_name: worldToScreen_

_returns: ofVec3f_

_parameters:  = ofGetCurrentViewport()_



_description: _















//----------------------

##ofVec3f screenToWorld(ofVec3f ScreenXYZ, ofRectangle viewport=ofGetCurrentViewport())

_syntax: screenToWorld(ofVec3f ScreenXYZ, ofRectangle viewport=ofGetCurrentViewport())_

_name: screenToWorld_

_returns: ofVec3f_

_parameters:  = ofGetCurrentViewport()_



_description: _















//----------------------

##ofVec3f worldToCamera(ofVec3f WorldXYZ, ofRectangle viewport=ofGetCurrentViewport())

_syntax: worldToCamera(ofVec3f WorldXYZ, ofRectangle viewport=ofGetCurrentViewport())_

_name: worldToCamera_

_returns: ofVec3f_

_parameters:  = ofGetCurrentViewport()_



_description: _















//----------------------

##ofVec3f cameraToWorld(ofVec3f CameraXYZ, ofRectangle viewport=ofGetCurrentViewport())

_syntax: cameraToWorld(ofVec3f CameraXYZ, ofRectangle viewport=ofGetCurrentViewport())_

_name: cameraToWorld_

_returns: ofVec3f_

_parameters:  = ofGetCurrentViewport()_



_description: _















//----------------------

##void calcClipPlanes(ofRectangle viewport)

_syntax: calcClipPlanes(ofRectangle viewport)_

_name: calcClipPlanes_

_returns: void_

_parameters: _



_description: _















