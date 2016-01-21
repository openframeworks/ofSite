#class ofNode


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

A generic 3d object in space with transformation (position, rotation, scale).

The ofNode is the base of all things 3d. It lets you represent a location
and orientation in 3d space and also allows you to add children or parents
so that sets of nodes can move together. This is handy for representing
complex 3d models that are linked together, the same way that your hand is
linked to your wrist (hopefully), which is linked to your elbow (hopefully),
and so on. Nodes are the base of the ofPrimitives, ofCamera, and
ofEasyCamera, among other things.

with API to move around in global or local space
and virtual draw method

Info:
uses right-handed coordinate system
ofNodes 'look' along -ve z axis
All set* methods work in local space unless stated otherwise

To get the current position, check out: getX(), getY(), getZ().
To get the axis of the node call getXAxis() (or the y and z variants for
those other axes). Another really useful feature of the ofNode is that you
can get the [Eulerian angles](http://en.wikipedia.org/wiki/Euler_angles)
of each node: getPitch(), getHeading(), getRoll().
The global transformation matrix of the ofNode is also available using the
getGlobalTransformMatrix(), very handy for figuring out things in relation
to the OpenGL representation of your OF world. getGlobalOrientation() also
is handy, returning a ofQuaternion that you can use to find out whether
your node is upside down in relation to the rest of your OF world (really
an OpenGL context, but let's not get into that quite yet).





##Description

The ofNode is the base of all things 3d. It lets you represent a location and orientation in 3d space and also allows you to add children or parents so that sets of nodes can move together. This is handy for representing complex 3d models that are linked together, the same way that your hand is linked to your wrist (hopefully), which is linked to your elbow (hopefully), and so on. Nodes are the base of the ofPrimitives, ofCamera, and ofEasyCamera, among other things.

To get the current position, check out: getX(), getY(), getZ(). To get the axis of the node call getXAxis() (or the y and z variants for those other axes). Another really useful feature of the ofNode is that you can get the [Eulerian angles](http://en.wikipedia.org/wiki/Euler_angles) of each node: getPitch(), getHeading(), getRoll(). The global transformation matrix of the ofNode is also available using the getGlobalTransformMatrix(), very handy for figuring out things in relation to the OpenGL representation of your OF world. getGlobalOrientation() also is handy, returning a ofQuaternion that you can use to find out whether your node is upside down in relation to the rest of your OF world (really an OpenGL context, but let's not get into that quite yet).





##Methods



###void boom(amount)

<!--
_syntax: boom(amount)_
_name: boom_
_returns: void_
_returns_description: _
_parameters: float amount_
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

Move up+down (in local y axis)





_description: _

Move up+down (in local y axis).





<!----------------------------------------------------------------------------->

###void clearParent(bMaintainGlobalTransform = false)

<!--
_syntax: clearParent(bMaintainGlobalTransform = false)_
_name: clearParent_
_returns: void_
_returns_description: _
_parameters: bool bMaintainGlobalTransform=false_
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

Remove parent node linking





_description: _







<!----------------------------------------------------------------------------->

###void createMatrix()

<!--
_syntax: createMatrix()_
_name: createMatrix_
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

###void customDraw(*renderer)

<!--
_syntax: customDraw(*renderer)_
_name: customDraw_
_returns: void_
_returns_description: _
_parameters: const ofBaseRenderer *renderer_
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

If you extend ofNode and wish to change the way it draws, extend this
try to not use global functions for rendering and instead use the passed
renderer





_description: _







<!----------------------------------------------------------------------------->

###void customDraw()

<!--
_syntax: customDraw()_
_name: customDraw_
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

If you extend ofNode and wish to change the way it draws, extend this.





<!----------------------------------------------------------------------------->

###void dolly(amount)

<!--
_syntax: dolly(amount)_
_name: dolly_
_returns: void_
_returns_description: _
_parameters: float amount_
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

Move forward+backward (in local z axis)





_description: _

Move forward+backward (in local z axis)





<!----------------------------------------------------------------------------->

###void draw()

<!--
_syntax: draw()_
_name: draw_
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

Draw function.
do NOT override this
transforms the node to its position+orientation+scale
and calls the virtual 'customDraw' method above which you CAN override





_description: _

Draw function. do NOT override this transforms the node to its position+orientation+scale and calls the virtual 'customDraw' method above which you CAN override.





<!----------------------------------------------------------------------------->

###ofQuaternion getGlobalOrientation()

<!--
_syntax: getGlobalOrientation()_
_name: getGlobalOrientation_
_returns: ofQuaternion_
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

###ofVec3f getGlobalPosition()

<!--
_syntax: getGlobalPosition()_
_name: getGlobalPosition_
_returns: ofVec3f_
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

###ofVec3f getGlobalScale()

<!--
_syntax: getGlobalScale()_
_name: getGlobalScale_
_returns: ofVec3f_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0072_
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

###ofMatrix4x4 getGlobalTransformMatrix()

<!--
_syntax: getGlobalTransformMatrix()_
_name: getGlobalTransformMatrix_
_returns: ofMatrix4x4_
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

###float getHeading()

<!--
_syntax: getHeading()_
_name: getHeading_
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

###const ofMatrix4x4 & getLocalTransformMatrix()

<!--
_syntax: getLocalTransformMatrix()_
_name: getLocalTransformMatrix_
_returns: const ofMatrix4x4 &_
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

###ofVec3f getLookAtDir()

<!--
_syntax: getLookAtDir()_
_name: getLookAtDir_
_returns: ofVec3f_
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

Get -z axis as 3d vector

Returns: -z axis.





_description: _

Get -z axis.





<!----------------------------------------------------------------------------->

###ofVec3f getOrientationEuler()

<!--
_syntax: getOrientationEuler()_
_name: getOrientationEuler_
_returns: ofVec3f_
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

###ofQuaternion getOrientationQuat()

<!--
_syntax: getOrientationQuat()_
_name: getOrientationQuat_
_returns: ofQuaternion_
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

###ofNode * getParent()

<!--
_syntax: getParent()_
_name: getParent_
_returns: ofNode *_
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

Get the parent node that this node is linked to





_description: _







<!----------------------------------------------------------------------------->

###float getPitch()

<!--
_syntax: getPitch()_
_name: getPitch_
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

###ofVec3f getPosition()

<!--
_syntax: getPosition()_
_name: getPosition_
_returns: ofVec3f_
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

Get position as a 3d vector





_description: _







<!----------------------------------------------------------------------------->

###float getRoll()

<!--
_syntax: getRoll()_
_name: getRoll_
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

###ofVec3f getScale()

<!--
_syntax: getScale()_
_name: getScale_
_returns: ofVec3f_
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

###ofVec3f getSideDir()

<!--
_syntax: getSideDir()_
_name: getSideDir_
_returns: ofVec3f_
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

Get x axis as 3d vector

Returns: x axis.





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f getUpDir()

<!--
_syntax: getUpDir()_
_name: getUpDir_
_returns: ofVec3f_
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

Get y axis as 3d vector

Returns: y axis.





_description: _

Get y axis.





<!----------------------------------------------------------------------------->

###float getX()

<!--
_syntax: getX()_
_name: getX_
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

Get x coordinate





_description: _

Get x coodinate.





<!----------------------------------------------------------------------------->

###ofVec3f getXAxis()

<!--
_syntax: getXAxis()_
_name: getXAxis_
_returns: ofVec3f_
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

Get x axis as 3d vector





_description: _

Get x axis.





<!----------------------------------------------------------------------------->

###float getY()

<!--
_syntax: getY()_
_name: getY_
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

Get y coordinate





_description: _

Get y coordinate.





<!----------------------------------------------------------------------------->

###ofVec3f getYAxis()

<!--
_syntax: getYAxis()_
_name: getYAxis_
_returns: ofVec3f_
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

Get y axis as 3d vector





_description: _

Get y axis.





<!----------------------------------------------------------------------------->

###float getZ()

<!--
_syntax: getZ()_
_name: getZ_
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

Get z coordinate





_description: _

Get z coordinate.





<!----------------------------------------------------------------------------->

###ofVec3f getZAxis()

<!--
_syntax: getZAxis()_
_name: getZAxis_
_returns: ofVec3f_
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

Get z axis as 3d vector





_description: _

Get z axis.





<!----------------------------------------------------------------------------->

###void lookAt(&lookAtPosition, upVector)

<!--
_syntax: lookAt(&lookAtPosition, upVector)_
_name: lookAt_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &lookAtPosition, ofVec3f upVector_
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

Orient node to look at position (-z axis pointing to position)





_description: _

Orient node to look at node (-z axis pointing to node).





<!----------------------------------------------------------------------------->

###void lookAt(&lookAtNode, &upVector)

<!--
_syntax: lookAt(&lookAtNode, &upVector)_
_name: lookAt_
_returns: void_
_returns_description: _
_parameters: const ofNode &lookAtNode, const ofVec3f &upVector_
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

Orient node to look at node (-z axis pointing to node)





_description: _

Orient node to look at position (-z axis pointing to position).





<!----------------------------------------------------------------------------->

###void move(x, y, z)

<!--
_syntax: move(x, y, z)_
_name: move_
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

Move by arbitrary amount





_description: _

Move by arbitrary amount.





<!----------------------------------------------------------------------------->

###void move(&offset)

<!--
_syntax: move(&offset)_
_name: move_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &offset_
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

Move by arbitrary amount





_description: _

Move by arbitrary amount.





<!----------------------------------------------------------------------------->

### ofNode()

<!--
_syntax: ofNode()_
_name: ofNode_
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

\cond INTERNAL





_description: _







<!----------------------------------------------------------------------------->

###void onOrientationChanged()

<!--
_syntax: onOrientationChanged()_
_name: onOrientationChanged_
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

classes extending ofNode can override this methods to get notified when the orientation changed.





_description: _

Classes extending ofNode can override these methods to get notified when the orientation changed.





<!----------------------------------------------------------------------------->

###void onPositionChanged()

<!--
_syntax: onPositionChanged()_
_name: onPositionChanged_
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

classes extending ofNode can override this method to get
notified when the position changed.





_description: _

Classes extending ofNode can override these methods to get notified when the position changed.





<!----------------------------------------------------------------------------->

###void onScaleChanged()

<!--
_syntax: onScaleChanged()_
_name: onScaleChanged_
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

classes extending ofNode can override this methods to get notified when the scale changed.





_description: _

Classes extending ofNode can override these methods to get notified when the scale changed.





<!----------------------------------------------------------------------------->

###void orbit(longitude, latitude, radius, &centerPoint)

<!--
_syntax: orbit(longitude, latitude, radius, &centerPoint)_
_name: orbit_
_returns: void_
_returns_description: _
_parameters: float longitude, float latitude, float radius, const ofVec3f &centerPoint_
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

Orbit object around target at radius





_description: _

Orbit object around target at radius.





<!----------------------------------------------------------------------------->

###void orbit(longitude, latitude, radius, &centerNode)

<!--
_syntax: orbit(longitude, latitude, radius, &centerNode)_
_name: orbit_
_returns: void_
_returns_description: _
_parameters: float longitude, float latitude, float radius, ofNode &centerNode_
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

Orbit object around target at radius.





<!----------------------------------------------------------------------------->

###void pan(degrees)

<!--
_syntax: pan(degrees)_
_name: pan_
_returns: void_
_returns_description: _
_parameters: float degrees_
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

Rotate left+right (around local y axis)





_description: _

Rotate left+right (around local y axis).





<!----------------------------------------------------------------------------->

###void resetTransform()

<!--
_syntax: resetTransform()_
_name: resetTransform_
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

Resets this node's transformation





_description: _







<!----------------------------------------------------------------------------->

###void restoreTransformGL(*renderer)

<!--
_syntax: restoreTransformGL(*renderer)_
_name: restoreTransformGL_
_returns: void_
_returns_description: _
_parameters: ofBaseRenderer *renderer_
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

###void roll(degrees)

<!--
_syntax: roll(degrees)_
_name: roll_
_returns: void_
_returns_description: _
_parameters: float degrees_
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

Roll left+right (around local z axis)





_description: _

roll left+right (around local z axis)





<!----------------------------------------------------------------------------->

###void rotate(&q)

<!--
_syntax: rotate(&q)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q_
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

Rotate by quaternion





_description: _

Rotate by quaternion.





<!----------------------------------------------------------------------------->

###void rotate(degrees, &v)

<!--
_syntax: rotate(degrees, &v)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float degrees, const ofVec3f &v_
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

Rotate around arbitrary axis by angle





_description: _

Rotate around arbitrary axis by angle.





<!----------------------------------------------------------------------------->

###void rotate(degrees, vx, vy, vz)

<!--
_syntax: rotate(degrees, vx, vy, vz)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float degrees, float vx, float vy, float vz_
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

Rotate around arbitrary axis by angle





_description: _

Rotate around arbitrary axis by angle.





<!----------------------------------------------------------------------------->

###void rotateAround(&q, &point)

<!--
_syntax: rotateAround(&q, &point)_
_name: rotateAround_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q, const ofVec3f &point_
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

Rotate by quaternion around point





_description: _

Rotate by quaternion around point.





<!----------------------------------------------------------------------------->

###void rotateAround(degrees, &axis, &point)

<!--
_syntax: rotateAround(degrees, &axis, &point)_
_name: rotateAround_
_returns: void_
_returns_description: _
_parameters: float degrees, const ofVec3f &axis, const ofVec3f &point_
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

Rotate around arbitrary axis by angle around point





_description: _

Rotate around arbitrary axis by angle around point.





<!----------------------------------------------------------------------------->

###void setGlobalOrientation(&q)

<!--
_syntax: setGlobalOrientation(&q)_
_name: setGlobalOrientation_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###void setGlobalPosition(px, py, pz)

<!--
_syntax: setGlobalPosition(px, py, pz)_
_name: setGlobalPosition_
_returns: void_
_returns_description: _
_parameters: float px, float py, float pz_
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

###void setGlobalPosition(&p)

<!--
_syntax: setGlobalPosition(&p)_
_name: setGlobalPosition_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &p_
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

###void setOrientation(&q)

<!--
_syntax: setOrientation(&q)_
_name: setOrientation_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q_
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

Set orientation with a quaternion





_description: _







<!----------------------------------------------------------------------------->

###void setOrientation(&eulerAngles)

<!--
_syntax: setOrientation(&eulerAngles)_
_name: setOrientation_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &eulerAngles_
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

Set orientation with a euler angles
\note Prepare for gimbal lock





_description: _







<!----------------------------------------------------------------------------->

###void setParent(&parent, bMaintainGlobalTransform = false)

<!--
_syntax: setParent(&parent, bMaintainGlobalTransform = false)_
_name: setParent_
_returns: void_
_returns_description: _
_parameters: ofNode &parent, bool bMaintainGlobalTransform=false_
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

Set parent to link nodes transformations. This will inherit
transformations from parent node.





_description: _

Set parent to link nodes transformations are inherited from parent node set to NULL if not needed (default).





<!----------------------------------------------------------------------------->

###void setPosition(px, py, pz)

<!--
_syntax: setPosition(px, py, pz)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: float px, float py, float pz_
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

Set the position of the node





_description: _







<!----------------------------------------------------------------------------->

###void setPosition(&p)

<!--
_syntax: setPosition(&p)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &p_
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

###void setScale(s)

<!--
_syntax: setScale(s)_
_name: setScale_
_returns: void_
_returns_description: _
_parameters: float s_
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

###void setScale(sx, sy, sz)

<!--
_syntax: setScale(sx, sy, sz)_
_name: setScale_
_returns: void_
_returns_description: _
_parameters: float sx, float sy, float sz_
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

###void setScale(&s)

<!--
_syntax: setScale(&s)_
_name: setScale_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &s_
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

###void setTransformMatrix(&m44)

<!--
_syntax: setTransformMatrix(&m44)_
_name: setTransformMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m44_
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

Directly set the transformation matrix





_description: _

Directly set transformation matrix.





<!----------------------------------------------------------------------------->

###void tilt(degrees)

<!--
_syntax: tilt(degrees)_
_name: tilt_
_returns: void_
_returns_description: _
_parameters: float degrees_
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

Tilt up+down (around local x axis)





_description: _

Tilt up+down (around local x axis)





<!----------------------------------------------------------------------------->

###void transformGL(*renderer)

<!--
_syntax: transformGL(*renderer)_
_name: transformGL_
_returns: void_
_returns_description: _
_parameters: ofBaseRenderer *renderer_
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

Set opengl's modelview matrix to this nodes transform
if you want to draw something at the position+orientation+scale of this node...
...call ofNode::transform(); write your draw code, and ofNode::restoreTransform();
OR A simpler way is to extend ofNode and override ofNode::customDraw();





_description: _

Set opengl's modelview matrix to this nodes transform.
If you want to draw something at the position+orientation+scale of this node...
...call ofNode::transform(); write your draw code, and ofNode::restoreTransform();
OR A simpler way is to extend ofNode and override ofNode::customDraw().





<!----------------------------------------------------------------------------->

###void truck(amount)

<!--
_syntax: truck(amount)_
_name: truck_
_returns: void_
_returns_description: _
_parameters: float amount_
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

Move sideways (in local x axis)





_description: _

move sideways (in local x axis)





<!----------------------------------------------------------------------------->

###void updateAxis()

<!--
_syntax: updateAxis()_
_name: updateAxis_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

### ~ofNode()

<!--
_syntax: ~ofNode()_
_name: ~ofNode_
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



###ofVec3f axis

<!--
_name: axis_
_type: ofVec3f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool legacyCustomDrawOverrided

<!--
_name: legacyCustomDrawOverrided_
_type: bool_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 localTransformMatrix

<!--
_name: localTransformMatrix_
_type: ofMatrix4x4_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofQuaternion orientation

<!--
_name: orientation_
_type: ofQuaternion_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofNode parent

<!--
_name: parent_
_type: ofNode_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

\}





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f position

<!--
_name: position_
_type: ofVec3f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofVec3f scale

<!--
_name: scale_
_type: ofVec3f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

