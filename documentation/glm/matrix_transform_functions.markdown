#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::frustum(left, right, bottom, top, near, far)

<!--
_syntax: glm::frustum(left, right, bottom, top, near, far)_
_name: glm::frustum_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T left, T right, T bottom, T top, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a frustum matrix with default handedness.


**Parameters:**

left

right

bottom

top

near

far

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::frustumLH(left, right, bottom, top, near, far)

<!--
_syntax: glm::frustumLH(left, right, bottom, top, near, far)_
_name: glm::frustumLH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T left, T right, T bottom, T top, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a left handed frustum matrix.


**Parameters:**

left

right

bottom

top

near

far

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::frustumRH(left, right, bottom, top, near, far)

<!--
_syntax: glm::frustumRH(left, right, bottom, top, near, far)_
_name: glm::frustumRH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T left, T right, T bottom, T top, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a right handed frustum matrix.


**Parameters:**

left

right

bottom

top

near

far

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::infinitePerspective(fovy, aspect, near)

<!--
_syntax: glm::infinitePerspective(fovy, aspect, near)_
_name: glm::infinitePerspective_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fovy, T aspect, T near_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for a symmetric perspective-view frustum with far plane at infinite with default handedness.


**Parameters:**

fovy Specifies the field of view angle, in degrees, in the y direction. Expressed in radians.

aspect Specifies the aspect ratio that determines the field of view in the x direction. The aspect ratio is the ratio of x (width) to y (height).

near Specifies the distance from the viewer to the near clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::infinitePerspectiveLH(fovy, aspect, near)

<!--
_syntax: glm::infinitePerspectiveLH(fovy, aspect, near)_
_name: glm::infinitePerspectiveLH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fovy, T aspect, T near_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for a left handed, symmetric perspective-view frustum with far plane at infinite.


**Parameters:**

fovy Specifies the field of view angle, in degrees, in the y direction. Expressed in radians.

aspect Specifies the aspect ratio that determines the field of view in the x direction. The aspect ratio is the ratio of x (width) to y (height).

near Specifies the distance from the viewer to the near clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::infinitePerspectiveRH(fovy, aspect, near)

<!--
_syntax: glm::infinitePerspectiveRH(fovy, aspect, near)_
_name: glm::infinitePerspectiveRH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fovy, T aspect, T near_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for a right handed, symmetric perspective-view frustum with far plane at infinite.


**Parameters:**

fovy Specifies the field of view angle, in degrees, in the y direction. Expressed in radians.

aspect Specifies the aspect ratio that determines the field of view in the x direction. The aspect ratio is the ratio of x (width) to y (height).

near Specifies the distance from the viewer to the near clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::lookAt(&eye = P, &center = P, &up = P)

<!--
_syntax: glm::lookAt(&eye = P, &center = P, &up = P)_
_name: glm::lookAt_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::vec3 &eye=P, const glm::vec3 &center=P, const glm::vec3 &up=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a look at view matrix based on the default handedness.


**Parameters:**

eye Position of the camera

center Position where the camera is looking at

up Normalized up vector, how the camera is oriented. Typically (0, 0, 1)

See also: gtc_matrix_transform

See also: - frustum(T const & left, T const & right, T const & bottom, T const & top, T const & nearVal, T const & farVal) frustum(T const & left, T const & right, T const & bottom, T const & top, T const & nearVal, T const & farVal)





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::lookAtLH(&eye = P, &center = P, &up = P)

<!--
_syntax: glm::lookAtLH(&eye = P, &center = P, &up = P)_
_name: glm::lookAtLH_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::vec3 &eye=P, const glm::vec3 &center=P, const glm::vec3 &up=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a left handed look at view matrix.


**Parameters:**

eye Position of the camera

center Position where the camera is looking at

up Normalized up vector, how the camera is oriented. Typically (0, 0, 1)

See also: gtc_matrix_transform

