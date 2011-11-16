<%inherit file="_templates/docs.mako" />
___ofMatrix4x4___
$$code(lang=c++)
None _mat
$$/code



$$code(lang=c++)
None ofMatrix4x4()
$$/code



$$code(lang=c++)
None ofMatrix4x4(const ofMatrix4x4 &mat)
$$/code



$$code(lang=c++)
None ofMatrix4x4(float const *const ptr)
$$/code



$$code(lang=c++)
None ofMatrix4x4(const ofQuaternion &quat)
$$/code



$$code(lang=c++)
None ofMatrix4x4(float a00, float a01, float a02, float a03, float a10, float a11, float a12, float a13, float a20, float a21, float a22, float a23, float a30, float a31, float a32, float a33)
$$/code



$$code(lang=c++)
None ~ofMatrix4x4()
$$/code



$$code(lang=c++)
float & operator()(int row, int col)
$$/code



$$code(lang=c++)
float operator()(int row, int col) const 
$$/code



$$code(lang=c++)
None getRowAsVec3f(int i) const 
$$/code



$$code(lang=c++)
None getRowAsVec4f(int i) const 
$$/code



$$code(lang=c++)
bool isValid() const 
$$/code



$$code(lang=c++)
bool isNaN() const 
$$/code



$$code(lang=c++)
None operator=(const ofMatrix4x4 &rhs)
$$/code



$$code(lang=c++)
void set(const ofMatrix4x4 &rhs)
$$/code



$$code(lang=c++)
void set(float const *const ptr)
$$/code



$$code(lang=c++)
void set(double const *const ptr)
$$/code



$$code(lang=c++)
void set(float a00, float a01, float a02, float a03, float a10, float a11, float a12, float a13, float a20, float a21, float a22, float a23, float a30, float a31, float a32, float a33)
$$/code



$$code(lang=c++)
float * getPtr()
$$/code



$$code(lang=c++)
const float * getPtr() const 
$$/code



$$code(lang=c++)
bool isIdentity() const 
$$/code



$$code(lang=c++)
void makeIdentityMatrix()
$$/code



$$code(lang=c++)
void makeScaleMatrix(const ofVec3f &)
$$/code



$$code(lang=c++)
void makeScaleMatrix(float, float, float)
$$/code



$$code(lang=c++)
void makeTranslationMatrix(const ofVec3f &)
$$/code



$$code(lang=c++)
void makeTranslationMatrix(float, float, float)
$$/code



$$code(lang=c++)
void makeRotationMatrix(const ofVec3f &from, const ofVec3f &to)
$$/code



$$code(lang=c++)
void makeRotationMatrix(float angle, const ofVec3f &axis)
$$/code



$$code(lang=c++)
void makeRotationMatrix(float angle, float x, float y, float z)
$$/code



$$code(lang=c++)
void makeRotationMatrix(const ofQuaternion &)
$$/code



$$code(lang=c++)
void makeRotationMatrix(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)
$$/code



$$code(lang=c++)
bool makeInvertOf(const ofMatrix4x4 &rhs)
$$/code



$$code(lang=c++)
void makeOrthoNormalOf(const ofMatrix4x4 &rhs)
$$/code



$$code(lang=c++)
void makeFromMultiplicationOf(const ofMatrix4x4 &, const ofMatrix4x4 &)
$$/code



$$code(lang=c++)
None getInverse()
$$/code



$$code(lang=c++)
void makeOrthoMatrix(double left, double right, double bottom, double top, double zNear, double zFar)
$$/code



$$code(lang=c++)
void makeOrtho2DMatrix(double left, double right, double bottom, double top)
$$/code



$$code(lang=c++)
void makeFrustumMatrix(double left, double right, double bottom, double top, double zNear, double zFar)
$$/code



$$code(lang=c++)
void makePerspectiveMatrix(double fovy, double aspectRatio, double zNear, double zFar)
$$/code



$$code(lang=c++)
void makeLookAtMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)
$$/code



$$code(lang=c++)
void makeLookAtViewMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)
$$/code



$$code(lang=c++)
bool getOrtho(double &left, double &right, double &bottom, double &top, double &zNear, double &zFar) const 
$$/code



$$code(lang=c++)
bool getFrustum(double &left, double &right, double &bottom, double &top, double &zNear, double &zFar) const 
$$/code



$$code(lang=c++)
bool getPerspective(double &fovy, double &aspectRatio, double &zNear, double &zFar) const 
$$/code



$$code(lang=c++)
void getLookAt(ofVec3f &eye, ofVec3f &center, ofVec3f &up, float lookDistance=1.0f) const 
$$/code



$$code(lang=c++)
void decompose(ofVec3f &translation, ofQuaternion &rotation, ofVec3f &scale, ofQuaternion &so) const 
$$/code



$$code(lang=c++)
None postMult(const ofVec3f &v) const 
$$/code



$$code(lang=c++)
None operator*(const ofVec3f &v) const 
$$/code



$$code(lang=c++)
None postMult(const ofVec4f &v) const 
$$/code



