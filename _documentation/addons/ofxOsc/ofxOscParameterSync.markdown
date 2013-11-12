#class ofxOscParameterSync


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



### ofxOscParameterSync()

<!--
_syntax: ofxOscParameterSync()_
_name: ofxOscParameterSync_
_returns: _
_returns_description: _
_parameters: _
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

###void parameterChanged(&parameter)

<!--
_syntax: parameterChanged(&parameter)_
_name: parameterChanged_
_returns: void_
_returns_description: _
_parameters: ofAbstractParameter &parameter_
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

###void setup(&group, localPort, remoteHost, remotePort)

<!--
_syntax: setup(&group, localPort, remoteHost, remotePort)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: ofParameterGroup &group, int localPort, string remoteHost, int remotePort_
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

the remote and local ports must be different to avoid collisions 








_description: _








<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
_returns: void_
_returns_description: _
_parameters: _
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

### ~ofxOscParameterSync()

<!--
_syntax: ~ofxOscParameterSync()_
_name: ~ofxOscParameterSync_
_returns: _
_returns_description: _
_parameters: _
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

##Variables



###ofxOscReceiver receiver

<!--
_name: receiver_
_type: ofxOscReceiver_
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofxOscSender sender

<!--
_name: sender_
_type: ofxOscSender_
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofParameterGroup *  syncGroup

<!--
_name: syncGroup_
_type: ofParameterGroup * _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  updatingParameter

<!--
_name: updatingParameter_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