See also: - frustum(T const & left, T const & right, T const & bottom, T const & top, T const & nearVal, T const & farVal) frustum(T const & left, T const & right, T const & bottom, T const & top, T const & nearVal, T const & farVal)





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::lookAtRH(&eye = P, &center = P, &up = P)

<!--
_syntax: glm::lookAtRH(&eye = P, &center = P, &up = P)_
_name: glm::lookAtRH_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::vec3 &eye=P, const glm::vec3 &center=P, const glm::vec3 &up=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a right handed look at view matrix.


**Parameters:**

eye Position of the camera

center Position where the camera is looking at

up Normalized up vector, how the camera is oriented. Typically (0, 0, 1)

See also: gtc_matrix_transform

See also: - frustum(T const & left, T const & right, T const & bottom, T const & top, T const & nearVal, T const & farVal) frustum(T const & left, T const & right, T const & bottom, T const & top, T const & nearVal, T const & farVal)





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::ortho(left, right, bottom, top, zNear, zFar)

<!--
_syntax: glm::ortho(left, right, bottom, top, zNear, zFar)_
_name: glm::ortho_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T left, T right, T bottom, T top, T zNear, T zFar_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for an orthographic parallel viewing volume, using the default handedness.


**Parameters:**

left

right

bottom

top

zNear

zFar

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform

See also: - glm::ortho(T const & left, T const & right, T const & bottom, T const & top)





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::ortho(left, right, bottom, top)

<!--
_syntax: glm::ortho(left, right, bottom, top)_
_name: glm::ortho_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T left, T right, T bottom, T top_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for projecting two-dimensional coordinates onto the screen.


**Parameters:**

left

right

bottom

top

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform

See also: - glm::ortho(T const & left, T const & right, T const & bottom, T const & top, T const & zNear, T const & zFar)





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::orthoLH(left, right, bottom, top, zNear, zFar)

<!--
_syntax: glm::orthoLH(left, right, bottom, top, zNear, zFar)_
_name: glm::orthoLH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T left, T right, T bottom, T top, T zNear, T zFar_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for an orthographic parallel viewing volume, using left-handedness.


**Parameters:**

left

right

bottom

top

zNear

zFar

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform

See also: - glm::ortho(T const & left, T const & right, T const & bottom, T const & top)





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::orthoRH(left, right, bottom, top, zNear, zFar)

<!--
_syntax: glm::orthoRH(left, right, bottom, top, zNear, zFar)_
_name: glm::orthoRH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T left, T right, T bottom, T top, T zNear, T zFar_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for an orthographic parallel viewing volume, using right-handedness.


**Parameters:**

left

right

bottom

top

zNear

zFar

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform

See also: - glm::ortho(T const & left, T const & right, T const & bottom, T const & top)





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::perspective(fovy, aspect, near, far)

<!--
_syntax: glm::perspective(fovy, aspect, near, far)_
_name: glm::perspective_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fovy, T aspect, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for a symetric perspective-view frustum based on the default handedness.


**Parameters:**

fovy Specifies the field of view angle in the y direction. Expressed in radians.

aspect Specifies the aspect ratio that determines the field of view in the x direction. The aspect ratio is the ratio of x (width) to y (height).

near Specifies the distance from the viewer to the near clipping plane (always positive).

far Specifies the distance from the viewer to the far clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::perspectiveFov(fov, width, height, near, far)

<!--
_syntax: glm::perspectiveFov(fov, width, height, near, far)_
_name: glm::perspectiveFov_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fov, T width, T height, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a perspective projection matrix based on a field of view and the default handedness.


**Parameters:**

fov Expressed in radians.

width

height

near Specifies the distance from the viewer to the near clipping plane (always positive).

far Specifies the distance from the viewer to the far clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::perspectiveFovLH(fov, width, height, near, far)

<!--
_syntax: glm::perspectiveFovLH(fov, width, height, near, far)_
_name: glm::perspectiveFovLH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fov, T width, T height, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a left handed perspective projection matrix based on a field of view.


**Parameters:**

fov Expressed in radians.

