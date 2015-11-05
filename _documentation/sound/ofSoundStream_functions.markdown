#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






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

_inlined_description: _

Stops the sound stream and also cleans up the stream's resources





_description: _







<!----------------------------------------------------------------------------->

###vector< ofSoundDevice > ofSoundStreamListDevices()

<!--
_syntax: ofSoundStreamListDevices()_
_name: ofSoundStreamListDevices_
_returns: vector< ofSoundDevice >_
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

_inlined_description: _

Prints a list of all available audio devices
\return all sound devices found on the system





_description: _







<!----------------------------------------------------------------------------->

###void ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr = NULL)

<!--
_syntax: ofSoundStreamSetup(nOutputChannels, nInputChannels, *appPtr = NULL)_
_name: ofSoundStreamSetup_
_returns: void_
_returns_description: _
_parameters: int nOutputChannels, int nInputChannels, ofBaseApp *appPtr_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets up and starts a global ofSoundStream.

This will set up a sound stream with a default sample rate of 44100, a
buffer size of 256 samples, and a queue of 4 buffers.


Parameters:
nOutputChannels number of requested output channels (i.e. 2 for stereo).
nInputChannels number of requested input channels.
appPtr pointer to the app which will own the sound stream (optional).





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

_inlined_description: _

Sets up and starts a global ofSoundStream.

Parameters:
nOutputChannels number of requested output channels (i.e. 2 for stereo).
nInputChannels number of requested input channels.
sampleRate requested sample rate (44100 is typical).
bufferSize requested buffer size (256 is typical). Smaller values
       will be more responsive, but less stable.
nBuffers number of buffers to queue. Less buffers will be more responsive, but less stable.





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

_inlined_description: _

Sets up and starts a global ofSoundStream.

Parameters:
nOutputChannels number of requested output channels (i.e. 2 for stereo).
nInputChannels number of requested input channels.
appPtr pointer to the app which will own the sound stream (optional).
sampleRate requested sample rate (44100 is typical).
bufferSize requested buffer size (256 is typical). Smaller values
       will be more responsive, but less stable.
nBuffers number of buffers to queue. Less buffers will be more
       responsive, but less stable.





_description: _







<!----------------------------------------------------------------------------->

###void ofSoundStreamStart()

<!--
_syntax: ofSoundStreamStart()_
_name: ofSoundStreamStart_
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

_inlined_description: _

Starts the sound stream (audioIn() / audioOut() will start being called)





_description: _







<!----------------------------------------------------------------------------->

###void ofSoundStreamStop()

<!--
_syntax: ofSoundStreamStop()_
_name: ofSoundStreamStop_
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

_inlined_description: _

Stops the sound stream (audioIn() / audioOut() will stop being called)





_description: _







<!----------------------------------------------------------------------------->

