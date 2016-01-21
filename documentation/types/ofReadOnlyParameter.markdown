#class ofReadOnlyParameter


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofAbstractParameter_
-->

##InlineDescription

ofReadOnlyParameter holds a value and notifies its listeners when it changes.

ofReadOnlyParameter is a "read only" version of `ofPareameter`.  "Friend"
classes specified in the template arguments allow other classes
write-access to the internal data.  Otherwise, all other access is
"read only".


See also: ofParameter
\tparam ParameterType The data wrapped by the ofParameter.
\tparam Friend The type of the "friend" class with write access.





##Description





##Methods



###void addListener(*listener, method, prio)

<!--
_syntax: addListener(*listener, method, prio)_
_name: addListener_
_returns: void_
_returns_description: _
_parameters: ListenerClass *listener, ListenerMethod method, int prio_
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

###void disableEvents()

<!--
_syntax: disableEvents()_
_name: disableEvents_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

###void enableEvents()

<!--
_syntax: enableEvents()_
_name: enableEvents_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

###void fromString(&str)

<!--
_syntax: fromString(&str)_
_name: fromString_
_returns: void_
_returns_description: _
_parameters: const string &str_
_access: protected_
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

###const ParameterType & get()

<!--
_syntax: get()_
_name: get_
_returns: const ParameterType &_
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

###const ofParameterGroup getFirstParent()

<!--
_syntax: getFirstParent()_
_name: getFirstParent_
_returns: const ofParameterGroup_
_returns_description: _
_parameters: _
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

###ParameterType getMax()

<!--
_syntax: getMax()_
_name: getMax_
_returns: ParameterType_
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

###ParameterType getMin()

<!--
_syntax: getMin()_
_name: getMin_
_returns: ParameterType_
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

###string getName()

<!--
_syntax: getName()_
_name: getName_
_returns: string_
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

###bool isReadOnly()

<!--
_syntax: isReadOnly()_
_name: isReadOnly_
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







_description: _







<!----------------------------------------------------------------------------->

###bool isSerializable()

<!--
_syntax: isSerializable()_
_name: isSerializable_
_returns: bool_
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

###void makeReferenceTo(ParameterType, mom)

<!--
_syntax: makeReferenceTo(ParameterType, mom)_
_name: makeReferenceTo_
_returns: void_
_returns_description: _
_parameters: ofReadOnlyParameter< ParameterType, Friend > mom_
_access: protected_
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

###void makeReferenceTo(mom)

<!--
_syntax: makeReferenceTo(mom)_
_name: makeReferenceTo_
_returns: void_
_returns_description: _
_parameters: ofParameter< ParameterType > mom_
_access: protected_
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

###shared_ptr< ofAbstractParameter > newReference()

<!--
_syntax: newReference()_
_name: newReference_
_returns: shared_ptr< ofAbstractParameter >_
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

### ofReadOnlyParameter()

<!--
_syntax: ofReadOnlyParameter()_
_name: ofReadOnlyParameter_
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

### ofReadOnlyParameter(&p)

<!--
_syntax: ofReadOnlyParameter(&p)_
_name: ofReadOnlyParameter_
_returns: _
_returns_description: _
_parameters: ofParameter< ParameterType > &p_
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

### ofReadOnlyParameter(ParameterType, &p)

<!--
_syntax: ofReadOnlyParameter(ParameterType, &p)_
_name: ofReadOnlyParameter_
_returns: _
_returns_description: _
_parameters: ofReadOnlyParameter< ParameterType, Friend > &p_
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

### ofReadOnlyParameter(&v)

<!--
_syntax: ofReadOnlyParameter(&v)_
_name: ofReadOnlyParameter_
_returns: _
_returns_description: _
_parameters: const ParameterType &v_
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

### ofReadOnlyParameter(&name, &v)

<!--
_syntax: ofReadOnlyParameter(&name, &v)_
_name: ofReadOnlyParameter_
_returns: _
_returns_description: _
_parameters: const string &name, const ParameterType &v_
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

### ofReadOnlyParameter(&name, &v, &min, &max)

<!--
_syntax: ofReadOnlyParameter(&name, &v, &min, &max)_
_name: ofReadOnlyParameter_
_returns: _
_returns_description: _
_parameters: const string &name, const ParameterType &v, const ParameterType &min, const ParameterType &max_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator%=(&v)

