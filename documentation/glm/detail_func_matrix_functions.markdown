#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###T glm::determinant(T, &m = P)

<!--
_syntax: glm::determinant(T, &m = P)_
_name: glm::determinant_
_returns: T_
_returns_description: _
_parameters: const matType< T, P > &m=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the determinant of a squared matrix.


**Type parameters:**

valType Floating-point scalar types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/determinant.xml">GLSL determinant man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.6 Matrix Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###matType< T, P > glm::inverse(T, &m = P)

<!--
_syntax: glm::inverse(T, &m = P)_
_name: glm::inverse_
_returns: matType< T, P >_
_returns_description: _
_parameters: const matType< T, P > &m=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the inverse of a squared matrix.


**Type parameters:**

valType Floating-point scalar types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/inverse.xml">GLSL inverse man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.6 Matrix Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###matType< T, P > glm::matrixCompMult(T, &x = P, T, &y = P)

<!--
_syntax: glm::matrixCompMult(T, &x = P, T, &y = P)_
_name: glm::matrixCompMult_
_returns: matType< T, P >_
_returns_description: _
_parameters: const matType< T, P > &x=P, const matType< T, P > &y=P_
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


**Type parameters:**

matType Floating-point matrix types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/matrixCompMult.xml">GLSL matrixCompMult man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.6 Matrix Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###typename detail::outerProduct_trait< T, P, vecTypeA, vecTypeB >::type glm::outerProduct(T, &c = P, T, &r = P)

<!--
_syntax: glm::outerProduct(T, &c = P, T, &r = P)_
_name: glm::outerProduct_
_returns: typename detail::outerProduct_trait< T, P, vecTypeA, vecTypeB >::type_
_returns_description: _
_parameters: const vecTypeA< T, P > &c=P, const vecTypeB< T, P > &r=P_
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


**Type parameters:**

matType Floating-point matrix types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/outerProduct.xml">GLSL outerProduct man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.6 Matrix Functions</a>





_description: _







<!----------------------------------------------------------------------------->

