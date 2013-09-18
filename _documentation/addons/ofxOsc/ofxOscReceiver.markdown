#class ofxOscReceiver


<!--
_visible: True_
_advanced: False_
_istemplated: False_
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
_parameters: const osc::ReceivedMessage &m, const IpEndpointName &remoteEndpoint_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


take the next message on the queue of received messages, copy its details into message, and remove it from the queue. return false if there are no more messages to be got, otherwise return true 







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

##Variables



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