width

height

near Specifies the distance from the viewer to the near clipping plane (always positive).

far Specifies the distance from the viewer to the far clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::perspectiveFovRH(fov, width, height, near, far)

<!--
_syntax: glm::perspectiveFovRH(fov, width, height, near, far)_
_name: glm::perspectiveFovRH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fov, T width, T height, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a right handed perspective projection matrix based on a field of view.


**Parameters:**

fov Expressed in radians.

width

height

near Specifies the distance from the viewer to the near clipping plane (always positive).

far Specifies the distance from the viewer to the far clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::perspectiveLH(fovy, aspect, near, far)

<!--
_syntax: glm::perspectiveLH(fovy, aspect, near, far)_
_name: glm::perspectiveLH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fovy, T aspect, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for a left handed, symetric perspective-view frustum.


**Parameters:**

fovy Specifies the field of view angle, in degrees, in the y direction. Expressed in radians.

aspect Specifies the aspect ratio that determines the field of view in the x direction. The aspect ratio is the ratio of x (width) to y (height).

near Specifies the distance from the viewer to the near clipping plane (always positive).

far Specifies the distance from the viewer to the far clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::perspectiveRH(fovy, aspect, near, far)

<!--
_syntax: glm::perspectiveRH(fovy, aspect, near, far)_
_name: glm::perspectiveRH_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fovy, T aspect, T near, T far_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for a right handed, symetric perspective-view frustum.


**Parameters:**

fovy Specifies the field of view angle, in degrees, in the y direction. Expressed in radians.

aspect Specifies the aspect ratio that determines the field of view in the x direction. The aspect ratio is the ratio of x (width) to y (height).

near Specifies the distance from the viewer to the near clipping plane (always positive).

far Specifies the distance from the viewer to the far clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::pickMatrix(&center = P, &delta = P, U, &viewport = P)

<!--
_syntax: glm::pickMatrix(&center = P, &delta = P, U, &viewport = P)_
_name: glm::pickMatrix_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::vec2 &center=P, const glm::vec2 &delta=P, const tvec4< U, P > &viewport=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Define a picking region


**Parameters:**

center

delta

viewport

**Type parameters:**

T Native type used for the computation. Currently supported: half (not recommanded), float or double.

U Currently supported: Floating-point types and integer types.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 glm::project(&obj = P, &model = P, &proj = P, U, &viewport = P)

<!--
_syntax: glm::project(&obj = P, &model = P, &proj = P, U, &viewport = P)_
_name: glm::project_
_returns: glm::vec3_
_returns_description: _
_parameters: const glm::vec3 &obj=P, const glm::mat4 &model=P, const glm::mat4 &proj=P, const tvec4< U, P > &viewport=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Map the specified object coordinates (obj.x, obj.y, obj.z) into window coordinates.


**Parameters:**

obj Specify the object coordinates.

model Specifies the current modelview matrix

proj Specifies the current projection matrix

viewport Specifies the current viewport
@return Return the computed window coordinates.

**Type parameters:**

T Native type used for the computation. Currently supported: half (not recommanded), float or double.

U Currently supported: Floating-point types and integer types.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::rotate(&m = P, angle, &axis = P)

<!--
_syntax: glm::rotate(&m = P, angle, &axis = P)_
_name: glm::rotate_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::mat4 &m=P, T angle, const glm::vec3 &axis=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a rotation 4 * 4 matrix created from an axis vector and an angle.


**Parameters:**

m Input matrix multiplied by this rotation matrix.

angle Rotation angle expressed in radians.

axis Rotation axis, recommended to be normalized.

**Type parameters:**

T Value type used to build the matrix. Supported: half, float or double.

See also: gtc_matrix_transform

See also: - rotate(tmat4x4<T, P> const & m, T angle, T x, T y, T z)

