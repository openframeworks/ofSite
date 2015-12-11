#class ofCamera


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofNode_
-->

##InlineDescription

A basic camera object for interacting with objects in 3D space.

By: Memo Akten, MSA Visuals Ltd. 2011





##Description

ofCamera provides a camera onto a 3D scene. Some of the different properties of the camera are shown in the picture below:
![FOV](fov.png)
The far and near clip planes are the boundaries of what's visible in the camera. If you need more information on these, check http://www.falloutsoftware.com/tutorials/gl/gl0.htm





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

Begins rendering with the camera.

~~~~{.cpp}
void draw() {
    // Begin rendering from the camera's perspective.
    camera.begin();

    ofDrawLine(0, 0, ofGetWidth(), ofGetHeight());
    // Additional rendering ...

    // End rendering form the camera's perspective.
    camera.end();
}
~~~~

Parameters:
viewport The camera's rendering viewport.





_description: _

set the matrices that the camera will use.





<!----------------------------------------------------------------------------->

###void calcClipPlanes(&viewport)

<!--
_syntax: calcClipPlanes(&viewport)_
_name: calcClipPlanes_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &viewport_
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

###ofVec3f cameraToWorld(CameraXYZ, viewport)

<!--
_syntax: cameraToWorld(CameraXYZ, viewport)_
_name: cameraToWorld_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f CameraXYZ, ofRectangle viewport_
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

\todo cameraToWorld()





_description: _

When you have a position in camera coordinates you can get what it would be in world coordinates, transforming it using the ofCamera.





<!----------------------------------------------------------------------------->

###void disableOrtho()

<!--
_syntax: disableOrtho()_
_name: disableOrtho_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Calling disableOrtho() turns off the orthographic mode.





<!----------------------------------------------------------------------------->

###void enableOrtho()

<!--
_syntax: enableOrtho()_
_name: enableOrtho_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Orthographic, or parallel, projections consist of those that involve no perspective correction. There is no adjustment for distance from the camera made in these projections, meaning objects on the screen will appear the same size no matter how close or far away they are. Calling enableOrtho() sets the ofCamera to orthographic mode.





<!----------------------------------------------------------------------------->

###void end()

<!--
_syntax: end()_
_name: end_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Ends rendering with the camera.





_description: _

set the matrices





<!----------------------------------------------------------------------------->

###float getAspectRatio()

<!--
_syntax: getAspectRatio()_
_name: getAspectRatio_
_returns: float_
_returns_description: _
_parameters: _
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

Get the aspect ratio of this camera's viewport.

Returns the aspect ratio of this camera's viewport. Usually this will be
the ratio of the width to height of your display. Intended for
perspective cameras.


Returns: The aspect ratio of this camera's viewport.





_description: _







<!----------------------------------------------------------------------------->

###float getFarClip()

<!--
_syntax: getFarClip()_
_name: getFarClip_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
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

###bool getForceAspectRatio()

<!--
_syntax: getForceAspectRatio()_
_name: getForceAspectRatio_
_returns: bool_
_returns_description: _
_parameters: _
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

Get the boolean state which indicates whether the aspect ratio of this camera is forced to a non-default setting.


Returns: A boolean: whether or not this camera's aspect ratio is set to a non-default value.





_description: _







<!----------------------------------------------------------------------------->

###float getFov()

<!--
_syntax: getFov()_
_name: getFov_
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

Get the camera's field of view, in degrees.

Get the camera's vertical field of view, in degrees.  This is only
meaningful for perspective cameras.


Returns: The camera's field of view, in degrees.





_description: _







<!----------------------------------------------------------------------------->

###float getImagePlaneDistance(viewport)

<!--
_syntax: getImagePlaneDistance(viewport)_
_name: getImagePlaneDistance_
_returns: float_
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







_description: _

This allows you to get the image plane distance from any viewport passed in. By default this is the current viewport, but it can be whatever you find useful.





<!----------------------------------------------------------------------------->

###ofVec2f getLensOffset()

<!--
_syntax: getLensOffset()_
_name: getLensOffset_
_returns: ofVec2f_
_returns_description: _
_parameters: _
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

Get the "lens offset" applied to this camera, encoded as an ofVec2f.

Ordinarily, the camera is pointed straight down the center of its view
frustum.  However, it is possible to orient the camera towards a
location offset from the center of its frustum.  This is called an
"asymetric frustum" and is used (for example) in stereo views.  It is
acheived by applying an offset to the center of projection.  This
function returns the offset that has been applied, as an ofVec2f.  For
more information see http://www.orthostereo.com/geometryopengl.html.


Returns: The "lens offset" applied to this camera, encoded in an ofVec2f.





_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 getModelViewMatrix()

<!--
_syntax: getModelViewMatrix()_
_name: getModelViewMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Access the model view matrix.

