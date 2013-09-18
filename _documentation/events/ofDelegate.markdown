#class ofDelegate


<!--
_visible: True_
_advanced: True_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



###Poco::AbstractDelegate< TArgs > * clone()

<!--
_syntax: clone()_
_name: clone_
_returns: Poco::AbstractDelegate< TArgs > *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###void disable()

<!--
_syntax: disable()_
_name: disable_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###bool equals(&other)

<!--
_syntax: equals(&other)_
_name: equals_
_returns: bool_
_returns_description: _
_parameters: const Poco::AbstractDelegate< TArgs > &other_
_access: public_
_version_started: 0073_
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

###bool notify(*sender, &arguments)

<!--
_syntax: notify(*sender, &arguments)_
_name: notify_
_returns: bool_
_returns_description: _
_parameters: const void *sender, TArgs &arguments_
_access: public_
_version_started: 0073_
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

### ofDelegate(*obj, method, prio)

<!--
_syntax: ofDelegate(*obj, method, prio)_
_name: ofDelegate_
_returns: _
_returns_description: _
_parameters: TObj *obj, NotifyMethod method, int prio_
_access: public_
_version_started: 0073_
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

### ofDelegate(&delegate)

<!--
_syntax: ofDelegate(&delegate)_
_name: ofDelegate_
_returns: _
_returns_description: _
_parameters: const ofDelegate &delegate_
_access: public_
_version_started: 0073_
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

### ofDelegate()

<!--
_syntax: ofDelegate()_
_name: ofDelegate_
_returns: _
_returns_description: _
_parameters: _
_access: private_
_version_started: 0073_
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

###ofDelegate & operator=(&delegate)

<!--
_syntax: operator=(&delegate)_
_name: operator=_
_returns: ofDelegate &_
_returns_description: _
_parameters: const ofDelegate &delegate_
_access: public_
_version_started: 0073_
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

### ~ofDelegate()

<!--
_syntax: ~ofDelegate()_
_name: ~ofDelegate_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

##Variables



###Poco::Mutex _mutex

<!--
_name: _mutex_
_type: Poco::Mutex_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###NotifyMethod _receiverMethod

<!--
_name: _receiverMethod_
_type: NotifyMethod_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###TObj * _receiverObject

<!--
_name: _receiverObject_
_type: TObj *_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

