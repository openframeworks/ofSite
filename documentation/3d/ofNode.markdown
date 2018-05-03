#class ofNode


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

A generic 3d object in space with transformation (position, rotation, scale).





##Description

The ofNode is the base of all things 3d. It lets you represent a location and orientation in 3d space and also allows you to add children or parents so that sets of nodes can move together. This is handy for representing complex 3d models that are linked together, the same way that your hand is linked to your wrist (hopefully), which is linked to your elbow (hopefully), and so on. Nodes are the base of the ofPrimitives, ofCamera, and ofEasyCamera, among other things.

To get the current position, check out: getX(), getY(), getZ(). To get the axis of the node call getXAxis() (or the y and z variants for those other axes). Another really useful feature of the ofNode is that you can get the [Eulerian angles](http://en.wikipedia.org/wiki/Euler_angles) of each node: getPitch(), getHeading(), getRoll(). The global transformation matrix of the ofNode is also available using the getGlobalTransformMatrix(), very handy for figuring out things in relation to the OpenGL representation of your OF world. getGlobalOrientation() also is handy, returning a ofQuaternion that you can use to find out whether your node is upside down in relation to the rest of your OF world (really an OpenGL context, but let's not get into that quite yet).





##Methods



###void addListener(&node)

<!--
_syntax: addListener(&node)_
_name: addListener_
_returns: void_
_returns_description: _
_parameters: ofNode &node_
_access: private_
_version_started: 0.10.0_
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

Move node up+down relative to current position (in local y axis).

**Parameters:**

param0 Desired relative position change along local y axis as float.





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

Remove parent node linking.

**Parameters:**

param0 Boolean if maintain child's global transformations (default = false).





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

\}





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

If you extend ofNode and wish to change the way it draws, extend this.
\note Try to not use global functions for rendering and instead use the passed
renderer.





_description: _

If you extend ofNode and wish to change the way it draws, extend this.





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

If you extend ofNode and wish to change the way it draws, extend this.

**Parameters:**

param0 A pointer to the renderer you want to draw to.
\note Try to not use global functions for rendering and instead use the passed
renderer.





_description: _







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

Move node backward+forward relative to current position (in local z axis).

**Parameters:**

param0 Desired relative position change along local z axis as float.





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

Draw the node as a white cube with xyz axes.
\note do NOT override this.
It transforms the node to its position+orientation+scale
and calls the virtual 'customDraw' method above which you CAN override.





_description: _

Draw function. do NOT override this transforms the node to its position+orientation+scale and calls the virtual 'customDraw' method above which you CAN override.





<!----------------------------------------------------------------------------->

###glm::quat getGlobalOrientation()

<!--
_syntax: getGlobalOrientation()_
_name: getGlobalOrientation_
_returns: glm::quat_
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

Get the global orientation of the node as a quaternion.

**Returns**: An quaternion of the global orientations(useful for complex rotations)





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getGlobalPosition()

<!--
_syntax: getGlobalPosition()_
_name: getGlobalPosition_
_returns: glm::vec3_
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

Get node's global position as a 3D vector.

**Returns**: A 3D vector with the global coordinates.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getGlobalScale()

<!--
_syntax: getGlobalScale()_
_name: getGlobalScale_
_returns: glm::vec3_
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

Get global scale of node in xyz axes where 1 is default.

**Returns**: The global scale in the xyz axes where 1 = 100% of size.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 getGlobalTransformMatrix()

<!--
_syntax: getGlobalTransformMatrix()_
_name: getGlobalTransformMatrix_
_returns: glm::mat4_
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

Get node's global transformations (position, orientation, scale).

**Returns**: A refrence to mat4 containing node's global transformations.

**See also**: https://open.gl/transformations





_description: _







<!----------------------------------------------------------------------------->

###float getHeadingDeg()

<!--
_syntax: getHeadingDeg()_
_name: getHeadingDeg_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get heading of node, aka the rotation along local y axis.

**Returns**: The rotation around the local y axis in degrees, as a float.





_description: _







<!----------------------------------------------------------------------------->

###float getHeadingRad()

<!--
_syntax: getHeadingRad()_
_name: getHeadingRad_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get heading of node, aka the rotation along local y axis.

**Returns**: The rotation around the local y axis in degrees, as a float.





_description: _







<!----------------------------------------------------------------------------->

###const glm::mat4 & getLocalTransformMatrix()

