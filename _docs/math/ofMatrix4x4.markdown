#class ofMatrix4x4

Example



Reference



Methods



//----------------------

##void getLookAt(ofVec3f &eye, ofVec3f &center, ofVec3f &up, float lookDistance=1.0f) const 

_syntax: getLookAt(ofVec3f &eye, ofVec3f &center, ofVec3f &up, float lookDistance=1.0f) const _

_name: getLookAt_

_returns: void_

_parameters: float = 1.0f_



_description: _















//----------------------

##void decompose(ofVec3f &translation, ofQuaternion &rotation, ofVec3f &scale, ofQuaternion &so) const 

_syntax: decompose(ofVec3f &translation, ofQuaternion &rotation, ofVec3f &scale, ofQuaternion &so) const _

_name: decompose_

_returns: void_

_parameters: _



_description: _















//----------------------

##void postMult(const ofVec3f &v) const 

_syntax: postMult(const ofVec3f &v) const _

_name: postMult_

_returns: void_

_parameters: const _



_description: _



<br/><br/>return type changed from ofVec3f to ofVec4f in 0.07

<br/><br/>return type changed from ofVec4f to void in 0.07













//----------------------

##ofMatrix4x4 operator*(const ofVec3f &v) const 

_syntax: operator*(const ofVec3f &v) const _

_name: operator*_

_returns: ofMatrix4x4_

_parameters: const _



_description: _



<br/><br/>return type changed from ofVec3f to ofVec4f in 0.07

<br/><br/>return type changed from ofVec4f to ofMatrix4x4 in 0.07













//----------------------

##void preMult(const ofVec3f &v) const 

_syntax: preMult(const ofVec3f &v) const _

_name: preMult_

_returns: void_

_parameters: const _



_description: _



<br/><br/>return type changed from ofVec3f to ofVec4f in 0.07

<br/><br/>return type changed from ofVec4f to void in 0.07













//----------------------

##void setRotate(const ofQuaternion &q)

_syntax: setRotate(const ofQuaternion &q)_

_name: setRotate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setTranslation(float tx, float ty, float tz)

_syntax: setTranslation(float tx, float ty, float tz)_

_name: setTranslation_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void setTranslation(const ofVec3f &v)

_syntax: setTranslation(const ofVec3f &v)_

_name: setTranslation_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void rotate(float angle, float x, float y, float z)

_syntax: rotate(float angle, float x, float y, float z)_

_name: rotate_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void rotateRad(float angle, float x, float y, float z)

_syntax: rotateRad(float angle, float x, float y, float z)_

_name: rotateRad_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void rotate(const ofQuaternion &q)

_syntax: rotate(const ofQuaternion &q)_

_name: rotate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void translate(float tx, float ty, float tz)

_syntax: translate(float tx, float ty, float tz)_

_name: translate_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void translate(const ofVec3f &v)

_syntax: translate(const ofVec3f &v)_

_name: translate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void scale(float x, float y, float z)

_syntax: scale(float x, float y, float z)_

_name: scale_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void scale(const ofVec3f &v)

_syntax: scale(const ofVec3f &v)_

_name: scale_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void glRotate(float angle, float x, float y, float z)

_syntax: glRotate(float angle, float x, float y, float z)_

_name: glRotate_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void glRotateRad(float angle, float x, float y, float z)

_syntax: glRotateRad(float angle, float x, float y, float z)_

_name: glRotateRad_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void glRotate(const ofQuaternion &q)

_syntax: glRotate(const ofQuaternion &q)_

_name: glRotate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void glTranslate(float tx, float ty, float tz)

_syntax: glTranslate(float tx, float ty, float tz)_

_name: glTranslate_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void glTranslate(const ofVec3f &v)

_syntax: glTranslate(const ofVec3f &v)_

_name: glTranslate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void glScale(float x, float y, float z)

_syntax: glScale(float x, float y, float z)_

_name: glScale_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void glScale(const ofVec3f &v)

_syntax: glScale(const ofVec3f &v)_

_name: glScale_

_returns: void_

_parameters: const _



_description: _















