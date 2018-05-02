#class ofSoundStreamSettings


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description





##Methods



###ofSoundDevice::Api getApi()

<!--
_syntax: getApi()_
_name: getApi_
_returns: ofSoundDevice::Api_
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

###const ofSoundDevice * getInDevice()

<!--
_syntax: getInDevice()_
_name: getInDevice_
_returns: const ofSoundDevice *_
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

###const ofSoundDevice * getOutDevice()

<!--
_syntax: getOutDevice()_
_name: getOutDevice_
_returns: const ofSoundDevice *_
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

###bool setApi(api)

<!--
_syntax: setApi(api)_
_name: setApi_
_returns: bool_
_returns_description: _
_parameters: ofSoundDevice::Api api_
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

###bool setInDevice(&device)

<!--
_syntax: setInDevice(&device)_
_name: setInDevice_
_returns: bool_
_returns_description: _
_parameters: const ofSoundDevice &device_
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

###void setInListener(*inListener)

<!--
_syntax: setInListener(*inListener)_
_name: setInListener_
_returns: void_
_returns_description: _
_parameters: Listener *inListener_
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

###bool setOutDevice(&device)

<!--
_syntax: setOutDevice(&device)_
_name: setOutDevice_
_returns: bool_
_returns_description: _
_parameters: const ofSoundDevice &device_
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

###void setOutListener(*outListener)

<!--
_syntax: setOutListener(*outListener)_
_name: setOutListener_
_returns: void_
_returns_description: _
_parameters: Listener *outListener_
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

### ~ofSoundStreamSettings()

<!--
_syntax: ~ofSoundStreamSettings()_
_name: ~ofSoundStreamSettings_
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



###ofSoundDevice::Api api

<!--
_name: api_
_type: ofSoundDevice::Api_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###size_t bufferSize

<!--
_name: bufferSize_
_type: size_t_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###function< void (ofSoundBuffer &) > inCallback

<!--
_name: inCallback_
_type: function< void (ofSoundBuffer &) >_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofSoundDevice inDevice

<!--
_name: inDevice_
_type: ofSoundDevice_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###size_t numBuffers

<!--
_name: numBuffers_
_type: size_t_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###size_t numInputChannels

<!--
_name: numInputChannels_
_type: size_t_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###size_t numOutputChannels

<!--
_name: numOutputChannels_
_type: size_t_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###function< void (ofSoundBuffer &) > outCallback

<!--
_name: outCallback_
_type: function< void (ofSoundBuffer &) >_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofSoundDevice outDevice

<!--
_name: outDevice_
_type: ofSoundDevice_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###size_t sampleRate

<!--
_name: sampleRate_
_type: size_t_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

