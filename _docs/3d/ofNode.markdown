#class ofNode

Example



Reference



Methods



//----------------------

##None ofNode()

_syntax: ofNode()_

_name: ofNode_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ~ofNode()

_syntax: ~ofNode()_

_name: ~ofNode_

_returns: None_

_parameters: _



_description: _















//----------------------

##void setParent(ofNode &parent)

_syntax: setParent(ofNode &parent)_

_name: setParent_

_returns: void_

_parameters: _



_description: _















//----------------------

##void clearParent()

_syntax: clearParent()_

_name: clearParent_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofNode getParent() const 

_syntax: getParent() const _

_name: getParent_

_returns: ofNode_

_parameters: _



_description: _















//----------------------

##ofVec3f getPosition() const 

_syntax: getPosition() const _

_name: getPosition_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##float getX() const 

_syntax: getX() const _

_name: getX_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getY() const 

_syntax: getY() const _

_name: getY_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getZ() const 

_syntax: getZ() const _

_name: getZ_

_returns: float_

_parameters: _



_description: _















//----------------------

##ofVec3f getXAxis() const 

_syntax: getXAxis() const _

_name: getXAxis_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f getYAxis() const 

_syntax: getYAxis() const _

_name: getYAxis_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f getZAxis() const 

_syntax: getZAxis() const _

_name: getZAxis_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f getSideDir() const 

_syntax: getSideDir() const _

_name: getSideDir_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f getLookAtDir() const 

_syntax: getLookAtDir() const _

_name: getLookAtDir_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f getUpDir() const 

_syntax: getUpDir() const _

_name: getUpDir_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##float getPitch() const 

_syntax: getPitch() const _

_name: getPitch_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getHeading() const 

_syntax: getHeading() const _

_name: getHeading_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getRoll() const 

_syntax: getRoll() const _

_name: getRoll_

_returns: float_

_parameters: _



_description: _















//----------------------

##ofQuaternion getOrientationQuat() const 

_syntax: getOrientationQuat() const _

_name: getOrientationQuat_

_returns: ofQuaternion_

_parameters: _



_description: _















//----------------------

##ofVec3f getOrientationEuler() const 

_syntax: getOrientationEuler() const _

_name: getOrientationEuler_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f getScale() const 

_syntax: getScale() const _

_name: getScale_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofMatrix4x4 getLocalTransformMatrix() const 

_syntax: getLocalTransformMatrix() const _

_name: getLocalTransformMatrix_

_returns: ofMatrix4x4_

_parameters: _



_description: _















//----------------------

##ofMatrix4x4 getGlobalTransformMatrix() const 

_syntax: getGlobalTransformMatrix() const _

_name: getGlobalTransformMatrix_

_returns: ofMatrix4x4_

_parameters: _



_description: _















//----------------------

##ofVec3f getGlobalPosition() const 

_syntax: getGlobalPosition() const _

_name: getGlobalPosition_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofQuaternion getGlobalOrientation() const 

_syntax: getGlobalOrientation() const _

_name: getGlobalOrientation_

_returns: ofQuaternion_

_parameters: _



_description: _















//----------------------

##void setTransformMatrix(const ofMatrix4x4 &m44)

_syntax: setTransformMatrix(const ofMatrix4x4 &m44)_

_name: setTransformMatrix_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setPosition(float px, float py, float pz)

_syntax: setPosition(float px, float py, float pz)_

_name: setPosition_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void setPosition(const ofVec3f &p)

_syntax: setPosition(const ofVec3f &p)_

_name: setPosition_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setGlobalPosition(float px, float py, float pz)

_syntax: setGlobalPosition(float px, float py, float pz)_

_name: setGlobalPosition_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void setGlobalPosition(const ofVec3f &p)

_syntax: setGlobalPosition(const ofVec3f &p)_

_name: setGlobalPosition_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setOrientation(const ofQuaternion &q)

_syntax: setOrientation(const ofQuaternion &q)_

_name: setOrientation_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setGlobalOrientation(const ofQuaternion &q)

_syntax: setGlobalOrientation(const ofQuaternion &q)_

_name: setGlobalOrientation_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setScale(float s)

_syntax: setScale(float s)_

_name: setScale_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setScale(float sx, float sy, float sz)

_syntax: setScale(float sx, float sy, float sz)_

_name: setScale_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void setScale(const ofVec3f &s)

_syntax: setScale(const ofVec3f &s)_

