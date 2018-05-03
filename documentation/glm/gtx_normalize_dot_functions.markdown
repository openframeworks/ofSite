#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###T glm::fastNormalizeDot(T, &x = P, T, &y = P)

<!--
_syntax: glm::fastNormalizeDot(T, &x = P, T, &y = P)_
_name: glm::fastNormalizeDot_
_returns: T_
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

Normalize parameters and returns the dot product of x and y.
Faster that dot(fastNormalize(x), fastNormalize(y)).


**See also**: gtx_normalize_dot extension.





_description: _







<!----------------------------------------------------------------------------->

###T glm::normalizeDot(T, &x = P, T, &y = P)

<!--
_syntax: glm::normalizeDot(T, &x = P, T, &y = P)_
_name: glm::normalizeDot_
_returns: T_
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

Normalize parameters and returns the dot product of x and y.
It's faster that dot(normalize(x), normalize(y)).


**See also**: gtx_normalize_dot extension.





_description: _







<!----------------------------------------------------------------------------->

