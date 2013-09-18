#class BackgroundTrackMgr


<!--
_visible: False_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



###OSStatus AttachNewCookie(inQueue, *inFileInfo)

<!--
_syntax: AttachNewCookie(inQueue, *inFileInfo)_
_name: AttachNewCookie_
_returns: OSStatus_
_returns_description: _
_parameters: AudioQueueRef inQueue, BackgroundTrackMgr::BG_FileInfo *inFileInfo_
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

### BackgroundTrackMgr()

<!--
_syntax: BackgroundTrackMgr()_
_name: BackgroundTrackMgr_
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

###Boolean DisposeBuffer(inAQ, inDisposeBufferList, inBufferToDispose)

<!--
_syntax: DisposeBuffer(inAQ, inDisposeBufferList, inBufferToDispose)_
_name: DisposeBuffer_
_returns: Boolean_
_returns_description: _
_parameters: AudioQueueRef inAQ, std::vector< AudioQueueBufferRef > inDisposeBufferList, AudioQueueBufferRef inBufferToDispose_
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

###UInt32 GetNumPacketsToRead(*inFileInfo)

<!--
_syntax: GetNumPacketsToRead(*inFileInfo)_
_name: GetNumPacketsToRead_
_returns: UInt32_
_returns_description: _
_parameters: BackgroundTrackMgr::BG_FileInfo *inFileInfo_
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

###AudioStreamPacketDescription * GetPacketDescsPtr()

<!--
_syntax: GetPacketDescsPtr()_
_name: GetPacketDescsPtr_
_returns: AudioStreamPacketDescription *_
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

###SInt8 GetQueueStateForNextBuffer(*inFileInfo, *inNextFileInfo)

<!--
_syntax: GetQueueStateForNextBuffer(*inFileInfo, *inNextFileInfo)_
_name: GetQueueStateForNextBuffer_
_returns: SInt8_
_returns_description: _
_parameters: BackgroundTrackMgr::BG_FileInfo *inFileInfo, BackgroundTrackMgr::BG_FileInfo *inNextFileInfo_
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

###OSStatus LoadTrack(*inFilePath, inAddToQueue, inLoadAtOnce)

<!--
_syntax: LoadTrack(*inFilePath, inAddToQueue, inLoadAtOnce)_
_name: LoadTrack_
_returns: OSStatus_
_returns_description: _
_parameters: const char *inFilePath, Boolean inAddToQueue, Boolean inLoadAtOnce_
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

###void QueueCallback(*inUserData, inAQ, inCompleteAQBuffer)

<!--
_syntax: QueueCallback(*inUserData, inAQ, inCompleteAQBuffer)_
_name: QueueCallback_
_returns: void_
_returns_description: _
_parameters: void *inUserData, AudioQueueRef inAQ, AudioQueueBufferRef inCompleteAQBuffer_
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

###void QueueStoppedProc(*inUserData, inAQ, inID)

<!--
_syntax: QueueStoppedProc(*inUserData, inAQ, inID)_
_name: QueueStoppedProc_
_returns: void_
_returns_description: _
_parameters: void *inUserData, AudioQueueRef inAQ, AudioQueuePropertyID inID_
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

###OSStatus SetVolume(inVolume)

<!--
_syntax: SetVolume(inVolume)_
_name: SetVolume_
_returns: OSStatus_
_returns_description: _
_parameters: Float32 inVolume_
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

###OSStatus SetupBuffers(*inFileInfo)

<!--
_syntax: SetupBuffers(*inFileInfo)_
_name: SetupBuffers_
_returns: OSStatus_
_returns_description: _
_parameters: BG_FileInfo *inFileInfo_
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

###OSStatus SetupQueue(*inFileInfo)

<!--
_syntax: SetupQueue(*inFileInfo)_
_name: SetupQueue_
_returns: OSStatus_
_returns_description: _
_parameters: BG_FileInfo *inFileInfo_
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

###OSStatus Start()

<!--
_syntax: Start()_
_name: Start_
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

###OSStatus Stop(inStopAtEnd)

<!--
_syntax: Stop(inStopAtEnd)_
_name: Stop_
_returns: OSStatus_
_returns_description: _
_parameters: Boolean inStopAtEnd_
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

###void Teardown()

<!--
_syntax: Teardown()_
_name: Teardown_
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

###OSStatus UpdateGain()

<!--
_syntax: UpdateGain()_
_name: UpdateGain_
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

###UInt64 getLength()

<!--
_syntax: getLength()_
_name: getLength_
_returns: UInt64_
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

###bool getStopped()

<!--
_syntax: getStopped()_
_name: getStopped_
_returns: bool_
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

###void setLooping(inStopAtEnd)

<!--
_syntax: setLooping(inStopAtEnd)_
_name: setLooping_
_returns: void_
_returns_description: _
_parameters: Boolean inStopAtEnd_
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

###void setPosition(packetNum)

<!--
_syntax: setPosition(packetNum)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: SInt64 packetNum_
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

### ~BackgroundTrackMgr()

<!--
_syntax: ~BackgroundTrackMgr()_
_name: ~BackgroundTrackMgr_
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