$$code(lang=c++)
None operator*(const ofVec4f &v) const 
$$/code



$$code(lang=c++)
None preMult(const ofVec3f &v) const 
$$/code



$$code(lang=c++)
None preMult(const ofVec4f &v) const 
$$/code



$$code(lang=c++)
void setRotate(const ofQuaternion &q)
$$/code



$$code(lang=c++)
void setTranslation(float tx, float ty, float tz)
$$/code



$$code(lang=c++)
void setTranslation(const ofVec3f &v)
$$/code



$$code(lang=c++)
void rotate(float angle, float x, float y, float z)
$$/code



$$code(lang=c++)
void rotateRad(float angle, float x, float y, float z)
$$/code



$$code(lang=c++)
void rotate(const ofQuaternion &q)
$$/code



$$code(lang=c++)
void translate(float tx, float ty, float tz)
$$/code



$$code(lang=c++)
void translate(const ofVec3f &v)
$$/code



$$code(lang=c++)
void scale(float x, float y, float z)
$$/code



$$code(lang=c++)
void scale(const ofVec3f &v)
$$/code



$$code(lang=c++)
void glRotate(float angle, float x, float y, float z)
$$/code



$$code(lang=c++)
void glRotateRad(float angle, float x, float y, float z)
$$/code



$$code(lang=c++)
void glRotate(const ofQuaternion &q)
$$/code



$$code(lang=c++)
void glTranslate(float tx, float ty, float tz)
$$/code



$$code(lang=c++)
void glTranslate(const ofVec3f &v)
$$/code



$$code(lang=c++)
void glScale(float x, float y, float z)
$$/code



$$code(lang=c++)
void glScale(const ofVec3f &v)
$$/code



$$code(lang=c++)
None getRotate() const 
$$/code



$$code(lang=c++)
None getTranslation() const 
$$/code



$$code(lang=c++)
None getScale() const 
$$/code



$$code(lang=c++)
void postMult(const ofMatrix4x4 &)
$$/code



$$code(lang=c++)
void operator*=(const ofMatrix4x4 &other)
$$/code



$$code(lang=c++)
None operator*(const ofMatrix4x4 &m) const 
$$/code



$$code(lang=c++)
void preMult(const ofMatrix4x4 &)
$$/code



$$code(lang=c++)
void postMultTranslate(const ofVec3f &v)
$$/code



$$code(lang=c++)
void postMultScale(const ofVec3f &v)
$$/code



$$code(lang=c++)
void postMultRotate(const ofQuaternion &q)
$$/code



$$code(lang=c++)
void postMultTranslate(float x, float y, float z)
$$/code



$$code(lang=c++)
void postMultRotate(float angle, float x, float y, float z)
$$/code



$$code(lang=c++)
void postMultScale(float x, float y, float z)
$$/code



$$code(lang=c++)
void preMultScale(const ofVec3f &v)
$$/code



$$code(lang=c++)
void preMultTranslate(const ofVec3f &v)
$$/code



$$code(lang=c++)
void preMultRotate(const ofQuaternion &q)
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
None newIdentityMatrix(void)
$$/code



$$code(lang=c++)
None newScaleMatrix(const ofVec3f &sv)
$$/code



$$code(lang=c++)
None newScaleMatrix(float sx, float sy, float sz)
$$/code



$$code(lang=c++)
None newTranslationMatrix(const ofVec3f &dv)
$$/code



$$code(lang=c++)
None newTranslationMatrix(float x, float y, float z)
$$/code



$$code(lang=c++)
None newRotationMatrix(const ofVec3f &from, const ofVec3f &to)
$$/code



$$code(lang=c++)
None newRotationMatrix(float angle, float x, float y, float z)
$$/code



$$code(lang=c++)
None newRotationMatrix(float angle, const ofVec3f &axis)
$$/code



$$code(lang=c++)
None newRotationMatrix(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)
$$/code



$$code(lang=c++)
None newRotationMatrix(const ofQuaternion &quat)
$$/code



$$code(lang=c++)
None getInverseOf(const ofMatrix4x4 &matrix)
$$/code



$$code(lang=c++)
None getTransposedOf(const ofMatrix4x4 &matrix)
$$/code



$$code(lang=c++)
None getOrthoNormalOf(const ofMatrix4x4 &matrix)
$$/code



$$code(lang=c++)
None newOrthoMatrix(double left, double right, double bottom, double top, double zNear, double zFar)
$$/code



$$code(lang=c++)
None newOrtho2DMatrix(double left, double right, double bottom, double top)
$$/code



$$code(lang=c++)
None newFrustumMatrix(double left, double right, double bottom, double top, double zNear, double zFar)
$$/code



$$code(lang=c++)
None newPerspectiveMatrix(double fovy, double aspectRatio, double zNear, double zFar)
$$/code



$$code(lang=c++)
None newLookAtMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)
$$/code



$$code(lang=c++)
None transform3x3(const ofVec3f &v, const ofMatrix4x4 &m)
$$/code



$$code(lang=c++)
None transform3x3(const ofMatrix4x4 &m, const ofVec3f &v)
$$/code



