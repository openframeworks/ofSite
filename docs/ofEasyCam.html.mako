<%inherit file="_templates/docs.mako" />
___ofEasyCam___
$$code(lang=c++)
None target
$$/code



$$code(lang=c++)
float drag
$$/code



$$code(lang=c++)
float zoomSpeed
$$/code



$$code(lang=c++)
bool bMouseInputEnabled
$$/code



$$code(lang=c++)
None mousePosViewPrev
$$/code



$$code(lang=c++)
None mousePosScreenPrev
$$/code



$$code(lang=c++)
int lastFrame
$$/code



$$code(lang=c++)
unsigned long lastTap
$$/code



$$code(lang=c++)
bool mousePressedPrev
$$/code



$$code(lang=c++)
bool bDistanceSet
$$/code



$$code(lang=c++)
float lastDistance
$$/code



$$code(lang=c++)
float distanceScaleVelocity
$$/code



$$code(lang=c++)
None rotation
$$/code



$$code(lang=c++)
None translation
$$/code



$$code(lang=c++)
None ofEasyCam()
$$/code



$$code(lang=c++)
None ~ofEasyCam()
$$/code



$$code(lang=c++)
void begin(ofRectangle viewport=ofGetCurrentViewport())
$$/code



$$code(lang=c++)
void reset()
$$/code



$$code(lang=c++)
void setTarget(const ofVec3f &target)
$$/code



$$code(lang=c++)
void setTarget(ofNode &target)
$$/code



$$code(lang=c++)
None getTarget()
$$/code



$$code(lang=c++)
void setDistance(float distance)
$$/code



$$code(lang=c++)
float getDistance() const 
$$/code



$$code(lang=c++)
void setDrag(float drag)
$$/code



$$code(lang=c++)
float getDrag() const 
$$/code



$$code(lang=c++)
void mouseDragged(ofMouseEventArgs &mouse)
$$/code



$$code(lang=c++)
void mouseMoved(ofMouseEventArgs &mouse)
$$/code



$$code(lang=c++)
void mousePressed(ofMouseEventArgs &mouse)
$$/code



$$code(lang=c++)
void mouseReleased(ofMouseEventArgs &mouse)
$$/code



$$code(lang=c++)
void enableMouseInput()
$$/code



$$code(lang=c++)
void disableMouseInput()
$$/code



$$code(lang=c++)
bool getMouseInputEnabled()
$$/code



$$code(lang=c++)
void setDistance(float distance, bool save)
$$/code



