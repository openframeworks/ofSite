#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###vecType< int, P > glm::bitCount(T, &v = P)

<!--
_syntax: glm::bitCount(T, &v = P)_
_name: glm::bitCount_
_returns: vecType< int, P >_
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

Returns the number of bits set to 1 in the binary representation of value.


**Type parameters:**

T Signed or unsigned integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/bitCount.xml">GLSL bitCount man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###int glm::bitCount(v)

<!--
_syntax: glm::bitCount(v)_
_name: glm::bitCount_
_returns: int_
_returns_description: _
_parameters: genType v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the number of bits set to 1 in the binary representation of value.


**Type parameters:**

T Signed or unsigned integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/bitCount.xml">GLSL bitCount man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::bitfieldExtract(T, &Value = P, Offset, Bits)

<!--
_syntax: glm::bitfieldExtract(T, &Value = P, Offset, Bits)_
_name: glm::bitfieldExtract_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &Value=P, int Offset, int Bits_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Extracts bits [offset, offset + bits - 1] from value,
returning them in the least significant bits of the result.
For unsigned data types, the most significant bits of the
result will be set to zero. For signed data types, the
most significant bits will be set to the value of bit offset + base - 1.

If bits is zero, the result will be zero. The result will be
undefined if offset or bits is negative, or if the sum of
offset and bits is greater than the number of bits used
to store the operand.


**Type parameters:**

T Signed or unsigned integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/bitfieldExtract.xml">GLSL bitfieldExtract man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::bitfieldInsert(T, &Base = P, T, &Insert = P, Offset, Bits)

<!--
_syntax: glm::bitfieldInsert(T, &Base = P, T, &Insert = P, Offset, Bits)_
_name: glm::bitfieldInsert_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &Base=P, const vecType< T, P > &Insert=P, int Offset, int Bits_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the insertion the bits least-significant bits of insert into base.

The result will have bits [offset, offset + bits - 1] taken
from bits [0, bits - 1] of insert, and all other bits taken
directly from the corresponding bits of base. If bits is
zero, the result will simply be base. The result will be
undefined if offset or bits is negative, or if the sum of
offset and bits is greater than the number of bits used to
store the operand.


**Type parameters:**

T Signed or unsigned integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/bitfieldInsert.xml">GLSL bitfieldInsert man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::bitfieldReverse(T, &v = P)

<!--
_syntax: glm::bitfieldReverse(T, &v = P)_
_name: glm::bitfieldReverse_
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

Returns the reversal of the bits of value.
The bit numbered n of the result will be taken from bit (bits - 1) - n of value,
where bits is the total number of bits used to represent value.


**Type parameters:**

T Signed or unsigned integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/bitfieldReverse.xml">GLSL bitfieldReverse man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< int, P > glm::findLSB(T, &v = P)

<!--
_syntax: glm::findLSB(T, &v = P)_
_name: glm::findLSB_
_returns: vecType< int, P >_
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

Returns the bit number of the least significant bit set to
1 in the binary representation of value.
If value is zero, -1 will be returned.


**Type parameters:**

T Signed or unsigned integer scalar types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/findLSB.xml">GLSL findLSB man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###int glm::findLSB(x)

<!--
_syntax: glm::findLSB(x)_
_name: glm::findLSB_
_returns: int_
_returns_description: _
_parameters: genIUType x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the bit number of the least significant bit set to
1 in the binary representation of value.
If value is zero, -1 will be returned.


**Type parameters:**

T Signed or unsigned integer scalar types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/findLSB.xml">GLSL findLSB man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< int, P > glm::findMSB(T, &v = P)

<!--
_syntax: glm::findMSB(T, &v = P)_
_name: glm::findMSB_
_returns: vecType< int, P >_
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

Returns the bit number of the most significant bit in the binary representation of value.
For positive integers, the result will be the bit number of the most significant bit set to 1.
For negative integers, the result will be the bit number of the most significant
bit set to 0. For a value of zero or negative one, -1 will be returned.