<!--
_syntax: getLocalTransformMatrix()_
_name: getLocalTransformMatrix_
_returns: const glm::mat4 &_
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

Get node's local transformations (position, orientation, scale).

**Returns**: A refrence to mat4 containing node's local transformations.

**See also**: https://open.gl/transformations





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getLookAtDir()

<!--
_syntax: getLookAtDir()_
_name: getLookAtDir_
_returns: glm::vec3_
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

Get direction the node looks at aka local -z axis, as 3d vector.

**Returns**: A normalized 3D vector of the node's local -z axis direction.





_description: _

Get -z axis.





<!----------------------------------------------------------------------------->

###glm::vec3 getOrientationEulerDeg()

<!--
_syntax: getOrientationEulerDeg()_
_name: getOrientationEulerDeg_
_returns: glm::vec3_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get local orientation of node in degrees around x, y, and z axes.

**Returns**: The local x, y and z axes orientation in degrees, as a 3D vector.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getOrientationEulerRad()

<!--
_syntax: getOrientationEulerRad()_
_name: getOrientationEulerRad_
_returns: glm::vec3_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get local orientation of node in degrees around x, y, and z axes.

**Returns**: The local x, y and z axes orientation in degrees, as a 3D vector.





_description: _







<!----------------------------------------------------------------------------->

###glm::quat getOrientationQuat()

<!--
_syntax: getOrientationQuat()_
_name: getOrientationQuat_
_returns: glm::quat_
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

Get the local orientation of the node as a quaternion.

**Returns**: A quaternion of local orientation (useful for complex rotations)





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

Get the parent node of this node.

**Returns**: Pointer to parent ofNode.





_description: _







<!----------------------------------------------------------------------------->

###float getPitchDeg()

<!--
_syntax: getPitchDeg()_
_name: getPitchDeg_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get pitch of node, aka the rotation along local x axis.

**Returns**: The rotation around the local x axis in degrees, as a float.





_description: _







<!----------------------------------------------------------------------------->

###float getPitchRad()

<!--
_syntax: getPitchRad()_
_name: getPitchRad_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get pitch of node, aka the rotation along local x axis.

**Returns**: The rotation around the local x axis in degrees, as a float.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getPosition()

<!--
_syntax: getPosition()_
_name: getPosition_
_returns: glm::vec3_
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

Get node's local position as a 3D vector.

**Returns**: A 3D vector with the local coordinates.





_description: _







<!----------------------------------------------------------------------------->

###float getRollDeg()

<!--
_syntax: getRollDeg()_
_name: getRollDeg_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get roll of node, aka the rotation along local z axis.

**Returns**: The rotation around the local z axis in degrees, as a float.





_description: _







<!----------------------------------------------------------------------------->

###float getRollRad()

<!--
_syntax: getRollRad()_
_name: getRollRad_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get roll of node, aka the rotation along local z axis.

**Returns**: The rotation around the local z axis in degrees, as a float.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getScale()

<!--
_syntax: getScale()_
_name: getScale_
_returns: glm::vec3_
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

Get local scale of node in xyz axes where 1 is default.

**Returns**: The local scale in the xyz axes where 1 = 100% of size.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getSideDir()

<!--
_syntax: getSideDir()_
_name: getSideDir_
_returns: glm::vec3_
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

Get direction of node's side aka local x axis, as 3d vector.

**Returns**: A normalized 3D vector of the node's local x axis direction.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getUpDir()

<!--
_syntax: getUpDir()_
_name: getUpDir_
_returns: glm::vec3_
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

Get direction of node's top aka local y axis, as 3d vector.

**Returns**: A normalized 3D vector of the node's local y axis direction.





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

Get node's local x position.

**Returns**: Local x coordinate as a float.





_description: _

Get x coodinate.





<!----------------------------------------------------------------------------->

###glm::vec3 getXAxis()

<!--
_syntax: getXAxis()_
_name: getXAxis_
_returns: glm::vec3_
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

Get the node's local x axis as 3d vector.

**Returns**: A normalized 3D vector of the node's local x axis direction.





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

Get node's local y position.

**Returns**: Local y coordinate as a float.





_description: _

Get y coordinate.





<!----------------------------------------------------------------------------->

###glm::vec3 getYAxis()

<!--
_syntax: getYAxis()_
_name: getYAxis_
_returns: glm::vec3_
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

Get the node's local y axis as 3d vector.

**Returns**: A normalized 3D vector of the node's local y axis direction.





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

