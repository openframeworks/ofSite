#class ofxOscSender


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description





##Methods



###void appendBundle(&bundle, &p)

<!--
_syntax: appendBundle(&bundle, &p)_
_name: appendBundle_
_returns: void_
_returns_description: _
_parameters: ofxOscBundle &bundle, int &p_
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

###void appendMessage(&message, &p)

<!--
_syntax: appendMessage(&message, &p)_
_name: appendMessage_
_returns: void_
_returns_description: _
_parameters: ofxOscMessage &message, int &p_
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

###void appendParameter(&bundle, &parameter, address)

<!--
_syntax: appendParameter(&bundle, &parameter, address)_
_name: appendParameter_
_returns: void_
_returns_description: _
_parameters: ofxOscBundle &bundle, const ofAbstractParameter &parameter, string address_
_access: private_
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

###void appendParameter(&msg, &parameter, address)

<!--
_syntax: appendParameter(&msg, &parameter, address)_
_name: appendParameter_
_returns: void_
_returns_description: _
_parameters: ofxOscMessage &msg, const ofAbstractParameter &parameter, string address_
_access: private_
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

###void disableBroadcast()

<!--
_syntax: disableBroadcast()_
_name: disableBroadcast_
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

disables broadcast capabilities, usually call this before setup





_description: _







<!----------------------------------------------------------------------------->

###void enableBroadcast()

<!--
_syntax: enableBroadcast()_
_name: enableBroadcast_
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

### ofxOscSender()

<!--
_syntax: ofxOscSender()_
_name: ofxOscSender_
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

### ofxOscSender(&mom)

<!--
_syntax: ofxOscSender(&mom)_
_name: ofxOscSender_
_returns: _
_returns_description: _
_parameters: const ofxOscSender &mom_
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

###ofxOscSender & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofxOscSender &_
_returns_description: _
_parameters: const ofxOscSender &mom_
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

###void sendBundle(&bundle)

<!--
_syntax: sendBundle(&bundle)_
_name: sendBundle_
_returns: void_
_returns_description: _
_parameters: ofxOscBundle &bundle_
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

send the given bundle





_description: _







<!----------------------------------------------------------------------------->

###void sendMessage(&message, wrapInBundle = true)

<!--
_syntax: sendMessage(&message, wrapInBundle = true)_
_name: sendMessage_
_returns: void_
_returns_description: _
_parameters: ofxOscMessage &message, bool wrapInBundle=true_
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

send the given message





_description: _







<!----------------------------------------------------------------------------->

###void sendParameter(&parameter)

<!--
_syntax: sendParameter(&parameter)_
_name: sendParameter_
_returns: void_
_returns_description: _
_parameters: const ofAbstractParameter &parameter_
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

creates a message using an ofParameter





_description: _







<!----------------------------------------------------------------------------->

###void setup(hostname, port)

<!--
_syntax: setup(hostname, port)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: string hostname, int port_
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

send messages to hostname and port





_description: _







<!----------------------------------------------------------------------------->

###void setup(*socket)

<!--
_syntax: setup(*socket)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: osc::UdpTransmitSocket *socket_
_access: private_
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

##Variables



###bool broadcast

<!--
_name: broadcast_
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

###string hostname

<!--
_name: hostname_
_type: string_
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

###int port

<!--
_name: port_
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

###UdpTransmitSocket * socket

<!--
_name: socket_
_type: UdpTransmitSocket *_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

