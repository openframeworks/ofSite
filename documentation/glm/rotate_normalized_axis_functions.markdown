#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###glm::mat4 glm::rotateNormalizedAxis(&m = P, &angle, &axis = P)

<!--
_syntax: glm::rotateNormalizedAxis(&m = P, &angle, &axis = P)_
_name: glm::rotateNormalizedAxis_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::mat4 &m=P, const T &angle, const glm::vec3 &axis=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a rotation 4 * 4 matrix created from a normalized axis and an angle.


**Parameters:**

m Input matrix multiplied by this rotation matrix.

angle Rotation angle expressed in radians if GLM_FORCE_RADIANS is define or degrees otherwise.

axis Rotation axis, must be normalized.

**Type parameters:**

T Value type used to build the matrix. Currently supported: half (not recommanded), float or double.


See also: gtx_rotate_normalized_axis

See also: - rotate(T angle, T x, T y, T z)

See also: - rotate(tmat4x4<T, P> const & m, T angle, T x, T y, T z)

See also: - rotate(T angle, tvec3<T, P> const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::quat glm::rotateNormalizedAxis(&q = P, &angle, &axis = P)

<!--
_syntax: glm::rotateNormalizedAxis(&q = P, &angle, &axis = P)_
_name: glm::rotateNormalizedAxis_
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

Rotates a quaternion from a vector of 3 components normalized axis and an angle.


**Parameters:**

q Source orientation

angle Angle expressed in radians if GLM_FORCE_RADIANS is define or degrees otherwise.

axis Normalized axis of the rotation, must be normalized.


See also: gtx_rotate_normalized_axis





_description: _







<!----------------------------------------------------------------------------->

