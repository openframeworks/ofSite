#class ofSoundDevice


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


Represents information about a sound device on the system.





##Description





##Methods



### ofSoundDevice()

<!--
_syntax: ofSoundDevice()_
_name: ofSoundDevice_
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



###unsigned int deviceID

<!--
_name: deviceID_
_type: unsigned int_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

The device's unique ID (to be used in ofSoundStream::setDeviceID() )





_description: _







<!----------------------------------------------------------------------------->

###unsigned int inputChannels

<!--
_name: inputChannels_
_type: unsigned int_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

Number of input channels the device supports





_description: _







<!----------------------------------------------------------------------------->

###bool isDefaultInput

<!--
_name: isDefaultInput_
_type: bool_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

If true, this device will be used by ofSoundStream unless changed with setDeviceID()





_description: _







<!----------------------------------------------------------------------------->

###bool isDefaultOutput

<!--
_name: isDefaultOutput_
_type: bool_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

If true, this device will be used by ofSoundStream unless changed with setDeviceID()





_description: _







<!----------------------------------------------------------------------------->

###string name

<!--
_name: name_
_type: string_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

Descriptive name for the device
This is the same string that ofSoundStream::getMatchingDevices() will be looking for





_description: _







<!----------------------------------------------------------------------------->

###unsigned int outputChannels

<!--
_name: outputChannels_
_type: unsigned int_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

Number of output channels the device supports





_description: _







<!----------------------------------------------------------------------------->

###vector< unsigned int > sampleRates

<!--
_name: sampleRates_
_type: vector< unsigned int >_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

List of sample rates the device claims to support





_description: _







<!----------------------------------------------------------------------------->

