#class ofxOscSender


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


OSC message sender which sends to a specific host & port





##Description





##Methods



###void appendBundle(&bundle, &p)

<!--
_syntax: appendBundle(&bundle, &p)_
_name: appendBundle_
_returns: void_
_returns_description: _
_parameters: const ofxOscBundle &bundle, int &p_
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
_parameters: const ofxOscMessage &message, int &p_
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

###void appendParameter(&bundle, &parameter, &address)

<!--
_syntax: appendParameter(&bundle, &parameter, &address)_
_name: appendParameter_
_returns: void_
_returns_description: _
_parameters: ofxOscBundle &bundle, const ofAbstractParameter &parameter, const string &address_
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

###void appendParameter(&msg, &parameter, &address)

<!--
_syntax: appendParameter(&msg, &parameter, &address)_
_name: appendParameter_
_returns: void_
_returns_description: _
_parameters: ofxOscMessage &msg, const ofAbstractParameter &parameter, const string &address_
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

###void clear()

<!--
_syntax: clear()_
_name: clear_
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

clear the sender, does not clear host or port values





_description: _







<!----------------------------------------------------------------------------->

###ofxOscSender & copy(&other)

<!--
_syntax: copy(&other)_
_name: copy_
_returns: ofxOscSender &_
_returns_description: _
_parameters: const ofxOscSender &other_
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

###string getHost()

<!--
_syntax: getHost()_
_name: getHost_
_returns: string_
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

\return current host name/ip





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

\return current port





_description: _







<!----------------------------------------------------------------------------->

###const ofxOscSenderSettings & getSettings()

<!--
_syntax: getSettings()_
_name: getSettings_
_returns: const ofxOscSenderSettings &_
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

\return the current sender settings





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
_parameters: const ofxOscBundle &bundle_
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
_parameters: const ofxOscMessage &message, bool wrapInBundle=true_
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
if wrapInBundle is true (default), message sent in a timetagged bundle





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

create & send a message with data from an ofParameter





_description: _







<!----------------------------------------------------------------------------->

###bool setup(&host, port)

<!--
_syntax: setup(&host, port)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: const string &host, int port_
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

set up the sender with the destination host name/ip and port
\return true on success





_description: _







<!----------------------------------------------------------------------------->

###bool setup(&settings)

<!--
_syntax: setup(&settings)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: const ofxOscSenderSettings &settings_
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

set up the sender with the given settings

Returns: true on success





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



###int sendSocket

<!--
_name: sendSocket_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< sender socket





_description: _







<!----------------------------------------------------------------------------->

###ofxOscSenderSettings settings

<!--
_name: settings_
_type: ofxOscSenderSettings_
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

