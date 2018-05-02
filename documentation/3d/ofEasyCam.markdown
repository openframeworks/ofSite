#class ofEasyCam


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofCamera_
-->

##InlineDescription

A super simple camera for interacting with objects in 3D space.





##Description

ofCamera objects useful for viewing 3D scenes. ofEasyCam gives you a very simple to use interactive camera to view your scene. It's based more or less on PeasyCam from Processing.

It has a few default controls built into it:

* Left click drag = orbit the target
* Right click drag = dolly in and out
* Double click = reset camera position





##Methods



###void addInteraction(type, mouseButton, key)

<!--
_syntax: addInteraction(type, mouseButton, key)_
_name: addInteraction_
_returns: void_
_returns_description: _
_parameters: ofEasyCam::TransformType type, int mouseButton, int key_
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

###void begin(&viewport)

<!--
_syntax: begin(&viewport)_
_name: begin_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &viewport_
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

\}
\name Rendering
\{





_description: _

Begin using the camera, e.g.:

c++
myCamera.begin();

ofDrawGrid();
//draw rest of scene

myCamera.end();





<!----------------------------------------------------------------------------->

###void begin()

<!--
_syntax: begin()_
_name: begin_
_returns: void_
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







_description: _







<!----------------------------------------------------------------------------->

###void clearControlArea()

<!--
_syntax: clearControlArea()_
_name: clearControlArea_
_returns: void_
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

Clears the area bounds for mouse control so that
the full viewport is used.





_description: _







<!----------------------------------------------------------------------------->

###void disableInertia()

<!--
_syntax: disableInertia()_
_name: disableInertia_
_returns: void_
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







_description: _







<!----------------------------------------------------------------------------->

###void disableMouseInput()

<!--
_syntax: disableMouseInput()_
_name: disableMouseInput_
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

Disable mouse camera control.





_description: _







<!----------------------------------------------------------------------------->

###void disableMouseMiddleButton()

<!--
_syntax: disableMouseMiddleButton()_
_name: disableMouseMiddleButton_
_returns: void_
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

Disable the mouse's middle button for camera control.





_description: _







<!----------------------------------------------------------------------------->

###void enableInertia()

<!--
_syntax: enableInertia()_
_name: enableInertia_
_returns: void_
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







_description: _







<!----------------------------------------------------------------------------->

###void enableMouseInput()

<!--
_syntax: enableMouseInput()_
_name: enableMouseInput_
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

Enable mouse camera control.





_description: _







<!----------------------------------------------------------------------------->

###void enableMouseMiddleButton()

<!--
_syntax: enableMouseMiddleButton()_
_name: enableMouseMiddleButton_
_returns: void_
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

Enable the mouse's middle button for camera control.





_description: _







<!----------------------------------------------------------------------------->

###ofRectangle getControlArea()

<!--
_syntax: getControlArea()_
_name: getControlArea_
_returns: ofRectangle_
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

Returns the area bounds used for mouse control.





_description: _







<!----------------------------------------------------------------------------->

###float getDistance()

<!--
_syntax: getDistance()_
_name: getDistance_
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

Get the distance to the target.

Returns: the distance to the target.





_description: _







<!----------------------------------------------------------------------------->

###float getDrag()

<!--
_syntax: getDrag()_
_name: getDrag_
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

Get the camera's drag coefficient.

Returns: the camera's drag coefficient.





_description: _







<!----------------------------------------------------------------------------->

###bool getInertiaEnabled()

<!--
_syntax: getInertiaEnabled()_
_name: getInertiaEnabled_
_returns: bool_
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

Determine if intertia is enabled.





_description: _







<!----------------------------------------------------------------------------->

###bool getMouseInputEnabled()

<!--
_syntax: getMouseInputEnabled()_
_name: getMouseInputEnabled_
_returns: bool_
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

Determine if mouse camera control is enabled.
\todo Rename to isMouseInputEnabled().

Returns: true iff mouse camera control is enabled.





_description: _







<!----------------------------------------------------------------------------->

###bool getMouseMiddleButtonEnabled()

<!--
_syntax: getMouseMiddleButtonEnabled()_
_name: getMouseMiddleButtonEnabled_
_returns: bool_
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

Determine if the middle mouse button is enabled.
\todo Rename to isMouseMiddleButtonEnabled().

Returns: true iff the mouse's middle button is enabled.





_description: _







<!----------------------------------------------------------------------------->

###bool getRelativeYAxis()

<!--
_syntax: getRelativeYAxis()_
_name: getRelativeYAxis_
_returns: bool_
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

Determine if the Y axis is set to be relative to the
camera orientation





_description: _







<!----------------------------------------------------------------------------->

###const ofNode & getTarget()

<!--
_syntax: getTarget()_
_name: getTarget_
_returns: const ofNode &_
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

Get the camera's target node reference.

Returns: a reference the the camera's target node.





_description: _







<!----------------------------------------------------------------------------->

###char getTranslationKey()

<!--
_syntax: getTranslationKey()_
_name: getTranslationKey_
_returns: char_
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

Get the current translation key code.

Returns: the current translation key code.





_description: _







<!----------------------------------------------------------------------------->

###const glm::vec3 & getUpAxis()

<!--
_syntax: getUpAxis()_
_name: getUpAxis_
_returns: const glm::vec3 &_
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

Get the up axis.





_description: _







<!----------------------------------------------------------------------------->

###bool hasInteraction(type, mouseButton, key)

<!--
_syntax: hasInteraction(type, mouseButton, key)_
_name: hasInteraction_
_returns: bool_
_returns_description: _
_parameters: ofEasyCam::TransformType type, int mouseButton, int key_
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

###bool hasInteraction(mouseButton, key)

<!--
_syntax: hasInteraction(mouseButton, key)_
_name: hasInteraction_
_returns: bool_
_returns_description: _
_parameters: int mouseButton, int key_
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

###void mousePressed(&mouse)

<!--
_syntax: mousePressed(&mouse)_
_name: mousePressed_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
_access: private_
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

###void mouseReleased(&mouse)

<!--
_syntax: mouseReleased(&mouse)_
_name: mouseReleased_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
_access: private_
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

###void mouseScrolled(&mouse)

<!--
_syntax: mouseScrolled(&mouse)_
_name: mouseScrolled_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
_access: private_
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

### ofEasyCam()

<!--
_syntax: ofEasyCam()_
_name: ofEasyCam_
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

Create a default camera.





_description: _







<!----------------------------------------------------------------------------->

###void removeAllInteractions()

<!--
_syntax: removeAllInteractions()_
_name: removeAllInteractions_
_returns: void_
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







_description: _







<!----------------------------------------------------------------------------->

###void removeInteraction(type, mouseButton, key)

<!--
_syntax: removeInteraction(type, mouseButton, key)_
_name: removeInteraction_
_returns: void_
_returns_description: _
_parameters: ofEasyCam::TransformType type, int mouseButton, int key_
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

###void reset()

<!--
_syntax: reset()_
_name: reset_
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

Reset the camera position and orientation.





_description: _







<!----------------------------------------------------------------------------->

###void setAutoDistance(bAutoDistance)

<!--
_syntax: setAutoDistance(bAutoDistance)_
_name: setAutoDistance_
_returns: void_
_returns_description: _
_parameters: bool bAutoDistance_
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

Enable or disable camera autodistance.

Allow the camera to attempt to set the distance based on the camera's
current viewpoirt.


Parameters:
bAutoDistance true to enable auto distance.





_description: _







<!----------------------------------------------------------------------------->

###void setControlArea(&controlArea)

<!--
_syntax: setControlArea(&controlArea)_
_name: setControlArea_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &controlArea_
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

Set the area bounds for mouse control.
Uses the full viewport by default.





_description: _







<!----------------------------------------------------------------------------->

###void setDistance(distance)

<!--
_syntax: setDistance(distance)_
_name: setDistance_
_returns: void_
_returns_description: _
_parameters: float distance_
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

Set the camera's distance to the target.

Parameters:
distance The distance to the target.





_description: _







<!----------------------------------------------------------------------------->

###void setDistance(distance, save)

<!--
_syntax: setDistance(distance, save)_
_name: setDistance_
_returns: void_
_returns_description: _
_parameters: float distance, bool save_
_access: private_
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

###void setDrag(drag)

<!--
_syntax: setDrag(drag)_
_name: setDrag_
_returns: void_
_returns_description: _
_parameters: float drag_
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

Set the camera's drag coefficient.

Drag is affects how quickly the camera starts up and slows down when
a user interacts with its position using a pointer.


Parameters:
drag The normalized coefficient value between 0 and 1.





_description: _







<!----------------------------------------------------------------------------->

###void setEvents(&events)

<!--
_syntax: setEvents(&events)_
_name: setEvents_
_returns: void_
_returns_description: _
_parameters: ofCoreEvents &events_
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







_description: _







<!----------------------------------------------------------------------------->

###void setRelativeYAxis(relative = true)

<!--
_syntax: setRelativeYAxis(relative = true)_
_name: setRelativeYAxis_
_returns: void_
_returns_description: _
_parameters: bool relative=true_
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

Uses Y axis relative to the camera orientation

By default the Y axis used for interactive rotation
is vec3(0,1,0) or whatever is set as up axis using
setUpAxis





_description: _







<!----------------------------------------------------------------------------->

###void setRotationSensitivity(x, y, z)

<!--
_syntax: setRotationSensitivity(x, y, z)_
_name: setRotationSensitivity_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

Set the input sensitivity of the rotation.
X and Y axes - when the value is 1.0, moving the mouse from one side to
the other of the arcball (min(viewport.width, viewport.height)) will
rotate 180 degrees. When the value is 0.5, the rotation will be 90
degrees.

Parameters:
value Scales the xyz axes rotation factor by these values.





_description: _







<!----------------------------------------------------------------------------->

###void setRotationSensitivity(&sensitivity)

<!--
_syntax: setRotationSensitivity(&sensitivity)_
_name: setRotationSensitivity_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &sensitivity_
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

###void setTarget(&target)

<!--
_syntax: setTarget(&target)_
_name: setTarget_
_returns: void_
_returns_description: _
_parameters: ofNode &target_
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

Set the camera's target.

Parameters:
target The position of the target.





_description: _







<!----------------------------------------------------------------------------->

###void setTarget(&target)

<!--
_syntax: setTarget(&target)_
_name: setTarget_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &target_
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

Set the camera's target.

Parameters:
target The position of the target.





_description: _







<!----------------------------------------------------------------------------->

###void setTranslationKey(key)

<!--
_syntax: setTranslationKey(key)_
_name: setTranslationKey_
_returns: void_
_returns_description: _
_parameters: char key_
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

Set the key used to switch between camera rotation and translation.

Translation will only happen when the translation key is pressed.


Parameters:
key The key code for the translation key.
\todo char is not the right data type for this. Should be int.





_description: _







<!----------------------------------------------------------------------------->

###void setTranslationSensitivity(x, y, z)

<!--
_syntax: setTranslationSensitivity(x, y, z)_
_name: setTranslationSensitivity_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

Set the input sensitivity of the translation.

Parameters:
value Scales the xyz axes translation factor by these values.





_description: _







<!----------------------------------------------------------------------------->

###void setTranslationSensitivity(&sensitivity)

<!--
_syntax: setTranslationSensitivity(&sensitivity)_
_name: setTranslationSensitivity_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &sensitivity_
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

###void setUpAxis(&up)

<!--
_syntax: setUpAxis(&up)_
_name: setUpAxis_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &up_
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

Set the camera fixed up axis for interactive
manipulation.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 up()

<!--
_syntax: up()_
_name: up_
_returns: glm::vec3_
_returns_description: _
_parameters: _
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

Returns the up axis vector;





_description: _







<!----------------------------------------------------------------------------->

###void update(&args)

<!--
_syntax: update(&args)_
_name: update_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &args_
_access: private_
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

###void updateMouse(&mouse)

<!--
_syntax: updateMouse(&mouse)_
_name: updateMouse_
_returns: void_
_returns_description: _
_parameters: const glm::vec2 &mouse_
_access: private_
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

###void updateRotation()

<!--
_syntax: updateRotation()_
_name: updateRotation_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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

###void updateTranslation()

<!--
_syntax: updateTranslation()_
_name: updateTranslation_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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

##Variables



###bool bApplyInertia

<!--
_name: bApplyInertia_
_type: bool_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bAutoDistance

<!--
_name: bAutoDistance_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bDistanceSet

<!--
_name: bDistanceSet_
_type: bool_
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

###bool bEnableMouseMiddleButton

<!--
_name: bEnableMouseMiddleButton_
_type: bool_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bEventsSet

<!--
_name: bEventsSet_
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

###bool bInsideArcball

<!--
_name: bInsideArcball_
_type: bool_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bIsScrolling

<!--
_name: bIsScrolling_
_type: bool_
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

###bool bMouseInputEnabled

<!--
_name: bMouseInputEnabled_
_type: bool_
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

###bool bRelativeYAxis

<!--
_name: bRelativeYAxis_
_type: bool_
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

###ofRectangle controlArea

<!--
_name: controlArea_
_type: ofRectangle_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

If set, the area mouse control is bound to.





_description: _







<!----------------------------------------------------------------------------->

###ofQuaternion curRot

<!--
_name: curRot_
_type: ofQuaternion_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The current rotation quaternion.





_description: _







<!----------------------------------------------------------------------------->

###ofEasyCam::TransformType currentTransformType

<!--
_name: currentTransformType_
_type: ofEasyCam::TransformType_
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

###bool doInertia

<!--
_name: doInertia_
_type: bool_
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

###char doTranslationKey

<!--
_name: doTranslationKey_
_type: char_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The key used to differentiate between translation and rotation.





_description: _







<!----------------------------------------------------------------------------->

###float drag

<!--
_name: drag_
_type: float_
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

###ofCoreEvents * events

<!--
_name: events_
_type: ofCoreEvents *_
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

###int interactions

<!--
_name: interactions_
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

###float lastDistance

<!--
_name: lastDistance_
_type: float_
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

###int lastPressAxisX

<!--
_name: lastPressAxisX_
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

\name On Press cache
\{
camera properties when the mouse is pressed.





_description: _







<!----------------------------------------------------------------------------->

###int lastPressAxisY

<!--
_name: lastPressAxisY_
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

###int lastPressAxisZ

<!--
_name: lastPressAxisZ_
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

###int lastPressMouse

<!--
_name: lastPressMouse_
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

###int lastPressOrientation

<!--
_name: lastPressOrientation_
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

###int lastPressPosition

<!--
_name: lastPressPosition_
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

###unsigned long lastTap

<!--
_name: lastTap_
_type: unsigned long_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The time of the last pointer down event.





_description: _







<!----------------------------------------------------------------------------->

###ofEventListeners listeners

<!--
_name: listeners_
_type: ofEventListeners_
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

###int mouseAtScroll

<!--
_name: mouseAtScroll_
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

###ofVec2f mouseVel

<!--
_name: mouseVel_
_type: ofVec2f_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

The mouse velocity (mouse position delta).





_description: _







<!----------------------------------------------------------------------------->

###float prevFarClip

<!--
_name: prevFarClip_
_type: float_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

previous far and near clip.





_description: _







<!----------------------------------------------------------------------------->

###ofVec2f prevMouse

<!--
_name: prevMouse_
_type: ofVec2f_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The previous mouse position.





_description: _







<!----------------------------------------------------------------------------->

###float prevNearClip

<!--
_name: prevNearClip_
_type: float_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

previous far and near clip.





_description: _







<!----------------------------------------------------------------------------->

###int rot

<!--
_name: rot_
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

rot and translated are used as a temporary values shared between the mouse callbacks and the update method.
How much the camera needs to be rotated.





_description: _







<!----------------------------------------------------------------------------->

###float sensitivityRot

<!--
_name: sensitivityRot_
_type: float_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###float sensitivityScroll

<!--
_name: sensitivityScroll_
_type: float_
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

###int sensitivityTranslate

<!--
_name: sensitivityTranslate_
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

Sensitivity
These varibles determine how sensitive is the interaction.
High values mean faster and bigger movements/rotations.
Low Values mean more presicion.





_description: _







<!----------------------------------------------------------------------------->

###ofNode target

<!--
_name: target_
_type: ofNode_
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

###int translate

<!--
_name: translate_
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

How much the camera needs to be translated.





_description: _







<!----------------------------------------------------------------------------->

###int upAxis

<!--
_name: upAxis_
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

###ofRectangle viewport

<!--
_name: viewport_
_type: ofRectangle_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

the current viewport.





_description: _







<!----------------------------------------------------------------------------->

