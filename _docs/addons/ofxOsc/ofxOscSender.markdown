#class ofxOscSender


##Description












##Methods



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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void setup(hostname, port)

<!--
_syntax: setup(hostname, port)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: std_
_access: public_
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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
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

###void appendBundle(&bundle, &p)

<!--
_syntax: appendBundle(&bundle, &p)_
_name: appendBundle_
_returns: void_
_returns_description: _
_parameters: ofxOscBundle &bundle, osc_
_access: private_
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

###void appendMessage(&message, &p)

<!--
_syntax: appendMessage(&message, &p)_
_name: appendMessage_
_returns: void_
_returns_description: _
_parameters: ofxOscMessage &message, osc_
_access: private_
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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