//----------------------

##ofQuaternion getRotate() const 

_syntax: getRotate() const _

_name: getRotate_

_returns: ofQuaternion_

_parameters: _



_description: _















//----------------------

##ofVec3f getTranslation() const 

_syntax: getTranslation() const _

_name: getTranslation_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f getScale() const 

_syntax: getScale() const _

_name: getScale_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##void operator*=(const ofMatrix4x4 &other)

_syntax: operator*=(const ofMatrix4x4 &other)_

_name: operator*=_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void postMultTranslate(const ofVec3f &v)

_syntax: postMultTranslate(const ofVec3f &v)_

_name: postMultTranslate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void postMultScale(const ofVec3f &v)

_syntax: postMultScale(const ofVec3f &v)_

_name: postMultScale_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void postMultRotate(const ofQuaternion &q)

_syntax: postMultRotate(const ofQuaternion &q)_

_name: postMultRotate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void postMultTranslate(float x, float y, float z)

_syntax: postMultTranslate(float x, float y, float z)_

_name: postMultTranslate_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void postMultRotate(float angle, float x, float y, float z)

_syntax: postMultRotate(float angle, float x, float y, float z)_

_name: postMultRotate_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void postMultScale(float x, float y, float z)

_syntax: postMultScale(float x, float y, float z)_

_name: postMultScale_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void preMultScale(const ofVec3f &v)

_syntax: preMultScale(const ofVec3f &v)_

_name: preMultScale_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void preMultTranslate(const ofVec3f &v)

_syntax: preMultTranslate(const ofVec3f &v)_

_name: preMultTranslate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void preMultRotate(const ofQuaternion &q)

_syntax: preMultRotate(const ofQuaternion &q)_

_name: preMultRotate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##ofMatrix4x4 newIdentityMatrix(void)

_syntax: newIdentityMatrix(void)_

_name: newIdentityMatrix_

_returns: ofMatrix4x4_

_parameters: void_



_description: _















//----------------------

##ofMatrix4x4 newScaleMatrix(const ofVec3f &sv)

_syntax: newScaleMatrix(const ofVec3f &sv)_

_name: newScaleMatrix_

_returns: ofMatrix4x4_

_parameters: const _



_description: _















//----------------------

##ofMatrix4x4 newScaleMatrix(float sx, float sy, float sz)

_syntax: newScaleMatrix(float sx, float sy, float sz)_

_name: newScaleMatrix_

_returns: ofMatrix4x4_

_parameters: float, float, float_



_description: _















//----------------------

##ofMatrix4x4 newTranslationMatrix(const ofVec3f &dv)

_syntax: newTranslationMatrix(const ofVec3f &dv)_

_name: newTranslationMatrix_

_returns: ofMatrix4x4_

_parameters: const _



_description: _















//----------------------

##ofMatrix4x4 newTranslationMatrix(float x, float y, float z)

_syntax: newTranslationMatrix(float x, float y, float z)_

_name: newTranslationMatrix_

_returns: ofMatrix4x4_

_parameters: float, float, float_



_description: _















//----------------------

##ofMatrix4x4 newRotationMatrix(const ofVec3f &from, const ofVec3f &to)

_syntax: newRotationMatrix(const ofVec3f &from, const ofVec3f &to)_

_name: newRotationMatrix_

_returns: ofMatrix4x4_

_parameters: const , const _



_description: _















//----------------------

##ofMatrix4x4 newRotationMatrix(float angle, float x, float y, float z)

_syntax: newRotationMatrix(float angle, float x, float y, float z)_

_name: newRotationMatrix_

_returns: ofMatrix4x4_

_parameters: float, float, float, float_



_description: _















//----------------------

##ofMatrix4x4 newRotationMatrix(float angle, const ofVec3f &axis)

_syntax: newRotationMatrix(float angle, const ofVec3f &axis)_

_name: newRotationMatrix_

_returns: ofMatrix4x4_

_parameters: float, const _



_description: _















//----------------------

##ofMatrix4x4 newRotationMatrix(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)

_syntax: newRotationMatrix(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)_

