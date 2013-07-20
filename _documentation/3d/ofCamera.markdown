#class ofCamera


##Description


ofCamera provides a camera onto a 3D scene. Some of the different properties of the camera are shown in the picture below:
![FOV](fov.png)
The far and near clip planes are the boundaries of what's visible in the camera. If you need more information on these, check http://www.falloutsoftware.com/tutorials/gl/gl0.htm





##Methods



###void begin(viewport =  ofGetCurrentViewport)

<!--
_syntax: begin(viewport =  ofGetCurrentViewport)_
_name: begin_
_returns: void_
_returns_description: _
_parameters: ofRectangle viewport = ofGetCurrentViewport_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


set the matrices that the camera will use.







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








<!----------------------------------------------------------------------------->

###void cacheMatrices(cache = true)

<!--
_syntax: cacheMatrices(cache = true)_
_name: cacheMatrices_
_returns: void_
_returns_description: _
_parameters: bool cache=true_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


This caches the projection matrix for the ofCamera.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f cameraToWorld(CameraXYZ, viewport =  ofGetCurrentViewport)

<!--
_syntax: cameraToWorld(CameraXYZ, viewport =  ofGetCurrentViewport)_
_name: cameraToWorld_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f CameraXYZ, ofRectangle viewport = ofGetCurrentViewport_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


When you have a position in camera coordinates you can get what it would be in world coordinates, transforming it using the ofCamera.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


set the matrices







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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float getImagePlaneDistance(viewport =  ofGetCurrentViewport)

<!--
_syntax: getImagePlaneDistance(viewport =  ofGetCurrentViewport)_
_name: getImagePlaneDistance_
_returns: float_
_returns_description: _
_parameters: ofRectangle viewport = ofGetCurrentViewport_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


This allows you to get the image plane distance from any viewport passed in. By default this is the current viewport, but it can be whatever you find useful.







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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Access to the projection matrix.







<!----------------------------------------------------------------------------->

###ofMatrix4x4 getModelViewProjectionMatrix(viewport =  ofGetCurrentViewport)

<!--
_syntax: getModelViewProjectionMatrix(viewport =  ofGetCurrentViewport)_
_name: getModelViewProjectionMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: ofRectangle viewport = ofGetCurrentViewport_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Access to the projection ModelViewProjectionMatrix.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get whether the camera is in orthographic mode.







<!----------------------------------------------------------------------------->

###ofMatrix4x4 getProjectionMatrix(viewport =  ofGetCurrentViewport)

<!--
_syntax: getProjectionMatrix(viewport =  ofGetCurrentViewport)_
_name: getProjectionMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: ofRectangle viewport = ofGetCurrentViewport_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Access to the projection matrix.







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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f screenToWorld(ScreenXYZ, viewport =  ofGetCurrentViewport)

<!--
_syntax: screenToWorld(ScreenXYZ, viewport =  ofGetCurrentViewport)_
_name: screenToWorld_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f ScreenXYZ, ofRectangle viewport = ofGetCurrentViewport_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


When you have a position in screen coordinates you can get what it would be in world coordinates, transforming it using the ofCamera.







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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Sets the far clip plane







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Here you can set the field of view of the camera.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This sets the near clip plane.







<!----------------------------------------------------------------------------->

###void setupPerspective(vFlip = true, fov = 60, nearDist = 0, farDist = 0)

<!--
_syntax: setupPerspective(vFlip = true, fov = 60, nearDist = 0, farDist = 0)_
_name: setupPerspective_
_returns: void_
_returns_description: _
_parameters: bool vFlip=true, float fov=60, float nearDist=0, float farDist=0_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f worldToCamera(WorldXYZ, viewport =  ofGetCurrentViewport)

<!--
_syntax: worldToCamera(WorldXYZ, viewport =  ofGetCurrentViewport)_
_name: worldToCamera_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f WorldXYZ, ofRectangle viewport = ofGetCurrentViewport_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


When you have a position in world coordinates you can get what it would be in camera coordinates, transforming it using the ofCamera.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f worldToScreen(WorldXYZ, viewport =  ofGetCurrentViewport)

<!--
_syntax: worldToScreen(WorldXYZ, viewport =  ofGetCurrentViewport)_
_name: worldToScreen_
_returns: ofVec3f_
_returns_description: _
_parameters: ofVec3f WorldXYZ, ofRectangle viewport = ofGetCurrentViewport_
_access: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


When you have a position in world coordinates you can get what it would be in world coordinates, transforming it using the ofCamera.







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

##Variables



###bool bCacheMatrices

<!--
_name: bCacheMatrices_
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

###bool hasStoredMatrices

<!--
_name: hasStoredMatrices_
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

###ofMatrix4x4 matModelView

<!--
_name: matModelView_
_type: ofMatrix4x4_
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

###ofMatrix4x4 matProjection

<!--
_name: matProjection_
_type: ofMatrix4x4_
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