Get node's local z position.

**Returns**: Local z coordinate as a float.





_description: _

Get z coordinate.





<!----------------------------------------------------------------------------->

###glm::vec3 getZAxis()

<!--
_syntax: getZAxis()_
_name: getZAxis_
_returns: glm::vec3_
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

Get the node's local z axis as 3d vector.

**Returns**: A normalized 3D vector of the node's local z axis direction.





_description: _

Get z axis.





<!----------------------------------------------------------------------------->

###void lookAt(&lookAtNode)

<!--
_syntax: lookAt(&lookAtNode)_
_name: lookAt_
_returns: void_
_returns_description: _
_parameters: const ofNode &lookAtNode_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Orient node to look at another node (-z axis pointing at other node).

**Parameters:**

param0 A reference to the node to look at.
\note This version calculates the up vector automatically to try to keep
	  it relatively consistant with the original angle.





_description: _







<!----------------------------------------------------------------------------->

###void lookAt(&lookAtNode, &upVector)

<!--
_syntax: lookAt(&lookAtNode, &upVector)_
_name: lookAt_
_returns: void_
_returns_description: _
_parameters: const ofNode &lookAtNode, const glm::vec3 &upVector_
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

Orient node to look at another node (-z axis pointing at other node).

**Parameters:**

param0 A reference to the node to look at.

param1 The desired up axis as a ref to cartesian 3D vector.





_description: _

Orient node to look at node (-z axis pointing to node).





<!----------------------------------------------------------------------------->

###void lookAt(&lookAtPosition)

<!--
_syntax: lookAt(&lookAtPosition)_
_name: lookAt_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &lookAtPosition_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Orient node to look at point (-z axis pointing to global position).

**Parameters:**

param0 XYZ coordinates of point to look at as ref to 3D vector.
\note This version calculates the up vector automatically to try to keep
	  it relatively consistant with the original angle.





_description: _







<!----------------------------------------------------------------------------->

###void lookAt(&lookAtPosition, upVector)

<!--
_syntax: lookAt(&lookAtPosition, upVector)_
_name: lookAt_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &lookAtPosition, glm::vec3 upVector_
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

Orient node to look at point (-z axis pointing to global position).

**Parameters:**

param0 XYZ coordinates of point to look at as ref to 3D vector.

param1 The desired up axis as a cartesian 3D vector.





_description: _

Orient node to look at position (-z axis pointing to position).





<!----------------------------------------------------------------------------->

###void move(&offset)

<!--
_syntax: move(&offset)_
_name: move_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &offset_
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

Move node by relative amount with xyz as ref to 3D vector.

**Parameters:**

param0 Desired relative position change along all axes as ref to 3D vector.





_description: _

Move by arbitrary amount.





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

Move node by relative amount with xyz coordinates.

**Parameters:**

param0 Desired relative position change along x axis as a float.

param1 Desired relative position change along y axis as a float.

param2 Desired relative position change along z axis as a float.





_description: _

Move by arbitrary amount.





<!----------------------------------------------------------------------------->

### ofNode(&&node)

<!--
_syntax: ofNode(&&node)_
_name: ofNode_
_returns: _
_returns_description: _
_parameters: ofNode &&node_
_access: public_
_version_started: 0.10.0_
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

### ofNode(&node)

<!--
_syntax: ofNode(&node)_
_name: ofNode_
_returns: _
_returns_description: _
_parameters: const ofNode &node_
_access: public_
_version_started: 0.10.0_
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

###void onParentOrientationChanged(&orientation)

<!--
_syntax: onParentOrientationChanged(&orientation)_
_name: onParentOrientationChanged_
_returns: void_
_returns_description: _
_parameters: glm::quat &orientation_
_access: private_
_version_started: 0.10.0_
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

###void onParentPositionChanged(&position)

<!--
_syntax: onParentPositionChanged(&position)_
_name: onParentPositionChanged_
_returns: void_
_returns_description: _
_parameters: glm::vec3 &position_
_access: private_
_version_started: 0.10.0_
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

###void onParentScaleChanged(&scale)

<!--
_syntax: onParentScaleChanged(&scale)_
_name: onParentScaleChanged_
_returns: void_
_returns_description: _
_parameters: glm::vec3 &scale_
_access: private_
_version_started: 0.10.0_
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

###ofNode & operator=(&&node)

