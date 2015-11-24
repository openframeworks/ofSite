#class ofxOscReceiver


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description





##Methods



###void ProcessMessage(&m, &remoteEndpoint)

<!--
_syntax: ProcessMessage(&m, &remoteEndpoint)_
_name: ProcessMessage_
_returns: void_
_returns_description: _
_parameters: const int &m, const int &remoteEndpoint_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

process an incoming osc message and add it to the queue





_description: _







<!----------------------------------------------------------------------------->

###void disableReuse()

<!--
_syntax: disableReuse()_
_name: disableReuse_
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

disables port reuse reuse which allows to use the same port by several sockets





_description: _







<!----------------------------------------------------------------------------->

###void enableReuse()

<!--
_syntax: enableReuse()_
_name: enableReuse_
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

enabled broadcast capabilities (usually no need to call this, enabled by default)





_description: _







<!----------------------------------------------------------------------------->

###bool getNextMessage(&msg)

<!--
_syntax: getNextMessage(&msg)_
_name: getNextMessage_
_returns: bool_
_returns_description: _
_parameters: ofxOscMessage &msg_
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

###bool getParameter(&parameter)

<!--
_syntax: getParameter(&parameter)_
_name: getParameter_
_returns: bool_
_returns_description: _
_parameters: ofAbstractParameter &parameter_
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

###bool hasWaitingMessages()

<!--
_syntax: hasWaitingMessages()_
_name: hasWaitingMessages_
_returns: bool_
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

returns true if there are any messages waiting for collection





_description: _







<!----------------------------------------------------------------------------->

### ofxOscReceiver()

<!--
_syntax: ofxOscReceiver()_
_name: ofxOscReceiver_
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

### ofxOscReceiver(&mom)

<!--
_syntax: ofxOscReceiver(&mom)_
_name: ofxOscReceiver_
_returns: _
_returns_description: _
_parameters: const ofxOscReceiver &mom_
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

###ofxOscReceiver & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofxOscReceiver &_
_returns_description: _
_parameters: const ofxOscReceiver &mom_
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

###void setup(listen_port)

<!--
_syntax: setup(listen_port)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: int listen_port_
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

listen_port is the port to listen for messages on





_description: _







<!----------------------------------------------------------------------------->

###void shutdown()

<!--
_syntax: shutdown()_
_name: shutdown_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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

###void * startThread(*ofxOscReceiverInstance)

<!--
_syntax: startThread(*ofxOscReceiverInstance)_
_name: startThread_
_returns: void *_
_returns_description: _
_parameters: void *ofxOscReceiverInstance_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

##Variables



###bool allowReuse

<!--
_name: allowReuse_
_type: bool_
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

###int listen_port

<!--
_name: listen_port_
_type: int_
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

###thread listen_thread

<!--
_name: listen_thread_
_type: thread_
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

###ofThreadChannel< ofxOscMessage > messagesChannel

<!--
_name: messagesChannel_
_type: ofThreadChannel< ofxOscMessage >_
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

