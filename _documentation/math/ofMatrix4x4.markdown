#class ofMatrix4x4


##Description






##Methods



###void decompose(&translation, &rotation, &scale, &so)

<!--
_syntax: decompose(&translation, &rotation, &scale, &so)_
_name: decompose_
_returns: void_
_returns_description: _
_parameters: ofVec3f &translation, ofQuaternion &rotation, ofVec3f &scale, ofQuaternion &so_
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

###bool getFrustum(&left, &right, &bottom, &top, &zNear, &zFar)

<!--
_syntax: getFrustum(&left, &right, &bottom, &top, &zNear, &zFar)_
_name: getFrustum_
_returns: bool_
_returns_description: _
_parameters: double &left, double &right, double &bottom, double &top, double &zNear, double &zFar_
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

###ofMatrix4x4 getInverse()

<!--
_syntax: getInverse()_
_name: getInverse_
_returns: ofMatrix4x4_
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

###ofMatrix4x4 getInverseOf(&matrix)

<!--
_syntax: getInverseOf(&matrix)_
_name: getInverseOf_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofMatrix4x4 &matrix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void getLookAt(&eye, &center, &up, lookDistance = 1.0f)

<!--
_syntax: getLookAt(&eye, &center, &up, lookDistance = 1.0f)_
_name: getLookAt_
_returns: void_
_returns_description: _
_parameters: ofVec3f &eye, ofVec3f &center, ofVec3f &up, float lookDistance=1.0f_
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

###bool getOrtho(&left, &right, &bottom, &top, &zNear, &zFar)

<!--
_syntax: getOrtho(&left, &right, &bottom, &top, &zNear, &zFar)_
_name: getOrtho_
_returns: bool_
_returns_description: _
_parameters: double &left, double &right, double &bottom, double &top, double &zNear, double &zFar_
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

###ofMatrix4x4 getOrthoNormalOf(&matrix)

<!--
_syntax: getOrthoNormalOf(&matrix)_
_name: getOrthoNormalOf_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofMatrix4x4 &matrix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool getPerspective(&fovy, &aspectRatio, &zNear, &zFar)

<!--
_syntax: getPerspective(&fovy, &aspectRatio, &zNear, &zFar)_
_name: getPerspective_
_returns: bool_
_returns_description: _
_parameters: double &fovy, double &aspectRatio, double &zNear, double &zFar_
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

###const float * getPtr()

<!--
_syntax: getPtr()_
_name: getPtr_
_returns: const float *_
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

###ofQuaternion getRotate()

<!--
_syntax: getRotate()_
_name: getRotate_
_returns: ofQuaternion_
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

###ofVec3f getRowAsVec3f(i)

<!--
_syntax: getRowAsVec3f(i)_
_name: getRowAsVec3f_
_returns: ofVec3f_
_returns_description: _
_parameters: int i_
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

###ofVec4f getRowAsVec4f(i)

<!--
_syntax: getRowAsVec4f(i)_
_name: getRowAsVec4f_
_returns: ofVec4f_
_returns_description: _
_parameters: int i_
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

###ofVec3f getScale()

<!--
_syntax: getScale()_
_name: getScale_
_returns: ofVec3f_
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

###ofVec3f getTranslation()

<!--
_syntax: getTranslation()_
_name: getTranslation_
_returns: ofVec3f_
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

###ofMatrix4x4 getTransposedOf(&matrix)

<!--
_syntax: getTransposedOf(&matrix)_
_name: getTransposedOf_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofMatrix4x4 &matrix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void glRotate(angle, x, y, z)

<!--
_syntax: glRotate(angle, x, y, z)_
_name: glRotate_
_returns: void_
_returns_description: _
_parameters: float angle, float x, float y, float z_
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

###void glRotate(&q)

<!--
_syntax: glRotate(&q)_
_name: glRotate_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###void glRotateRad(angle, x, y, z)

<!--
_syntax: glRotateRad(angle, x, y, z)_
_name: glRotateRad_
_returns: void_
_returns_description: _
_parameters: float angle, float x, float y, float z_
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

###void glScale(x, y, z)

<!--
_syntax: glScale(x, y, z)_
_name: glScale_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###void glScale(&v)

<!--
_syntax: glScale(&v)_
_name: glScale_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###void glTranslate(tx, ty, tz)

<!--
_syntax: glTranslate(tx, ty, tz)_
_name: glTranslate_
_returns: void_
_returns_description: _
_parameters: float tx, float ty, float tz_
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

###void glTranslate(&v)

<!--
_syntax: glTranslate(&v)_
_name: glTranslate_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###bool isIdentity()

<!--
_syntax: isIdentity()_
_name: isIdentity_
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

###bool isNaN()

