#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###float glm::determinant(&m)

<!--
_syntax: glm::determinant(&m)_
_name: glm::determinant_
_returns: float_
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

 Return the determinant of a mat4 matrix.
 (From GLM_GTX_simd_mat4 extension).





_description: _







<!----------------------------------------------------------------------------->

###detail::fmat4x4SIMD glm::inverse(&m)

<!--
_syntax: glm::inverse(&m)_
_name: glm::inverse_
_returns: detail::fmat4x4SIMD_
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

 Return the inverse of a mat4 matrix.
 (From GLM_GTX_simd_mat4 extension).





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 glm::mat4_cast(&x)

<!--
_syntax: glm::mat4_cast(&x)_
_name: glm::mat4_cast_
_returns: glm::mat4_
_returns_description: _
_parameters: const detail::fmat4x4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Convert a simdMat4 to a mat4.
 (From GLM_GTX_simd_mat4 extension)





_description: _







<!----------------------------------------------------------------------------->

###detail::fmat4x4SIMD glm::matrixCompMult(&x, &y)

<!--
_syntax: glm::matrixCompMult(&x, &y)_
_name: glm::matrixCompMult_
_returns: detail::fmat4x4SIMD_
_returns_description: _
_parameters: const detail::fmat4x4SIMD &x, const detail::fmat4x4SIMD &y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Multiply matrix x by matrix y component-wise, i.e.,
 result[i][j] is the scalar product of x[i][j] and y[i][j].
 (From GLM_GTX_simd_mat4 extension).





_description: _







<!----------------------------------------------------------------------------->

###detail::fmat4x4SIMD glm::outerProduct(&c, &r)

<!--
_syntax: glm::outerProduct(&c, &r)_
_name: glm::outerProduct_
_returns: detail::fmat4x4SIMD_
_returns_description: _
_parameters: const detail::fvec4SIMD &c, const detail::fvec4SIMD &r_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Treats the first parameter c as a column vector
 and the second parameter r as a row vector
 and does a linear algebraic matrix multiply c * r.
 (From GLM_GTX_simd_mat4 extension).





_description: _







<!----------------------------------------------------------------------------->

###detail::fmat4x4SIMD glm::transpose(&x)

<!--
_syntax: glm::transpose(&x)_
_name: glm::transpose_
_returns: detail::fmat4x4SIMD_
_returns_description: _
_parameters: const detail::fmat4x4SIMD &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Returns the transposed matrix of x
 (From GLM_GTX_simd_mat4 extension).





_description: _







<!----------------------------------------------------------------------------->

