#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###vecType< T, P > glm::abs(T, &x = P)

<!--
_syntax: glm::abs(T, &x = P)_
_name: glm::abs_
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







_description: _







<!----------------------------------------------------------------------------->

###genType glm::abs(x)

<!--
_syntax: glm::abs(x)_
_name: glm::abs_
_returns: genType_
_returns_description: _
_parameters: genType x_
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


**Type parameters:**

genType floating-point or signed integer; scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/abs.xml">GLSL abs man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::ceil(T, &x = P)

<!--
_syntax: glm::ceil(T, &x = P)_
_name: glm::ceil_
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

Returns a value equal to the nearest integer
that is greater than or equal to x.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/ceil.xml">GLSL ceil man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::clamp(T, &x = P, T, &minVal = P, T, &maxVal = P)

<!--
_syntax: glm::clamp(T, &x = P, T, &minVal = P, T, &maxVal = P)_
_name: glm::clamp_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &minVal=P, const vecType< T, P > &maxVal=P_
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

###vecType< T, P > glm::clamp(T, &x = P, minVal, maxVal)

<!--
_syntax: glm::clamp(T, &x = P, minVal, maxVal)_
_name: glm::clamp_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, T minVal, T maxVal_
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

###genType glm::clamp(x, minVal, maxVal)

<!--
_syntax: glm::clamp(x, minVal, maxVal)_
_name: glm::clamp_
_returns: genType_
_returns_description: _
_parameters: genType x, genType minVal, genType maxVal_
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


**Type parameters:**

genType Floating-point or integer; scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/clamp.xml">GLSL clamp man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###int glm::floatBitsToInt(&v)

<!--
_syntax: glm::floatBitsToInt(&v)_
_name: glm::floatBitsToInt_
_returns: int_
_returns_description: _
_parameters: const float &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a signed integer value representing
the encoding of a floating-point value. The floating-point
value's bit-level representation is preserved.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/floatBitsToInt.xml">GLSL floatBitsToInt man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< int, P > glm::floatBitsToInt(float, &v = P)

<!--
_syntax: glm::floatBitsToInt(float, &v = P)_
_name: glm::floatBitsToInt_
_returns: vecType< int, P >_
_returns_description: _
_parameters: const vecType< float, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a signed integer value representing
the encoding of a floating-point value. The floatingpoint
value's bit-level representation is preserved.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/floatBitsToInt.xml">GLSL floatBitsToInt man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint glm::floatBitsToUint(&v)

<!--
_syntax: glm::floatBitsToUint(&v)_
_name: glm::floatBitsToUint_
_returns: glm::uint_
_returns_description: _
_parameters: const float &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a unsigned integer value representing
the encoding of a floating-point value. The floatingpoint
value's bit-level representation is preserved.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/floatBitsToUint.xml">GLSL floatBitsToUint man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< glm::uint, P > glm::floatBitsToUint(float, &v = P)

<!--
_syntax: glm::floatBitsToUint(float, &v = P)_
_name: glm::floatBitsToUint_
_returns: vecType< glm::uint, P >_
_returns_description: _
_parameters: const vecType< float, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a unsigned integer value representing
the encoding of a floating-point value. The floatingpoint
value's bit-level representation is preserved.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/floatBitsToUint.xml">GLSL floatBitsToUint man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::floor(T, &x = P)

<!--
_syntax: glm::floor(T, &x = P)_
_name: glm::floor_
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

Returns a value equal to the nearest integer that is less then or equal to x.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/floor.xml">GLSL floor man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###genType glm::fma(&a, &b, &c)

<!--
_syntax: glm::fma(&a, &b, &c)_
_name: glm::fma_
_returns: genType_
_returns_description: _
_parameters: const genType &a, const genType &b, const genType &c_
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


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/fma.xml">GLSL fma man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::fract(T, &x = P)

<!--
_syntax: glm::fract(T, &x = P)_
_name: glm::fract_
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







_description: _







