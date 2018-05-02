#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###tdualquat< T, P > glm::dualquat_cast(&x = P)

<!--
_syntax: glm::dualquat_cast(&x = P)_
_name: glm::dualquat_cast_
_returns: tdualquat< T, P >_
_returns_description: _
_parameters: const glm::mat2x4 &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts a 2 * 4 matrix (matrix which holds real and dual parts) to a quaternion.


See also: gtx_dual_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tdualquat< T, P > glm::dualquat_cast(&x = P)

<!--
_syntax: glm::dualquat_cast(&x = P)_
_name: glm::dualquat_cast_
_returns: tdualquat< T, P >_
_returns_description: _
_parameters: const glm::mat3x4 &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts a 3 * 4 matrix (augmented matrix rotation + translation) to a quaternion.


See also: gtx_dual_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tdualquat< T, P > glm::inverse(T, &q = P)

<!--
_syntax: glm::inverse(T, &q = P)_
_name: glm::inverse_
_returns: tdualquat< T, P >_
_returns_description: _
_parameters: const tdualquat< T, P > &q=P_
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


See also: gtx_dual_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tdualquat< T, P > glm::lerp(T, &x = P, T, &y = P, &a)

<!--
_syntax: glm::lerp(T, &x = P, T, &y = P, &a)_
_name: glm::lerp_
_returns: tdualquat< T, P >_
_returns_description: _
_parameters: const tdualquat< T, P > &x=P, const tdualquat< T, P > &y=P, const T &a_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the linear interpolation of two dual quaternion.


See also: gtc_dual_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::mat2x4 glm::mat2x4_cast(T, &x = P)

<!--
_syntax: glm::mat2x4_cast(T, &x = P)_
_name: glm::mat2x4_cast_
_returns: glm::mat2x4_
_returns_description: _
_parameters: const tdualquat< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts a quaternion to a 2 * 4 matrix.


See also: gtx_dual_quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::mat3x4 glm::mat3x4_cast(T, &x = P)

<!--
_syntax: glm::mat3x4_cast(T, &x = P)_
_name: glm::mat3x4_cast_
_returns: glm::mat3x4_
_returns_description: _
_parameters: const tdualquat< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts a quaternion to a 3 * 4 matrix.


See also: gtx_dual_quaternion





_description: _







<!----------------------------------------------------------------------------->

###tdualquat< T, P > glm::normalize(T, &q = P)

<!--
_syntax: glm::normalize(T, &q = P)_
_name: glm::normalize_
_returns: tdualquat< T, P >_
_returns_description: _
_parameters: const tdualquat< T, P > &q=P_
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


See also: gtx_dual_quaternion





_description: _







<!----------------------------------------------------------------------------->