_name: newRotationMatrix_

_returns: ofMatrix4x4_

_parameters: float, const , float, const , float, const _



_description: _















//----------------------

##ofMatrix4x4 newRotationMatrix(const ofQuaternion &quat)

_syntax: newRotationMatrix(const ofQuaternion &quat)_

_name: newRotationMatrix_

_returns: ofMatrix4x4_

_parameters: const _



_description: _















//----------------------

##ofMatrix4x4 getInverseOf(const ofMatrix4x4 &matrix)

_syntax: getInverseOf(const ofMatrix4x4 &matrix)_

_name: getInverseOf_

_returns: ofMatrix4x4_

_parameters: const _



_description: _















//----------------------

##ofMatrix4x4 getTransposedOf(const ofMatrix4x4 &matrix)

_syntax: getTransposedOf(const ofMatrix4x4 &matrix)_

_name: getTransposedOf_

_returns: ofMatrix4x4_

_parameters: const _



_description: _















//----------------------

##ofMatrix4x4 getOrthoNormalOf(const ofMatrix4x4 &matrix)

_syntax: getOrthoNormalOf(const ofMatrix4x4 &matrix)_

_name: getOrthoNormalOf_

_returns: ofMatrix4x4_

_parameters: const _



_description: _















//----------------------

##ofMatrix4x4 newOrthoMatrix(double left, double right, double bottom, double top, double zNear, double zFar)

_syntax: newOrthoMatrix(double left, double right, double bottom, double top, double zNear, double zFar)_

_name: newOrthoMatrix_

_returns: ofMatrix4x4_

_parameters: double, double, double, double, double, double_



_description: _















//----------------------

##ofMatrix4x4 newOrtho2DMatrix(double left, double right, double bottom, double top)

_syntax: newOrtho2DMatrix(double left, double right, double bottom, double top)_

_name: newOrtho2DMatrix_

_returns: ofMatrix4x4_

_parameters: double, double, double, double_



_description: _















//----------------------

##ofMatrix4x4 newFrustumMatrix(double left, double right, double bottom, double top, double zNear, double zFar)

_syntax: newFrustumMatrix(double left, double right, double bottom, double top, double zNear, double zFar)_

_name: newFrustumMatrix_

_returns: ofMatrix4x4_

_parameters: double, double, double, double, double, double_



_description: _















//----------------------

##ofMatrix4x4 newPerspectiveMatrix(double fovy, double aspectRatio, double zNear, double zFar)

_syntax: newPerspectiveMatrix(double fovy, double aspectRatio, double zNear, double zFar)_

_name: newPerspectiveMatrix_

_returns: ofMatrix4x4_

_parameters: double, double, double, double_



_description: _















//----------------------

##ofMatrix4x4 newLookAtMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)

_syntax: newLookAtMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)_

_name: newLookAtMatrix_

_returns: ofMatrix4x4_

_parameters: const , const , const _



_description: _















//----------------------

##ofVec3f transform3x3(const ofVec3f &v, const ofMatrix4x4 &m)

_syntax: transform3x3(const ofVec3f &v, const ofMatrix4x4 &m)_

_name: transform3x3_

_returns: ofVec3f_

_parameters: const , const _



_description: _















//----------------------

##None ofMatrix4x4()

_syntax: ofMatrix4x4()_

_name: ofMatrix4x4_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ofMatrix4x4(const ofMatrix4x4 &mat)

_syntax: ofMatrix4x4(const ofMatrix4x4 &mat)_

_name: ofMatrix4x4_

_returns: None_

_parameters: const _



_description: _















//----------------------

##None ofMatrix4x4(float const *const ptr)

_syntax: ofMatrix4x4(float const *const ptr)_

_name: ofMatrix4x4_

_returns: None_

_parameters: float const *const _



_description: _















//----------------------

##None ofMatrix4x4(float a00, float a01, float a02, float a03, float a10, float a11, float a12, float a13, float a20, float a21, float a22, float a23, float a30, float a31, float a32, float a33)