<!--
_syntax: isNaN()_
_name: isNaN_
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

###bool isValid()

<!--
_syntax: isValid()_
_name: isValid_
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

###void makeFromMultiplicationOf(&, &)

<!--
_syntax: makeFromMultiplicationOf(&, &)_
_name: makeFromMultiplicationOf_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &, const ofMatrix4x4 &_
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

###void makeFrustumMatrix(left, right, bottom, top, zNear, zFar)

<!--
_syntax: makeFrustumMatrix(left, right, bottom, top, zNear, zFar)_
_name: makeFrustumMatrix_
_returns: void_
_returns_description: _
_parameters: double left, double right, double bottom, double top, double zNear, double zFar_
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

###void makeIdentityMatrix()

<!--
_syntax: makeIdentityMatrix()_
_name: makeIdentityMatrix_
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

###bool makeInvertOf(&rhs)

<!--
_syntax: makeInvertOf(&rhs)_
_name: makeInvertOf_
_returns: bool_
_returns_description: _
_parameters: const ofMatrix4x4 &rhs_
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

###void makeLookAtMatrix(&eye, &center, &up)

<!--
_syntax: makeLookAtMatrix(&eye, &center, &up)_
_name: makeLookAtMatrix_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up_
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

###void makeLookAtViewMatrix(&eye, &center, &up)

<!--
_syntax: makeLookAtViewMatrix(&eye, &center, &up)_
_name: makeLookAtViewMatrix_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up_
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

###void makeOrtho2DMatrix(left, right, bottom, top)

<!--
_syntax: makeOrtho2DMatrix(left, right, bottom, top)_
_name: makeOrtho2DMatrix_
_returns: void_
_returns_description: _
_parameters: double left, double right, double bottom, double top_
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

###void makeOrthoMatrix(left, right, bottom, top, zNear, zFar)

<!--
_syntax: makeOrthoMatrix(left, right, bottom, top, zNear, zFar)_
_name: makeOrthoMatrix_
_returns: void_
_returns_description: _
_parameters: double left, double right, double bottom, double top, double zNear, double zFar_
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

###void makeOrthoNormalOf(&rhs)

<!--
_syntax: makeOrthoNormalOf(&rhs)_
_name: makeOrthoNormalOf_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &rhs_
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

###void makePerspectiveMatrix(fovy, aspectRatio, zNear, zFar)

<!--
_syntax: makePerspectiveMatrix(fovy, aspectRatio, zNear, zFar)_
_name: makePerspectiveMatrix_
_returns: void_
_returns_description: _
_parameters: double fovy, double aspectRatio, double zNear, double zFar_
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

###void makeRotationMatrix(&from, &to)

<!--
_syntax: makeRotationMatrix(&from, &to)_
_name: makeRotationMatrix_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &from, const ofVec3f &to_
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

###void makeRotationMatrix(angle, &axis)

<!--
_syntax: makeRotationMatrix(angle, &axis)_
_name: makeRotationMatrix_
_returns: void_
_returns_description: _
_parameters: float angle, const ofVec3f &axis_
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

###void makeRotationMatrix(angle, x, y, z)

<!--
_syntax: makeRotationMatrix(angle, x, y, z)_
_name: makeRotationMatrix_
_returns: void_
_returns_description: _
_parameters: float angle, float x, float y, float z_
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

###void makeRotationMatrix(&)

<!--
_syntax: makeRotationMatrix(&)_
_name: makeRotationMatrix_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &_
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

###void makeRotationMatrix(angle1, &axis1, angle2, &axis2, angle3, &axis3)

<!--
_syntax: makeRotationMatrix(angle1, &axis1, angle2, &axis2, angle3, &axis3)_
_name: makeRotationMatrix_
_returns: void_
_returns_description: _
_parameters: float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3_
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

###void makeScaleMatrix(&)

<!--
_syntax: makeScaleMatrix(&)_
_name: makeScaleMatrix_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &_
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

###void makeScaleMatrix(float, float, float)

<!--
_syntax: makeScaleMatrix(float, float, float)_
_name: makeScaleMatrix_
_returns: void_
_returns_description: _
_parameters: float, float, float_
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

###void makeTranslationMatrix(&)

<!--
_syntax: makeTranslationMatrix(&)_
_name: makeTranslationMatrix_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &_
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

###void makeTranslationMatrix(float, float, float)

<!--
_syntax: makeTranslationMatrix(float, float, float)_
_name: makeTranslationMatrix_
_returns: void_
_returns_description: _
_parameters: float, float, float_
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

###ofMatrix4x4 newFrustumMatrix(left, right, bottom, top, zNear, zFar)

