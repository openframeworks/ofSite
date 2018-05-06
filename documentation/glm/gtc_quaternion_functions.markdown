#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###T glm::angle(&x = P)

<!--
_syntax: glm::angle(&x = P)_
_name: glm::angle_
_returns: T_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the quaternion rotation angle.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::angleAxis(&angle, &axis = P)

<!--
_syntax: glm::angleAxis(&angle, &axis = P)_
_name: glm::angleAxis_
_returns: glm::quat_
_returns_description: _
_parameters: const T &angle, const glm::vec3 &axis=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a quaternion from an angle and a normalized axis.


**Parameters:**

angle Angle expressed in radians.

axis Axis of the quaternion, must be normalized.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 glm::axis(&x = P)

<!--
_syntax: glm::axis(&x = P)_
_name: glm::axis_
_returns: glm::vec3_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the q rotation axis.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::conjugate(&q = P)

<!--
_syntax: glm::conjugate(&q = P)_
_name: glm::conjugate_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::quat &q=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the q conjugate.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###T glm::dot(T, &x = P, T, &y = P)

<!--
_syntax: glm::dot(T, &x = P, T, &y = P)_
_name: glm::dot_
_returns: T_
_returns_description: _
_parameters: const quatType< T, P > &x=P, const quatType< T, P > &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns dot product of q1 and q2, i.e., q1[0] * q2[0] + q1[1] * q2[1] + ...


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tvec4< bool, P > glm::equal(&x = P, &y = P)

<!--
_syntax: glm::equal(&x = P, &y = P)_
_name: glm::equal_
_returns: tvec4< bool, P >_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x == y.


**Type parameters:**

quatType Floating-point quaternion types.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 glm::eulerAngles(&x = P)

<!--
_syntax: glm::eulerAngles(&x = P)_
_name: glm::eulerAngles_
_returns: glm::vec3_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns euler angles, pitch as x, yaw as y, roll as z.
The result is expressed in radians if GLM_FORCE_RADIANS is defined or degrees otherwise.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tvec4< bool, P > glm::greaterThan(&x = P, &y = P)

<!--
_syntax: glm::greaterThan(&x = P, &y = P)_
_name: glm::greaterThan_
_returns: tvec4< bool, P >_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x > y.


**Type parameters:**

quatType Floating-point quaternion types.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tvec4< bool, P > glm::greaterThanEqual(&x = P, &y = P)

<!--
_syntax: glm::greaterThanEqual(&x = P, &y = P)_
_name: glm::greaterThanEqual_
_returns: tvec4< bool, P >_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x >= y.


**Type parameters:**

quatType Floating-point quaternion types.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::inverse(&q = P)

<!--
_syntax: glm::inverse(&q = P)_
_name: glm::inverse_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::quat &q=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the q inverse.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tvec4< bool, P > glm::isinf(&x = P)

<!--
_syntax: glm::isinf(&x = P)_
_name: glm::isinf_
_returns: tvec4< bool, P >_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns true if x holds a positive infinity or negative
infinity representation in the underlying implementation's
set of floating point representations. Returns false
otherwise, including for implementations with no infinity
representations.


**Type parameters:**

genType Floating-point scalar or vector types.





_description: _







<!----------------------------------------------------------------------------->

###tvec4< bool, P > glm::isnan(&x = P)

<!--
_syntax: glm::isnan(&x = P)_
_name: glm::isnan_
_returns: tvec4< bool, P >_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns true if x holds a NaN (not a number)
representation in the underlying implementation's set of
floating point representations. Returns false otherwise,
including for implementations with no NaN
representations.

/!\ When using compiler fast math, this function may fail.


**Type parameters:**

genType Floating-point scalar or vector types.





_description: _







<!----------------------------------------------------------------------------->

###T glm::length(&q = P)

<!--
_syntax: glm::length(&q = P)_
_name: glm::length_
_returns: T_
_returns_description: _
_parameters: const glm::quat &q=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the length of the quaternion.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::lerp(&x = P, &y = P, a)

<!--
_syntax: glm::lerp(&x = P, &y = P, a)_
_name: glm::lerp_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P, T a_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Linear interpolation of two quaternions.
The interpolation is oriented.


**Parameters:**

x A quaternion

y A quaternion

a Interpolation factor. The interpolation is defined in the range [0, 1].

**Type parameters:**

T Value type used to build the quaternion. Supported: half, float or double.

