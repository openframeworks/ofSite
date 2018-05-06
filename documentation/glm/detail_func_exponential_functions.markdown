#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###vecType< T, P > glm::exp(T, &v = P)

<!--
_syntax: glm::exp(T, &v = P)_
_name: glm::exp_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the natural exponentiation of x, i.e., e^x.


**Parameters:**

v exp function is defined for input values of v defined in the range (inf-, inf+) in the limit of the type precision.

**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/exp.xml">GLSL exp man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.2 Exponential Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::exp2(T, &v = P)

<!--
_syntax: glm::exp2(T, &v = P)_
_name: glm::exp2_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns 2 raised to the v power.


**Parameters:**

v exp2 function is defined for input values of v defined in the range (inf-, inf+) in the limit of the type precision.

**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/exp2.xml">GLSL exp2 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.2 Exponential Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::inversesqrt(T, &v = P)

<!--
_syntax: glm::inversesqrt(T, &v = P)_
_name: glm::inversesqrt_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the reciprocal of the positive square root of v.


**Parameters:**

v inversesqrt function is defined for input values of v defined in the range [0, inf+) in the limit of the type precision.

**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/inversesqrt.xml">GLSL inversesqrt man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.2 Exponential Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::log(T, &v = P)

<!--
_syntax: glm::log(T, &v = P)_
_name: glm::log_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the natural logarithm of v, i.e.,
returns the value y which satisfies the equation x = e^y.
Results are undefined if v <= 0.


**Parameters:**

v log function is defined for input values of v defined in the range (0, inf+) in the limit of the type precision.

**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/log.xml">GLSL log man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.2 Exponential Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::log2(T, &v = P)

<!--
_syntax: glm::log2(T, &v = P)_
_name: glm::log2_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the base 2 log of x, i.e., returns the value y,
which satisfies the equation x = 2 ^ y.


**Parameters:**

v log2 function is defined for input values of v defined in the range (0, inf+) in the limit of the type precision.

**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/log2.xml">GLSL log2 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.2 Exponential Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::pow(T, &base = P, T, &exponent = P)

<!--
_syntax: glm::pow(T, &base = P, T, &exponent = P)_
_name: glm::pow_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &base=P, const vecType< T, P > &exponent=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns 'base' raised to the power 'exponent'.


**Parameters:**

base Floating point value. pow function is defined for input values of 'base' defined in the range (inf-, inf+) in the limit of the type precision.

exponent Floating point value representing the 'exponent'.

**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/pow.xml">GLSL pow man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.2 Exponential Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::sqrt(T, &v = P)

<!--
_syntax: glm::sqrt(T, &v = P)_
_name: glm::sqrt_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &v=P_
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

