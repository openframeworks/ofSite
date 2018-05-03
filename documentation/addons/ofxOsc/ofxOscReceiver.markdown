#class ofxOscReceiver


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


OSC message receiver which listens on a network port





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

###ofxOscReceiver & copy(&other)

<!--
_syntax: copy(&other)_
_name: copy_
_returns: ofxOscReceiver &_
_returns_description: _
_parameters: const ofxOscReceiver &other_
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

for operator= and copy constructor





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

remove a message from the queue and copy it's data into msg
\return false if there are no waiting messages, otherwise return true





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

try to get waiting message an ofParameter
\return true if message was handled by the given parameter





_description: _







<!----------------------------------------------------------------------------->

###int getPort()

<!--
_syntax: getPort()_
_name: getPort_
_returns: int_
_returns_description: _
_parameters: _
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

\return listening port





_description: _







<!----------------------------------------------------------------------------->

###const ofxOscReceiverSettings & getSettings()

<!--
_syntax: getSettings()_
_name: getSettings_
_returns: const ofxOscReceiverSettings &_
_returns_description: _
_parameters: _
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

\return the current receiver settings





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

\return true if there are any messages waiting for collection





_description: _







<!----------------------------------------------------------------------------->

###bool isListening()

<!--
_syntax: isListening()_
_name: isListening_
_returns: bool_
_returns_description: _
_parameters: _
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

\return true if the receiver is listening





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

###bool setup(&settings)

<!--
_syntax: setup(&settings)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: const ofxOscReceiverSettings &settings_
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

set up the receiver with the given settings

starts listening if start is true (true by default)

multiple receivers can share the same port if port reuse is
enabled (true by default)

\return true if listening was started or start was not required





_description: _







<!----------------------------------------------------------------------------->

###bool setup(port)

<!--
_syntax: setup(port)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: int port_
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

set up the receiver with the port to listen for messages on
and start listening

multiple receivers can share the same port if port reuse is
enabled (true by default)

\return true if listening started





_description: _







<!----------------------------------------------------------------------------->

###bool start()

<!--
_syntax: start()_
_name: start_
_returns: bool_
_returns_description: _
_parameters: _
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

start listening manually using the current settings

this is not required if you called setup(port)
or setup(settings) with start set to true

\return true if listening started or was already running





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
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

stop listening, does not clear port value





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

##Variables



###thread listenThread

<!--
_name: listenThread_
_type: thread_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< listener thread





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

< message passing thread channel





_description: _







<!----------------------------------------------------------------------------->

###ofxOscReceiverSettings settings

<!--
_name: settings_
_type: ofxOscReceiverSettings_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< current settings





_description: _







<!----------------------------------------------------------------------------->