**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tvec4< bool, P > glm::lessThan(&x = P, &y = P)

<!--
_syntax: glm::lessThan(&x = P, &y = P)_
_name: glm::lessThan_
_returns: tvec4< bool, P >_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison result of x < y.


**Type parameters:**

quatType Floating-point quaternion types.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tvec4< bool, P > glm::lessThanEqual(&x = P, &y = P)

<!--
_syntax: glm::lessThanEqual(&x = P, &y = P)_
_name: glm::lessThanEqual_
_returns: tvec4< bool, P >_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x <= y.


**Type parameters:**

quatType Floating-point quaternion types.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::mat3 glm::mat3_cast(&x = P)

<!--
_syntax: glm::mat3_cast(&x = P)_
_name: glm::mat3_cast_
_returns: glm::mat3_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts a quaternion to a 3 * 3 matrix.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::mat4_cast(&x = P)

<!--
_syntax: glm::mat4_cast(&x = P)_
_name: glm::mat4_cast_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts a quaternion to a 4 * 4 matrix.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::mix(&x = P, &y = P, a)

<!--
_syntax: glm::mix(&x = P, &y = P, a)_
_name: glm::mix_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P, T a_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Spherical linear interpolation of two quaternions.
The interpolation is oriented and the rotation is performed at constant speed.
For short path spherical linear interpolation, use the slerp function.


**Parameters:**

x A quaternion

y A quaternion

a Interpolation factor. The interpolation is defined beyond the range [0, 1].

**Type parameters:**

T Value type used to build the quaternion. Supported: half, float or double.

**See also**: gtc_quaternion

**See also**: - slerp(tquat<T, P> const & x, tquat<T, P> const & y, T const & a)





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::normalize(&q = P)

<!--
_syntax: glm::normalize(&q = P)_
_name: glm::normalize_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::quat &q=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the normalized quaternion.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tvec4< bool, P > glm::notEqual(&x = P, &y = P)

<!--
_syntax: glm::notEqual(&x = P, &y = P)_
_name: glm::notEqual_
_returns: tvec4< bool, P >_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x != y.


**Type parameters:**

quatType Floating-point quaternion types.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###T glm::pitch(&x = P)

<!--
_syntax: glm::pitch(&x = P)_
_name: glm::pitch_
_returns: T_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns pitch value of euler angles expressed in radians.


**See also**: gtx_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::quat_cast(&x = P)

<!--
_syntax: glm::quat_cast(&x = P)_
_name: glm::quat_cast_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::mat3 &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts a 3 * 3 matrix to a quaternion.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::quat_cast(&x = P)

<!--
_syntax: glm::quat_cast(&x = P)_
_name: glm::quat_cast_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::mat4 &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts a 4 * 4 matrix to a quaternion.


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###T glm::roll(&x = P)

<!--
_syntax: glm::roll(&x = P)_
_name: glm::roll_
_returns: T_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns roll value of euler angles expressed in radians.


**See also**: gtx_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::rotate(&q = P, &angle, &axis = P)

<!--
_syntax: glm::rotate(&q = P, &angle, &axis = P)_
_name: glm::rotate_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::quat &q=P, const T &angle, const glm::vec3 &axis=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotates a quaternion from a vector of 3 components axis and an angle.


**Parameters:**

q Source orientation

angle Angle expressed in radians.

axis Axis of the rotation


**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::slerp(&x = P, &y = P, a)

<!--
_syntax: glm::slerp(&x = P, &y = P, a)_
_name: glm::slerp_
_returns: glm::quat_
_returns_description: _
_parameters: const glm::quat &x=P, const glm::quat &y=P, T a_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Spherical linear interpolation of two quaternions.
The interpolation always take the short path and the rotation is performed at constant speed.


**Parameters:**

x A quaternion

y A quaternion

a Interpolation factor. The interpolation is defined beyond the range [0, 1].

**Type parameters:**

T Value type used to build the quaternion. Supported: half, float or double.

**See also**: gtc_quaternion





_description: _







<!----------------------------------------------------------------------------->

###T glm::yaw(&x = P)

<!--
_syntax: glm::yaw(&x = P)_
_name: glm::yaw_
_returns: T_
_returns_description: _
_parameters: const glm::quat &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns yaw value of euler angles expressed in radians.


**See also**: gtx_quaternion





_description: _







<!----------------------------------------------------------------------------->

