#class ofxiOSSoundStream


<!--
_visible: True_
_advanced: True_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



###void close()

<!--
_syntax: close()_
_name: close_
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

###int getNumInputChannels()

<!--
_syntax: getNumInputChannels()_
_name: getNumInputChannels_
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

###int getNumOutputChannels()

<!--
_syntax: getNumOutputChannels()_
_name: getNumOutputChannels_
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

###void listDevices()

<!--
_syntax: listDevices()_
_name: listDevices_
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

these are not implemented on iOS 








_description: _








<!----------------------------------------------------------------------------->

### ofxiOSSoundStream()

<!--
_syntax: ofxiOSSoundStream()_
_name: ofxiOSSoundStream_
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

###void setDeviceID(deviceID)

<!--
_syntax: setDeviceID(deviceID)_
_name: setDeviceID_
_returns: void_
_returns_description: _
_parameters: int deviceID_
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

###void setInput(*soundInput)

<!--
_syntax: setInput(*soundInput)_
_name: setInput_
_returns: void_
_returns_description: _
_parameters: ofBaseSoundInput *soundInput_
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

###bool setMixWithOtherApps(bMix)

<!--
_syntax: setMixWithOtherApps(bMix)_
_name: setMixWithOtherApps_
_returns: bool_
_returns_description: _
_parameters: bool bMix_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
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

###bool setup(numOfOutChannels, numOfInChannels, sampleRate, bufferSize, numOfBuffers)

<!--
_syntax: setup(numOfOutChannels, numOfInChannels, sampleRate, bufferSize, numOfBuffers)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: int numOfOutChannels, int numOfInChannels, int sampleRate, int bufferSize, int numOfBuffers_
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


currently, the number of buffers is always 1 on iOS and setting nBuffers has no effect the max buffersize is 4096 







_description: _








<!----------------------------------------------------------------------------->

###bool setup(*app, numOfOutChannels, numOfInChannels, sampleRate, bufferSize, numOfBuffers)

<!--
_syntax: setup(*app, numOfOutChannels, numOfInChannels, sampleRate, bufferSize, numOfBuffers)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: ofBaseApp *app, int numOfOutChannels, int numOfInChannels, int sampleRate, int bufferSize, int numOfBuffers_
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

###void start()

<!--
_syntax: start()_
_name: start_
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

###void stop()

<!--
_syntax: stop()_
_name: stop_
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

### ~ofxiOSSoundStream()

<!--
_syntax: ~ofxiOSSoundStream()_
_name: ~ofxiOSSoundStream_
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



###int  bufferSize

<!--
_name: bufferSize_
_type: int _
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

###int  numOfBuffers

<!--
_name: numOfBuffers_
_type: int _
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

###int  numOfInChannels

<!--
_name: numOfInChannels_
_type: int _
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

###int  numOfOutChannels

<!--
_name: numOfOutChannels_
_type: int _
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

###int  sampleRate

<!--
_name: sampleRate_
_type: int _
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

###ofBaseSoundInput *  soundInputPtr

<!--
_name: soundInputPtr_
_type: ofBaseSoundInput * _
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

###void *  soundInputStream

<!--
_name: soundInputStream_
_type: void * _
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

###ofBaseSoundOutput *  soundOutputPtr

<!--
_name: soundOutputPtr_
_type: ofBaseSoundOutput * _
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

###void *  soundOutputStream

<!--
_name: soundOutputStream_
_type: void * _
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