<!--
_syntax: operator=(&&node)_
_name: operator=_
_returns: ofNode &_
_returns_description: _
_parameters: ofNode &&node_
_access: public_
_version_started: 0.10.0_
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

###ofNode & operator=(&node)

<!--
_syntax: operator=(&node)_
_name: operator=_
_returns: ofNode &_
_returns_description: _
_parameters: const ofNode &node_
_access: public_
_version_started: 0.10.0_
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

###void orbitDeg(longitude, latitude, radius, &centerNode)

<!--
_syntax: orbitDeg(longitude, latitude, radius, &centerNode)_
_name: orbitDeg_
_returns: void_
_returns_description: _
_parameters: float longitude, float latitude, float radius, ofNode &centerNode_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Orbit node around another node at a specific radius.

**Parameters:**

param0 The longitudinal position of the node in degrees as float.

param1 The latitudinal position of the node in degrees as float.

param2 The desired radius from the other node in degrees as float.

param3 A reference to the node to rotate around.





_description: _







<!----------------------------------------------------------------------------->

###void orbitDeg(longitude, latitude, radius, &centerPoint)

<!--
_syntax: orbitDeg(longitude, latitude, radius, &centerPoint)_
_name: orbitDeg_
_returns: void_
_returns_description: _
_parameters: float longitude, float latitude, float radius, const glm::vec3 &centerPoint_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Orbit node around a global position at a specific radius.

**Parameters:**

param0 The longitudinal position of the node in degrees as float.

param1 The latitudinal position of the node in degrees as float.

param2 The desired radius from the position in degrees as float.

param3 The global position to orbit around as ref to 3D vector. Default = (0, 0, 0).





_description: _







<!----------------------------------------------------------------------------->

###void orbitRad(longitude, latitude, radius, &centerNode)

<!--
_syntax: orbitRad(longitude, latitude, radius, &centerNode)_
_name: orbitRad_
_returns: void_
_returns_description: _
_parameters: float longitude, float latitude, float radius, ofNode &centerNode_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Orbit node around another node at a specific radius.

**Parameters:**

param0 The longitudinal position of the node in radians as float.

param1 The latitudinal position of the node in radians as float.

param2 The desired radius from the other node in radians as float.

param3 A reference to the node to rotate around.





_description: _







<!----------------------------------------------------------------------------->

###void orbitRad(longitude, latitude, radius, &centerPoint)

<!--
_syntax: orbitRad(longitude, latitude, radius, &centerPoint)_
_name: orbitRad_
_returns: void_
_returns_description: _
_parameters: float longitude, float latitude, float radius, const glm::vec3 &centerPoint_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Orbit node around a global position at a specific radius.

**Parameters:**

param0 The longitudinal position of the node in radians as float.

param1 The latitudinal position of the node in radians as float.

param2 The desired radius from the position in radians as float.

param3 The global position to orbit around as ref to 3D vector. Default = (0, 0, 0).





_description: _







<!----------------------------------------------------------------------------->

###void panDeg(degrees)

<!--
_syntax: panDeg(degrees)_
_name: panDeg_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate left+right relative to current orientation (around local y axis).

**Parameters:**

param0 Desired relative rotation change along local y axis in degrees as float.





_description: _







<!----------------------------------------------------------------------------->

###void panRad(radians)

<!--
_syntax: panRad(radians)_
_name: panRad_
_returns: void_
_returns_description: _
_parameters: float radians_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate left+right relative to current orientation (around local y axis).

**Parameters:**

param0 Desired relative rotation change along local y axis in radians as float.





_description: _







<!----------------------------------------------------------------------------->

###void removeListener(&node)

<!--
_syntax: removeListener(&node)_
_name: removeListener_
_returns: void_
_returns_description: _
_parameters: ofNode &node_
_access: private_
_version_started: 0.10.0_
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

Reset this node's transformations, position, rotation and scale.





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

Restore opengl renderer's previous modelview transform matrix.

**Parameters:**

param0 A pointer to the renderer you want to restore transformation to;





_description: _







<!----------------------------------------------------------------------------->

###void rollDeg(degrees)

<!--
_syntax: rollDeg(degrees)_
_name: rollDeg_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Roll left+right relative to current orientation (around local z axis).

**Parameters:**

param0 Desired relative rotation change along local z axis in degrees as float.





_description: _







<!----------------------------------------------------------------------------->

###void rollRad(radians)