<!----------------------------------------------------------------------------->

###genType glm::fract(x)

<!--
_syntax: glm::fract(x)_
_name: glm::fract_
_returns: genType_
_returns_description: _
_parameters: genType x_
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


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/fract.xml">GLSL fract man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###genType glm::frexp(&x, &exp)

<!--
_syntax: glm::frexp(&x, &exp)_
_name: glm::frexp_
_returns: genType_
_returns_description: _
_parameters: const genType &x, genIType &exp_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Splits x into a floating-point significand in the range
[0.5, 1.0) and an integral exponent of two, such that:
x = significand * exp(2, exponent)

The significand is returned by the function and the
exponent is returned in the parameter exp. For a
floating-point value of zero, the significant and exponent
are both zero. For a floating-point value that is an
infinity or is not a number, the results are undefined.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/frexp.xml">GLSL frexp man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###float glm::intBitsToFloat(&v)

<!--
_syntax: glm::intBitsToFloat(&v)_
_name: glm::intBitsToFloat_
_returns: float_
_returns_description: _
_parameters: const int &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a floating-point value corresponding to a signed
integer encoding of a floating-point value.
If an inf or NaN is passed in, it will not signal, and the
resulting floating point value is unspecified. Otherwise,
the bit-level representation is preserved.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/intBitsToFloat.xml">GLSL intBitsToFloat man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< float, P > glm::intBitsToFloat(int, &v = P)

<!--
_syntax: glm::intBitsToFloat(int, &v = P)_
_name: glm::intBitsToFloat_
_returns: vecType< float, P >_
_returns_description: _
_parameters: const vecType< int, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a floating-point value corresponding to a signed
integer encoding of a floating-point value.
If an inf or NaN is passed in, it will not signal, and the
resulting floating point value is unspecified. Otherwise,
the bit-level representation is preserved.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/intBitsToFloat.xml">GLSL intBitsToFloat man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::isinf(T, &x = P)

<!--
_syntax: glm::isinf(T, &x = P)_
_name: glm::isinf_
_returns: vecType< bool, P >_
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

Returns true if x holds a positive infinity or negative
infinity representation in the underlying implementation's
set of floating point representations. Returns false
otherwise, including for implementations with no infinity
representations.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/isinf.xml">GLSL isinf man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::isnan(T, &x = P)

<!--
_syntax: glm::isnan(T, &x = P)_
_name: glm::isnan_
_returns: vecType< bool, P >_
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

Returns true if x holds a NaN (not a number)
representation in the underlying implementation's set of
floating point representations. Returns false otherwise,
including for implementations with no NaN
representations.

/!\ When using compiler fast math, this function may fail.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/isnan.xml">GLSL isnan man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###genType glm::ldexp(&x, &exp)

<!--
_syntax: glm::ldexp(&x, &exp)_
_name: glm::ldexp_
_returns: genType_
_returns_description: _
_parameters: const genType &x, const genIType &exp_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Builds a floating-point number from x and the
corresponding integral exponent of two in exp, returning:
significand * exp(2, exponent)

If this product is too large to be represented in the
floating-point type, the result is undefined.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/ldexp.xml">GLSL ldexp man page</a>;

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::max(T, &x = P, T, &y = P)

<!--
_syntax: glm::max(T, &x = P, T, &y = P)_
_name: glm::max_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
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

###vecType< T, P > glm::max(T, &x = P, y)

<!--
_syntax: glm::max(T, &x = P, y)_
_name: glm::max_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, T y_
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

###genType glm::max(x, y)

<!--
_syntax: glm::max(x, y)_
_name: glm::max_
_returns: genType_
_returns_description: _
_parameters: genType x, genType y_
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


**Type parameters:**

genType Floating-point or integer; scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/max.xml">GLSL max man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::min(T, &x = P, T, &y = P)

<!--
_syntax: glm::min(T, &x = P, T, &y = P)_
_name: glm::min_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
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

###vecType< T, P > glm::min(T, &x = P, y)