<!--
_syntax: operator%=(&v)_
_name: operator%=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator&=(&v)

<!--
_syntax: operator&=(&v)_
_name: operator&=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator*=(&v)

<!--
_syntax: operator*=(&v)_
_name: operator*=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###ParameterType operator++(v)

<!--
_syntax: operator++(v)_
_name: operator++_
_returns: ParameterType_
_returns_description: _
_parameters: int v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator++()

<!--
_syntax: operator++()_
_name: operator++_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: _
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator+=(&v)

<!--
_syntax: operator+=(&v)_
_name: operator+=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###ParameterType operator--(v)

<!--
_syntax: operator--(v)_
_name: operator--_
_returns: ParameterType_
_returns_description: _
_parameters: int v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator--()

<!--
_syntax: operator--()_
_name: operator--_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: _
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator-=(&v)

<!--
_syntax: operator-=(&v)_
_name: operator-=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###const ParameterType * operator->()

<!--
_syntax: operator->()_
_name: operator->_
_returns: const ParameterType *_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator/=(&v)

<!--
_syntax: operator/=(&v)_
_name: operator/=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator<<=(&v)

<!--
_syntax: operator<<=(&v)_
_name: operator<<=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator=(ParameterType, &v)

<!--
_syntax: operator=(ParameterType, &v)_
_name: operator=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const ofReadOnlyParameter< ParameterType, Friend > &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator=(&v)

<!--
_syntax: operator=(&v)_
_name: operator=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const ofParameter< ParameterType > &v_
_access: protected_
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

###const ParameterType & operator=(&v)

<!--
_syntax: operator=(&v)_
_name: operator=_
_returns: const ParameterType &_
_returns_description: _
_parameters: const ParameterType &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator>>=(&v)

<!--
_syntax: operator>>=(&v)_
_name: operator>>=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator^=(&v)

<!--
_syntax: operator^=(&v)_
_name: operator^=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & operator|=(&v)

<!--
_syntax: operator|=(&v)_
_name: operator|=_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const OtherType &v_
_access: protected_
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

###void removeListener(*listener, method, prio)

<!--
_syntax: removeListener(*listener, method, prio)_
_name: removeListener_
_returns: void_
_returns_description: _
_parameters: ListenerClass *listener, ListenerMethod method, int prio_
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

###ofReadOnlyParameter< ParameterType, Friend > & set(&v)

<!--
_syntax: set(&v)_
_name: set_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const ParameterType &v_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & set(&name, &value)

<!--
_syntax: set(&name, &value)_
_name: set_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const string &name, const ParameterType &value_
_access: protected_
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

###ofReadOnlyParameter< ParameterType, Friend > & set(&name, &value, &min, &max)

<!--
_syntax: set(&name, &value, &min, &max)_
_name: set_
_returns: ofReadOnlyParameter< ParameterType, Friend > &_
_returns_description: _
_parameters: const string &name, const ParameterType &value, const ParameterType &min, const ParameterType &max_
_access: protected_
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

###void setMax(&max)

<!--
_syntax: setMax(&max)_
_name: setMax_
_returns: void_
_returns_description: _
_parameters: const ParameterType &max_
_access: protected_
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

###void setMin(&min)

<!--
_syntax: setMin(&min)_
_name: setMin_
_returns: void_
_returns_description: _
_parameters: const ParameterType &min_
_access: protected_
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

###void setName(&name)

<!--
_syntax: setName(&name)_
_name: setName_
_returns: void_
_returns_description: _
_parameters: const string &name_
_access: protected_
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

###void setParent(&_parent)

<!--
_syntax: setParent(&_parent)_
_name: setParent_
_returns: void_
_returns_description: _
_parameters: ofParameterGroup &_parent_
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

###void setSerializable(s)

<!--
_syntax: setSerializable(s)_
_name: setSerializable_
_returns: void_
_returns_description: _
_parameters: bool s_
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

###string toString()

<!--
_syntax: toString()_
_name: toString_
_returns: string_
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



###ofParameter parameter

<!--
_name: parameter_
_type: ofParameter_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

