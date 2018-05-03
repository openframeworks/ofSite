#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###vecType< T, P > glm::bitfieldFillOne(T, &Value = P, FirstBit, BitCount)

<!--
_syntax: glm::bitfieldFillOne(T, &Value = P, FirstBit, BitCount)_
_name: glm::bitfieldFillOne_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &Value=P, int FirstBit, int BitCount_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set to 1 a range of bits.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###genIUType glm::bitfieldFillOne(Value, FirstBit, BitCount)

<!--
_syntax: glm::bitfieldFillOne(Value, FirstBit, BitCount)_
_name: glm::bitfieldFillOne_
_returns: genIUType_
_returns_description: _
_parameters: genIUType Value, int FirstBit, int BitCount_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set to 1 a range of bits.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::bitfieldFillZero(T, &Value = P, FirstBit, BitCount)

<!--
_syntax: glm::bitfieldFillZero(T, &Value = P, FirstBit, BitCount)_
_name: glm::bitfieldFillZero_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &Value=P, int FirstBit, int BitCount_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set to 0 a range of bits.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###genIUType glm::bitfieldFillZero(Value, FirstBit, BitCount)

<!--
_syntax: glm::bitfieldFillZero(Value, FirstBit, BitCount)_
_name: glm::bitfieldFillZero_
_returns: genIUType_
_returns_description: _
_parameters: genIUType Value, int FirstBit, int BitCount_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set to 0 a range of bits.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::int16 glm::bitfieldInterleave(x, y)

<!--
_syntax: glm::bitfieldInterleave(x, y)_
_name: glm::bitfieldInterleave_
_returns: glm::int16_
_returns_description: _
_parameters: glm::int8 x, glm::int8 y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x and y.
The first bit is the first bit of x followed by the first bit of y.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::uint16 glm::bitfieldInterleave(x, y)

<!--
_syntax: glm::bitfieldInterleave(x, y)_
_name: glm::bitfieldInterleave_
_returns: glm::uint16_
_returns_description: _
_parameters: glm::uint8 x, glm::uint8 y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x and y.
The first bit is the first bit of x followed by the first bit of y.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::int32 glm::bitfieldInterleave(x, y)

<!--
_syntax: glm::bitfieldInterleave(x, y)_
_name: glm::bitfieldInterleave_
_returns: glm::int32_
_returns_description: _
_parameters: glm::int16 x, glm::int16 y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x and y.
The first bit is the first bit of x followed by the first bit of y.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::uint32 glm::bitfieldInterleave(x, y)

<!--
_syntax: glm::bitfieldInterleave(x, y)_
_name: glm::bitfieldInterleave_
_returns: glm::uint32_
_returns_description: _
_parameters: glm::uint16 x, glm::uint16 y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x and y.
The first bit is the first bit of x followed by the first bit of y.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::int64 glm::bitfieldInterleave(x, y)

<!--
_syntax: glm::bitfieldInterleave(x, y)_
_name: glm::bitfieldInterleave_
_returns: glm::int64_
_returns_description: _
_parameters: glm::int32 x, glm::int32 y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x and y.
The first bit is the first bit of x followed by the first bit of y.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::uint64 glm::bitfieldInterleave(x, y)

<!--
_syntax: glm::bitfieldInterleave(x, y)_
_name: glm::bitfieldInterleave_
_returns: glm::uint64_
_returns_description: _
_parameters: glm::uint32 x, glm::uint32 y_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x and y.
The first bit is the first bit of x followed by the first bit of y.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::int32 glm::bitfieldInterleave(x, y, z)

<!--
_syntax: glm::bitfieldInterleave(x, y, z)_
_name: glm::bitfieldInterleave_
_returns: glm::int32_
_returns_description: _
_parameters: glm::int8 x, glm::int8 y, glm::int8 z_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y and z.
The first bit is the first bit of x followed by the first bit of y and the first bit of z.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::uint32 glm::bitfieldInterleave(x, y, z)

<!--
_syntax: glm::bitfieldInterleave(x, y, z)_
_name: glm::bitfieldInterleave_
_returns: glm::uint32_
_returns_description: _
_parameters: glm::uint8 x, glm::uint8 y, glm::uint8 z_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y and z.
The first bit is the first bit of x followed by the first bit of y and the first bit of z.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::int64 glm::bitfieldInterleave(x, y, z)

<!--
_syntax: glm::bitfieldInterleave(x, y, z)_
_name: glm::bitfieldInterleave_
_returns: glm::int64_
_returns_description: _
_parameters: glm::int16 x, glm::int16 y, glm::int16 z_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y and z.
The first bit is the first bit of x followed by the first bit of y and the first bit of z.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::uint64 glm::bitfieldInterleave(x, y, z)

