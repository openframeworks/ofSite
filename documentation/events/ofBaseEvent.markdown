#class ofBaseEvent


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description





##Methods



###void add(&&f)

<!--
_syntax: add(&&f)_
_name: add_
_returns: void_
_returns_description: _
_parameters: TFunction &&f_
_access: protected_
_version_started: 0.9.0_
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
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Disable an event.

\see ofBaseEvent::enable()
\see ofBaseEvent::isEnabled()





_description: _







<!----------------------------------------------------------------------------->

###void enable()

<!--
_syntax: enable()_
_name: enable_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Enable an event.

\see ofBaseEvent::disable()
\see ofBaseEvent::isEnabled()





_description: _







<!----------------------------------------------------------------------------->

###bool isEnabled()

<!--
_syntax: isEnabled()_
_name: isEnabled_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Check whether an event is enabled or not.


Returns: true if enables
\see ofBaseEvent::enable()
\see ofBaseEvent::disable()





_description: _







<!----------------------------------------------------------------------------->

### ofBaseEvent()

<!--
_syntax: ofBaseEvent()_
_name: ofBaseEvent_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Basic constructor enabling an ofBaseEvent.

\see ofBaseEvent::ofBaseEvent(const ofBaseEvent & mom)
\see ofBaseEvent::enable()
\see ofBaseEvent::disable()
\see ofBaseEvent::isEnabled()





_description: _







<!----------------------------------------------------------------------------->

### ofBaseEvent(Function, &mom)

<!--
_syntax: ofBaseEvent(Function, &mom)_
_name: ofBaseEvent_
_returns: _
_returns_description: _
_parameters: const ofBaseEvent< Function, Mutex > &mom_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Copy-constructor for ofBaseEvent.

\see ofBaseEvent::ofBaseEvent()





_description: _







<!----------------------------------------------------------------------------->

###ofBaseEvent< Function, Mutex > & operator=(Function, &mom)

<!--
_syntax: operator=(Function, &mom)_
_name: operator=_
_returns: ofBaseEvent< Function, Mutex > &_
_returns_description: _
_parameters: const ofBaseEvent< Function, Mutex > &mom_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Overloading the assignment operator.





_description: _







<!----------------------------------------------------------------------------->

###void remove(&function)

<!--
_syntax: remove(&function)_
_name: remove_
_returns: void_
_returns_description: _
_parameters: const TFunction &function_
_access: protected_
_version_started: 0.9.0_
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

###size_t size()

<!--
_syntax: size()_
_name: size_
_returns: size_t_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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



###bool enabled

<!--
_name: enabled_
_type: bool_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###vector<shared_ptr< Function>  > functions

<!--
_name: functions_
_type: vector<shared_ptr< Function>  >_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###Mutex mtx

<!--
_name: mtx_
_type: Mutex_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

