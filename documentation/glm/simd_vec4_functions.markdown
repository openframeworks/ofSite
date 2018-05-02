#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::abs(&x)

<!--
_syntax: glm::abs(&x)_
_name: glm::abs_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns x if x >= 0; otherwise, it returns -x.

See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::ceil(&x)

<!--
_syntax: glm::ceil(&x)_
_name: glm::ceil_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns a value equal to the nearest integer
 that is greater than or equal to x.

See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::clamp(&x, &minVal, &maxVal)

<!--
_syntax: glm::clamp(&x, &minVal, &maxVal)_
_name: glm::clamp_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const detail::fvec4SIMD &minVal, const detail::fvec4SIMD &maxVal_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns min(max(x, minVal), maxVal) for each component in x
 using the floating-point values minVal and maxVal.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::clamp(&x, &minVal, &maxVal)

<!--
_syntax: glm::clamp(&x, &minVal, &maxVal)_
_name: glm::clamp_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const float &minVal, const float &maxVal_
_version_started: 0.10.0_
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

###detail::fvec4SIMD glm::cross(&x, &y)

<!--
_syntax: glm::cross(&x, &y)_
_name: glm::cross_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const detail::fvec4SIMD &y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the cross product of x and y.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###float glm::distance(&p0, &p1)

<!--
_syntax: glm::distance(&p0, &p1)_
_name: glm::distance_
_returns: float_
_returns_description: _
_parameters: const detail::fvec4SIMD &p0, const detail::fvec4SIMD &p1_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the distance betwwen p0 and p1, i.e., length(p0 - p1).


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::distance4(&p0, &p1)

<!--
_syntax: glm::distance4(&p0, &p1)_
_name: glm::distance4_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &p0, const detail::fvec4SIMD &p1_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the distance betwwen p0 and p1, i.e., length(p0 - p1).


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::dot4(&x, &y)

<!--
_syntax: glm::dot4(&x, &y)_
_name: glm::dot4_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const detail::fvec4SIMD &y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the dot product of x and y, i.e., result = x * y.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::fastInversesqrt(&x)

<!--
_syntax: glm::fastInversesqrt(&x)_
_name: glm::fastInversesqrt_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the reciprocal of the positive square root of x.
 Faster than inversesqrt but less accurate.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###float glm::fastLength(&x)

<!--
_syntax: glm::fastLength(&x)_
_name: glm::fastLength_
_returns: float_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the length of x, i.e., sqrt(x * x).
 Less accurate but much faster than simdLength.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::fastLength4(&x)

<!--
_syntax: glm::fastLength4(&x)_
_name: glm::fastLength4_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the length of x, i.e., sqrt(x * x).
 Less accurate but much faster than simdLength4.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::fastNormalize(&x)

<!--
_syntax: glm::fastNormalize(&x)_
_name: glm::fastNormalize_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns a vector in the same direction as x but with length of 1.
 Less accurate but much faster than simdNormalize.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::fastSqrt(&x)

<!--
_syntax: glm::fastSqrt(&x)_
_name: glm::fastSqrt_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the positive square root of x
 Less accurate but much faster than sqrt.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::floor(&x)

<!--
_syntax: glm::floor(&x)_
_name: glm::floor_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns a value equal to the nearest integer that is less then or equal to x.

See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::fma(&a, &b, &c)

<!--
_syntax: glm::fma(&a, &b, &c)_
_name: glm::fma_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &a, const detail::fvec4SIMD &b, const detail::fvec4SIMD &c_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Computes and returns a * b + c.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::fract(&x)

<!--
_syntax: glm::fract(&x)_
_name: glm::fract_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Return x - floor(x).


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::inversesqrt(&x)

<!--
_syntax: glm::inversesqrt(&x)_
_name: glm::inversesqrt_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the reciprocal of the positive square root of x.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###float glm::length(&x)

<!--
_syntax: glm::length(&x)_
_name: glm::length_
_returns: float_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the length of x, i.e., sqrt(x * x).


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::length4(&x)

<!--
_syntax: glm::length4(&x)_
_name: glm::length4_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the length of x, i.e., sqrt(x * x).


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::max(&x, &y)

<!--
_syntax: glm::max(&x, &y)_
_name: glm::max_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const detail::fvec4SIMD &y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns y if x < y; otherwise, it returns x.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::max(&x, &y)

<!--
_syntax: glm::max(&x, &y)_
_name: glm::max_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const float &y_
_version_started: 0.10.0_
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

###detail::fvec4SIMD glm::min(&x, &y)

<!--
_syntax: glm::min(&x, &y)_
_name: glm::min_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const detail::fvec4SIMD &y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns y if y < x; otherwise, it returns x.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::min(&x, &y)

<!--
_syntax: glm::min(&x, &y)_
_name: glm::min_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const float &y_
_version_started: 0.10.0_
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

###detail::fvec4SIMD glm::mix(&x, &y, &a)

<!--
_syntax: glm::mix(&x, &y, &a)_
_name: glm::mix_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const detail::fvec4SIMD &y, const detail::fvec4SIMD &a_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 \return If genTypeU is a floating scalar or vector:
 Returns x * (1.0 - a) + y * a, i.e., the linear blend of
 x and y using the floating-point value a.
 The value for a is not restricted to the range [0, 1].

 \return If genTypeU is a boolean scalar or vector:
 Selects which vector each returned component comes
 from. For a component of a that is false, the
 corresponding component of x is returned. For a
 component of a that is true, the corresponding
 component of y is returned. Components of x and y that
 are not selected are allowed to be invalid floating point
 values and will have no effect on the results. Thus, this
 provides different functionality than
 genType mix(genType x, genType y, genType(a))
 where a is a Boolean vector.

 From GLSL 1.30.08 specification, section 8.3

 \param[in]  x Floating point scalar or vector.
 \param[in]  y Floating point scalar or vector.
 \param[in]  a Floating point or boolean scalar or vector.

