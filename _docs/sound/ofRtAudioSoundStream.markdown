#class ofRtAudioSoundStream

Example



Reference



Methods



//----------------------

##None ofRtAudioSoundStream()

_syntax: ofRtAudioSoundStream()_

_name: ofRtAudioSoundStream_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ~ofRtAudioSoundStream()

_syntax: ~ofRtAudioSoundStream()_

_name: ~ofRtAudioSoundStream_

_returns: None_

_parameters: _



_description: _















//----------------------

##void listDevices()

_syntax: listDevices()_

_name: listDevices_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setDeviceID(int deviceID)

_syntax: setDeviceID(int deviceID)_

_name: setDeviceID_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setInput(ofBaseSoundInput *soundInput)

_syntax: setInput(ofBaseSoundInput *soundInput)_

_name: setInput_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setOutput(ofBaseSoundOutput *soundOutput)

_syntax: setOutput(ofBaseSoundOutput *soundOutput)_

_name: setOutput_

_returns: void_

_parameters: _



_description: _















//----------------------

##bool setup(int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)

_syntax: setup(int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)_

_name: setup_

_returns: bool_

_parameters: int, int, int, int, int_



_description: _















//----------------------

##void start()

_syntax: start()_

_name: start_

_returns: void_

_parameters: _



_description: _















//----------------------

##void stop()

_syntax: stop()_

_name: stop_

_returns: void_

_parameters: _



_description: _















//----------------------

##void close()

_syntax: close()_

_name: close_

_returns: void_

_parameters: _



_description: _















//----------------------

##long unsigned long getTickCount()

_syntax: getTickCount()_

_name: getTickCount_

_returns: long unsigned long_

_parameters: _



_description: _















//----------------------

##int getNumInputChannels()

_syntax: getNumInputChannels()_

_name: getNumInputChannels_

_returns: int_

_parameters: _



_description: _















//----------------------

##int getNumOutputChannels()

_syntax: getNumOutputChannels()_

_name: getNumOutputChannels_

_returns: int_

_parameters: _



_description: _















//----------------------

##int rtAudioCallback(void *outputBuffer, void *inputBuffer, unsigned int bufferSize, double streamTime, RtAudioStreamStatus status, void *data)

_syntax: rtAudioCallback(void *outputBuffer, void *inputBuffer, unsigned int bufferSize, double streamTime, RtAudioStreamStatus status, void *data)_

_name: rtAudioCallback_

_returns: int_

_parameters: void *, void *, unsigned int, double, , void *_



_description: _