See also: - rotate(T angle, tvec3<T, P> const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::scale(&m = P, &v = P)

<!--
_syntax: glm::scale(&m = P, &v = P)_
_name: glm::scale_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::mat4 &m=P, const glm::vec3 &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a scale 4 * 4 matrix created from 3 scalars.


**Parameters:**

m Input matrix multiplied by this scale matrix.

v Ratio of scaling for each axis.

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform

See also: - scale(tmat4x4<T, P> const & m, T x, T y, T z)

See also: - scale(tvec3<T, P> const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::translate(&m = P, &v = P)

<!--
_syntax: glm::translate(&m = P, &v = P)_
_name: glm::translate_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::mat4 &m=P, const glm::vec3 &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a translation 4 * 4 matrix created from a vector of 3 components.


**Parameters:**

m Input matrix multiplied by this translation matrix.

v Coordinates of a translation vector.

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.
```cpp

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
...
glm::mat4 m = glm::translate(glm::mat4(1.0f), glm::vec3(1.0f));
// m[0][0] == 1.0f, m[0][1] == 0.0f, m[0][2] == 0.0f, m[0][3] == 0.0f
// m[1][0] == 0.0f, m[1][1] == 1.0f, m[1][2] == 0.0f, m[1][3] == 0.0f
// m[2][0] == 0.0f, m[2][1] == 0.0f, m[2][2] == 1.0f, m[2][3] == 0.0f
// m[3][0] == 1.0f, m[3][1] == 1.0f, m[3][2] == 1.0f, m[3][3] == 1.0f

```

See also: gtc_matrix_transform

See also: - translate(tmat4x4<T, P> const & m, T x, T y, T z)

See also: - translate(tvec3<T, P> const & v)





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::tweakedInfinitePerspective(fovy, aspect, near)

<!--
_syntax: glm::tweakedInfinitePerspective(fovy, aspect, near)_
_name: glm::tweakedInfinitePerspective_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fovy, T aspect, T near_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for a symmetric perspective-view frustum with far plane at infinite for graphics hardware that doesn't support depth clamping.


**Parameters:**

fovy Specifies the field of view angle, in degrees, in the y direction. Expressed in radians.

aspect Specifies the aspect ratio that determines the field of view in the x direction. The aspect ratio is the ratio of x (width) to y (height).

near Specifies the distance from the viewer to the near clipping plane (always positive).

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###tmat4x4< T, defaultp > glm::tweakedInfinitePerspective(fovy, aspect, near, ep)

<!--
_syntax: glm::tweakedInfinitePerspective(fovy, aspect, near, ep)_
_name: glm::tweakedInfinitePerspective_
_returns: tmat4x4< T, defaultp >_
_returns_description: _
_parameters: T fovy, T aspect, T near, T ep_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a matrix for a symmetric perspective-view frustum with far plane at infinite for graphics hardware that doesn't support depth clamping.


**Parameters:**

fovy Specifies the field of view angle, in degrees, in the y direction. Expressed in radians.

aspect Specifies the aspect ratio that determines the field of view in the x direction. The aspect ratio is the ratio of x (width) to y (height).

near Specifies the distance from the viewer to the near clipping plane (always positive).

ep

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 glm::unProject(&win = P, &model = P, &proj = P, U, &viewport = P)

<!--
_syntax: glm::unProject(&win = P, &model = P, &proj = P, U, &viewport = P)_
_name: glm::unProject_
_returns: glm::vec3_
_returns_description: _
_parameters: const glm::vec3 &win=P, const glm::mat4 &model=P, const glm::mat4 &proj=P, const tvec4< U, P > &viewport=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Map the specified window coordinates (win.x, win.y, win.z) into object coordinates.


**Parameters:**

win Specify the window coordinates to be mapped.

model Specifies the modelview matrix

proj Specifies the projection matrix

viewport Specifies the viewport
@return Returns the computed object coordinates.

**Type parameters:**

T Native type used for the computation. Currently supported: half (not recommanded), float or double.

U Currently supported: Floating-point types and integer types.

See also: gtc_matrix_transform





_description: _







<!----------------------------------------------------------------------------->

