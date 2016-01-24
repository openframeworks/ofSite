#class ofBaseSoundInput


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

A base class representing a sound input stream.





##Description





##Methods



###void audioIn(&buffer)

<!--
_syntax: audioIn(&buffer)_
_name: audioIn_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &buffer_
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

Receive an audio buffer.

Parameters:
buffer An audio buffer.





_description: _







<!----------------------------------------------------------------------------->

###void audioIn(*input, bufferSize, nChannels, deviceID, tickCount)

<!--
_syntax: audioIn(*input, bufferSize, nChannels, deviceID, tickCount)_
_name: audioIn_
_returns: void_
_returns_description: _
_parameters: float *input, int bufferSize, int nChannels, int deviceID, unsigned long long tickCount_
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

\deprecated This legacy method is deprecated and will be removed.
Use void audioIn(ofSoundBuffer& buffer) instead.





_description: _







<!----------------------------------------------------------------------------->

###void audioIn(*input, bufferSize, nChannels)

<!--
_syntax: audioIn(*input, bufferSize, nChannels)_
_name: audioIn_
_returns: void_
_returns_description: _
_parameters: float *input, int bufferSize, int nChannels_
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

\deprecated This legacy method is deprecated and will be removed.
Use void audioIn(ofSoundBuffer& buffer) instead.





_description: _







<!----------------------------------------------------------------------------->

###void audioReceived(*input, bufferSize, nChannels)

<!--
_syntax: audioReceived(*input, bufferSize, nChannels)_
_name: audioReceived_
_returns: void_
_returns_description: _
_parameters: float *input, int bufferSize, int nChannels_
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

\deprecated This legacy method is deprecated and will be removed.
Use void audioIn(ofSoundBuffer& buffer) instead.





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseSoundInput()

<!--
_syntax: ~ofBaseSoundInput()_
_name: ~ofBaseSoundInput_
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

Destroy the ofBaseSoundInput.





_description: _







<!----------------------------------------------------------------------------->

##Variables