<!--
_syntax: newFrustumMatrix(left, right, bottom, top, zNear, zFar)_
_name: newFrustumMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: double left, double right, double bottom, double top, double zNear, double zFar_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newIdentityMatrix(void)

<!--
_syntax: newIdentityMatrix(void)_
_name: newIdentityMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: void_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newLookAtMatrix(&eye, &center, &up)

<!--
_syntax: newLookAtMatrix(&eye, &center, &up)_
_name: newLookAtMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofVec3f &eye, const ofVec3f &center, const ofVec3f &up_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newOrtho2DMatrix(left, right, bottom, top)

<!--
_syntax: newOrtho2DMatrix(left, right, bottom, top)_
_name: newOrtho2DMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: double left, double right, double bottom, double top_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newOrthoMatrix(left, right, bottom, top, zNear, zFar)

<!--
_syntax: newOrthoMatrix(left, right, bottom, top, zNear, zFar)_
_name: newOrthoMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: double left, double right, double bottom, double top, double zNear, double zFar_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newPerspectiveMatrix(fovy, aspectRatio, zNear, zFar)

<!--
_syntax: newPerspectiveMatrix(fovy, aspectRatio, zNear, zFar)_
_name: newPerspectiveMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: double fovy, double aspectRatio, double zNear, double zFar_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newRotationMatrix(&from, &to)

<!--
_syntax: newRotationMatrix(&from, &to)_
_name: newRotationMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofVec3f &from, const ofVec3f &to_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newRotationMatrix(angle, x, y, z)

<!--
_syntax: newRotationMatrix(angle, x, y, z)_
_name: newRotationMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: float angle, float x, float y, float z_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newRotationMatrix(angle, &axis)

<!--
_syntax: newRotationMatrix(angle, &axis)_
_name: newRotationMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: float angle, const ofVec3f &axis_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newRotationMatrix(angle1, &axis1, angle2, &axis2, angle3, &axis3)

<!--
_syntax: newRotationMatrix(angle1, &axis1, angle2, &axis2, angle3, &axis3)_
_name: newRotationMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newRotationMatrix(&quat)

<!--
_syntax: newRotationMatrix(&quat)_
_name: newRotationMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofQuaternion &quat_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newScaleMatrix(&sv)

<!--
_syntax: newScaleMatrix(&sv)_
_name: newScaleMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofVec3f &sv_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newScaleMatrix(sx, sy, sz)

<!--
_syntax: newScaleMatrix(sx, sy, sz)_
_name: newScaleMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: float sx, float sy, float sz_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newTranslationMatrix(&dv)

<!--
_syntax: newTranslationMatrix(&dv)_
_name: newTranslationMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofVec3f &dv_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMatrix4x4 newTranslationMatrix(x, y, z)

<!--
_syntax: newTranslationMatrix(x, y, z)_
_name: newTranslationMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: float x, float y, float z_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

### ofMatrix4x4()

<!--
_syntax: ofMatrix4x4()_
_name: ofMatrix4x4_
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

### ofMatrix4x4(&mat)

<!--
_syntax: ofMatrix4x4(&mat)_
_name: ofMatrix4x4_
_returns: _
_returns_description: _
_parameters: const ofMatrix4x4 &mat_
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

### ofMatrix4x4(ptr)

<!--
_syntax: ofMatrix4x4(ptr)_
_name: ofMatrix4x4_
_returns: _
_returns_description: _
_parameters: float const *const ptr_
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

### ofMatrix4x4(&quat)

<!--
_syntax: ofMatrix4x4(&quat)_
_name: ofMatrix4x4_
_returns: _
_returns_description: _
_parameters: const ofQuaternion &quat_
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

### ofMatrix4x4(a00, a01, a02, a03, a10, a11, a12, a13, a20, a21, a22, a23, a30, a31, a32, a33)

<!--
_syntax: ofMatrix4x4(a00, a01, a02, a03, a10, a11, a12, a13, a20, a21, a22, a23, a30, a31, a32, a33)_
_name: ofMatrix4x4_
_returns: _
_returns_description: _
_parameters: float a00, float a01, float a02, float a03, float a10, float a11, float a12, float a13, float a20, float a21, float a22, float a23, float a30, float a31, float a32, float a33_
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

###float operator()(row, col)

<!--
_syntax: operator()(row, col)_
_name: operator()_
_returns: float_
_returns_description: _
_parameters: int row, int col_
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

###ofVec3f operator*(&v)

<!--
_syntax: operator*(&v)_
_name: operator*_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &v_
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

###ofVec4f operator*(&v)

<!--
_syntax: operator*(&v)_
_name: operator*_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &v_
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

###ofMatrix4x4 operator*(&m)

<!--
_syntax: operator*(&m)_
_name: operator*_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
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