_syntax: ofMatrix4x4(float a00, float a01, float a02, float a03, float a10, float a11, float a12, float a13, float a20, float a21, float a22, float a23, float a30, float a31, float a32, float a33)_

_name: ofMatrix4x4_

_returns: None_

_parameters: float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float_



_description: _















//----------------------

##None ~ofMatrix4x4()

_syntax: ~ofMatrix4x4()_

_name: ~ofMatrix4x4_

_returns: None_

_parameters: _



_description: _















//----------------------

##float operator()(int row, int col)

_syntax: operator()(int row, int col)_

_name: operator()_

_returns: float_

_parameters: int, int_



_description: _



<br/><br/>return type changed from float & to float in 0.07













//----------------------

##ofVec3f getRowAsVec3f(int i) const 

_syntax: getRowAsVec3f(int i) const _

_name: getRowAsVec3f_

_returns: ofVec3f_

_parameters: int_



_description: _















//----------------------

##ofVec4f getRowAsVec4f(int i) const 

_syntax: getRowAsVec4f(int i) const _

_name: getRowAsVec4f_

_returns: ofVec4f_

_parameters: int_



_description: _















//----------------------

##bool isValid() const 

_syntax: isValid() const _

_name: isValid_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isNaN() const 

_syntax: isNaN() const _

_name: isNaN_

_returns: bool_

_parameters: _



_description: _















//----------------------

##ofMatrix4x4 operator=(const ofMatrix4x4 &rhs)

_syntax: operator=(const ofMatrix4x4 &rhs)_

_name: operator=_

_returns: ofMatrix4x4_

_parameters: const _



_description: _















//----------------------

##void set(const ofMatrix4x4 &rhs)

_syntax: set(const ofMatrix4x4 &rhs)_

_name: set_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void set(float const *const ptr)

_syntax: set(float const *const ptr)_

_name: set_

_returns: void_

_parameters: float const *const _



_description: _















//----------------------

##void set(double const *const ptr)

_syntax: set(double const *const ptr)_

_name: set_

_returns: void_

_parameters: double const *const _



_description: _















//----------------------

##void set(float a00, float a01, float a02, float a03, float a10, float a11, float a12, float a13, float a20, float a21, float a22, float a23, float a30, float a31, float a32, float a33)

_syntax: set(float a00, float a01, float a02, float a03, float a10, float a11, float a12, float a13, float a20, float a21, float a22, float a23, float a30, float a31, float a32, float a33)_

_name: set_

_returns: void_

_parameters: float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float_



_description: _















//----------------------

##float * getPtr()

_syntax: getPtr()_

_name: getPtr_

_returns: float *_

_parameters: _



_description: _















//----------------------

##bool isIdentity() const 

_syntax: isIdentity() const _

_name: isIdentity_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void makeIdentityMatrix()

_syntax: makeIdentityMatrix()_

_name: makeIdentityMatrix_

_returns: void_

_parameters: _



_description: _















//----------------------

##void makeScaleMatrix(const ofVec3f &)

_syntax: makeScaleMatrix(const ofVec3f &)_

_name: makeScaleMatrix_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void makeScaleMatrix(float, float, float)

_syntax: makeScaleMatrix(float, float, float)_

_name: makeScaleMatrix_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void makeTranslationMatrix(const ofVec3f &)

_syntax: makeTranslationMatrix(const ofVec3f &)_

_name: makeTranslationMatrix_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void makeTranslationMatrix(float, float, float)

_syntax: makeTranslationMatrix(float, float, float)_

_name: makeTranslationMatrix_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void makeRotationMatrix(const ofVec3f &from, const ofVec3f &to)

_syntax: makeRotationMatrix(const ofVec3f &from, const ofVec3f &to)_

_name: makeRotationMatrix_

_returns: void_

_parameters: const , const _



_description: _















//----------------------

##void makeRotationMatrix(float angle, const ofVec3f &axis)

_syntax: makeRotationMatrix(float angle, const ofVec3f &axis)_

_name: makeRotationMatrix_

_returns: void_

_parameters: float, const _



_description: _















//----------------------

##void makeRotationMatrix(float angle, float x, float y, float z)