<!--
_syntax: rollRad(radians)_
_name: rollRad_
_returns: void_
_returns_description: _
_parameters: float radians_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Roll left+right relative to current orientation (around local z axis).

**Parameters:**

param0 Desired relative rotation change along local z axis in radians as float.





_description: _







<!----------------------------------------------------------------------------->

###void rotate(&q)

<!--
_syntax: rotate(&q)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: const glm::quat &q_
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

Rotate relative to current orientation by quaternion.

**Parameters:**

param0 Desired relative rotation change as a ref to quaternion.





_description: _

Rotate around arbitrary axis by angle.





<!----------------------------------------------------------------------------->

###void rotateAround(&q, &point)

<!--
_syntax: rotateAround(&q, &point)_
_name: rotateAround_
_returns: void_
_returns_description: _
_parameters: const glm::quat &q, const glm::vec3 &point_
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

Rotate relative to current orientation by quaternion around point.

**Parameters:**

param0 Desired relative rotation change as a ref to quaternion.

param1 Point to rotate around in local xyz coordinates as ref to 3D vector.





_description: _

Rotate around arbitrary axis by angle around point.





<!----------------------------------------------------------------------------->

###void rotateAroundDeg(degrees, &axis, &point)

<!--
_syntax: rotateAroundDeg(degrees, &axis, &point)_
_name: rotateAroundDeg_
_returns: void_
_returns_description: _
_parameters: float degrees, const glm::vec3 &axis, const glm::vec3 &point_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate relative to current orientation around arbitrary axis around point.

**Parameters:**

param0 Desired relative angle change in degrees as float.

param1 The arbitrary axis to rotate around as ref to cartesian 3D vector.

param2 Point to rotate around in local xyz coordinates as ref to 3D vector.





_description: _







<!----------------------------------------------------------------------------->

###void rotateAroundRad(radians, &axis, &point)

<!--
_syntax: rotateAroundRad(radians, &axis, &point)_
_name: rotateAroundRad_
_returns: void_
_returns_description: _
_parameters: float radians, const glm::vec3 &axis, const glm::vec3 &point_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate relative to current orientation around arbitrary axis around point.

**Parameters:**

param0 Desired relative angle change in degrees as float.

param1 The arbitrary axis to rotate around as ref to cartesian 3D vector.

param2 Point to rotate around in local xyz coordinates as ref to 3D vector.





_description: _







<!----------------------------------------------------------------------------->

###void rotateDeg(degrees, &v)

<!--
_syntax: rotateDeg(degrees, &v)_
_name: rotateDeg_
_returns: void_
_returns_description: _
_parameters: float degrees, const glm::vec3 &v_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate relative to current orientation around arbitrary axis.

**Parameters:**

param0 Desired relative angle change in degrees as float.

param1 Desired axis to rotate around as a ref to cartesian 3D Vector.





_description: _







<!----------------------------------------------------------------------------->

###void rotateDeg(degrees, vx, vy, vz)

<!--
_syntax: rotateDeg(degrees, vx, vy, vz)_
_name: rotateDeg_
_returns: void_
_returns_description: _
_parameters: float degrees, float vx, float vy, float vz_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate relative to current orientation around arbitrary axis.

**Parameters:**

param0 Desired relative angle change in degrees as float.

param1 X angle of the axis to rotate around in degrees as float.

param2 Y angle of the axis to rotate around in degrees as float.

param3 Z angle of the axis to rotate around in degrees as float.





_description: _







<!----------------------------------------------------------------------------->

###void rotateRad(radians, &v)

<!--
_syntax: rotateRad(radians, &v)_
_name: rotateRad_
_returns: void_
_returns_description: _
_parameters: float radians, const glm::vec3 &v_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate relative to current orientation around arbitrary axis.

**Parameters:**

param0 Desired relative angle change in radians as float.

param1 Desired axis to rotate around as a ref to cartesian 3D Vector.





_description: _







<!----------------------------------------------------------------------------->

###void rotateRad(radians, vx, vy, vz)

<!--
_syntax: rotateRad(radians, vx, vy, vz)_
_name: rotateRad_
_returns: void_
_returns_description: _
_parameters: float radians, float vx, float vy, float vz_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate relative to current orientation around arbitrary axis.

**Parameters:**

param0 Desired relative angle change in radians as float.

param1 X angle of the axis to rotate around in degrees as float.

param2 Y angle of the axis to rotate around in degrees as float.

