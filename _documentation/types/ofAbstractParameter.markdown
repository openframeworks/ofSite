#class ofAbstractParameter


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: _
-->

##InlineDescription

Base class for ofParameter, ofReadOnlyParameter and ofParameterGroup





##Description





##Methods



###ofParameter< ParameterType > & cast()

<!--
_syntax: cast()_
_name: cast_
_returns: ofParameter< ParameterType > &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###const ofParameter< ParameterType > & cast()

<!--
_syntax: cast()_
_name: cast_
_returns: const ofParameter< ParameterType > &_
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

###ofParameterGroup & castGroup()

<!--
_syntax: castGroup()_
_name: castGroup_
_returns: ofParameterGroup &_
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

###const ofParameterGroup & castGroup()

<!--
_syntax: castGroup()_
_name: castGroup_
_returns: const ofParameterGroup &_
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

###string escape(&str)

<!--
_syntax: escape(&str)_
_name: escape_
_returns: string_
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

###void fromString(&str)

<!--
_syntax: fromString(&str)_
_name: fromString_
_returns: void_
_returns_description: _
_parameters: const string &str_
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

###string getEscapedName()

<!--
_syntax: getEscapedName()_
_name: getEscapedName_
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

###vector< string > getGroupHierarchyNames()

<!--
_syntax: getGroupHierarchyNames()_
_name: getGroupHierarchyNames_
_returns: vector< string >_
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

###void setName(&name)

<!--
_syntax: setName(&name)_
_name: setName_
_returns: void_
_returns_description: _
_parameters: const string &name_
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

###void setParent(&_parent)

<!--
_syntax: setParent(&_parent)_
_name: setParent_
_returns: void_
_returns_description: _
_parameters: ofParameterGroup &_parent_
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

###void setSerializable(serializable)

<!--
_syntax: setSerializable(serializable)_
_name: setSerializable_
_returns: void_
_returns_description: _
_parameters: bool serializable_
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

###string type()

<!--
_syntax: type()_
_name: type_
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

### ~ofAbstractParameter()

<!--
_syntax: ~ofAbstractParameter()_
_name: ~ofAbstractParameter_
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



