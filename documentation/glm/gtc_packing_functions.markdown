#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###glm::uint32 glm::packF2x11_1x10(&v)

<!--
_syntax: glm::packF2x11_1x10(&v)_
_name: glm::packF2x11_1x10_
_returns: glm::uint32_
_returns_description: _
_parameters: const glm::vec3 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts the first two components of the normalized floating-point value v into 11-bit signless floating-point values.
Then, converts the third component of the normalized floating-point value v into a 10-bit signless floating-point value.
Then, the results are packed into the returned 32-bit unsigned integer.

The first vector component specifies the 11 least-significant bits of the result;
the last component specifies the 10 most-significant bits.


**See also**: gtc_packing

**See also**: vec3 unpackF2x11_1x10(uint32 const & p)





_description: _







<!----------------------------------------------------------------------------->

###glm::uint32 glm::packF3x9_E1x5(&v)

<!--
_syntax: glm::packF3x9_E1x5(&v)_
_name: glm::packF3x9_E1x5_
_returns: glm::uint32_
_returns_description: _
_parameters: const glm::vec3 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts the first two components of the normalized floating-point value v into 11-bit signless floating-point values.
Then, converts the third component of the normalized floating-point value v into a 10-bit signless floating-point value.
Then, the results are packed into the returned 32-bit unsigned integer.

The first vector component specifies the 11 least-significant bits of the result;
the last component specifies the 10 most-significant bits.


**See also**: gtc_packing

**See also**: vec3 unpackF3x9_E1x5(uint32 const & p)





_description: _







<!----------------------------------------------------------------------------->

###vecType< glm::uint16, P > glm::packHalf(float, &v = P)

<!--
_syntax: glm::packHalf(float, &v = P)_
_name: glm::packHalf_
_returns: vecType< glm::uint16, P >_
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

Returns an unsigned integer vector obtained by converting the components of a floating-point vector
to the 16-bit floating-point representation found in the OpenGL Specification.
The first vector component specifies the 16 least-significant bits of the result;
the forth component specifies the 16 most-significant bits.


**See also**: gtc_packing

**See also**: vecType<float, P> unpackHalf(vecType<uint16, P> const & p)

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::packHalf1x16(v)

<!--
_syntax: glm::packHalf1x16(v)_
_name: glm::packHalf1x16_
_returns: glm::uint16_
_returns_description: _
_parameters: float v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns an unsigned integer obtained by converting the components of a floating-point scalar
to the 16-bit floating-point representation found in the OpenGL Specification,
and then packing this 16-bit value into a 16-bit unsigned integer.


**See also**: gtc_packing

**See also**: uint32 packHalf2x16(vec2 const & v)

