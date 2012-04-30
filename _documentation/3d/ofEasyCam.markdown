#class ofEasyCam


##Description


ofCamera objects useful for viewing 3D scenes. ofEasyCam gives you a very simple to use interactive camera to view your scene.

Controls:

* Left click drag = orbit the target
* Right click drag = dolly in and out
* Double click = reset camera positon



##Methods



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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void begin(viewport = ofGetCurrentViewport())

<!--
_syntax: begin(viewport = ofGetCurrentViewport())_
_name: begin_
_returns: void_
_returns_description: _
_parameters: ofRectangle viewport=ofGetCurrentViewport()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Begin using the camera, e.g.:

```c++
myCamera.begin();

ofDrawGrid();
//draw rest of scene

myCamera.end();
```




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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofNode getTarget()

<!--
_syntax: getTarget()_
_name: getTarget_
_returns: ofNode_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void mouseDragged(&mouse)

<!--
_syntax: mouseDragged(&mouse)_
_name: mouseDragged_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void mouseMoved(&mouse)

<!--
_syntax: mouseMoved(&mouse)_
_name: mouseMoved_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void mousePressed(&mouse)

<!--
_syntax: mousePressed(&mouse)_
_name: mousePressed_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void mouseReleased(&mouse)

<!--
_syntax: mouseReleased(&mouse)_
_name: mouseReleased_
_returns: void_
_returns_description: _
_parameters: ofMouseEventArgs &mouse_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

##Variables



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

_description: _







<!----------------------------------------------------------------------------->

###float zoomSpeed

<!--
_name: zoomSpeed_
_type: float_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

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

_description: _







<!----------------------------------------------------------------------------->

###ofVec3f mousePosViewPrev

<!--
_name: mousePosViewPrev_
_type: ofVec3f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofVec3f mousePosScreenPrev

<!--
_name: mousePosScreenPrev_
_type: ofVec3f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int lastFrame

<!--
_name: lastFrame_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

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

_description: _







<!----------------------------------------------------------------------------->

###bool mousePressedPrev

<!--
_name: mousePressedPrev_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

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

_description: _







<!----------------------------------------------------------------------------->

###float distanceScaleVelocity

<!--
_name: distanceScaleVelocity_
_type: float_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofQuaternion rotation

<!--
_name: rotation_
_type: ofQuaternion_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofVec3f translation

<!--
_name: translation_
_type: ofVec3f_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

