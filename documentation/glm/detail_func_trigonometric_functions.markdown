#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###vecType< T, P > glm::acos(T, &x = P)

<!--
_syntax: glm::acos(T, &x = P)_
_name: glm::acos_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Arc cosine. Returns an angle whose sine is x.
The range of values returned by this function is [0, PI].
Results are undefined if |x| > 1.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/acos.xml">GLSL acos man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::acosh(T, &x = P)

<!--
_syntax: glm::acosh(T, &x = P)_
_name: glm::acosh_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Arc hyperbolic cosine; returns the non-negative inverse
of cosh. Results are undefined if x < 1.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/acosh.xml">GLSL acosh man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::asin(T, &x = P)

<!--
_syntax: glm::asin(T, &x = P)_
_name: glm::asin_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Arc sine. Returns an angle whose sine is x.
The range of values returned by this function is [-PI/2, PI/2].
Results are undefined if |x| > 1.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/asin.xml">GLSL asin man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::asinh(T, &x = P)

<!--
_syntax: glm::asinh(T, &x = P)_
_name: glm::asinh_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Arc hyperbolic sine; returns the inverse of sinh.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/asinh.xml">GLSL asinh man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::atan(T, &y = P, T, &x = P)

<!--
_syntax: glm::atan(T, &y = P, T, &x = P)_
_name: glm::atan_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &y=P, const vecType< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Arc tangent. Returns an angle whose tangent is y/x.
The signs of x and y are used to determine what
quadrant the angle is in. The range of values returned
by this function is [-PI, PI]. Results are undefined
if x and y are both 0.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/atan.xml">GLSL atan man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::atan(T, &y_over_x = P)

<!--
_syntax: glm::atan(T, &y_over_x = P)_
_name: glm::atan_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &y_over_x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Arc tangent. Returns an angle whose tangent is y_over_x.
The range of values returned by this function is [-PI/2, PI/2].


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/atan.xml">GLSL atan man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::atanh(T, &x = P)

<!--
_syntax: glm::atanh(T, &x = P)_
_name: glm::atanh_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Arc hyperbolic tangent; returns the inverse of tanh.
Results are undefined if abs(x) >= 1.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/atanh.xml">GLSL atanh man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::cos(T, &angle = P)

<!--
_syntax: glm::cos(T, &angle = P)_
_name: glm::cos_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &angle=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

The standard trigonometric cosine function.
The values returned by this function will range from [-1, 1].


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/cos.xml">GLSL cos man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::cosh(T, &angle = P)

<!--
_syntax: glm::cosh(T, &angle = P)_
_name: glm::cosh_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &angle=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the hyperbolic cosine function, (exp(x) + exp(-x)) / 2


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/cosh.xml">GLSL cosh man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::degrees(T, &radians = P)

<!--
_syntax: glm::degrees(T, &radians = P)_
_name: glm::degrees_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &radians=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts radians to degrees and returns the result.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/degrees.xml">GLSL degrees man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::radians(T, &degrees = P)

<!--
_syntax: glm::radians(T, &degrees = P)_
_name: glm::radians_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &degrees=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Converts degrees to radians and returns the result.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/radians.xml">GLSL radians man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::sin(T, &angle = P)

<!--
_syntax: glm::sin(T, &angle = P)_
_name: glm::sin_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &angle=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

The standard trigonometric sine function.
The values returned by this function will range from [-1, 1].


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/sin.xml">GLSL sin man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::sinh(T, &angle = P)

<!--
_syntax: glm::sinh(T, &angle = P)_
_name: glm::sinh_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &angle=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the hyperbolic sine function, (exp(x) - exp(-x)) / 2


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/sinh.xml">GLSL sinh man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::tan(T, &angle = P)

<!--
_syntax: glm::tan(T, &angle = P)_
_name: glm::tan_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &angle=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

The standard trigonometric tangent function.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/tan.xml">GLSL tan man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::tanh(T, &angle = P)

<!--
_syntax: glm::tanh(T, &angle = P)_
_name: glm::tanh_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &angle=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the hyperbolic tangent function, sinh(angle) / cosh(angle)


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/tanh.xml">GLSL tanh man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.1 Angle and Trigonometry Functions</a>





_description: _







<!----------------------------------------------------------------------------->

