#class ofxAndroidSoundStream


<!--
_visible: True_
_advanced: True_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



###int androidInputAudioCallback(*env, thiz, array, numChannels, bufferSize)

<!--
_syntax: androidInputAudioCallback(*env, thiz, array, numChannels, bufferSize)_
_name: androidInputAudioCallback_
_returns: int_
_returns_description: _
_parameters: JNIEnv *env, jobject thiz, jshortArray array, jint numChannels, jint bufferSize_
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

###int androidOutputAudioCallback(*env, thiz, array, numChannels, bufferSize)

<!--
_syntax: androidOutputAudioCallback(*env, thiz, array, numChannels, bufferSize)_
_name: androidOutputAudioCallback_
_returns: int_
_returns_description: _
_parameters: JNIEnv *env, jobject thiz, jshortArray array, jint numChannels, jint bufferSize_
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

###void close()

<!--
_syntax: close()_
_name: close_
_returns: void_
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

###int getBufferSize()

<!--
_syntax: getBufferSize()_
_name: getBufferSize_
_returns: int_
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

###int getMinInBufferSize(samplerate, nchannels)

<!--
_syntax: getMinInBufferSize(samplerate, nchannels)_
_name: getMinInBufferSize_
_returns: int_
_returns_description: _
_parameters: int samplerate, int nchannels_
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

###int getMinOutBufferSize(samplerate, nchannels)

<!--
_syntax: getMinOutBufferSize(samplerate, nchannels)_
_name: getMinOutBufferSize_
_returns: int_
_returns_description: _
_parameters: int samplerate, int nchannels_
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

###int getNumInputChannels()

<!--
_syntax: getNumInputChannels()_
_name: getNumInputChannels_
_returns: int_
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

###int getNumOutputChannels()

<!--
_syntax: getNumOutputChannels()_
_name: getNumOutputChannels_
_returns: int_
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

###int getSampleRate()

<!--
_syntax: getSampleRate()_
_name: getSampleRate_
_returns: int_
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

###long unsigned long getTickCount()

<!--
_syntax: getTickCount()_
_name: getTickCount_
_returns: long unsigned long_
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

###bool isHeadPhonesConnected()

<!--
_syntax: isHeadPhonesConnected()_
_name: isHeadPhonesConnected_
_returns: bool_
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

###void listDevices()

<!--
_syntax: listDevices()_
_name: listDevices_
_returns: void_
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

### ofxAndroidSoundStream()

<!--
_syntax: ofxAndroidSoundStream()_
_name: ofxAndroidSoundStream_
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

###void pause()

<!--
_syntax: pause()_
_name: pause_
_returns: void_
_returns_description: _
_parameters: _
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

###void resume()

<!--
_syntax: resume()_
_name: resume_
_returns: void_
_returns_description: _
_parameters: _
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

###void setDeviceID(deviceID)

<!--
_syntax: setDeviceID(deviceID)_
_name: setDeviceID_
_returns: void_
_returns_description: _
_parameters: int deviceID_
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

###void setInput(*soundInput)

<!--
_syntax: setInput(*soundInput)_
_name: setInput_
_returns: void_
_returns_description: _
_parameters: ofBaseSoundInput *soundInput_
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

###void setOutput(*soundOutput)

<!--
_syntax: setOutput(*soundOutput)_
_name: setOutput_
_returns: void_
_returns_description: _
_parameters: ofBaseSoundOutput *soundOutput_
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

###bool setup(outChannels, inChannels, sampleRate, bufferSize, nBuffers)

<!--
_syntax: setup(outChannels, inChannels, sampleRate, bufferSize, nBuffers)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers_
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

###bool setup(*app, outChannels, inChannels, sampleRate, bufferSize, nBuffers)

<!--
_syntax: setup(*app, outChannels, inChannels, sampleRate, bufferSize, nBuffers)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: ofBaseApp *app, int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers_
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

###void start()

<!--
_syntax: start()_
_name: start_
_returns: void_
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

###void stop()

<!--
_syntax: stop()_
_name: stop_
_returns: void_
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

### ~ofxAndroidSoundStream()

<!--
_syntax: ~ofxAndroidSoundStream()_
_name: ~ofxAndroidSoundStream_
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

##Variables



###ofEvent< bool > headphonesConnectedE

<!--
_name: headphonesConnectedE_
_type: ofEvent< bool >_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int inBufferSize

<!--
_name: inBufferSize_
_type: int_
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

###int inChannels

<!--
_name: inChannels_
_type: int_
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

###short * in_buffer

<!--
_name: in_buffer_
_type: short *_
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

###float * in_float_buffer

<!--
_name: in_float_buffer_
_type: float *_
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

###ofxAndroidCircBuffer input_buffer

<!--
_name: input_buffer_
_type: ofxAndroidCircBuffer_
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

###bool isPaused

<!--
_name: isPaused_
_type: bool_
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

###int outBufferSize

<!--
_name: outBufferSize_
_type: int_
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

###int outChannels

<!--
_name: outChannels_
_type: int_
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

###short * out_buffer

<!--
_name: out_buffer_
_type: short *_
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

###float * out_float_buffer

<!--
_name: out_float_buffer_
_type: float *_
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

###int requestedBufferSize

<!--
_name: requestedBufferSize_
_type: int_
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

###int sampleRate

<!--
_name: sampleRate_
_type: int_
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

###ofBaseSoundInput * soundInputPtr

<!--
_name: soundInputPtr_
_type: ofBaseSoundInput *_
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

###ofBaseSoundOutput * soundOutputPtr

<!--
_name: soundOutputPtr_
_type: ofBaseSoundOutput *_
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

###long unsigned long tickCount

<!--
_name: tickCount_
_type: long unsigned long_
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

###int totalInRequestedBufferSize

<!--
_name: totalInRequestedBufferSize_
_type: int_
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

###int totalOutRequestedBufferSize

<!--
_name: totalOutRequestedBufferSize_
_type: int_
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