**See also**: uint64 packHalf4x16(vec4 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packHalf2x16.xml">GLSL packHalf2x16 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint64 glm::packHalf4x16(&v)

<!--
_syntax: glm::packHalf4x16(&v)_
_name: glm::packHalf4x16_
_returns: glm::uint64_
_returns_description: _
_parameters: const glm::vec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns an unsigned integer obtained by converting the components of a four-component floating-point vector
to the 16-bit floating-point representation found in the OpenGL Specification,
and then packing these four 16-bit values into a 64-bit unsigned integer.
The first vector component specifies the 16 least-significant bits of the result;
the forth component specifies the 16 most-significant bits.


**See also**: gtc_packing

**See also**: uint16 packHalf1x16(float const & v)

**See also**: uint32 packHalf2x16(vec2 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packHalf2x16.xml">GLSL packHalf2x16 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint32 glm::packI3x10_1x2(&v)

<!--
_syntax: glm::packI3x10_1x2(&v)_
_name: glm::packI3x10_1x2_
_returns: glm::uint32_
_returns_description: _
_parameters: const glm::ivec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns an unsigned integer obtained by converting the components of a four-component signed integer vector
to the 10-10-10-2-bit signed integer representation found in the OpenGL Specification,
and then packing these four values into a 32-bit unsigned integer.
The first vector component specifies the 10 least-significant bits of the result;
the forth component specifies the 2 most-significant bits.


**See also**: gtc_packing

**See also**: uint32 packI3x10_1x2(uvec4 const & v)

**See also**: uint32 packSnorm3x10_1x2(vec4 const & v)

**See also**: uint32 packUnorm3x10_1x2(vec4 const & v)

**See also**: ivec4 unpackI3x10_1x2(uint32 const & p)





_description: _







<!----------------------------------------------------------------------------->

###vecType< intType, P > glm::packSnorm(floatType, &v = P)

<!--
_syntax: glm::packSnorm(floatType, &v = P)_
_name: glm::packSnorm_
_returns: vecType< intType, P >_
_returns_description: _
_parameters: const vecType< floatType, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each component of the normalized floating-point vector into signed integer values.


**See also**: gtc_packing

**See also**: vecType<floatType, P> unpackSnorm(vecType<intType, P> const & p);





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::packSnorm1x16(v)

<!--
_syntax: glm::packSnorm1x16(v)_
_name: glm::packSnorm1x16_
_returns: glm::uint16_
_returns_description: _
_parameters: float v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts the normalized floating-point value v into 16-bit integer value.
Then, the results are packed into the returned 16-bit unsigned integer.

The conversion to fixed point is done as follows:
packSnorm1x8:	round(clamp(s, -1, +1) * 32767.0)


**See also**: gtc_packing

**See also**: uint32 packSnorm2x16(vec2 const & v)

**See also**: uint64 packSnorm4x16(vec4 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packSnorm4x8.xml">GLSL packSnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint8 glm::packSnorm1x8(s)

<!--
_syntax: glm::packSnorm1x8(s)_
_name: glm::packSnorm1x8_
_returns: glm::uint8_
_returns_description: _
_parameters: float s_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts the normalized floating-point value v into 8-bit integer value.
Then, the results are packed into the returned 8-bit unsigned integer.

The conversion to fixed point is done as follows:
packSnorm1x8:	round(clamp(s, -1, +1) * 127.0)


**See also**: gtc_packing

**See also**: uint16 packSnorm2x8(vec2 const & v)

**See also**: uint32 packSnorm4x8(vec4 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packSnorm4x8.xml">GLSL packSnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::packSnorm2x8(&v)

<!--
_syntax: glm::packSnorm2x8(&v)_
_name: glm::packSnorm2x8_
_returns: glm::uint16_
_returns_description: _
_parameters: const glm::vec2 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts each component of the normalized floating-point value v into 8-bit integer values.
Then, the results are packed into the returned 16-bit unsigned integer.

The conversion for component c of v to fixed point is done as follows:
packSnorm2x8:	round(clamp(c, -1, +1) * 127.0)

The first component of the vector will be written to the least significant bits of the output;
the last component will be written to the most significant bits.


**See also**: gtc_packing

**See also**: uint8 packSnorm1x8(float const & v)

**See also**: uint32 packSnorm4x8(vec4 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packSnorm4x8.xml">GLSL packSnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint32 glm::packSnorm3x10_1x2(&v)

<!--
_syntax: glm::packSnorm3x10_1x2(&v)_
_name: glm::packSnorm3x10_1x2_
_returns: glm::uint32_
_returns_description: _
_parameters: const glm::vec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts the first three components of the normalized floating-point value v into 10-bit signed integer values.
Then, converts the forth component of the normalized floating-point value v into 2-bit signed integer values.
Then, the results are packed into the returned 32-bit unsigned integer.

The conversion for component c of v to fixed point is done as follows:
packSnorm3x10_1x2(xyz):	round(clamp(c, -1, +1) * 511.0)
packSnorm3x10_1x2(w):	round(clamp(c, -1, +1) * 1.0)

The first vector component specifies the 10 least-significant bits of the result;
the forth component specifies the 2 most-significant bits.


**See also**: gtc_packing

**See also**: vec4 unpackSnorm3x10_1x2(uint32 const & p)

**See also**: uint32 packUnorm3x10_1x2(vec4 const & v)

**See also**: uint32 packU3x10_1x2(uvec4 const & v)

**See also**: uint32 packI3x10_1x2(ivec4 const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::uint64 glm::packSnorm4x16(&v)

<!--
_syntax: glm::packSnorm4x16(&v)_
_name: glm::packSnorm4x16_
_returns: glm::uint64_
_returns_description: _
_parameters: const glm::vec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts each component of the normalized floating-point value v into 16-bit integer values.
Then, the results are packed into the returned 64-bit unsigned integer.

The conversion for component c of v to fixed point is done as follows:
packSnorm2x8:	round(clamp(c, -1, +1) * 32767.0)

The first component of the vector will be written to the least significant bits of the output;
the last component will be written to the most significant bits.


**See also**: gtc_packing

**See also**: uint16 packSnorm1x16(float const & v)

**See also**: uint32 packSnorm2x16(vec2 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packSnorm4x8.xml">GLSL packSnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint32 glm::packU3x10_1x2(&v)

<!--
_syntax: glm::packU3x10_1x2(&v)_
_name: glm::packU3x10_1x2_
_returns: glm::uint32_
_returns_description: _
_parameters: const glm::uvec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns an unsigned integer obtained by converting the components of a four-component unsigned integer vector
to the 10-10-10-2-bit unsigned integer representation found in the OpenGL Specification,
and then packing these four values into a 32-bit unsigned integer.
The first vector component specifies the 10 least-significant bits of the result;
the forth component specifies the 2 most-significant bits.


**See also**: gtc_packing

**See also**: uint32 packI3x10_1x2(ivec4 const & v)

**See also**: uint32 packSnorm3x10_1x2(vec4 const & v)

**See also**: uint32 packUnorm3x10_1x2(vec4 const & v)

**See also**: ivec4 unpackU3x10_1x2(uint32 const & p)





_description: _







<!----------------------------------------------------------------------------->

###vecType< uintType, P > glm::packUnorm(floatType, &v = P)

<!--
_syntax: glm::packUnorm(floatType, &v = P)_
_name: glm::packUnorm_
_returns: vecType< uintType, P >_
_returns_description: _
_parameters: const vecType< floatType, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each component of the normalized floating-point vector into unsigned integer values.


**See also**: gtc_packing

**See also**: vecType<floatType, P> unpackUnorm(vecType<intType, P> const & p);





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::packUnorm1x16(v)

<!--
_syntax: glm::packUnorm1x16(v)_
_name: glm::packUnorm1x16_
_returns: glm::uint16_
_returns_description: _
_parameters: float v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts the normalized floating-point value v into a 16-bit integer value.
Then, the results are packed into the returned 16-bit unsigned integer.

The conversion for component c of v to fixed point is done as follows:
packUnorm1x16:	round(clamp(c, 0, +1) * 65535.0)


**See also**: gtc_packing

**See also**: uint16 packSnorm1x16(float const & v)

**See also**: uint64 packSnorm4x16(vec4 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packUnorm4x8.xml">GLSL packUnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::packUnorm1x5_1x6_1x5(&v)

<!--
_syntax: glm::packUnorm1x5_1x6_1x5(&v)_
_name: glm::packUnorm1x5_1x6_1x5_
_returns: glm::uint16_
_returns_description: _
_parameters: const glm::vec3 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each component of the normalized floating-point vector into unsigned integer values.


**See also**: gtc_packing

**See also**: vec3 unpackUnorm1x5_1x6_1x5(uint16 p)





_description: _







<!----------------------------------------------------------------------------->

###glm::uint8 glm::packUnorm1x8(v)

<!--
_syntax: glm::packUnorm1x8(v)_
_name: glm::packUnorm1x8_
_returns: glm::uint8_
_returns_description: _
_parameters: float v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts the normalized floating-point value v into a 8-bit integer value.
Then, the results are packed into the returned 8-bit unsigned integer.

The conversion for component c of v to fixed point is done as follows:
packUnorm1x8:	round(clamp(c, 0, +1) * 255.0)


**See also**: gtc_packing

**See also**: uint16 packUnorm2x8(vec2 const & v)

**See also**: uint32 packUnorm4x8(vec4 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packUnorm4x8.xml">GLSL packUnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint8 glm::packUnorm2x3_1x2(&v)

<!--
_syntax: glm::packUnorm2x3_1x2(&v)_
_name: glm::packUnorm2x3_1x2_
_returns: glm::uint8_
_returns_description: _
_parameters: const glm::vec3 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each component of the normalized floating-point vector into unsigned integer values.


**See also**: gtc_packing

**See also**: vec3 unpackUnorm2x3_1x2(uint8 p)





_description: _







<!----------------------------------------------------------------------------->

###glm::uint8 glm::packUnorm2x4(&v)

<!--
_syntax: glm::packUnorm2x4(&v)_
_name: glm::packUnorm2x4_
_returns: glm::uint8_
_returns_description: _
_parameters: const glm::vec2 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each component of the normalized floating-point vector into unsigned integer values.


**See also**: gtc_packing

**See also**: vec2 unpackUnorm2x4(uint8 p)





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::packUnorm2x8(&v)

<!--
_syntax: glm::packUnorm2x8(&v)_
_name: glm::packUnorm2x8_
_returns: glm::uint16_
_returns_description: _
_parameters: const glm::vec2 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts each component of the normalized floating-point value v into 8-bit integer values.
Then, the results are packed into the returned 16-bit unsigned integer.

The conversion for component c of v to fixed point is done as follows:
packUnorm2x8:	round(clamp(c, 0, +1) * 255.0)

The first component of the vector will be written to the least significant bits of the output;
the last component will be written to the most significant bits.


**See also**: gtc_packing

**See also**: uint8 packUnorm1x8(float const & v)

**See also**: uint32 packUnorm4x8(vec4 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packUnorm4x8.xml">GLSL packUnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint32 glm::packUnorm3x10_1x2(&v)

<!--
_syntax: glm::packUnorm3x10_1x2(&v)_
_name: glm::packUnorm3x10_1x2_
_returns: glm::uint32_
_returns_description: _
_parameters: const glm::vec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts the first three components of the normalized floating-point value v into 10-bit unsigned integer values.
Then, converts the forth component of the normalized floating-point value v into 2-bit signed uninteger values.
Then, the results are packed into the returned 32-bit unsigned integer.

The conversion for component c of v to fixed point is done as follows:
packUnorm3x10_1x2(xyz):	round(clamp(c, 0, +1) * 1023.0)
packUnorm3x10_1x2(w):	round(clamp(c, 0, +1) * 3.0)

The first vector component specifies the 10 least-significant bits of the result;
the forth component specifies the 2 most-significant bits.


**See also**: gtc_packing

**See also**: vec4 unpackUnorm3x10_1x2(uint32 const & p)

**See also**: uint32 packUnorm3x10_1x2(vec4 const & v)

**See also**: uint32 packU3x10_1x2(uvec4 const & v)

**See also**: uint32 packI3x10_1x2(ivec4 const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::packUnorm3x5_1x1(&v)

<!--
_syntax: glm::packUnorm3x5_1x1(&v)_
_name: glm::packUnorm3x5_1x1_
_returns: glm::uint16_
_returns_description: _
_parameters: const glm::vec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each component of the normalized floating-point vector into unsigned integer values.


**See also**: gtc_packing

**See also**: vec4 unpackUnorm3x5_1x1(uint16 p)





_description: _







<!----------------------------------------------------------------------------->

###glm::uint64 glm::packUnorm4x16(&v)

<!--
_syntax: glm::packUnorm4x16(&v)_
_name: glm::packUnorm4x16_
_returns: glm::uint64_
_returns_description: _
_parameters: const glm::vec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, converts each component of the normalized floating-point value v into 16-bit integer values.
Then, the results are packed into the returned 64-bit unsigned integer.

The conversion for component c of v to fixed point is done as follows:
packUnorm4x16:	round(clamp(c, 0, +1) * 65535.0)

The first component of the vector will be written to the least significant bits of the output;
the last component will be written to the most significant bits.


**See also**: gtc_packing

**See also**: uint16 packUnorm1x16(float const & v)

**See also**: uint32 packUnorm2x16(vec2 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/packUnorm4x8.xml">GLSL packUnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::packUnorm4x4(&v)

<!--
_syntax: glm::packUnorm4x4(&v)_
_name: glm::packUnorm4x4_
_returns: glm::uint16_
_returns_description: _
_parameters: const glm::vec4 &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each component of the normalized floating-point vector into unsigned integer values.


**See also**: gtc_packing

**See also**: vec4 unpackUnorm4x4(uint16 p)





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 glm::unpackF2x11_1x10(p)

<!--
_syntax: glm::unpackF2x11_1x10(p)_
_name: glm::unpackF2x11_1x10_
_returns: glm::vec3_
_returns_description: _
_parameters: glm::uint32 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 32-bit unsigned integer p into two 11-bit signless floating-point values and one 10-bit signless floating-point value .
Then, each component is converted to a normalized floating-point value to generate the returned three-component vector.

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: uint32 packF2x11_1x10(vec3 const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 glm::unpackF3x9_E1x5(p)

<!--
_syntax: glm::unpackF3x9_E1x5(p)_
_name: glm::unpackF3x9_E1x5_
_returns: glm::vec3_
_returns_description: _
_parameters: glm::uint32 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 32-bit unsigned integer p into two 11-bit signless floating-point values and one 10-bit signless floating-point value .
Then, each component is converted to a normalized floating-point value to generate the returned three-component vector.

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: uint32 packF3x9_E1x5(vec3 const & v)





_description: _







<!----------------------------------------------------------------------------->

###vecType< float, P > glm::unpackHalf(glm::uint16, &p = P)

<!--
_syntax: glm::unpackHalf(glm::uint16, &p = P)_
_name: glm::unpackHalf_
_returns: vecType< float, P >_
_returns_description: _
_parameters: const vecType< glm::uint16, P > &p=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a floating-point vector with components obtained by reinterpreting an integer vector as 16-bit floating-point numbers and converting them to 32-bit floating-point values.
The first component of the vector is obtained from the 16 least-significant bits of v;
the forth component is obtained from the 16 most-significant bits of v.


**See also**: gtc_packing

**See also**: vecType<uint16, P> packHalf(vecType<float, P> const & v)

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###float glm::unpackHalf1x16(v)

<!--
_syntax: glm::unpackHalf1x16(v)_
_name: glm::unpackHalf1x16_
_returns: float_
_returns_description: _
_parameters: glm::uint16 v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a floating-point scalar with components obtained by unpacking a 16-bit unsigned integer into a 16-bit value,
interpreted as a 16-bit floating-point number according to the OpenGL Specification,
and converting it to 32-bit floating-point values.


**See also**: gtc_packing

**See also**: vec2 unpackHalf2x16(uint32 const & v)

**See also**: vec4 unpackHalf4x16(uint64 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackHalf2x16.xml">GLSL unpackHalf2x16 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::vec4 glm::unpackHalf4x16(p)

<!--
_syntax: glm::unpackHalf4x16(p)_
_name: glm::unpackHalf4x16_
_returns: glm::vec4_
_returns_description: _
_parameters: glm::uint64 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a four-component floating-point vector with components obtained by unpacking a 64-bit unsigned integer into four 16-bit values,
interpreting those values as 16-bit floating-point numbers according to the OpenGL Specification,
and converting them to 32-bit floating-point values.
The first component of the vector is obtained from the 16 least-significant bits of v;
the forth component is obtained from the 16 most-significant bits of v.


**See also**: gtc_packing

**See also**: float unpackHalf1x16(uint16 const & v)

**See also**: vec2 unpackHalf2x16(uint32 const & v)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackHalf2x16.xml">GLSL unpackHalf2x16 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::ivec4 glm::unpackI3x10_1x2(p)

<!--
_syntax: glm::unpackI3x10_1x2(p)_
_name: glm::unpackI3x10_1x2_
_returns: glm::ivec4_
_returns_description: _
_parameters: glm::uint32 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Unpacks a single 32-bit unsigned integer p into three 10-bit and one 2-bit signed integers.

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: uint32 packU3x10_1x2(uvec4 const & v)

**See also**: vec4 unpackSnorm3x10_1x2(uint32 const & p);

**See also**: uvec4 unpackI3x10_1x2(uint32 const & p);





_description: _







<!----------------------------------------------------------------------------->

###vecType< floatType, P > glm::unpackSnorm(intType, &v = P)

<!--
_syntax: glm::unpackSnorm(intType, &v = P)_
_name: glm::unpackSnorm_
_returns: vecType< floatType, P >_
_returns_description: _
_parameters: const vecType< intType, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each signed integer components of a vector to normalized floating-point values.


**See also**: gtc_packing

**See also**: vecType<intType, P> packSnorm(vecType<floatType, P> const & v)





_description: _







<!----------------------------------------------------------------------------->

###float glm::unpackSnorm1x16(p)

<!--
_syntax: glm::unpackSnorm1x16(p)_
_name: glm::unpackSnorm1x16_
_returns: float_
_returns_description: _
_parameters: glm::uint16 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 16-bit unsigned integer p into a single 16-bit signed integers.
Then, each component is converted to a normalized floating-point value to generate the returned scalar.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackSnorm1x16: clamp(f / 32767.0, -1, +1)


**See also**: gtc_packing

**See also**: vec2 unpackSnorm2x16(uint32 p)

**See also**: vec4 unpackSnorm4x16(uint64 p)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackSnorm1x16.xml">GLSL unpackSnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###float glm::unpackSnorm1x8(p)

<!--
_syntax: glm::unpackSnorm1x8(p)_
_name: glm::unpackSnorm1x8_
_returns: float_
_returns_description: _
_parameters: glm::uint8 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 8-bit unsigned integer p into a single 8-bit signed integers.
Then, the value is converted to a normalized floating-point value to generate the returned scalar.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackSnorm1x8: clamp(f / 127.0, -1, +1)


**See also**: gtc_packing

**See also**: vec2 unpackSnorm2x8(uint16 p)

**See also**: vec4 unpackSnorm4x8(uint32 p)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackSnorm4x8.xml">GLSL unpackSnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::vec2 glm::unpackSnorm2x8(p)

<!--
_syntax: glm::unpackSnorm2x8(p)_
_name: glm::unpackSnorm2x8_
_returns: glm::vec2_
_returns_description: _
_parameters: glm::uint16 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 16-bit unsigned integer p into a pair of 8-bit signed integers.
Then, each component is converted to a normalized floating-point value to generate the returned two-component vector.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackSnorm2x8: clamp(f / 127.0, -1, +1)

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: float unpackSnorm1x8(uint8 p)

**See also**: vec4 unpackSnorm4x8(uint32 p)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackSnorm4x8.xml">GLSL unpackSnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::vec4 glm::unpackSnorm3x10_1x2(p)

<!--
_syntax: glm::unpackSnorm3x10_1x2(p)_
_name: glm::unpackSnorm3x10_1x2_
_returns: glm::vec4_
_returns_description: _
_parameters: glm::uint32 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 32-bit unsigned integer p into four 16-bit signed integers.
Then, each component is converted to a normalized floating-point value to generate the returned four-component vector.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackSnorm3x10_1x2(xyz): clamp(f / 511.0, -1, +1)
unpackSnorm3x10_1x2(w): clamp(f / 511.0, -1, +1)

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: uint32 packSnorm3x10_1x2(vec4 const & v)

**See also**: vec4 unpackUnorm3x10_1x2(uint32 const & p))

**See also**: uvec4 unpackI3x10_1x2(uint32 const & p)

**See also**: uvec4 unpackU3x10_1x2(uint32 const & p)





_description: _







<!----------------------------------------------------------------------------->

###glm::vec4 glm::unpackSnorm4x16(p)

<!--
_syntax: glm::unpackSnorm4x16(p)_
_name: glm::unpackSnorm4x16_
_returns: glm::vec4_
_returns_description: _
_parameters: glm::uint64 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 64-bit unsigned integer p into four 16-bit signed integers.
Then, each component is converted to a normalized floating-point value to generate the returned four-component vector.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackSnorm4x16: clamp(f / 32767.0, -1, +1)

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: float unpackSnorm1x16(uint16 p)

**See also**: vec2 unpackSnorm2x16(uint32 p)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackSnorm2x16.xml">GLSL unpackSnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::uvec4 glm::unpackU3x10_1x2(p)

<!--
_syntax: glm::unpackU3x10_1x2(p)_
_name: glm::unpackU3x10_1x2_
_returns: glm::uvec4_
_returns_description: _
_parameters: glm::uint32 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Unpacks a single 32-bit unsigned integer p into three 10-bit and one 2-bit unsigned integers.

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: uint32 packU3x10_1x2(uvec4 const & v)

**See also**: vec4 unpackSnorm3x10_1x2(uint32 const & p);

**See also**: uvec4 unpackI3x10_1x2(uint32 const & p);





_description: _







<!----------------------------------------------------------------------------->

###vecType< floatType, P > glm::unpackUnorm(uintType, &v = P)

<!--
_syntax: glm::unpackUnorm(uintType, &v = P)_
_name: glm::unpackUnorm_
_returns: vecType< floatType, P >_
_returns_description: _
_parameters: const vecType< uintType, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each unsigned integer components of a vector to normalized floating-point values.


**See also**: gtc_packing

**See also**: vecType<intType, P> packUnorm(vecType<floatType, P> const & v)





_description: _







<!----------------------------------------------------------------------------->

###float glm::unpackUnorm1x16(p)

<!--
_syntax: glm::unpackUnorm1x16(p)_
_name: glm::unpackUnorm1x16_
_returns: float_
_returns_description: _
_parameters: glm::uint16 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 16-bit unsigned integer p into a of 16-bit unsigned integers.
Then, the value is converted to a normalized floating-point value to generate the returned scalar.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackUnorm1x16: f / 65535.0


**See also**: gtc_packing

**See also**: vec2 unpackUnorm2x16(uint32 p)

**See also**: vec4 unpackUnorm4x16(uint64 p)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackUnorm2x16.xml">GLSL unpackUnorm2x16 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 glm::unpackUnorm1x5_1x6_1x5(p)

<!--
_syntax: glm::unpackUnorm1x5_1x6_1x5(p)_
_name: glm::unpackUnorm1x5_1x6_1x5_
_returns: glm::vec3_
_returns_description: _
_parameters: glm::uint16 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each unsigned integer components of a vector to normalized floating-point values.


**See also**: gtc_packing

**See also**: uint16 packUnorm1x5_1x6_1x5(vec3 const & v)





_description: _







<!----------------------------------------------------------------------------->

###float glm::unpackUnorm1x8(p)

<!--
_syntax: glm::unpackUnorm1x8(p)_
_name: glm::unpackUnorm1x8_
_returns: float_
_returns_description: _
_parameters: glm::uint8 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert a single 8-bit integer to a normalized floating-point value.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackUnorm4x8: f / 255.0


**See also**: gtc_packing

**See also**: vec2 unpackUnorm2x8(uint16 p)

**See also**: vec4 unpackUnorm4x8(uint32 p)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackUnorm4x8.xml">GLSL unpackUnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 glm::unpackUnorm2x3_1x2(p)

<!--
_syntax: glm::unpackUnorm2x3_1x2(p)_
_name: glm::unpackUnorm2x3_1x2_
_returns: glm::vec3_
_returns_description: _
_parameters: glm::uint8 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each unsigned integer components of a vector to normalized floating-point values.


**See also**: gtc_packing

**See also**: uint8 packUnorm2x3_1x2(vec3 const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::vec2 glm::unpackUnorm2x4(p)

<!--
_syntax: glm::unpackUnorm2x4(p)_
_name: glm::unpackUnorm2x4_
_returns: glm::vec2_
_returns_description: _
_parameters: glm::uint8 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each unsigned integer components of a vector to normalized floating-point values.


**See also**: gtc_packing

**See also**: uint8 packUnorm2x4(vec2 const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::vec2 glm::unpackUnorm2x8(p)

<!--
_syntax: glm::unpackUnorm2x8(p)_
_name: glm::unpackUnorm2x8_
_returns: glm::vec2_
_returns_description: _
_parameters: glm::uint16 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 16-bit unsigned integer p into a pair of 8-bit unsigned integers.
Then, each component is converted to a normalized floating-point value to generate the returned two-component vector.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackUnorm4x8: f / 255.0

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: float unpackUnorm1x8(uint8 v)

**See also**: vec4 unpackUnorm4x8(uint32 p)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackUnorm4x8.xml">GLSL unpackUnorm4x8 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::vec4 glm::unpackUnorm3x10_1x2(p)

<!--
_syntax: glm::unpackUnorm3x10_1x2(p)_
_name: glm::unpackUnorm3x10_1x2_
_returns: glm::vec4_
_returns_description: _
_parameters: glm::uint32 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 32-bit unsigned integer p into four 16-bit signed integers.
Then, each component is converted to a normalized floating-point value to generate the returned four-component vector.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackSnorm3x10_1x2(xyz): clamp(f / 1023.0, 0, +1)
unpackSnorm3x10_1x2(w): clamp(f / 3.0, 0, +1)

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: uint32 packSnorm3x10_1x2(vec4 const & v)

**See also**: vec4 unpackInorm3x10_1x2(uint32 const & p))

**See also**: uvec4 unpackI3x10_1x2(uint32 const & p)

**See also**: uvec4 unpackU3x10_1x2(uint32 const & p)





_description: _







<!----------------------------------------------------------------------------->

###glm::vec4 glm::unpackUnorm3x5_1x1(p)

<!--
_syntax: glm::unpackUnorm3x5_1x1(p)_
_name: glm::unpackUnorm3x5_1x1_
_returns: glm::vec4_
_returns_description: _
_parameters: glm::uint16 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each unsigned integer components of a vector to normalized floating-point values.


**See also**: gtc_packing

**See also**: uint16 packUnorm3x5_1x1(vec4 const & v)





_description: _







<!----------------------------------------------------------------------------->

###glm::vec4 glm::unpackUnorm4x16(p)

<!--
_syntax: glm::unpackUnorm4x16(p)_
_name: glm::unpackUnorm4x16_
_returns: glm::vec4_
_returns_description: _
_parameters: glm::uint64 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

First, unpacks a single 64-bit unsigned integer p into four 16-bit unsigned integers.
Then, each component is converted to a normalized floating-point value to generate the returned four-component vector.

The conversion for unpacked fixed-point value f to floating point is done as follows:
unpackUnormx4x16: f / 65535.0

The first component of the returned vector will be extracted from the least significant bits of the input;
the last component will be extracted from the most significant bits.


**See also**: gtc_packing

**See also**: float unpackUnorm1x16(uint16 p)

**See also**: vec2 unpackUnorm2x16(uint32 p)

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/unpackUnorm2x16.xml">GLSL unpackUnorm2x16 man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.4 Floating-Point Pack and Unpack Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###glm::vec4 glm::unpackUnorm4x4(p)

<!--
_syntax: glm::unpackUnorm4x4(p)_
_name: glm::unpackUnorm4x4_
_returns: glm::vec4_
_returns_description: _
_parameters: glm::uint16 p_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert each unsigned integer components of a vector to normalized floating-point values.


**See also**: gtc_packing

**See also**: uint16 packUnorm4x4(vec4 const & v)





_description: _







<!----------------------------------------------------------------------------->