_syntax: makeRotationMatrix(float angle, float x, float y, float z)_

_name: makeRotationMatrix_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void makeRotationMatrix(const ofQuaternion &)

_syntax: makeRotationMatrix(const ofQuaternion &)_

_name: makeRotationMatrix_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void makeRotationMatrix(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)

_syntax: makeRotationMatrix(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)_

_name: makeRotationMatrix_

_returns: void_

_parameters: float, const , float, const , float, const _



_description: _















//----------------------

##bool makeInvertOf(const ofMatrix4x4 &rhs)

_syntax: makeInvertOf(const ofMatrix4x4 &rhs)_

_name: makeInvertOf_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##void makeOrthoNormalOf(const ofMatrix4x4 &rhs)

_syntax: makeOrthoNormalOf(const ofMatrix4x4 &rhs)_

_name: makeOrthoNormalOf_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void makeFromMultiplicationOf(const ofMatrix4x4 &, const ofMatrix4x4 &)

_syntax: makeFromMultiplicationOf(const ofMatrix4x4 &, const ofMatrix4x4 &)_

_name: makeFromMultiplicationOf_

_returns: void_

_parameters: const , const _



_description: _















//----------------------

##ofMatrix4x4 getInverse()

_syntax: getInverse()_

_name: getInverse_

_returns: ofMatrix4x4_

_parameters: _



_description: _















//----------------------

##void makeOrthoMatrix(double left, double right, double bottom, double top, double zNear, double zFar)

_syntax: makeOrthoMatrix(double left, double right, double bottom, double top, double zNear, double zFar)_

_name: makeOrthoMatrix_

_returns: void_

_parameters: double, double, double, double, double, double_



_description: _















//----------------------

##void makeOrtho2DMatrix(double left, double right, double bottom, double top)

_syntax: makeOrtho2DMatrix(double left, double right, double bottom, double top)_

_name: makeOrtho2DMatrix_

_returns: void_

_parameters: double, double, double, double_



_description: _















//----------------------

##void makeFrustumMatrix(double left, double right, double bottom, double top, double zNear, double zFar)

_syntax: makeFrustumMatrix(double left, double right, double bottom, double top, double zNear, double zFar)_

_name: makeFrustumMatrix_

_returns: void_

_parameters: double, double, double, double, double, double_



_description: _















//----------------------

##void makePerspectiveMatrix(double fovy, double aspectRatio, double zNear, double zFar)

_syntax: makePerspectiveMatrix(double fovy, double aspectRatio, double zNear, double zFar)_

_name: makePerspectiveMatrix_

_returns: void_

_parameters: double, double, double, double_



_description: _















//----------------------

##void makeLookAtMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)

_syntax: makeLookAtMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)_

_name: makeLookAtMatrix_

_returns: void_

_parameters: const , const , const _



_description: _















//----------------------

##void makeLookAtViewMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)

_syntax: makeLookAtViewMatrix(const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up)_

_name: makeLookAtViewMatrix_

_returns: void_

_parameters: const , const , const _



_description: _















//----------------------

##bool getOrtho(double &left, double &right, double &bottom, double &top, double &zNear, double &zFar) const 

_syntax: getOrtho(double &left, double &right, double &bottom, double &top, double &zNear, double &zFar) const _

_name: getOrtho_

_returns: bool_

_parameters: double &, double &, double &, double &, double &, double &_



_description: _















//----------------------

##bool getFrustum(double &left, double &right, double &bottom, double &top, double &zNear, double &zFar) const 

_syntax: getFrustum(double &left, double &right, double &bottom, double &top, double &zNear, double &zFar) const _

_name: getFrustum_

_returns: bool_

_parameters: double &, double &, double &, double &, double &, double &_



_description: _















//----------------------

##bool getPerspective(double &fovy, double &aspectRatio, double &zNear, double &zFar) const 

_syntax: getPerspective(double &fovy, double &aspectRatio, double &zNear, double &zFar) const _

_name: getPerspective_

_returns: bool_

_parameters: double &, double &, double &, double &_



_description: _