<!--
_syntax: glm::bitfieldInterleave(x, y, z)_
_name: glm::bitfieldInterleave_
_returns: glm::uint64_
_returns_description: _
_parameters: glm::uint16 x, glm::uint16 y, glm::uint16 z_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y and z.
The first bit is the first bit of x followed by the first bit of y and the first bit of z.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::int64 glm::bitfieldInterleave(x, y, z)

<!--
_syntax: glm::bitfieldInterleave(x, y, z)_
_name: glm::bitfieldInterleave_
_returns: glm::int64_
_returns_description: _
_parameters: glm::int32 x, glm::int32 y, glm::int32 z_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y and z.
The first bit is the first bit of x followed by the first bit of y and the first bit of z.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::uint64 glm::bitfieldInterleave(x, y, z)

<!--
_syntax: glm::bitfieldInterleave(x, y, z)_
_name: glm::bitfieldInterleave_
_returns: glm::uint64_
_returns_description: _
_parameters: glm::uint32 x, glm::uint32 y, glm::uint32 z_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y and z.
The first bit is the first bit of x followed by the first bit of y and the first bit of z.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::int32 glm::bitfieldInterleave(x, y, z, w)

<!--
_syntax: glm::bitfieldInterleave(x, y, z, w)_
_name: glm::bitfieldInterleave_
_returns: glm::int32_
_returns_description: _
_parameters: glm::int8 x, glm::int8 y, glm::int8 z, glm::int8 w_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y, z and w.
The first bit is the first bit of x followed by the first bit of y, the first bit of z and finally the first bit of w.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::uint32 glm::bitfieldInterleave(x, y, z, w)

<!--
_syntax: glm::bitfieldInterleave(x, y, z, w)_
_name: glm::bitfieldInterleave_
_returns: glm::uint32_
_returns_description: _
_parameters: glm::uint8 x, glm::uint8 y, glm::uint8 z, glm::uint8 w_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y, z and w.
The first bit is the first bit of x followed by the first bit of y, the first bit of z and finally the first bit of w.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::int64 glm::bitfieldInterleave(x, y, z, w)

<!--
_syntax: glm::bitfieldInterleave(x, y, z, w)_
_name: glm::bitfieldInterleave_
_returns: glm::int64_
_returns_description: _
_parameters: glm::int16 x, glm::int16 y, glm::int16 z, glm::int16 w_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y, z and w.
The first bit is the first bit of x followed by the first bit of y, the first bit of z and finally the first bit of w.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###glm::uint64 glm::bitfieldInterleave(x, y, z, w)

<!--
_syntax: glm::bitfieldInterleave(x, y, z, w)_
_name: glm::bitfieldInterleave_
_returns: glm::uint64_
_returns_description: _
_parameters: glm::uint16 x, glm::uint16 y, glm::uint16 z, glm::uint16 w_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Interleaves the bits of x, y, z and w.
The first bit is the first bit of x followed by the first bit of y, the first bit of z and finally the first bit of w.
The other bits are interleaved following the previous sequence.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###genIUType glm::bitfieldRotateLeft(In, Shift)

<!--
_syntax: glm::bitfieldRotateLeft(In, Shift)_
_name: glm::bitfieldRotateLeft_
_returns: genIUType_
_returns_description: _
_parameters: genIUType In, int Shift_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate all bits to the left. All the bits dropped in the left side are inserted back on the right side.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::bitfieldRotateLeft(T, &In = P, Shift)

<!--
_syntax: glm::bitfieldRotateLeft(T, &In = P, Shift)_
_name: glm::bitfieldRotateLeft_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &In=P, int Shift_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate all bits to the left. All the bits dropped in the left side are inserted back on the right side.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###genIUType glm::bitfieldRotateRight(In, Shift)

<!--
_syntax: glm::bitfieldRotateRight(In, Shift)_
_name: glm::bitfieldRotateRight_
_returns: genIUType_
_returns_description: _
_parameters: genIUType In, int Shift_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate all bits to the right. All the bits dropped in the right side are inserted back on the left side.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::bitfieldRotateRight(T, &In = P, Shift)

<!--
_syntax: glm::bitfieldRotateRight(T, &In = P, Shift)_
_name: glm::bitfieldRotateRight_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &In=P, int Shift_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate all bits to the right. All the bits dropped in the right side are inserted back on the left side.


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###genIUType glm::mask(Bits)

<!--
_syntax: glm::mask(Bits)_
_name: glm::mask_
_returns: genIUType_
_returns_description: _
_parameters: genIUType Bits_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a mask of 'count' bits


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

###vecIUType< T, P > glm::mask(T, &v = P)

<!--
_syntax: glm::mask(T, &v = P)_
_name: glm::mask_
_returns: vecIUType< T, P >_
_returns_description: _
_parameters: const vecIUType< T, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Build a mask of 'count' bits


**See also**: gtc_bitfield





_description: _







<!----------------------------------------------------------------------------->