\todo Test when 'a' is a boolean.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::mod(&x, &y)

<!--
_syntax: glm::mod(&x, &y)_
_name: glm::mod_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const detail::fvec4SIMD &y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Modulus. Returns x - y * floor(x / y)
 for each component in x using the floating point value y.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::mod(&x, &y)

<!--
_syntax: glm::mod(&x, &y)_
_name: glm::mod_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const float &y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Modulus. Returns x - y * floor(x / y)
 for each component in x using the floating point value y.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###float glm::niceLength(&x)

<!--
_syntax: glm::niceLength(&x)_
_name: glm::niceLength_
_returns: float_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the length of x, i.e., sqrt(x * x).
 Slightly more accurate but much slower than simdLength.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::niceLength4(&x)

<!--
_syntax: glm::niceLength4(&x)_
_name: glm::niceLength4_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the length of x, i.e., sqrt(x * x).
 Slightly more accurate but much slower than simdLength4.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::niceSqrt(&x)

<!--
_syntax: glm::niceSqrt(&x)_
_name: glm::niceSqrt_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the positive square root of x with the nicest quality but very slow.
 Slightly more accurate but much slower than simdSqrt.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::normalize(&x)

<!--
_syntax: glm::normalize(&x)_
_name: glm::normalize_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns a vector in the same direction as x but with length of 1.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::reflect(&I, &N)

<!--
_syntax: glm::reflect(&I, &N)_
_name: glm::reflect_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &I, const detail::fvec4SIMD &N_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 For the incident vector I and surface orientation N,
 returns the reflection direction : result = I - 2.0 * dot(N, I) * N.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::refract(&I, &N, &eta)

<!--
_syntax: glm::refract(&I, &N, &eta)_
_name: glm::refract_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &I, const detail::fvec4SIMD &N, const float &eta_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 For the incident vector I and surface normal N,
 and the ratio of indices of refraction eta,
 return the refraction vector.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::round(&x)

<!--
_syntax: glm::round(&x)_
_name: glm::round_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns a value equal to the nearest integer to x.
 The fraction 0.5 will round in a direction chosen by the
 implementation, presumably the direction that is fastest.
 This includes the possibility that round(x) returns the
 same value as roundEven(x) for all values of x.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::sign(&x)

<!--
_syntax: glm::sign(&x)_
_name: glm::sign_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns 1.0 if x > 0, 0.0 if x = 0, or -1.0 if x < 0.

See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###float glm::simdDot(&x, &y)

<!--
_syntax: glm::simdDot(&x, &y)_
_name: glm::simdDot_
_returns: float_
_returns_description: _
_parameters: const detail::fvec4SIMD &x, const detail::fvec4SIMD &y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the dot product of x and y, i.e., result = x * y.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::simdFaceforward(&N, &I, &Nref)

<!--
_syntax: glm::simdFaceforward(&N, &I, &Nref)_
_name: glm::simdFaceforward_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &N, const detail::fvec4SIMD &I, const detail::fvec4SIMD &Nref_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 If dot(Nref, I) < 0.0, return N, otherwise, return -N.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::smoothstep(&edge0, &edge1, &x)

<!--
_syntax: glm::smoothstep(&edge0, &edge1, &x)_
_name: glm::smoothstep_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &edge0, const detail::fvec4SIMD &edge1, const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns 0.0 if x <= edge0 and 1.0 if x >= edge1 and
 performs smooth Hermite interpolation between 0 and 1
 when edge0 < x < edge1. This is useful in cases where
 you would want a threshold function with a smooth
 transition. This is equivalent to:
 genType t;
 t = clamp ((x - edge0) / (edge1 - edge0), 0, 1);
 return t * t * (3 - 2 * t);
 Results are undefined if edge0 >= edge1.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::smoothstep(&edge0, &edge1, &x)

<!--
_syntax: glm::smoothstep(&edge0, &edge1, &x)_
_name: glm::smoothstep_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const float &edge0, const float &edge1, const detail::fvec4SIMD &x_
_version_started: 0.10.0_
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

###detail::fvec4SIMD glm::sqrt(&x)

<!--
_syntax: glm::sqrt(&x)_
_name: glm::sqrt_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the positive square root of x.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::step(&edge, &x)

<!--
_syntax: glm::step(&edge, &x)_
_name: glm::step_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &edge, const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns 0.0 if x < edge, otherwise it returns 1.0.


See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###detail::fvec4SIMD glm::step(&edge, &x)

<!--
_syntax: glm::step(&edge, &x)_
_name: glm::step_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const float &edge, const detail::fvec4SIMD &x_
_version_started: 0.10.0_
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

###detail::fvec4SIMD glm::trunc(&x)

<!--
_syntax: glm::trunc(&x)_
_name: glm::trunc_
_returns: detail::fvec4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns a value equal to the nearest integer to x
 whose absolute value is not larger than the absolute value of x.

See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

###glm::vec4 glm::vec4_cast(&x)

<!--
_syntax: glm::vec4_cast(&x)_
_name: glm::vec4_cast_
_returns: glm::vec4_
_returns_description: _
_parameters: const detail::fvec4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Convert a simdVec4 to a vec4.

See also: gtx_simd_vec4





_description: _







<!----------------------------------------------------------------------------->

