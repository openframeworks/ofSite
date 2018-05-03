#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::angleAxisSIMD(&angle, &axis)

<!--
_syntax: glm::angleAxisSIMD(&angle, &axis)_
_name: glm::angleAxisSIMD_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const float &angle, const glm::vec3 &axis_
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


**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::angleAxisSIMD(&angle, &x, &y, &z)

<!--
_syntax: glm::angleAxisSIMD(&angle, &x, &y, &z)_
_name: glm::angleAxisSIMD_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const float &angle, const float &x, const float &y, const float &z_
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

x x component of the x-axis, x, y, z must be a normalized axis

y y component of the y-axis, x, y, z must be a normalized axis

z z component of the z-axis, x, y, z must be a normalized axis


**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::conjugate(&q)

<!--
_syntax: glm::conjugate(&q)_
_name: glm::conjugate_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &q_
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


**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###float glm::dot(&q1, &q2)

<!--
_syntax: glm::dot(&q1, &q2)_
_name: glm::dot_
_returns: float_
_returns_description: _
_parameters: const detail::fquatSIMD &q1, const detail::fquatSIMD &q2_
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


**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::fastMix(&x, &y, &a)

<!--
_syntax: glm::fastMix(&x, &y, &a)_
_name: glm::fastMix_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &x, const detail::fquatSIMD &y, const float &a_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Faster spherical linear interpolation of two unit length quaternions.

This is the same as mix(), except for two rules:
  1) The two quaternions must be unit length.
  2) The interpolation factor (a) must be in the range [0, 1].

This will use the equivalent to fastAcos() and fastSin().


**See also**: gtx_simd_quat

**See also**: - mix(detail::fquatSIMD const & x, detail::fquatSIMD const & y, T const & a)





_description: _







<!----------------------------------------------------------------------------->

###__m128 glm::fastSin(x)

<!--
_syntax: glm::fastSin(x)_
_name: glm::fastSin_
_returns: __m128_
_returns_description: _
_parameters: __m128 x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Performs the equivalent of glm::fastSin() on each component of the given __m128.





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::fastSlerp(&x, &y, &a)

<!--
_syntax: glm::fastSlerp(&x, &y, &a)_
_name: glm::fastSlerp_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &x, const detail::fquatSIMD &y, const float &a_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Identical to fastMix() except takes the shortest path.

The same rules apply here as those in fastMix(). Both quaternions must be unit length and 'a' must be
in the range [0, 1].


**See also**: - fastMix(detail::fquatSIMD const & x, detail::fquatSIMD const & y, T const & a)

**See also**: - slerp(detail::fquatSIMD const & x, detail::fquatSIMD const & y, T const & a)





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::inverse(&q)

<!--
_syntax: glm::inverse(&q)_
_name: glm::inverse_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &q_
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


**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###float glm::length(&x)

<!--
_syntax: glm::length(&x)_
_name: glm::length_
_returns: float_
_returns_description: _
_parameters: const detail::fquatSIMD &x_
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


**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::lerp(&x, &y, &a)

<!--
_syntax: glm::lerp(&x, &y, &a)_
_name: glm::lerp_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &x, const detail::fquatSIMD &y, const float &a_
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

**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fmat4x4SIMD glm::mat4SIMD_cast(&q)

<!--
_syntax: glm::mat4SIMD_cast(&q)_
_name: glm::mat4SIMD_cast_
_returns: detail::fmat4x4SIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &q_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Convert a simdQuat to a simdMat4

**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::mat4_cast(&q)

<!--
_syntax: glm::mat4_cast(&q)_
_name: glm::mat4_cast_
_returns: glm::mat4_
_returns_description: _
_parameters: const detail::fquatSIMD &q_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Converts a simdQuat to a standard mat4.

**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::mix(&x, &y, &a)

<!--
_syntax: glm::mix(&x, &y, &a)_
_name: glm::mix_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &x, const detail::fquatSIMD &y, const float &a_
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

**See also**: gtx_simd_quat

**See also**: - slerp(detail::fquatSIMD const & x, detail::fquatSIMD const & y, T const & a)





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::normalize(&x)

<!--
_syntax: glm::normalize(&x)_
_name: glm::normalize_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &x_
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


**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::quatSIMD_cast(&m = P)

<!--
_syntax: glm::quatSIMD_cast(&m = P)_
_name: glm::quatSIMD_cast_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const glm::mat4 &m=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Converts a mat4 to a simdQuat.

**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::quatSIMD_cast(&m = P)

<!--
_syntax: glm::quatSIMD_cast(&m = P)_
_name: glm::quatSIMD_cast_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const glm::mat3 &m=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Converts a mat3 to a simdQuat.

**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::quatSIMD_cast(&m)

<!--
_syntax: glm::quatSIMD_cast(&m)_
_name: glm::quatSIMD_cast_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fmat4x4SIMD &m_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Convert a simdMat4 to a simdQuat.

**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::quat_cast(&x)

<!--
_syntax: glm::quat_cast(&x)_
_name: glm::quat_cast_
_returns: glm::quat_
_returns_description: _
_parameters: const detail::fquatSIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Convert a simdQuat to a quat.

**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

###detail::fquatSIMD glm::slerp(&x, &y, &a)

<!--
_syntax: glm::slerp(&x, &y, &a)_
_name: glm::slerp_
_returns: detail::fquatSIMD_
_returns_description: _
_parameters: const detail::fquatSIMD &x, const detail::fquatSIMD &y, const float &a_
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

**See also**: gtx_simd_quat





_description: _







<!----------------------------------------------------------------------------->

