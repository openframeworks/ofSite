#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###genType glm::ceilMultiple(Source, Multiple)

<!--
_syntax: glm::ceilMultiple(Source, Multiple)_
_name: glm::ceilMultiple_
_returns: genType_
_returns_description: _
_parameters: genType Source, genType Multiple_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Higher multiple number of Source.


**Type parameters:**

genType Floating-point or integer scalar or vector types.

**Parameters:**

Source

Multiple Must be a null or positive value


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::ceilMultiple(T, &Source = P, T, &Multiple = P)

<!--
_syntax: glm::ceilMultiple(T, &Source = P, T, &Multiple = P)_
_name: glm::ceilMultiple_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &Source=P, const vecType< T, P > &Multiple=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Higher multiple number of Source.


**Type parameters:**

genType Floating-point or integer scalar or vector types.

**Parameters:**

Source

Multiple Must be a null or positive value


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::ceilPowerOfTwo(T, &value = P)

<!--
_syntax: glm::ceilPowerOfTwo(T, &value = P)_
_name: glm::ceilPowerOfTwo_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &value=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the power of two number which value is just higher the input value,
round up to a power of two.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###genIUType glm::ceilPowerOfTwo(Value)

<!--
_syntax: glm::ceilPowerOfTwo(Value)_
_name: glm::ceilPowerOfTwo_
_returns: genIUType_
_returns_description: _
_parameters: genIUType Value_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the power of two number which value is just higher the input value,
round up to a power of two.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###genType glm::floorMultiple(Source, Multiple)

<!--
_syntax: glm::floorMultiple(Source, Multiple)_
_name: glm::floorMultiple_
_returns: genType_
_returns_description: _
_parameters: genType Source, genType Multiple_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Lower multiple number of Source.


**Type parameters:**

genType Floating-point or integer scalar or vector types.

**Parameters:**

Source

Multiple Must be a null or positive value


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::floorMultiple(T, &Source = P, T, &Multiple = P)

<!--
_syntax: glm::floorMultiple(T, &Source = P, T, &Multiple = P)_
_name: glm::floorMultiple_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &Source=P, const vecType< T, P > &Multiple=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Lower multiple number of Source.


**Type parameters:**

genType Floating-point or integer scalar or vector types.

**Parameters:**

Source

Multiple Must be a null or positive value


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::floorPowerOfTwo(T, &value = P)

<!--
_syntax: glm::floorPowerOfTwo(T, &value = P)_
_name: glm::floorPowerOfTwo_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &value=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the power of two number which value is just lower the input value,
round down to a power of two.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###genIUType glm::floorPowerOfTwo(Value)

<!--
_syntax: glm::floorPowerOfTwo(Value)_
_name: glm::floorPowerOfTwo_
_returns: genIUType_
_returns_description: _
_parameters: genIUType Value_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the power of two number which value is just lower the input value,
round down to a power of two.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::isMultiple(T, &Value = P, Multiple)

<!--
_syntax: glm::isMultiple(T, &Value = P, Multiple)_
_name: glm::isMultiple_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &Value=P, T Multiple_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return true if the 'Value' is a multiple of 'Multiple'.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::isMultiple(T, &Value = P, T, &Multiple = P)

<!--
_syntax: glm::isMultiple(T, &Value = P, T, &Multiple = P)_
_name: glm::isMultiple_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &Value=P, const vecType< T, P > &Multiple=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return true if the 'Value' is a multiple of 'Multiple'.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###bool glm::isMultiple(Value, Multiple)

<!--
_syntax: glm::isMultiple(Value, Multiple)_
_name: glm::isMultiple_
_returns: bool_
_returns_description: _
_parameters: genIUType Value, genIUType Multiple_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return true if the 'Value' is a multiple of 'Multiple'.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::isPowerOfTwo(T, &value = P)

<!--
_syntax: glm::isPowerOfTwo(T, &value = P)_
_name: glm::isPowerOfTwo_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &value=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return true if the value is a power of two number.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###bool glm::isPowerOfTwo(Value)

<!--
_syntax: glm::isPowerOfTwo(Value)_
_name: glm::isPowerOfTwo_
_returns: bool_
_returns_description: _
_parameters: genIUType Value_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return true if the value is a power of two number.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###genType glm::roundMultiple(Source, Multiple)

<!--
_syntax: glm::roundMultiple(Source, Multiple)_
_name: glm::roundMultiple_
_returns: genType_
_returns_description: _
_parameters: genType Source, genType Multiple_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Lower multiple number of Source.


**Type parameters:**

genType Floating-point or integer scalar or vector types.

**Parameters:**

Source

Multiple Must be a null or positive value


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::roundMultiple(T, &Source = P, T, &Multiple = P)

<!--
_syntax: glm::roundMultiple(T, &Source = P, T, &Multiple = P)_
_name: glm::roundMultiple_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &Source=P, const vecType< T, P > &Multiple=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Lower multiple number of Source.


**Type parameters:**

genType Floating-point or integer scalar or vector types.

**Parameters:**

Source

Multiple Must be a null or positive value


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::roundPowerOfTwo(T, &value = P)

<!--
_syntax: glm::roundPowerOfTwo(T, &value = P)_
_name: glm::roundPowerOfTwo_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &value=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the power of two number which value is the closet to the input value.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

###genIUType glm::roundPowerOfTwo(Value)

<!--
_syntax: glm::roundPowerOfTwo(Value)_
_name: glm::roundPowerOfTwo_
_returns: genIUType_
_returns_description: _
_parameters: genIUType Value_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return the power of two number which value is the closet to the input value.


**See also**: gtc_round





_description: _







<!----------------------------------------------------------------------------->

