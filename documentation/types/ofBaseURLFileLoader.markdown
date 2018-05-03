#class ofBaseURLFileLoader


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


loads a file from a URL using an HTTP request





##Description





##Methods



###void clear()

<!--
_syntax: clear()_
_name: clear_
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

clear all active HTTP requests from the queue





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
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

make an HTTP request
blocks until a response is returned or the request times out

**Parameters:**

url HTTP url to request, ie. "http://somewebsite.com/someapi/someimage.jpg"
\return HTTP response on success or failure





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
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

make an asynchronous HTTP request
will not block, placed in a queue and run using a background thread

**Parameters:**

url HTTP url to request, ie. "http://somewebsite.com/someapi/someimage.jpg"

name optional key to use when sorting requests
\return unique id for the active HTTP request





_description: _







<!----------------------------------------------------------------------------->

###ofHttpResponse handleRequest(&request)

<!--
_syntax: handleRequest(&request)_
_name: handleRequest_
_returns: ofHttpResponse_
_returns_description: _
_parameters: const ofHttpRequest &request_
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

low level HTTP request implementation
blocks until a response is returned or the request times out
\return HTTP response on success or failure





_description: _







<!----------------------------------------------------------------------------->

###int handleRequestAsync(&request)

<!--
_syntax: handleRequestAsync(&request)_
_name: handleRequestAsync_
_returns: int_
_returns_description: _
_parameters: const ofHttpRequest &request_
_access: public_
_version_started: 0.10.0_
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
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

remove an active HTTP request from the queue

**Parameters:**

unique HTTP request id





_description: _







<!----------------------------------------------------------------------------->

###int saveAsync(&url, &path)

<!--
_syntax: saveAsync(&url, &path)_
_name: saveAsync_
_returns: int_
_returns_description: _
_parameters: const string &url, const filesystem::path &path_
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

make an asynchronous HTTP request and save the response data to a file
will not block, placed in a queue and run using a background thread

**Parameters:**

url HTTP url to request, ie. "http://somewebsite.com/someapi/someimage.jpg"

path file path to save to

**Returns**: unique id for the active HTTP request





_description: _







<!----------------------------------------------------------------------------->

###ofHttpResponse saveTo(&url, &path)

<!--
_syntax: saveTo(&url, &path)_
_name: saveTo_
_returns: ofHttpResponse_
_returns_description: _
_parameters: const string &url, const filesystem::path &path_
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

make an HTTP request and save the response data to a file
blocks until a response is returned or the request times out

**Parameters:**

url HTTP url to request, ie. "http://somewebsite.com/someapi/someimage.jpg"

path file path to save to
\return HTTP response on success or failure





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
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

stop & remove all active and waiting HTTP requests





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseURLFileLoader()

<!--
_syntax: ~ofBaseURLFileLoader()_
_name: ~ofBaseURLFileLoader_
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







_description: _







<!----------------------------------------------------------------------------->

##Variables



