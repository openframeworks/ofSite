#class ofURLFileLoader


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description

This class provides several convenient methods for making HTTP requests.

~~~~{.cpp}
ofHttpResponse resp = ofLoadURL("http://www.google.com/robots.txt");
cout << resp.data << endl;
~~~~





##Methods



###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###ofHttpResponse get(&url)

<!--
_syntax: get(&url)_
_name: get_
_returns: ofHttpResponse_
_returns_description: _
_parameters: const string &url_
_access: public_
_version_started: 007_
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

###int getAsync(&url, &name)

<!--
_syntax: getAsync(&url, &name)_
_name: getAsync_
_returns: int_
_returns_description: _
_parameters: const string &url, const string &name_
_access: public_
_version_started: 007_
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

###ofHttpResponse handleRequest(&request)

<!--
_syntax: handleRequest(&request)_
_name: handleRequest_
_returns: ofHttpResponse_
_returns_description: _
_parameters: ofHttpRequest &request_
_access: public_
_version_started: 007_
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

### ofURLFileLoader()

<!--
_syntax: ofURLFileLoader()_
_name: ofURLFileLoader_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###void remove(id)

<!--
_syntax: remove(id)_
_name: remove_
_returns: void_
_returns_description: _
_parameters: int id_
_access: public_
_version_started: 007_
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

###int saveAsync(&url, &path)

<!--
_syntax: saveAsync(&url, &path)_
_name: saveAsync_
_returns: int_
_returns_description: _
_parameters: const string &url, const string &path_
_access: public_
_version_started: 007_
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

###ofHttpResponse saveTo(&url, &path)

<!--
_syntax: saveTo(&url, &path)_
_name: saveTo_
_returns: ofHttpResponse_
_returns_description: _
_parameters: const string &url, const string &path_
_access: public_
_version_started: 007_
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

###void stop()

<!--
_syntax: stop()_
_name: stop_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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



###shared_ptr< ofBaseURLFileLoader > impl

<!--
_name: impl_
_type: shared_ptr< ofBaseURLFileLoader >_
_access: private_
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

