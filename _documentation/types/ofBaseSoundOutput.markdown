#class ofBaseSoundOutput


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

A base class representing a sound output stream.





##Description





##Methods



###void audioOut(&buffer)

<!--
_syntax: audioOut(&buffer)_
_name: audioOut_
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

Output an audio buffer.

Parameters:
buffer An audio buffer.





_description: _







<!----------------------------------------------------------------------------->

###void audioOut(*output, bufferSize, nChannels, deviceID, tickCount)

<!--
_syntax: audioOut(*output, bufferSize, nChannels, deviceID, tickCount)_
_name: audioOut_
_returns: void_
_returns_description: _
_parameters: float *output, int bufferSize, int nChannels, int deviceID, unsigned long long tickCount_
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
Use void audioOut(ofSoundBuffer& buffer) instead.





_description: _







<!----------------------------------------------------------------------------->

###void audioOut(*output, bufferSize, nChannels)

<!--
_syntax: audioOut(*output, bufferSize, nChannels)_
_name: audioOut_
_returns: void_
_returns_description: _
_parameters: float *output, int bufferSize, int nChannels_
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
Use void audioOut(ofSoundBuffer& buffer) instead.





_description: _







<!----------------------------------------------------------------------------->

###void audioRequested(*output, bufferSize, nChannels)

<!--
_syntax: audioRequested(*output, bufferSize, nChannels)_
_name: audioRequested_
_returns: void_
_returns_description: _
_parameters: float *output, int bufferSize, int nChannels_
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
Use void audioOut(ofSoundBuffer& buffer) instead.





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseSoundOutput()

<!--
_syntax: ~ofBaseSoundOutput()_
_name: ~ofBaseSoundOutput_
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

Destroy the ofBaseSoundOutput.





_description: _







<!----------------------------------------------------------------------------->

##Variables