<!--
_syntax: glm::min(T, &x = P, y)_
_name: glm::min_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, T y_
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

###genType glm::min(x, y)

<!--
_syntax: glm::min(x, y)_
_name: glm::min_
_returns: genType_
_returns_description: _
_parameters: genType x, genType y_
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


**Type parameters:**

genType Floating-point or integer; scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/min.xml">GLSL min man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::mix(T, &x = P, T, &y = P, U, &a = P)

<!--
_syntax: glm::mix(T, &x = P, T, &y = P, U, &a = P)_
_name: glm::mix_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P, const vecType< U, P > &a=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

If genTypeU is a floating scalar or vector:
Returns x * (1.0 - a) + y * a, i.e., the linear blend of
x and y using the floating-point value a.
The value for a is not restricted to the range [0, 1].

If genTypeU is a boolean scalar or vector:
Selects which vector each returned component comes
from. For a component of <a> that is false, the
corresponding component of x is returned. For a
component of a that is true, the corresponding
component of y is returned. Components of x and y that
are not selected are allowed to be invalid floating point
values and will have no effect on the results. Thus, this
provides different functionality than
genType mix(genType x, genType y, genType(a))
where a is a Boolean vector.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/mix.xml">GLSL mix man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>


**Parameters:**

x Value to interpolate.

y Value to interpolate.

a Interpolant.


**Type parameters:**

genTypeT Floating point scalar or vector.

genTypeU Floating point or boolean scalar or vector. It can't be a vector if it is the length of genTypeT.

```cpp

#include <glm/glm.hpp>
...
float a;
bool b;
glm::dvec3 e;
glm::dvec3 f;
glm::vec4 g;
glm::vec4 h;
...
glm::vec4 r = glm::mix(g, h, a); // Interpolate with a floating-point scalar two vectors.
glm::vec4 s = glm::mix(g, h, b); // Teturns g or h;
glm::dvec3 t = glm::mix(e, f, a); // Types of the third parameter is not required to match with the first and the second.
glm::vec4 u = glm::mix(g, h, r); // Interpolations can be perform per component with a vector for the last parameter.

```





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::mix(T, &x = P, T, &y = P, a)

<!--
_syntax: glm::mix(T, &x = P, T, &y = P, a)_
_name: glm::mix_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P, U a_
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

###genTypeT glm::mix(x, y, a)

<!--
_syntax: glm::mix(x, y, a)_
_name: glm::mix_
_returns: genTypeT_
_returns_description: _
_parameters: genTypeT x, genTypeT y, genTypeU a_
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

###vecType< T, P > glm::mod(T, &x = P, T, &y = P)

<!--
_syntax: glm::mod(T, &x = P, T, &y = P)_
_name: glm::mod_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
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

###vecType< T, P > glm::mod(T, &x = P, y)

<!--
_syntax: glm::mod(T, &x = P, y)_
_name: glm::mod_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, T y_
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

###genType glm::mod(x, y)

<!--
_syntax: glm::mod(x, y)_
_name: glm::mod_
_returns: genType_
_returns_description: _
_parameters: genType x, genType y_
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


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/mod.xml">GLSL mod man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###genType glm::modf(x, &i)

<!--
_syntax: glm::modf(x, &i)_
_name: glm::modf_
_returns: genType_
_returns_description: _
_parameters: genType x, genType &i_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the fractional part of x and sets i to the integer
part (as a whole number floating point value). Both the
return value and the output parameter will have the same
sign as x.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/modf.xml">GLSL modf man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::round(T, &x = P)

<!--
_syntax: glm::round(T, &x = P)_
_name: glm::round_
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

Returns a value equal to the nearest integer to x.
The fraction 0.5 will round in a direction chosen by the
implementation, presumably the direction that is fastest.
This includes the possibility that round(x) returns the
same value as roundEven(x) for all values of x.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/round.xml">GLSL round man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::roundEven(T, &x = P)