###void operator*=(&other)

<!--
_syntax: operator*=(&other)_
_name: operator*=_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &other_
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

###ofMatrix4x4 operator=(&rhs)

<!--
_syntax: operator=(&rhs)_
_name: operator=_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: const ofMatrix4x4 &rhs_
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

###ofVec3f postMult(&v)

<!--
_syntax: postMult(&v)_
_name: postMult_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &v_
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

###ofVec4f postMult(&v)

<!--
_syntax: postMult(&v)_
_name: postMult_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &v_
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

###void postMult(&)

<!--
_syntax: postMult(&)_
_name: postMult_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &_
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

###void postMultRotate(&q)

<!--
_syntax: postMultRotate(&q)_
_name: postMultRotate_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###void postMultRotate(angle, x, y, z)

<!--
_syntax: postMultRotate(angle, x, y, z)_
_name: postMultRotate_
_returns: void_
_returns_description: _
_parameters: float angle, float x, float y, float z_
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

###void postMultScale(&v)

<!--
_syntax: postMultScale(&v)_
_name: postMultScale_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###void postMultScale(x, y, z)

<!--
_syntax: postMultScale(x, y, z)_
_name: postMultScale_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###void postMultTranslate(&v)

<!--
_syntax: postMultTranslate(&v)_
_name: postMultTranslate_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###void postMultTranslate(x, y, z)

<!--
_syntax: postMultTranslate(x, y, z)_
_name: postMultTranslate_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###ofVec3f preMult(&v)

<!--
_syntax: preMult(&v)_
_name: preMult_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &v_
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

###ofVec4f preMult(&v)

<!--
_syntax: preMult(&v)_
_name: preMult_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &v_
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

###void preMult(&)

<!--
_syntax: preMult(&)_
_name: preMult_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &_
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

###void preMultRotate(&q)

<!--
_syntax: preMultRotate(&q)_
_name: preMultRotate_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###void preMultScale(&v)

<!--
_syntax: preMultScale(&v)_
_name: preMultScale_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###void preMultTranslate(&v)

<!--
_syntax: preMultTranslate(&v)_
_name: preMultTranslate_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###void rotate(angle, x, y, z)

<!--
_syntax: rotate(angle, x, y, z)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float angle, float x, float y, float z_
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

###void rotate(&q)

<!--
_syntax: rotate(&q)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###void rotateRad(angle, x, y, z)

<!--
_syntax: rotateRad(angle, x, y, z)_
_name: rotateRad_
_returns: void_
_returns_description: _
_parameters: float angle, float x, float y, float z_
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

###void scale(x, y, z)

<!--
_syntax: scale(x, y, z)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###void scale(&v)

<!--
_syntax: scale(&v)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###void set(&rhs)

<!--
_syntax: set(&rhs)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &rhs_
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

###void set(ptr)

<!--
_syntax: set(ptr)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float const *const ptr_
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

###void set(ptr)

<!--
_syntax: set(ptr)_
_name: set_
_returns: void_
_returns_description: _
_parameters: double const *const ptr_
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

###void set(a00, a01, a02, a03, a10, a11, a12, a13, a20, a21, a22, a23, a30, a31, a32, a33)

<!--
_syntax: set(a00, a01, a02, a03, a10, a11, a12, a13, a20, a21, a22, a23, a30, a31, a32, a33)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float a00, float a01, float a02, float a03, float a10, float a11, float a12, float a13, float a20, float a21, float a22, float a23, float a30, float a31, float a32, float a33_
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

###void setRotate(&q)

<!--
_syntax: setRotate(&q)_
_name: setRotate_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###void setTranslation(tx, ty, tz)

<!--
_syntax: setTranslation(tx, ty, tz)_
_name: setTranslation_
_returns: void_
_returns_description: _
_parameters: float tx, float ty, float tz_
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

###void setTranslation(&v)

<!--
_syntax: setTranslation(&v)_
_name: setTranslation_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

###ofVec3f transform3x3(&v, &m)

<!--
_syntax: transform3x3(&v, &m)_
_name: transform3x3_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &v, const ofMatrix4x4 &m_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f transform3x3(&m, &v)

<!--
_syntax: transform3x3(&m, &v)_
_name: transform3x3_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofMatrix4x4 &m, const ofVec3f &v_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void translate(tx, ty, tz)

<!--
_syntax: translate(tx, ty, tz)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: float tx, float ty, float tz_
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

###void translate(&v)

<!--
_syntax: translate(&v)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &v_
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

### ~ofMatrix4x4()

<!--
_syntax: ~ofMatrix4x4()_
_name: ~ofMatrix4x4_
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

##Variables



###ofVec4f _mat

<!--
_name: _mat_
_type: ofVec4f_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

