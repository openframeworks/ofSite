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



###void begin(viewport)

<!--
_syntax: begin(viewport)_
_name: begin_
_returns: void_
_returns_description: _
_parameters: ofRectangle viewport_
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

###ofNode & getTarget()

<!--
_syntax: getTarget()_
_name: getTarget_
_returns: ofNode &_
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

###void mouseDragged(&mouse)

<!--
_syntax: mouseDragged(&mouse)_
_name: mouseDragged_
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

\}





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

###void setTarget(&target)

<!--
_syntax: setTarget(&target)_
_name: setTarget_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &target_
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
_parameters: const ofMouseEventArgs &mouse_
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

### ~ofEasyCam()

<!--
_syntax: ~ofEasyCam()_
_name: ~ofEasyCam_
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

Destroy the camera.





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

###bool bDoRotate

<!--
_name: bDoRotate_
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

###bool bDoScrollZoom

<!--
_name: bDoScrollZoom_
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

###bool bDoTranslate

<!--
_name: bDoTranslate_
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

###ofVec2f lastMouse

<!--
_name: lastMouse_
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







_description: _







<!----------------------------------------------------------------------------->

###float moveX

<!--
_name: moveX_
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

###float moveY

<!--
_name: moveY_
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

###float moveZ

<!--
_name: moveZ_
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

###ofVec3f prevAxisX

<!--
_name: prevAxisX_
_type: ofVec3f_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The previous X axis.





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f prevAxisY

<!--
_name: prevAxisY_
_type: ofVec3f_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The previous Y axis.





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f prevAxisZ

<!--
_name: prevAxisZ_
_type: ofVec3f_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The previous Z axis.





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







_description: _







<!----------------------------------------------------------------------------->

###ofQuaternion prevOrientation

<!--
_name: prevOrientation_
_type: ofQuaternion_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The previous camera orientation.





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f prevPosition

<!--
_name: prevPosition_
_type: ofVec3f_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

the previous camera position.





_description: _







<!----------------------------------------------------------------------------->

###float rotationFactor

<!--
_name: rotationFactor_
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

###float sensitivityXY

<!--
_name: sensitivityXY_
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

###float sensitivityZ

<!--
_name: sensitivityZ_
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







_description: _







<!----------------------------------------------------------------------------->

###float xRot

<!--
_name: xRot_
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

###float yRot

<!--
_name: yRot_
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

###float zRot

<!--
_name: zRot_
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