<!--
_syntax: glm::roundEven(T, &x = P)_
_name: glm::roundEven_
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

Returns a value equal to the nearest integer to x.
A fractional part of 0.5 will round toward the nearest even
integer. (Both 3.5 and 4.5 for x will return 4.0.)


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/roundEven.xml">GLSL roundEven man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>

**See also**: <a href="http://developer.amd.com/documentation/articles/pages/New-Round-to-Even-Technique.aspx">New round to even technique</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::sign(T, &x = P)

<!--
_syntax: glm::sign(T, &x = P)_
_name: glm::sign_
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

Returns 1.0 if x > 0, 0.0 if x == 0, or -1.0 if x < 0.


**Type parameters:**

genType Floating-point or signed integer; scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/sign.xml">GLSL sign man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::smoothstep(T, &edge0 = P, T, &edge1 = P, T, &x = P)

<!--
_syntax: glm::smoothstep(T, &edge0 = P, T, &edge1 = P, T, &x = P)_
_name: glm::smoothstep_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &edge0=P, const vecType< T, P > &edge1=P, const vecType< T, P > &x=P_
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

###vecType< T, P > glm::smoothstep(edge0, edge1, T, &x = P)

<!--
_syntax: glm::smoothstep(edge0, edge1, T, &x = P)_
_name: glm::smoothstep_
_returns: vecType< T, P >_
_returns_description: _
_parameters: T edge0, T edge1, const vecType< T, P > &x=P_
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

###genType glm::smoothstep(edge0, edge1, x)

<!--
_syntax: glm::smoothstep(edge0, edge1, x)_
_name: glm::smoothstep_
_returns: genType_
_returns_description: _
_parameters: genType edge0, genType edge1, genType x_
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


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/smoothstep.xml">GLSL smoothstep man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::step(T, &edge = P, T, &x = P)

<!--
_syntax: glm::step(T, &edge = P, T, &x = P)_
_name: glm::step_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &edge=P, const vecType< T, P > &x=P_
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


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/step.xml">GLSL step man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::step(edge, T, &x = P)

<!--
_syntax: glm::step(edge, T, &x = P)_
_name: glm::step_
_returns: vecType< T, P >_
_returns_description: _
_parameters: T edge, const vecType< T, P > &x=P_
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


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/step.xml">GLSL step man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###genType glm::step(edge, x)

<!--
_syntax: glm::step(edge, x)_
_name: glm::step_
_returns: genType_
_returns_description: _
_parameters: genType edge, genType x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns 0.0 if x < edge, otherwise it returns 1.0 for each component of a genType.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/step.xml">GLSL step man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::trunc(T, &x = P)

<!--
_syntax: glm::trunc(T, &x = P)_
_name: glm::trunc_
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

Returns a value equal to the nearest integer to x
whose absolute value is not larger than the absolute value of x.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/trunc.xml">GLSL trunc man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###float glm::uintBitsToFloat(&v)

<!--
_syntax: glm::uintBitsToFloat(&v)_
_name: glm::uintBitsToFloat_
_returns: float_
_returns_description: _
_parameters: const glm::uint &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a floating-point value corresponding to a
unsigned integer encoding of a floating-point value.
If an inf or NaN is passed in, it will not signal, and the
resulting floating point value is unspecified. Otherwise,
the bit-level representation is preserved.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/uintBitsToFloat.xml">GLSL uintBitsToFloat man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< float, P > glm::uintBitsToFloat(glm::uint, &v = P)

<!--
_syntax: glm::uintBitsToFloat(glm::uint, &v = P)_
_name: glm::uintBitsToFloat_
_returns: vecType< float, P >_
_returns_description: _
_parameters: const vecType< glm::uint, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a floating-point value corresponding to a
unsigned integer encoding of a floating-point value.
If an inf or NaN is passed in, it will not signal, and the
resulting floating point value is unspecified. Otherwise,
the bit-level representation is preserved.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/uintBitsToFloat.xml">GLSL uintBitsToFloat man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

