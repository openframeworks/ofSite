#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###bool glm::epsilonEqual(&x, &y, &epsilon)

<!--
_syntax: glm::epsilonEqual(&x, &y, &epsilon)_
_name: glm::epsilonEqual_
_returns: bool_
_returns_description: _
_parameters: const genType &x, const genType &y, const genType &epsilon_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of |x - y| < epsilon.
True if this expression is satisfied.


**See also**: gtc_epsilon





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::epsilonEqual(T, &x = P, T, &y = P, &epsilon)

<!--
_syntax: glm::epsilonEqual(T, &x = P, T, &y = P, &epsilon)_
_name: glm::epsilonEqual_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P, const T &epsilon_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of |x - y| < epsilon.
True if this expression is satisfied.


**See also**: gtc_epsilon





_description: _







<!----------------------------------------------------------------------------->

###typename genType::boolType glm::epsilonNotEqual(&x, &y, &epsilon)

<!--
_syntax: glm::epsilonNotEqual(&x, &y, &epsilon)_
_name: glm::epsilonNotEqual_
_returns: typename genType::boolType_
_returns_description: _
_parameters: const genType &x, const genType &y, const typename genType::value_type &epsilon_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of |x - y| < epsilon.
True if this expression is not satisfied.


**See also**: gtc_epsilon





_description: _







<!----------------------------------------------------------------------------->

###bool glm::epsilonNotEqual(&x, &y, &epsilon)

<!--
_syntax: glm::epsilonNotEqual(&x, &y, &epsilon)_
_name: glm::epsilonNotEqual_
_returns: bool_
_returns_description: _
_parameters: const genType &x, const genType &y, const genType &epsilon_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of |x - y| >= epsilon.
True if this expression is not satisfied.


**See also**: gtc_epsilon





_description: _







<!----------------------------------------------------------------------------->

