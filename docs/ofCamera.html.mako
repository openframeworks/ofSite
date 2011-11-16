<%inherit file="_templates/docs.mako" />
___ofCamera___
$$code(lang=c++)
bool isOrtho
$$/code



$$code(lang=c++)
float fov
$$/code



$$code(lang=c++)
float nearClip
$$/code



$$code(lang=c++)
float farClip
$$/code



$$code(lang=c++)
bool isActive
$$/code



$$code(lang=c++)
bool hasStoredMatrices
$$/code



$$code(lang=c++)
None matProjection
$$/code



$$code(lang=c++)
None matModelView
$$/code



$$code(lang=c++)
bool bCacheMatrices
$$/code



$$code(lang=c++)
None ofCamera()
$$/code



$$code(lang=c++)
void setFov(float f)
$$/code



$$code(lang=c++)
void setNearClip(float f)
$$/code



$$code(lang=c++)
void setFarClip(float f)
$$/code



$$code(lang=c++)
void enableOrtho()
$$/code



$$code(lang=c++)
void disableOrtho()
$$/code



$$code(lang=c++)
bool getOrtho() const 
$$/code



$$code(lang=c++)
float getFov()
$$/code



$$code(lang=c++)
float getImagePlaneDistance(ofRectangle viewport=ofGetCurrentViewport()) const 
$$/code



$$code(lang=c++)
void begin(ofRectangle viewport=ofGetCurrentViewport())
$$/code



$$code(lang=c++)
void end()
$$/code



$$code(lang=c++)
void cacheMatrices(bool cache=true)
$$/code



$$code(lang=c++)
None getProjectionMatrix(ofRectangle viewport=ofGetCurrentViewport())
$$/code



$$code(lang=c++)
None getModelViewMatrix()
$$/code



$$code(lang=c++)
None getModelViewProjectionMatrix(ofRectangle viewport=ofGetCurrentViewport())
$$/code



$$code(lang=c++)
None worldToScreen(ofVec3f WorldXYZ, ofRectangle viewport=ofGetCurrentViewport())
$$/code



$$code(lang=c++)
None screenToWorld(ofVec3f ScreenXYZ, ofRectangle viewport=ofGetCurrentViewport())
$$/code



$$code(lang=c++)
None worldToCamera(ofVec3f WorldXYZ, ofRectangle viewport=ofGetCurrentViewport())
$$/code



$$code(lang=c++)
None cameraToWorld(ofVec3f CameraXYZ, ofRectangle viewport=ofGetCurrentViewport())
$$/code



$$code(lang=c++)
void calcClipPlanes(ofRectangle viewport)
$$/code



