#class ofMatrix4x4


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

The ofMatrix4x4 is the big class of the math part of openFrameworks.

You'll sometimes see it used for doing things like setting where the camera
in OpenGL (the mathematically calculated one, not the ofCamera one) is
looking or is pointed, or figuring how to position something in 3d space,
doing scaling, etc. The great thing about the 4x4 matrix is that it can do
all these things at the same time. A single ofMatrix4x4 can represent a ton
of different information about a stuff that goes on in doing 3d
programming: where an object is, how you want to scale an object, where a
camera is. Let's look at a few really basic examples:

![MATS](math/mats.png)

Not particularly exciting, but you can see how they'd be useful. Luckily most
of the need to transform, rotate, scale, shear, or further bazzlemunge (just
kidding, bazzlemunging is not a thing) stuff in oF is handled internally by
objects like ofNode or ofCamera.

oF uses row-vector style by default, meaning that when transforming a vector
by multiplying with a matrix, you should put the vector on the left side and
the matrix (or matrices) to its right. When multiplying by multiple matrices,
the order of application of the transforms is left-to-right. This means that
the standard order of manipulation operations is
vector * scale * rotate * translate.

Note that in GLSL, this convention is reversed, and column-vector style is
used. oF uploads the matrices to the GL context correctly, but you should
reverse the order of your vertex manipulations to right-to-left style, e.g.
translate * rotate * scale * vector.

On the application side, oF has operators which let you do matrix-vector
multiplication with the vector on the right if that's your preferred style.
To set up a combined transformation matrix for working in this style, you
should do matrix transformations with the functions like glTranslate,
glRotate, and glScale.






##Description

The ofMatrix4x4 is the big class of the math part of openFrameworks. You'll sometimes see it used for doing things like setting where the camera in OepnGL (the mathematically calculated one, not the ofCamera one) is looking or is pointedA, or figuring how to position something in 3d space, doing scaling, etc. The great thing about the 4x4 matrix is that it can do all these things at the same time. A single ofMatrix4x4 can represent a ton of different information about a stuff that goes on in doing 3d programming: where an object is, how you want to scale an object, where a camera is. Let's look at a few really basic examples:

[MATS](mats.png)

Not particularly exciting, but you can see how they'd be useful. Luckily most of the need to transform, rotate, scale, shear, or further bazzlemunge (just kidding, bazzlemunging is not a thing) stuff in OF is handled internally by objects like ofNode or ofCamera.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Decompose the matrix into translation, rotation,
scale and scale orientation.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Gets the perspective components for a frustum projection matrix.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Gets the inverse matrix.





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Makes a new matrix which is the inverse of the given matrix.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Gets the lookAt determiners of the matrix.

This function will only work for modelview matrices.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the perspective components from a matrix.

This only works with pure perspective projection matrices.





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Makes a new matrix which is the given matrix, normalized.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the frustum settings of a symmetric perspective projection
matrix.

Note, if matrix is not a symmetric perspective matrix then the
shear will be lost.
Asymmetric matrices occur when stereo, power walls, caves and
reality center display are used.
In these configuration one should use the getFrustum method instead.


Returns: false if matrix is not a perspective matrix,
where parameter values are undefined.





_description: _







<!----------------------------------------------------------------------------->

###float * getPtr()

