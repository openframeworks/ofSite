#class ofxOscReceiver


##Description












##Methods



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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

### ~ofxOscReceiver()

<!--
_syntax: ~ofxOscReceiver()_
_name: ~ofxOscReceiver_
_returns: _
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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool getNextMessage(*)

<!--
_syntax: getNextMessage(*)_
_name: getNextMessage_
_returns: bool_
_returns_description: _
_parameters: ofxOscMessage *_
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

###void ProcessMessage(&m, &remoteEndpoint)

<!--
_syntax: ProcessMessage(&m, &remoteEndpoint)_
_name: ProcessMessage_
_returns: void_
_returns_description: _
_parameters: const osc_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void grabMutex()

<!--
_syntax: grabMutex()_
_name: grabMutex_
_returns: void_
_returns_description: _
_parameters: _
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

###void releaseMutex()

<!--
_syntax: releaseMutex()_
_name: releaseMutex_
_returns: void_
_returns_description: _
_parameters: _
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
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void ProcessMessage(&m, &remoteEndpoint)

<!--
_syntax: ProcessMessage(&m, &remoteEndpoint)_
_name: ProcessMessage_
_returns: void_
_returns_description: _
_parameters: const osc::ReceivedMessage &m, const IpEndpointName &remoteEndpoint_
_access: protected_
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



###ofxOscMessage messages

<!--
_name: messages_
_type: ofxOscMessage_
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

###UdpListeningReceiveSocket * listen_socket

<!--
_name: listen_socket_
_type: UdpListeningReceiveSocket *_
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

###pthread_t thread

<!--
_name: thread_
_type: pthread_t_
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

###pthread_mutex_t mutex

<!--
_name: mutex_
_type: pthread_mutex_t_
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

###bool socketHasShutdown

<!--
_name: socketHasShutdown_
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

