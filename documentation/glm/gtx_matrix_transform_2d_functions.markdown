#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###glm::mat3 glm::rotate(&m = P, angle)

<!--
_syntax: glm::rotate(&m = P, angle)_
_name: glm::rotate_
_returns: glm::mat3_
_returns_description: _
_parameters: const glm::mat3 &m=P, T angle_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a rotation 3 * 3 matrix created from an angle.


**Parameters:**

m Input matrix multiplied by this translation matrix.

angle Rotation angle expressed in radians if GLM_FORCE_RADIANS is defined or degrees otherwise.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat3 glm::scale(&m = P, &v = P)

<!--
_syntax: glm::scale(&m = P, &v = P)_
_name: glm::scale_
_returns: glm::mat3_
_returns_description: _
_parameters: const glm::mat3 &m=P, const glm::vec2 &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a scale 3 * 3 matrix created from a vector of 2 components.


**Parameters:**

m Input matrix multiplied by this translation matrix.

v Coordinates of a scale vector.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat3 glm::shearX(&m = P, y)

<!--
_syntax: glm::shearX(&m = P, y)_
_name: glm::shearX_
_returns: glm::mat3_
_returns_description: _
_parameters: const glm::mat3 &m=P, T y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds an horizontal (parallel to the x axis) shear 3 * 3 matrix.


**Parameters:**

m Input matrix multiplied by this translation matrix.

y Shear factor.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat3 glm::shearY(&m = P, x)

<!--
_syntax: glm::shearY(&m = P, x)_
_name: glm::shearY_
_returns: glm::mat3_
_returns_description: _
_parameters: const glm::mat3 &m=P, T x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a vertical (parallel to the y axis) shear 3 * 3 matrix.


**Parameters:**

m Input matrix multiplied by this translation matrix.

x Shear factor.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat3 glm::translate(&m = P, &v = P)

<!--
_syntax: glm::translate(&m = P, &v = P)_
_name: glm::translate_
_returns: glm::mat3_
_returns_description: _
_parameters: const glm::mat3 &m=P, const glm::vec2 &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a translation 3 * 3 matrix created from a vector of 2 components.


**Parameters:**

m Input matrix multiplied by this translation matrix.

v Coordinates of a translation vector.





_description: _







<!----------------------------------------------------------------------------->