_name: setScale_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void move(float x, float y, float z)

_syntax: move(float x, float y, float z)_

_name: move_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void move(const ofVec3f &offset)

_syntax: move(const ofVec3f &offset)_

_name: move_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void truck(float amount)

_syntax: truck(float amount)_

_name: truck_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void boom(float amount)

_syntax: boom(float amount)_

_name: boom_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void dolly(float amount)

_syntax: dolly(float amount)_

_name: dolly_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void tilt(float degrees)

_syntax: tilt(float degrees)_

_name: tilt_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void pan(float degrees)

_syntax: pan(float degrees)_

_name: pan_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void roll(float degrees)

_syntax: roll(float degrees)_

_name: roll_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void rotate(const ofQuaternion &q)

_syntax: rotate(const ofQuaternion &q)_

_name: rotate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void rotate(float degrees, const ofVec3f &v)

_syntax: rotate(float degrees, const ofVec3f &v)_

_name: rotate_

_returns: void_

_parameters: float, const _



_description: _















//----------------------

##void rotate(float degrees, float vx, float vy, float vz)

_syntax: rotate(float degrees, float vx, float vy, float vz)_

_name: rotate_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void rotateAround(const ofQuaternion &q, const ofVec3f &point)

_syntax: rotateAround(const ofQuaternion &q, const ofVec3f &point)_

_name: rotateAround_

_returns: void_

_parameters: const , const _



_description: _















//----------------------

##void rotateAround(float degrees, const ofVec3f &axis, const ofVec3f &point)

_syntax: rotateAround(float degrees, const ofVec3f &axis, const ofVec3f &point)_

_name: rotateAround_

_returns: void_

_parameters: float, const , const _



_description: _















//----------------------

##void lookAt(const ofVec3f &lookAtPosition, ofVec3f upVector=ofVec3f(0, 1, 0))

_syntax: lookAt(const ofVec3f &lookAtPosition, ofVec3f upVector=ofVec3f(0, 1, 0))_

_name: lookAt_

_returns: void_

_parameters: const ,  = _



_description: _















//----------------------

##void lookAt(ofNode &lookAtNode, const ofVec3f &upVector=ofVec3f(0, 1, 0))

_syntax: lookAt(ofNode &lookAtNode, const ofVec3f &upVector=ofVec3f(0, 1, 0))_

_name: lookAt_

_returns: void_

_parameters: const  = _



_description: _















//----------------------

##void orbit(float longitude, float latitude, float radius, const ofVec3f &centerPoint=ofVec3f(0, 0, 0))

_syntax: orbit(float longitude, float latitude, float radius, const ofVec3f &centerPoint=ofVec3f(0, 0, 0))_

_name: orbit_

_returns: void_

_parameters: float, float, float, const  = _



_description: _















//----------------------

##void orbit(float longitude, float latitude, float radius, ofNode &centerNode)

_syntax: orbit(float longitude, float latitude, float radius, ofNode &centerNode)_

_name: orbit_

_returns: void_

_parameters: float, float, float, _



_description: _















//----------------------

##void transformGL() const 

_syntax: transformGL() const _

_name: transformGL_

_returns: void_

_parameters: _



_description: _















//----------------------

##void restoreTransformGL() const 

_syntax: restoreTransformGL() const _

_name: restoreTransformGL_

_returns: void_

_parameters: _



_description: _















//----------------------

##void resetTransform()

_syntax: resetTransform()_

_name: resetTransform_

_returns: void_

_parameters: _



_description: _















//----------------------

##void customDraw()

_syntax: customDraw()_

_name: customDraw_

_returns: void_

_parameters: _



_description: _















//----------------------

##void draw()

_syntax: draw()_

_name: draw_

_returns: void_

_parameters: _



_description: _















//----------------------

##void createMatrix()

_syntax: createMatrix()_

_name: createMatrix_

_returns: void_

_parameters: _



_description: _















//----------------------

##void onPositionChanged()

_syntax: onPositionChanged()_

_name: onPositionChanged_

_returns: void_

_parameters: _



_description: _















//----------------------

##void onOrientationChanged()

_syntax: onOrientationChanged()_

_name: onOrientationChanged_

_returns: void_

_parameters: _



_description: _















//----------------------

##void onScaleChanged()

_syntax: onScaleChanged()_

_name: onScaleChanged_

_returns: void_

_parameters: _



_description: _















