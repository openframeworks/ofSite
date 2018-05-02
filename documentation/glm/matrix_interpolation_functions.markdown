#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###void glm::axisAngle(&mat = P, &axis = P, &angle)

<!--
_syntax: glm::axisAngle(&mat = P, &axis = P, &angle)_
_name: glm::axisAngle_
_returns: void_
_returns_description: _
_parameters: const glm::mat4 &mat=P, glm::vec3 &axis=P, T &angle_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the axis and angle of the rotation from a matrix.
From GLM_GTX_matrix_interpolation extension.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::axisAngleMatrix(&axis = P, angle)

<!--
_syntax: glm::axisAngleMatrix(&axis = P, angle)_
_name: glm::axisAngleMatrix_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::vec3 &axis=P, const T angle_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a matrix from axis and angle.
From GLM_GTX_matrix_interpolation extension.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::extractMatrixRotation(&mat = P)

<!--
_syntax: glm::extractMatrixRotation(&mat = P)_
_name: glm::extractMatrixRotation_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::mat4 &mat=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Extracts the rotation part of a matrix.
From GLM_GTX_matrix_interpolation extension.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::interpolate(&m1 = P, &m2 = P, delta)

<!--
_syntax: glm::interpolate(&m1 = P, &m2 = P, delta)_
_name: glm::interpolate_
_returns: glm::mat4_
_returns_description: _
_parameters: const glm::mat4 &m1=P, const glm::mat4 &m2=P, const T delta_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a interpolation of 4 * 4 matrixes.
From GLM_GTX_matrix_interpolation extension.
Warning! works only with rotation and/or translation matrixes, scale will generate unexpected results.





_description: _







<!----------------------------------------------------------------------------->

