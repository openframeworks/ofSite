#class ofCamera


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription

A basic comera object for interacting with objects in 3D space. 


***author:*** 
	Memo Akten, MSA Visuals Ltd. 2011 








##Description

ofCamera provides a camera onto a 3D scene. Some of the different properties of the camera are shown in the picture below:
![FOV](fov.png)  
The far and near clip planes are the boundaries of what's visible in the camera. If you need more information on these, check http://www.falloutsoftware.com/tutorials/gl/gl0.htm





##Methods



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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


set the matrices that the camera will use.







<!----------------------------------------------------------------------------->

###void calcClipPlanes(viewport)

<!--
_syntax: calcClipPlanes(viewport)_
_name: calcClipPlanes_
_returns: void_
_returns_description: _
_parameters: ofRectangle viewport_
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

###ofVec3f cameraToWorld(CameraXYZ, viewport = ofGetCurrentViewport())

<!--
_syntax: cameraToWorld(CameraXYZ, viewport = ofGetCurrentViewport())_
_name: cameraToWorld_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f CameraXYZ, ofRectangle viewport=ofGetCurrentViewport()_
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


Returns the aspect ratio of this camera's viewport. Usually this will be the ratio of the width to height of your display. Intended for perspective cameras.

***return:*** 
	The aspect ratio of this camera's viewport. 










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


***return:*** 
	A boolean: whether or not this camera's aspect ratio is set to a non-default value. 










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


Get the horizontal camera's field of view, in degrees. This is only meaningful for perspective cameras.

***return:*** 
	The camera's field of view, in degrees. 










_description: _








<!----------------------------------------------------------------------------->

###float getImagePlaneDistance(viewport = ofGetCurrentViewport())

<!--
_syntax: getImagePlaneDistance(viewport = ofGetCurrentViewport())_
_name: getImagePlaneDistance_
_returns: float_
_returns_description: _
_parameters: ofRectangle viewport=ofGetCurrentViewport()_
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


Ordinarily, the camera is pointed straight down the center of its view frustum. However, it is possible to orient the camera towards a location offset from the center of its frustum. This is called an "asymetric frustum" and is used (for example) in stereo views. It is acheived by applying an offset to the center of projection. This function returns the offset that has been applied, as an ofVec2f. For more information see [http://www.orthostereo.com/geometryopengl.html](http://www.orthostereo.com/geometryopengl.html).

***return:*** 
	The "lens offset" applied to this camera, encoded in an ofVec2f. 










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


***return:*** 
	the current 4x4 model view matrix. 










_description: _


Access to the projection matrix.







<!----------------------------------------------------------------------------->

###ofMatrix4x4 getModelViewProjectionMatrix(viewport = ofGetCurrentViewport())

<!--
_syntax: getModelViewProjectionMatrix(viewport = ofGetCurrentViewport())_
_name: getModelViewProjectionMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: ofRectangle viewport=ofGetCurrentViewport()_
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

###ofMatrix4x4 getProjectionMatrix(viewport = ofGetCurrentViewport())

<!--
_syntax: getProjectionMatrix(viewport = ofGetCurrentViewport())_
_name: getProjectionMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: ofRectangle viewport=ofGetCurrentViewport()_
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


***return:*** 
	the current 4x4 projection matrix. 










_description: _


Access to the projection matrix.







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

###ofVec3f screenToWorld(ScreenXYZ, viewport = ofGetCurrentViewport())

<!--
_syntax: screenToWorld(ScreenXYZ, viewport = ofGetCurrentViewport())_
_name: screenToWorld_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f ScreenXYZ, ofRectangle viewport=ofGetCurrentViewport()_
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


Takes a pixel location on your screen, encoded in an ofVec3f, and returns (also as an ofVec3f) the 3D world coordinates of that point. You'll also need to specify a Z value when providing your screen point. This Z value is interpreted as a distance into or away from the screen.










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


Sets the aspect ratio of the camera to the desired float, and forces the use of aspect ratio calculations. Currently only used with perspective cameras. The default value (and the value used with orthographic cameras) is the ratio of the viewport's width to the viewport's height.










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


The camera's aspect ratio, by default, is the aspect ratio of your viewport. If you have set a non-default value (with ofCamera::setAspectRatio()), you can toggle whether or not this value is applied.










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


This sets the horizontal field of view for the camera, in degrees. This only operates with perspective cameras, and will have no effect with cameras in orthographic mode.










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


Ordinarily, the camera is pointed straight down the center of its view frustum. However, it is possible to orient the camera towards a location offset from the center of its frustum. This is called an "assymetric
frustum" and is used (for example) in stereo views. It is acheived by applying an offset to the center of projection. This function sets this offset from an ofVec2f argument. For more information see [http://www.orthostereo.com/geometryopengl.html](http://www.orthostereo.com/geometryopengl.html).










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

###void setupPerspective(vFlip = true, fov = 60, nearDist = 0, farDist = 0, &lensOffset = ofVec2f(0.0f, 0.0f))

<!--
_syntax: setupPerspective(vFlip = true, fov = 60, nearDist = 0, farDist = 0, &lensOffset = ofVec2f(0.0f, 0.0f))_
_name: setupPerspective_
_returns: void_
_returns_description: _
_parameters: bool vFlip=true, float fov=60, float nearDist=0, float farDist=0, const ofVec2f &lensOffset=ofVec2f(0.0f, 0.0f)_
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

###ofVec3f worldToCamera(WorldXYZ, viewport = ofGetCurrentViewport())

<!--
_syntax: worldToCamera(WorldXYZ, viewport = ofGetCurrentViewport())_
_name: worldToCamera_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f WorldXYZ, ofRectangle viewport=ofGetCurrentViewport()_
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


When you have a position in world coordinates you can get what it would be in camera coordinates, transforming it using the ofCamera.







<!----------------------------------------------------------------------------->

###ofVec3f worldToScreen(WorldXYZ, viewport = ofGetCurrentViewport())

<!--
_syntax: worldToScreen(WorldXYZ, viewport = ofGetCurrentViewport())_
_name: worldToScreen_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f WorldXYZ, ofRectangle viewport=ofGetCurrentViewport()_
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


Takes an (X,Y,Z) point in your 3D world, encoded as an ofVec3f, and returns the location (also as an ofVec3f) where this point would appear on your (two-dimensional) display. The screen position's "Z
coordinate" is set to be the same as your camera's.


***return:*** 
	An ofVec3f containing the screen coordinates of your 3D point of interest. 










_description: _


When you have a position in world coordinates you can get what it would be in world coordinates, transforming it using the ofCamera.







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

_description: _








<!----------------------------------------------------------------------------->

###bool isActive

<!--
_name: isActive_
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

_description: _








<!----------------------------------------------------------------------------->

