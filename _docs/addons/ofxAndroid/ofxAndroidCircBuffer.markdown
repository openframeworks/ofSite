#class ofxAndroidCircBuffer


##Description












##Methods



### ofxAndroidCircBuffer(&)

<!--
_syntax: ofxAndroidCircBuffer(&)_
_name: ofxAndroidCircBuffer_
_returns: _
_returns_description: _
_parameters: const ofxAndroidCircBuffer &_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###ofxAndroidCircBuffer operator=(&)

<!--
_syntax: operator=(&)_
_name: operator=_
_returns: ofxAndroidCircBuffer_
_returns_description: _
_parameters: const ofxAndroidCircBuffer &_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

### ofxAndroidCircBuffer(_size = 0, &init_val = Content())

<!--
_syntax: ofxAndroidCircBuffer(_size = 0, &init_val = Content())_
_name: ofxAndroidCircBuffer_
_returns: _
_returns_description: _
_parameters: int _size=0, const Content &init_val=Content()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void setup(_size, &init_val = Content())

<!--
_syntax: setup(_size, &init_val = Content())_
_name: setup_
_returns: void_
_returns_description: _
_parameters: int _size, const Content &init_val=Content()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void write(&element)

<!--
_syntax: write(&element)_
_name: write_
_returns: void_
_returns_description: _
_parameters: const Content &element_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###Content read(&default_c = Content())

<!--
_syntax: read(&default_c = Content())_
_name: read_
_returns: Content_
_returns_description: _
_parameters: const Content &default_c=Content()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int size()

<!--
_syntax: size()_
_name: size_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool is_empty()

<!--
_syntax: is_empty()_
_name: is_empty_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool is_full()

<!--
_syntax: is_full()_
_name: is_full_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int num_elements()

<!--
_syntax: num_elements()_
_name: num_elements_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

##Variables



###vector< Content > buffer

<!--
_name: buffer_
_type: vector< Content >_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int readIndex

<!--
_name: readIndex_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int writeIndex

<!--
_name: writeIndex_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int buffer_size

<!--
_name: buffer_size_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool full

<!--
_name: full_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool empty

<!--
_name: empty_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