<!--
_syntax: getPtr()_
_name: getPtr_
_returns: float *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Access the internal data in `float*` format
useful for opengl matrix transformations





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Get Methods
\{

These return matrix components. getRotate and getScale can only be
used if the matrix only has rotation or only has scale, since these
transform values are stored in the same area of the matrix.
For matrices with both use decompose instead.





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f getRowAsVec3f(i)

<!--
_syntax: getRowAsVec3f(i)_
_name: getRowAsVec3f_
_returns: ofVec3f_
_returns_description: _
_parameters: size_t i_
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

returns a copy of row i





_description: _







<!----------------------------------------------------------------------------->

###ofVec4f getRowAsVec4f(i)

<!--
_syntax: getRowAsVec4f(i)_
_name: getRowAsVec4f_
_returns: ofVec4f_
_returns_description: _
_parameters: size_t i_
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

returns a copy of row i





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Makes a new matrix which is the transpose of the given matrix.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: rotate





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: rotate





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: rotate





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: scale





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: scale





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: translate





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: translate





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Checks if the matrix is the identity matrix.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Checks if the matrix contains items that are not numbers.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Checks if the matrix is valid by ensuring its items are numbers.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes the result of the multiplication of two other matrices.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes a perspective projection matrix.

Related to: glFrustum. The viewing volume is frustum-shaped and
defined by the six parameters. Left, right, top, and bottom specify
coordinates in the zNear clipping plane where the frustum edges intersect
it, and the zNear and zFar parameters define the forward distances of
the view volume. The resulting volume can be vertically and
horizontally asymmetrical around the center of the near plane.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes the identity matrix.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes the inverse of the provided matrix.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes a combination of translation and rotation.

Matrix becomes a combination of a translation to the position of 'eye'
and a rotation matrix which orients an object to point towards 'center'
along its z-axis. Use this function if you want an object to look at a
point from another point in space.


Parameters:
eye The position of the object.
center The point which the object is "looking" at.
up The direction which the object considers to be "up".





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes a combination of an inverse translation and rotation.

Related to: gluLookAt. This creates the inverse of makeLookAtMatrix.
The matrix will be an opposite translation from the 'eye' position,
and it will rotate things in the opposite direction of the eye-to-center
orientation. This is definitely confusing, but the main reason to use
this transform is to set up a view matrix for a camera that's looking
at a certain point. To achieve the effect of moving the camera somewhere
and rotating it so that it points at something, the rest of the world
is moved in the *opposite* direction and rotated in the *opposite* way
around the camera. This way, you get the same effect as moving the actual
camera, but all the projection math can still be done with the camera
positioned at the origin (which makes it way simpler).





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes a 2D orthographic projection matrix.

Related to: glOrtho2D. The box-shaped viewing volume is
described by the four parameters and, implicitly, a zNear of -1
and a zFar of 1.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes an orthographic projection matrix.

Related to: glOrtho. The orthographic projection has a box-shaped
viewing volume described by the six parameters. Left, right, bottom,
and top specify coordinates in the zNear clipping plane where the
corresponding box sides intersect it.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes an orthonormalized version of the provided matrix.

The basis vectors (the 3x3 chunk embedded in the upper left of the matrix)
are normalized. This means the resulting matrix has had scaling effects
removed. The fourth column and the fourth row are transferred over
untouched, so translation will be included as well.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes a perspective projection matrix.

Related to: gluPerspective. The viewing volume is frustum-shaped amd
defined by the four parameters. The fovy and aspect ratio
are used to compute the positions of the left, right, top, and bottom sides
of the viewing volume in the zNear plane. The fovy is the y field-of-view,
the angle made by the top and bottom sides of frustum if they were to
intersect. The aspect ratio is the width of the frustum divided by its
height. Note that the resulting volume is both vertically and
horizontally symmetrical around the center of the near plane.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Rotation
\{
Matrix becomes a rotation transform.


Parameters:
from Matrix becomes a rotation from this vector direction.
to Matrix becomes a rotation to this vector direction.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Parameters:
angle Matrix becomes a rotation by angle (degrees).
axis Rotation is performed around this vector.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Parameters:
angle Matrix becomes a rotation by angle (degrees).
x X-value of the rotation axis.
y Y-value of the rotation axis.
z Z-value of the rotation axis.





_description: _







<!----------------------------------------------------------------------------->

###void makeRotationMatrix(&quaternion)

<!--
_syntax: makeRotationMatrix(&quaternion)_
_name: makeRotationMatrix_
_returns: void_
_returns_description: _
_parameters: const ofQuaternion &quaternion_
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

Parameters:
quaternion Matrix becomes a rotation that produces the quaternion's orientation.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix becomes a rotation around multiple axes.

The final rotation is the result of rotating around each of the three
axes, in order. Angles are given in degrees, and axes can be arbitrary
vectors.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Scale
\{
Matrix becomes a scale transform.

Accepts x, y, z scale values as a vector or separately.





_description: _







<!----------------------------------------------------------------------------->

###void makeScaleMatrix(float, float, float)

<!--
_syntax: makeScaleMatrix(float, float, float)_
_name: makeScaleMatrix_
_returns: void_
_returns_description: _
_parameters: float , float , float _
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Translation
\{
Matrix becomes a translation transform.

Accepts x, y, z translation values as a vector or separately.





_description: _







<!----------------------------------------------------------------------------->

###void makeTranslationMatrix(float, float, float)

<!--
_syntax: makeTranslationMatrix(float, float, float)_
_name: makeTranslationMatrix_
_returns: void_
_returns_description: _
_parameters: float , float , float _
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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makeFrustumMatrix





_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 newIdentityMatrix()

<!--
_syntax: newIdentityMatrix()_
_name: newIdentityMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makeIdentityMatrix





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makeLookAtMatrix





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makeOrtho2DMatrix





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makeOrthoMatrix





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makePerspectiveMatrix





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makeRotationMatrix





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makeScaleMatrix





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

See also: makeTranslationMatrix





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

The default constructor provides an identity matrix.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

You can pass another ofMatrix4x4 to create a copy.





_description: _







<!----------------------------------------------------------------------------->

### ofMatrix4x4(ptr)

<!--
_syntax: ofMatrix4x4(ptr)_
_name: ofMatrix4x4_
_returns: _
_returns_description: _
_parameters: const float *const ptr_
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

Construct with a pointer.

You can pass a pointer to floats, and the first 16 contents will be
extracted into this matrix.


Warning: the validity of these values is not checked!





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotation matrices can be constructed from a quaternion.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Positional style.

All 16 values of the matrix as positional arguments in row-major order.





_description: _







<!----------------------------------------------------------------------------->

###float & operator()(row, col)

<!--
_syntax: operator()(row, col)_
_name: operator()_
_returns: float &_
_returns_description: _
_parameters: size_t row, size_t col_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Write data with `matrix(row,col)=number`





_description: _







<!----------------------------------------------------------------------------->

###float operator()(row, col)

<!--
_syntax: operator()(row, col)_
_name: operator()_
_returns: float_
_returns_description: _
_parameters: size_t row, size_t col_
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

Read data with `matrix(row, col)`





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

creates a new matrix from the product of two matrices.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix * Vector operator.

Calls postMult() internally.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

The *= operation for matrices.

This is equivalent to calling postMult(other), but it allows you to do
someMatrix *= someMatrix without breaking const-correctness. Calling
someMatrix.postMult(someMatrix) won't work.





_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 & operator=(&rhs)

<!--
_syntax: operator=(&rhs)_
_name: operator=_
_returns: ofMatrix4x4 &_
_returns_description: _
_parameters: const ofMatrix4x4 &rhs_
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

Copy a matrix using `=` operator.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Matrix * vector multiplication.

This operation implicitly treat vectors as column-matrices.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

post-multiplies the vector by the matrix (i.e. returns M mult v).
The vector is implicitly treated as a column-matrix





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Post-multiply by another matrix.

This matrix becomes `this * other`.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Equivalent to postMult(newRotationMatrix(q)).





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Equivalent to postMult(scale(v)).





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Equivalent to postMult(newTranslationMatrix(v)).





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

the positional argument version of the above





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Vector * matrix multiplication.

This operation implicitly treats vectors as row-matrices.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

pre-multiplies the vector by the matrix (i.e. returns v mult M)
The vector is implicitly treated as a row-matrix





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Pre-multiply by another matrix.

This matrix becomes `other * this`.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Equivalent to preMult(newRotationMatrix(q)).





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Equivalent to preMult(newScaleMatrix(v)).





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Equivalent to preMult(newTranslationMatrix(v)).





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotates by angle (degrees) around the given x, y, z axis.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotates based on the quarternion.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotates by angle (radians) around the given x, y, z axis.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Scales each axis by the corresponding x, y, z.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Scales each axis by the corresponding x, y, z of the vector.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the data of the matrix.

These functions are analogous to the corresponding constructors.





_description: _







<!----------------------------------------------------------------------------->

###void set(ptr)

<!--
_syntax: set(ptr)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const float *const ptr_
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







<!----------------------------------------------------------------------------->

###void set(ptr)

<!--
_syntax: set(ptr)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const double *const ptr_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Set methods
\{

All of these methods alter the components,
deleting the previous data only in that component.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Apply a 3x3 transform (no translation) of v * M.





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Apply a 3x3 transform (no translation) of M * v.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Translates by tx, ty, tz.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Translates along the vector.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

destructor.





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

_inlined_description: _

The values of the matrix, stored in row-major order.





_description: _







<!----------------------------------------------------------------------------->

