<%inherit file="_templates/docs.mako" />
___ofNode___
$$code(lang=c++)
None parent
$$/code



$$code(lang=c++)
None position
$$/code



$$code(lang=c++)
None orientation
$$/code



$$code(lang=c++)
None scale
$$/code



$$code(lang=c++)
None axis
$$/code



$$code(lang=c++)
None localTransformMatrix
$$/code



$$code(lang=c++)
None ofNode()
$$/code



$$code(lang=c++)
None ~ofNode()
$$/code



$$code(lang=c++)
void setParent(ofNode &parent)
$$/code



$$code(lang=c++)
void clearParent()
$$/code



$$code(lang=c++)
None getParent() const 
$$/code



$$code(lang=c++)
None getPosition() const 
$$/code



$$code(lang=c++)
float getX() const 
$$/code



$$code(lang=c++)
float getY() const 
$$/code



$$code(lang=c++)
float getZ() const 
$$/code



$$code(lang=c++)
None getXAxis() const 
$$/code



$$code(lang=c++)
None getYAxis() const 
$$/code



$$code(lang=c++)
None getZAxis() const 
$$/code



$$code(lang=c++)
None getSideDir() const 
$$/code



$$code(lang=c++)
None getLookAtDir() const 
$$/code



$$code(lang=c++)
None getUpDir() const 
$$/code



$$code(lang=c++)
float getPitch() const 
$$/code



$$code(lang=c++)
float getHeading() const 
$$/code



$$code(lang=c++)
float getRoll() const 
$$/code



$$code(lang=c++)
None getOrientationQuat() const 
$$/code



$$code(lang=c++)
None getOrientationEuler() const 
$$/code



$$code(lang=c++)
None getScale() const 
$$/code



$$code(lang=c++)
const  getLocalTransformMatrix() const 
$$/code



$$code(lang=c++)
None getGlobalTransformMatrix() const 
$$/code



$$code(lang=c++)
None getGlobalPosition() const 
$$/code



$$code(lang=c++)
None getGlobalOrientation() const 
$$/code



$$code(lang=c++)
void setTransformMatrix(const ofMatrix4x4 &m44)
$$/code



$$code(lang=c++)
void setPosition(float px, float py, float pz)
$$/code



$$code(lang=c++)
void setPosition(const ofVec3f &p)
$$/code



$$code(lang=c++)
void setGlobalPosition(float px, float py, float pz)
$$/code



$$code(lang=c++)
void setGlobalPosition(const ofVec3f &p)
$$/code



$$code(lang=c++)
void setOrientation(const ofQuaternion &q)
$$/code



$$code(lang=c++)
void setOrientation(const ofVec3f &eulerAngles)
$$/code



$$code(lang=c++)
void setGlobalOrientation(const ofQuaternion &q)
$$/code



$$code(lang=c++)
void setScale(float s)
$$/code



$$code(lang=c++)
void setScale(float sx, float sy, float sz)
$$/code



$$code(lang=c++)
void setScale(const ofVec3f &s)
$$/code



$$code(lang=c++)
void move(float x, float y, float z)
$$/code



$$code(lang=c++)
void move(const ofVec3f &offset)
$$/code



$$code(lang=c++)
void truck(float amount)
$$/code



$$code(lang=c++)
void boom(float amount)
$$/code



$$code(lang=c++)
void dolly(float amount)
$$/code



$$code(lang=c++)
void tilt(float degrees)
$$/code



$$code(lang=c++)
void pan(float degrees)
$$/code



$$code(lang=c++)
void roll(float degrees)
$$/code



$$code(lang=c++)
void rotate(const ofQuaternion &q)
$$/code



$$code(lang=c++)
void rotate(float degrees, const ofVec3f &v)
$$/code



$$code(lang=c++)
void rotate(float degrees, float vx, float vy, float vz)
$$/code



$$code(lang=c++)
void rotateAround(const ofQuaternion &q, const ofVec3f &point)
$$/code



$$code(lang=c++)
void rotateAround(float degrees, const ofVec3f &axis, const ofVec3f &point)
$$/code



$$code(lang=c++)
void lookAt(const ofVec3f &lookAtPosition, ofVec3f upVector=ofVec3f(0, 1, 0))
$$/code



$$code(lang=c++)
void lookAt(ofNode &lookAtNode, const ofVec3f &upVector=ofVec3f(0, 1, 0))
$$/code



$$code(lang=c++)
void orbit(float longitude, float latitude, float radius, const ofVec3f &centerPoint=ofVec3f(0, 0, 0))
$$/code



$$code(lang=c++)
void orbit(float longitude, float latitude, float radius, ofNode &centerNode)
$$/code



$$code(lang=c++)
void transformGL() const 
$$/code



$$code(lang=c++)
void restoreTransformGL() const 
$$/code



$$code(lang=c++)
void resetTransform()
$$/code



$$code(lang=c++)
void customDraw()
$$/code



$$code(lang=c++)
void draw()
$$/code



$$code(lang=c++)
void createMatrix()
$$/code



$$code(lang=c++)
void onPositionChanged()
$$/code



$$code(lang=c++)
void onOrientationChanged()
$$/code



$$code(lang=c++)
void onScaleChanged()
$$/code