Returns: the current 4x4 model view matrix.





_description: _

Access to the projection matrix.





<!----------------------------------------------------------------------------->

###ofMatrix4x4 getModelViewProjectionMatrix(viewport)

<!--
_syntax: getModelViewProjectionMatrix(viewport)_
_name: getModelViewProjectionMatrix_
_returns: ofMatrix4x4_
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

\todo getModelViewProjectionMatrix()





_description: _

Access to the projection ModelViewProjectionMatrix.





<!----------------------------------------------------------------------------->

###float getNearClip()

<!--
_syntax: getNearClip()_
_name: getNearClip_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
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

###bool getOrtho()

<!--
_syntax: getOrtho()_
_name: getOrtho_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Get whether the camera is in orthographic mode.





<!----------------------------------------------------------------------------->

###ofMatrix4x4 getProjectionMatrix(viewport)

<!--
_syntax: getProjectionMatrix(viewport)_
_name: getProjectionMatrix_
_returns: ofMatrix4x4_
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

Access the projection matrix.

Returns: the current 4x4 projection matrix.





_description: _

Access to the projection matrix.





<!----------------------------------------------------------------------------->

###shared_ptr< ofBaseRenderer > getRenderer()

<!--
_syntax: getRenderer()_
_name: getRenderer_
_returns: shared_ptr< ofBaseRenderer >_
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

###ofRectangle getViewport(&_viewport)

<!--
_syntax: getViewport(&_viewport)_
_name: getViewport_
_returns: ofRectangle_
_returns_description: _
_parameters: const ofRectangle &_viewport_
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

 \}





_description: _







<!----------------------------------------------------------------------------->

###bool isVFlipped()

<!--
_syntax: isVFlipped()_
_name: isVFlipped_
_returns: bool_
_returns_description: _
_parameters: _
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







_description: _







<!----------------------------------------------------------------------------->

### ofCamera()

<!--
_syntax: ofCamera()_
_name: ofCamera_
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

Construct a default camera.





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f screenToWorld(ScreenXYZ, viewport)

<!--
_syntax: screenToWorld(ScreenXYZ, viewport)_
_name: screenToWorld_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f ScreenXYZ, ofRectangle viewport_
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

Obtain the coordinates, in the 3D world, of a 2D point presumed to be on your screen.

Takes a pixel location on your screen, encoded in an ofVec3f,
and returns (also as an ofVec3f) the 3D world coordinates of that point.
You'll also need to specify a Z value when providing your screen point.
This Z value is interpreted as a distance into or away from the screen.


Parameters:
ScreenXYZ A point on your screen, whose 3D world coordinates you wish to know.





_description: _

When you have a position in screen coordinates you can get what it would be in world coordinates, transforming it using the ofCamera.





<!----------------------------------------------------------------------------->

###void setAspectRatio(aspectRatio)

<!--
_syntax: setAspectRatio(aspectRatio)_
_name: setAspectRatio_
_returns: void_
_returns_description: _
_parameters: float aspectRatio_
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

Set the recommended aspect ratio for a perspective camera.

Sets the aspect ratio of the camera to the desired float, and forces the
use of aspect ratio calculations.  Currently only used with perspective
cameras. The default value (and the value used with orthographic
cameras) is the ratio of the viewport's width to the viewport's height.


Parameters:
aspectRatio The desired aspect ratio, e.g. 1.3333, 1.6, etc.





_description: _







<!----------------------------------------------------------------------------->

###void setFarClip(f)

<!--
_syntax: setFarClip(f)_
_name: setFarClip_
_returns: void_
_returns_description: _
_parameters: float f_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Sets the far clip plane





<!----------------------------------------------------------------------------->

###void setForceAspectRatio(forceAspectRatio)

<!--
_syntax: setForceAspectRatio(forceAspectRatio)_
_name: setForceAspectRatio_
_returns: void_
_returns_description: _
_parameters: bool forceAspectRatio_
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

Set whether or not the aspect ratio of this camera is forced to a non-default setting.

The camera's aspect ratio, by default, is the aspect ratio of your
viewport.  If you have set a non-default value (with
ofCamera::setAspectRatio()), you can toggle whether or not this value is
applied.


Parameters:
forceAspectRatio Whether or not this camera should use an aspect ratio you have set yourself.





_description: _







<!----------------------------------------------------------------------------->

###void setFov(f)

<!--
_syntax: setFov(f)_
_name: setFov_
_returns: void_
_returns_description: _
_parameters: float f_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the field of view for a perspective camera.

This sets the vertical field of view for the camera, in degrees.
This only operates with perspective cameras, and will have no effect
with cameras in orthographic mode.


Parameters:
f The desired field of view for the camera, in degrees.





_description: _

Here you can set the field of view of the camera.