param3 Z angle of the axis to rotate around in degrees as float.





_description: _







<!----------------------------------------------------------------------------->

###void setGlobalOrientation(&q)

<!--
_syntax: setGlobalOrientation(&q)_
_name: setGlobalOrientation_
_returns: void_
_returns_description: _
_parameters: const glm::quat &q_
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

Set global orientation with a quaternion.

**Parameters:**

param0 Desired global orientation as ref to an glm::quat.





_description: _







<!----------------------------------------------------------------------------->

###void setGlobalPosition(&p)

<!--
_syntax: setGlobalPosition(&p)_
_name: setGlobalPosition_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &p_
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

Set the global position of the node using a 3D vector of coordinates.

**Parameters:**

param0 Desired global xyz coordinates as ref to 3D vector.





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

Set the global position of the node using xyz coordinates.

**Parameters:**

param0 Desired global x coordinate as a float.

param1 Desired global y coordinate as a float.

param2 Desired global z coordinate as a float.





_description: _







<!----------------------------------------------------------------------------->

###void setOrientation(&eulerAngles)

<!--
_syntax: setOrientation(&eulerAngles)_
_name: setOrientation_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &eulerAngles_
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

Set local orientation with xyz euler angles.

**Parameters:**

param0 Desired local xyz angles in degrees, as ref to 3D vector.
\note Using euler angles can cause gimbal lock.

**See also**: https://en.wikipedia.org/wiki/Gimbal_lock





_description: _







<!----------------------------------------------------------------------------->

###void setOrientation(&q)

<!--
_syntax: setOrientation(&q)_
_name: setOrientation_
_returns: void_
_returns_description: _
_parameters: const glm::quat &q_
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

Set local orientation with a quaternion.

**Parameters:**

param0 Desired local orientation as ref to an glm::quat.





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

Set parent for the node. The node will inherit transformations from parent.

**Parameters:**

param0 Reference to the ofNode which becomes the parent node.

param1 Boolean if maintain child's global transformations (default = false).





_description: _

Set parent to link nodes transformations are inherited from parent node set to NULL if not needed (default).





<!----------------------------------------------------------------------------->

###void setPosition(&p)

<!--
_syntax: setPosition(&p)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &p_
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

Set the local position of the node using a 3D vector of coordinates.

**Parameters:**

param0 Desired local xyz coordinates as ref to 3D vector.





_description: _







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

Set the local position of the node using xyz coordinates.

**Parameters:**

param0 Desired local x coordinate as a float.

param1 Desired local y coordinate as a float.

param2 Desired local z coordinate as a float.





_description: _







<!----------------------------------------------------------------------------->

###void setScale(&s)

<!--
_syntax: setScale(&s)_
_name: setScale_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &s_
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

Set local scale for xyz axes individually with a 3D vector.

**Parameters:**

param0 Desired local scale for all axes as ref to 3D vector where 1 = 100%.





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

Set local uniform scale (x, y, and z are equally scaled).

**Parameters:**

param0 Desired scale for all axes as a float where 1 = 100%.





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

Set local scale for xyz axes individually.

**Parameters:**

param0 Desired local scale for x axis as a float where 1 = 100%.

param1 Desired local scale for y axis as a float where 1 = 100%.

param2 Desired local scale for z axis as a float where 1 = 100%.





_description: _







<!----------------------------------------------------------------------------->

###void tiltDeg(degrees)

<!--
_syntax: tiltDeg(degrees)_
_name: tiltDeg_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Tilt up+down relative to current orientation (around local x axis).

**Parameters:**

param0 Desired relative rotation change along local x axis in degrees as float.





_description: _







<!----------------------------------------------------------------------------->

###void tiltRad(radians)

<!--
_syntax: tiltRad(radians)_
_name: tiltRad_
_returns: void_
_returns_description: _
_parameters: float radians_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Tilt up+down relative to current orientation (around local x axis).

**Parameters:**

param0 Desired relative rotation change along local x axis in radians as float.





_description: _







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

Set opengl renderer's modelview matrix to this nodes transform.

**Parameters:**

param0 A pointer to the renderer you want to set to this node's transform;
\note If you want to draw something at the position+orientation+scale of this node,
call ofNode::transform(); write your draw code, and ofNode::restoreTransform();
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

Move node left+right relative to current position (in local x axis).

**Parameters:**

param0 Desired relative position change along local x axis as float.





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

###int children

<!--
_name: children_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
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

