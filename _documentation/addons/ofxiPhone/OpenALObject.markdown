#class OpenALObject


##Description












##Methods



### OpenALObject(inMixerOutputRate)

<!--
_syntax: OpenALObject(inMixerOutputRate)_
_name: OpenALObject_
_returns: _
_returns_description: _
_parameters: Float32 inMixerOutputRate_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

### ~OpenALObject()

<!--
_syntax: ~OpenALObject()_
_name: ~OpenALObject_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus Initialize()

<!--
_syntax: Initialize()_
_name: Initialize_
_returns: OSStatus_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void clearSources()

<!--
_syntax: clearSources()_
_name: clearSources_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void Teardown()

<!--
_syntax: Teardown()_
_name: Teardown_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetListenerVelocity(inX, inY, inZ)

<!--
_syntax: SetListenerVelocity(inX, inY, inZ)_
_name: SetListenerVelocity_
_returns: OSStatus_
_returns_description: _
_parameters: Float32 inX, Float32 inY, Float32 inZ_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetListenerPosition(inX, inY, inZ)

<!--
_syntax: SetListenerPosition(inX, inY, inZ)_
_name: SetListenerPosition_
_returns: OSStatus_
_returns_description: _
_parameters: Float32 inX, Float32 inY, Float32 inZ_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetListenerGain(inValue)

<!--
_syntax: SetListenerGain(inValue)_
_name: SetListenerGain_
_returns: OSStatus_
_returns_description: _
_parameters: Float32 inValue_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetMaxDistance(inValue)

<!--
_syntax: SetMaxDistance(inValue)_
_name: SetMaxDistance_
_returns: OSStatus_
_returns_description: _
_parameters: Float32 inValue_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetLooping(looping, _id)

<!--
_syntax: SetLooping(looping, _id)_
_name: SetLooping_
_returns: OSStatus_
_returns_description: _
_parameters: bool looping, ALint _id_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetReferenceDistance(inValue)

<!--
_syntax: SetReferenceDistance(inValue)_
_name: SetReferenceDistance_
_returns: OSStatus_
_returns_description: _
_parameters: Float32 inValue_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetEffectsVolume(inValue)

<!--
_syntax: SetEffectsVolume(inValue)_
_name: SetEffectsVolume_
_returns: OSStatus_
_returns_description: _
_parameters: Float32 inValue_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int getEffectLength(effectID)

<!--
_syntax: getEffectLength(effectID)_
_name: getEffectLength_
_returns: int_
_returns_description: _
_parameters: UInt32 effectID_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus UpdateGain()

<!--
_syntax: UpdateGain()_
_name: UpdateGain_
_returns: OSStatus_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus LoadEffect(*inFilePath, *outEffectID)

<!--
_syntax: LoadEffect(*inFilePath, *outEffectID)_
_name: LoadEffect_
_returns: OSStatus_
_returns_description: _
_parameters: const char *inFilePath, UInt32 *outEffectID_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus UnloadEffect(inEffectID)

<!--
_syntax: UnloadEffect(inEffectID)_
_name: UnloadEffect_
_returns: OSStatus_
_returns_description: _
_parameters: UInt32 inEffectID_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###bool checkToRelease(sourceID, mSource)

<!--
_syntax: checkToRelease(sourceID, mSource)_
_name: checkToRelease_
_returns: bool_
_returns_description: _
_parameters: ALuint sourceID, int mSource_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###int PrimeEffect(inEffectID, *sourceID)

<!--
_syntax: PrimeEffect(inEffectID, *sourceID)_
_name: PrimeEffect_
_returns: int_
_returns_description: _
_parameters: UInt32 inEffectID, ALuint *sourceID_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus PauseEffect(sourceID)

<!--
_syntax: PauseEffect(sourceID)_
_name: PauseEffect_
_returns: OSStatus_
_returns_description: _
_parameters: ALuint sourceID_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus StartEffect(sourceID)

<!--
_syntax: StartEffect(sourceID)_
_name: StartEffect_
_returns: OSStatus_
_returns_description: _
_parameters: ALuint sourceID_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###void SetEffectPosition(sourceID, position)

<!--
_syntax: SetEffectPosition(sourceID, position)_
_name: SetEffectPosition_
_returns: void_
_returns_description: _
_parameters: ALuint sourceID, float position_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###float GetEffectPosition(sourceID)

<!--
_syntax: GetEffectPosition(sourceID)_
_name: GetEffectPosition_
_returns: float_
_returns_description: _
_parameters: ALuint sourceID_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus StopEffect(sourceID)

<!--
_syntax: StopEffect(sourceID)_
_name: StopEffect_
_returns: OSStatus_
_returns_description: _
_parameters: ALuint sourceID_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetEffectPitch(sourceID, inValue)

<!--
_syntax: SetEffectPitch(sourceID, inValue)_
_name: SetEffectPitch_
_returns: OSStatus_
_returns_description: _
_parameters: ALuint sourceID, Float32 inValue_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetEffectVolume(sourceID, inValue)

<!--
_syntax: SetEffectVolume(sourceID, inValue)_
_name: SetEffectVolume_
_returns: OSStatus_
_returns_description: _
_parameters: ALuint sourceID, Float32 inValue_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

###OSStatus SetEffectLocation(sourceID, inX, inY, inZ)

<!--
_syntax: SetEffectLocation(sourceID, inX, inY, inZ)_
_name: SetEffectLocation_
_returns: OSStatus_
_returns_description: _
_parameters: ALuint sourceID, Float32 inX, Float32 inY, Float32 inZ_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

##Variables



###Float32 mOutputRate

<!--
_name: mOutputRate_
_type: Float32_
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

###Float32 mGain

<!--
_name: mGain_
_type: Float32_
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

###ALCcontext * mContext

<!--
_name: mContext_
_type: ALCcontext *_
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

###ALCdevice * mDevice

<!--
_name: mDevice_
_type: ALCdevice *_
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

###SoundEngineEffectMap * mEffectsMap

<!--
_name: mEffectsMap_
_type: SoundEngineEffectMap *_
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

###ALuint mSourceID

<!--
_name: mSourceID_
_type: ALuint_
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

###bool mSourcePrimed

<!--
_name: mSourcePrimed_
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