<!----------------------------------------------------------------------------->

###void setLensOffset(&lensOffset)

<!--
_syntax: setLensOffset(&lensOffset)_
_name: setLensOffset_
_returns: void_
_returns_description: _
_parameters: const ofVec2f &lensOffset_
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

Set the "lens offset" applied to this camera.

Ordinarily, the camera is pointed straight down the center of its view
frustum. However, it is possible to orient the camera towards a location
offset from the center of its frustum. This is called an "assymetric
frustum" and is used (for example) in stereo views.  It is acheived by
applying an offset to the center of projection.  This function sets this
offset from an ofVec2f argument.  For more information see
<http://www.orthostereo.com/geometryopengl.html>.


Parameters:
lensOffset The "lens offset" to apply to this camera, encoded in
    an ofVec2f.





_description: _







<!----------------------------------------------------------------------------->

###void setNearClip(f)

<!--
_syntax: setNearClip(f)_
_name: setNearClip_
_returns: void_
_returns_description: _
_parameters: float f_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This sets the near clip plane.





<!----------------------------------------------------------------------------->

###void setRenderer(renderer)

<!--
_syntax: setRenderer(renderer)_
_name: setRenderer_
_returns: void_
_returns_description: _
_parameters: shared_ptr< ofBaseRenderer > renderer_
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

\}
\name Renderer
 \{





_description: _







<!----------------------------------------------------------------------------->

###void setVFlip(vflip)

<!--
_syntax: setVFlip(vflip)_
_name: setVFlip_
_returns: void_
_returns_description: _
_parameters: bool vflip_
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







_description: _







<!----------------------------------------------------------------------------->

###void setupOffAxisViewPortal(&topLeft, &bottomLeft, &bottomRight)

<!--
_syntax: setupOffAxisViewPortal(&topLeft, &bottomLeft, &bottomRight)_
_name: setupOffAxisViewPortal_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &topLeft, const ofVec3f &bottomLeft, const ofVec3f &bottomRight_
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







_description: _







<!----------------------------------------------------------------------------->

###void setupPerspective(vFlip = true, fov, nearDist, farDist, &lensOffset)

<!--
_syntax: setupPerspective(vFlip = true, fov, nearDist, farDist, &lensOffset)_
_name: setupPerspective_
_returns: void_
_returns_description: _
_parameters: bool vFlip=true, float fov, float nearDist, float farDist, const ofVec2f &lensOffset_
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

\}
\name OpenGL Setup
\{





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f worldToCamera(WorldXYZ, viewport)

<!--
_syntax: worldToCamera(WorldXYZ, viewport)_
_name: worldToCamera_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f WorldXYZ, ofRectangle viewport_
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

\todo worldToCamera()





_description: _

When you have a position in world coordinates you can get what it would be in camera coordinates, transforming it using the ofCamera.





<!----------------------------------------------------------------------------->

###ofVec3f worldToScreen(WorldXYZ, viewport)

<!--
_syntax: worldToScreen(WorldXYZ, viewport)_
_name: worldToScreen_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f WorldXYZ, ofRectangle viewport_
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

Obtain the screen coordinates of a point in the 3D world.

Takes an (X,Y,Z) point in your 3D world, encoded as an ofVec3f,
and returns the location (also as an ofVec3f) where this point would
appear on your (two-dimensional) display. The screen position's "Z
coordinate" is set to be the same as your camera's.


Parameters:
WorldXYZ A 3D point in the world, whose screen coordinates you wish to know.
viewport (Optional) A viewport. The default is ofGetCurrentViewport().

Returns: An ofVec3f containing the screen coordinates of your 3D point of interest.





_description: _

When you have a position in world coordinates you can get what it would be in screen coordinates, transforming it using the ofCamera.





<!----------------------------------------------------------------------------->

### ~ofCamera()

<!--
_syntax: ~ofCamera()_
_name: ~ofCamera_
_returns: _
_returns_description: _
_parameters: _
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

Destroy the camera.





_description: _







<!----------------------------------------------------------------------------->

##Variables



###float aspectRatio

<!--
_name: aspectRatio_
_type: float_
_access: protected_
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

###float farClip

<!--
_name: farClip_
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

###bool forceAspectRatio

<!--
_name: forceAspectRatio_
_type: bool_
_access: protected_
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

###float fov

<!--
_name: fov_
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

###bool isOrtho

<!--
_name: isOrtho_
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

###ofVec2f lensOffset

<!--
_name: lensOffset_
_type: ofVec2f_
_access: protected_
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

###float nearClip

<!--
_name: nearClip_
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

###shared_ptr< ofBaseRenderer > renderer

<!--
_name: renderer_
_type: shared_ptr< ofBaseRenderer >_
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

###bool vFlip

<!--
_name: vFlip_
_type: bool_
_access: protected_
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

