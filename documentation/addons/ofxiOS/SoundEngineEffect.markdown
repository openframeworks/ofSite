#class SoundEngineEffect


<!--
_visible: False_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



###ALenum GetALFormat(inFileFormat)

<!--
_syntax: GetALFormat(inFileFormat)_
_name: GetALFormat_
_returns: ALenum_
_returns_description: _
_parameters: AudioStreamBasicDescription inFileFormat_
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

###UInt32 GetEffectID()

<!--
_syntax: GetEffectID()_
_name: GetEffectID_
_returns: UInt32_
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

###OSStatus LoadFileData(*inFilePath, *&outData, &outDataSize, &outBufferID)

<!--
_syntax: LoadFileData(*inFilePath, *&outData, &outDataSize, &outBufferID)_
_name: LoadFileData_
_returns: OSStatus_
_returns_description: _
_parameters: const char *inFilePath, void *&outData, UInt32 &outDataSize, ALuint &outBufferID_
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

### SoundEngineEffect(*inPath)

<!--
_syntax: SoundEngineEffect(*inPath)_
_name: SoundEngineEffect_
_returns: _
_returns_description: _
_parameters: const char *inPath_
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

### SoundEngineEffect(*inPath, inDoLoop)

<!--
_syntax: SoundEngineEffect(*inPath, inDoLoop)_
_name: SoundEngineEffect_
_returns: _
_returns_description: _
_parameters: const char *inPath, bool inDoLoop_
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

###UInt32 getDataSize()

<!--
_syntax: getDataSize()_
_name: getDataSize_
_returns: UInt32_
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

###OSStatus initialize()

<!--
_syntax: initialize()_
_name: initialize_
_returns: OSStatus_
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

### ~SoundEngineEffect()

<!--
_syntax: ~SoundEngineEffect()_
_name: ~SoundEngineEffect_
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



###ALuint  mBufferID

<!--
_name: mBufferID_
_type: ALuint _
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

###void *  mData

<!--
_name: mData_
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

###UInt32  mDataSize

<!--
_name: mDataSize_
_type: UInt32 _
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

###Boolean  mIsLoopingEffect

<!--
_name: mIsLoopingEffect_
_type: Boolean _
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

###const char *  mPath

<!--
_name: mPath_
_type: const char * _
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

