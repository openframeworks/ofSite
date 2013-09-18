#class ofxOscSender


<!--
_visible: True_
_advanced: False_
_istemplated: False_
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
_parameters: ofxOscBundle &bundle, osc::OutboundPacketStream &p_
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
_parameters: ofxOscMessage &message, osc::OutboundPacketStream &p_
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

###void sendMessage(&message)

<!--
_syntax: sendMessage(&message)_
_name: sendMessage_
_returns: void_
_returns_description: _
_parameters: ofxOscMessage &message_
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
_parameters: std::string hostname, int port_
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

### ~ofxOscSender()

<!--
_syntax: ~ofxOscSender()_
_name: ~ofxOscSender_
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

_description: _








<!----------------------------------------------------------------------------->

