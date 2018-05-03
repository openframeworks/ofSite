#class glm::quat


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

@addtogroup gtc_quaternion
@{





##Description





##Methods



###glm::tquat::length_type length()

<!--
_syntax: length()_
_name: length_
_returns: glm::tquat::length_type_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the count of components of a quaternion





_description: _







<!----------------------------------------------------------------------------->

###glm::quat & operator*=(U, &q = P)

<!--
_syntax: operator*=(U, &q = P)_
_name: operator*=_
_returns: glm::quat &_
_returns_description: _
_parameters: const tquat< U, P > &q=P_
_access: public_
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

###glm::quat & operator*=(s)

<!--
_syntax: operator*=(s)_
_name: operator*=_
_returns: glm::quat &_
_returns_description: _
_parameters: U s_
_access: public_
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

###glm::quat & operator+=(U, &q = P)

<!--
_syntax: operator+=(U, &q = P)_
_name: operator+=_
_returns: glm::quat &_
_returns_description: _
_parameters: const tquat< U, P > &q=P_
_access: public_
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

###glm::quat & operator-=(U, &q = P)

<!--
_syntax: operator-=(U, &q = P)_
_name: operator-=_
_returns: glm::quat &_
_returns_description: _
_parameters: const tquat< U, P > &q=P_
_access: public_
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

###glm::quat & operator/=(s)

<!--
_syntax: operator/=(s)_
_name: operator/=_
_returns: glm::quat &_
_returns_description: _
_parameters: U s_
_access: public_
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

###glm::quat & operator=(&m = P)

<!--
_syntax: operator=(&m = P)_
_name: operator=_
_returns: glm::quat &_
_returns_description: _
_parameters: const glm::quat &m=P_
_access: public_
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

###glm::quat & operator=(U, &m = P)

<!--
_syntax: operator=(U, &m = P)_
_name: operator=_
_returns: glm::quat &_
_returns_description: _
_parameters: const tquat< U, P > &m=P_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

GLM_HAS_DEFAULTED_FUNCTIONS





_description: _







<!----------------------------------------------------------------------------->

###T & operator[](i)

<!--
_syntax: operator[](i)_
_name: operator[]_
_returns: T &_
_returns_description: _
_parameters: glm::tquat::length_type i_
_access: public_
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

###const T & operator[](i)

<!--
_syntax: operator[](i)_
_name: operator[]_
_returns: const T &_
_returns_description: _
_parameters: glm::tquat::length_type i_
_access: public_
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

### tquat(&eulerAngles = P)

<!--
_syntax: tquat(&eulerAngles = P)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const glm::vec3 &eulerAngles=P_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a quaternion from euler angles (pitch, yaw, roll), in radians.





_description: _







<!----------------------------------------------------------------------------->

### tquat(&m = P)

<!--
_syntax: tquat(&m = P)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const glm::mat3 &m=P_
_access: public_
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

### tquat(&m = P)

<!--
_syntax: tquat(&m = P)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const glm::mat4 &m=P_
_access: public_
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

### tquat(&q = P)

<!--
_syntax: tquat(&q = P)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const glm::quat &q=P_
_access: public_
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

### tquat(&s, &v = P)

<!--
_syntax: tquat(&s, &v = P)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const T &s, const glm::vec3 &v=P_
_access: public_
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

### tquat(&u = P, &v = P)

<!--
_syntax: tquat(&u = P, &v = P)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const glm::vec3 &u=P, const glm::vec3 &v=P_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a quaternion from two normalized axis


**Parameters:**

u A first normalized axis

v A second normalized axis

**See also**: gtc_quaternion

**See also**: http://lolengine.net/blog/2013/09/18/beautiful-maths-quaternion-from-vectors





_description: _







<!----------------------------------------------------------------------------->

### tquat(&w, &x, &y, &z)

<!--
_syntax: tquat(&w, &x, &y, &z)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const T &w, const T &x, const T &y, const T &z_
_access: public_
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

### tquat()

<!--
_syntax: tquat()_
_name: tquat_
_returns: _
_returns_description: _
_parameters: _
_access: public_
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

### tquat(U, &q = Q)

<!--
_syntax: tquat(U, &q = Q)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const tquat< U, Q > &q=Q_
_access: public_
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

### tquat(U, &q = Q)

<!--
_syntax: tquat(U, &q = Q)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: const tquat< U, Q > &q=Q_
_access: public_
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

### tquat(glm::ctor)

<!--
_syntax: tquat(glm::ctor)_
_name: tquat_
_returns: _
_returns_description: _
_parameters: glm::ctor _
_access: public_
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

##Variables



###typename detail::storage<T, sizeof(T) * 4, detail::is_aligned< P>::value >::type data

<!--
_name: data_
_type: typename detail::storage<T, sizeof(T) * 4, detail::is_aligned< P>::value >::type_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###T w

<!--
_name: w_
_type: T_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###T x

<!--
_name: x_
_type: T_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###T y

<!--
_name: y_
_type: T_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###T z

<!--
_name: z_
_type: T_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