**Type parameters:**

T Signed or unsigned integer scalar types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/findMSB.xml">GLSL findMSB man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###int glm::findMSB(x)

<!--
_syntax: glm::findMSB(x)_
_name: glm::findMSB_
_returns: int_
_returns_description: _
_parameters: genIUType x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the bit number of the most significant bit in the binary representation of value.
For positive integers, the result will be the bit number of the most significant bit set to 1.
For negative integers, the result will be the bit number of the most significant
bit set to 0. For a value of zero or negative one, -1 will be returned.


**Type parameters:**

T Signed or unsigned integer scalar types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/findMSB.xml">GLSL findMSB man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###void glm::imulExtended(int, &x = P, int, &y = P, int, &msb = P, int, &lsb = P)

<!--
_syntax: glm::imulExtended(int, &x = P, int, &y = P, int, &msb = P, int, &lsb = P)_
_name: glm::imulExtended_
_returns: void_
_returns_description: _
_parameters: const vecType< int, P > &x=P, const vecType< int, P > &y=P, vecType< int, P > &msb=P, vecType< int, P > &lsb=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Multiplies 32-bit integers x and y, producing a 64-bit
result. The 32 least-significant bits are returned in lsb.
The 32 most-significant bits are returned in msb.


**Type parameters:**

genIType Signed integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/imulExtended.xml">GLSL imulExtended man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< glm::uint, P > glm::uaddCarry(glm::uint, &x = P, glm::uint, &y = P, glm::uint, &carry = P)

<!--
_syntax: glm::uaddCarry(glm::uint, &x = P, glm::uint, &y = P, glm::uint, &carry = P)_
_name: glm::uaddCarry_
_returns: vecType< glm::uint, P >_
_returns_description: _
_parameters: const vecType< glm::uint, P > &x=P, const vecType< glm::uint, P > &y=P, vecType< glm::uint, P > &carry=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Adds 32-bit unsigned integer x and y, returning the sum
modulo pow(2, 32). The value carry is set to 0 if the sum was
less than pow(2, 32), or to 1 otherwise.


**Type parameters:**

genUType Unsigned integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/uaddCarry.xml">GLSL uaddCarry man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###void glm::umulExtended(glm::uint, &x = P, glm::uint, &y = P, glm::uint, &msb = P, glm::uint, &lsb = P)

<!--
_syntax: glm::umulExtended(glm::uint, &x = P, glm::uint, &y = P, glm::uint, &msb = P, glm::uint, &lsb = P)_
_name: glm::umulExtended_
_returns: void_
_returns_description: _
_parameters: const vecType< glm::uint, P > &x=P, const vecType< glm::uint, P > &y=P, vecType< glm::uint, P > &msb=P, vecType< glm::uint, P > &lsb=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Multiplies 32-bit integers x and y, producing a 64-bit
result. The 32 least-significant bits are returned in lsb.
The 32 most-significant bits are returned in msb.


**Type parameters:**

genUType Unsigned integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/umulExtended.xml">GLSL umulExtended man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< glm::uint, P > glm::usubBorrow(glm::uint, &x = P, glm::uint, &y = P, glm::uint, &borrow = P)

<!--
_syntax: glm::usubBorrow(glm::uint, &x = P, glm::uint, &y = P, glm::uint, &borrow = P)_
_name: glm::usubBorrow_
_returns: vecType< glm::uint, P >_
_returns_description: _
_parameters: const vecType< glm::uint, P > &x=P, const vecType< glm::uint, P > &y=P, vecType< glm::uint, P > &borrow=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Subtracts the 32-bit unsigned integer y from x, returning
the difference if non-negative, or pow(2, 32) plus the difference
otherwise. The value borrow is set to 0 if x >= y, or to 1 otherwise.


**Type parameters:**

genUType Unsigned integer scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/usubBorrow.xml">GLSL usubBorrow man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.8 Integer Functions</a>





_description: _







<!----------------------------------------------------------------------------->

