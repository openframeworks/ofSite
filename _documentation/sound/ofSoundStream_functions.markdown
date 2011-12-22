#functions

##Description





<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputs,nInputs,OFSA)

<!--
_syntax: ofSoundStreamSetup(nOutputs,nInputs,OFSA)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputs, int nInputs, ofSimpleApp * OFSA_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets up the audio, with nOutputs channels of audio out, nInputs channels of audio in. You also must pass in a pointer to the ofSimpleApp, so you can just use the word "this". For example, for 2 channel output, call in the setup function:
~~~~{.cpp}

ofSoundStreamSetup(2,0,this);
~~~~

In this simplified call, the bufferSize, sampleRate, and number of buffers (for latency) are all set to defaults.






<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputs,nInputs,OFSA,sampleRate,bufferSize,nBuffers)

<!--
_syntax: ofSoundStreamSetup(nOutputs,nInputs,OFSA,sampleRate,bufferSize,nBuffers)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputs, int nInputs, ofSimpleApp * OFSA, int sampleRate, int bufferSize, int nBuffers_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets up the audio, but allows you to control more precise details of the audio system.






<!----------------------------------------------------------------------------->

###void ofSoundStreamStop()

<!--
_syntax: ofSoundStreamStop()_
_name: ofSoundStreamStop_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Stops (pauses) the audio stream. 






<!----------------------------------------------------------------------------->

###void ofSoundStreamStart()

<!--
_syntax: ofSoundStreamStart()_
_name: ofSoundStreamStart_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Starts (un-pauses) the audio stream. The stream starts automatically with ofSoundStreamSetup, so you only need to call this if the stream has been stopped.






<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr = NULL)

<!--
_syntax: ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr = NULL)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputChannels, int nInputChannels, ofBaseApp *appPtr=NULL_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputChannels, nInputChannels, sampleRate, bufferSize, nBuffers)

<!--
_syntax: ofSoundStreamSetup(nOutputChannels, nInputChannels, sampleRate, bufferSize, nBuffers)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputChannels, int nInputChannels, int sampleRate, int bufferSize, int nBuffers_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr, sampleRate, bufferSize, nBuffers)

<!--
_syntax: ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr, sampleRate, bufferSize, nBuffers)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputChannels, int nInputChannels, ofBaseApp *appPtr, int sampleRate, int bufferSize, int nBuffers_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSoundStreamClose()

<!--
_syntax: ofSoundStreamClose()_
_name: ofSoundStreamClose_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

