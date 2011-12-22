#class ofGstUtils


##Description





##Methods



### ofGstUtils()

<!--
_syntax: ofGstUtils()_
_name: ofGstUtils_
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

### ~ofGstUtils()

<!--
_syntax: ~ofGstUtils()_
_name: ~ofGstUtils_
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

###bool setPipelineWithSink(pipeline, sinkname = "sink", isStream = false)

<!--
_syntax: setPipelineWithSink(pipeline, sinkname = "sink", isStream = false)_
_name: setPipelineWithSink_
_returns: bool_
_returns_description: _
_parameters: string pipeline, string sinkname="sink", bool isStream=false_
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

###bool setPipelineWithSink(*pipeline, *sink, isStream = false)

<!--
_syntax: setPipelineWithSink(*pipeline, *sink, isStream = false)_
_name: setPipelineWithSink_
_returns: bool_
_returns_description: _
_parameters: GstElement *pipeline, GstElement *sink, bool isStream=false_
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

###void play()

<!--
_syntax: play()_
_name: play_
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setPaused(bPause)

<!--
_syntax: setPaused(bPause)_
_name: setPaused_
_returns: void_
_returns_description: _
_parameters: bool bPause_
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

###bool isPaused()

<!--
_syntax: isPaused()_
_name: isPaused_
_returns: bool_
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

###bool isLoaded()

<!--
_syntax: isLoaded()_
_name: isLoaded_
_returns: bool_
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

###bool isPlaying()

<!--
_syntax: isPlaying()_
_name: isPlaying_
_returns: bool_
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

###float getPosition()

<!--
_syntax: getPosition()_
_name: getPosition_
_returns: float_
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

###float getSpeed()

<!--
_syntax: getSpeed()_
_name: getSpeed_
_returns: float_
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

###float getDuration()

<!--
_syntax: getDuration()_
_name: getDuration_
_returns: float_
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

###guint64 getDurationNanos()

<!--
_syntax: getDurationNanos()_
_name: getDurationNanos_
_returns: guint64_
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

###bool getIsMovieDone()

<!--
_syntax: getIsMovieDone()_
_name: getIsMovieDone_
_returns: bool_
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

###void setPosition(pct)

<!--
_syntax: setPosition(pct)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: float pct_
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

###void setVolume(volume)

<!--
_syntax: setVolume(volume)_
_name: setVolume_
_returns: void_
_returns_description: _
_parameters: int volume_
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

###void setLoopState(state)

<!--
_syntax: setLoopState(state)_
_name: setLoopState_
_returns: void_
_returns_description: _
_parameters: ofLoopType state_
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

###int getLoopState()

<!--
_syntax: getLoopState()_
_name: getLoopState_
_returns: int_
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

###void setSpeed(speed)

<!--
_syntax: setSpeed(speed)_
_name: setSpeed_
_returns: void_
_returns_description: _
_parameters: float speed_
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

###void setFrameByFrame(bFrameByFrame)

<!--
_syntax: setFrameByFrame(bFrameByFrame)_
_name: setFrameByFrame_
_returns: void_
_returns_description: _
_parameters: bool bFrameByFrame_
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

###bool isFrameByFrame()

<!--
_syntax: isFrameByFrame()_
_name: isFrameByFrame_
_returns: bool_
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

###GstElement * getPipeline()

<!--
_syntax: getPipeline()_
_name: getPipeline_
_returns: GstElement *_
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

###GstElement * getSink()

<!--
_syntax: getSink()_
_name: getSink_
_returns: GstElement *_
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setSinkListener(*appsink)

<!--
_syntax: setSinkListener(*appsink)_
_name: setSinkListener_
_returns: void_
_returns_description: _
_parameters: ofGstAppSink *appsink_
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

###GstFlowReturn preroll_cb(*buffer)

<!--
_syntax: preroll_cb(*buffer)_
_name: preroll_cb_
_returns: GstFlowReturn_
_returns_description: _
_parameters: GstBuffer *buffer_
_access: protected_
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

###GstFlowReturn buffer_cb(*buffer)

<!--
_syntax: buffer_cb(*buffer)_
_name: buffer_cb_
_returns: GstFlowReturn_
_returns_description: _
_parameters: GstBuffer *buffer_
_access: protected_
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

###void eos_cb()

<!--
_syntax: eos_cb()_
_name: eos_cb_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

###void gstHandleMessage()

<!--
_syntax: gstHandleMessage()_
_name: gstHandleMessage_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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

###void update(&args)

<!--
_syntax: update(&args)_
_name: update_
_returns: void_
_returns_description: _
_parameters: ofEventArgs &args_
_access: private_
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

###bool startPipeline()

<!--
_syntax: startPipeline()_
_name: startPipeline_
_returns: bool_
_returns_description: _
_parameters: _
_access: private_
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



###bool bPlaying

<!--
_name: bPlaying_
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

###bool bPaused

<!--
_name: bPaused_
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

###bool bIsMovieDone

<!--
_name: bIsMovieDone_
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

###bool bLoaded

<!--
_name: bLoaded_
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

###bool bFrameByFrame

<!--
_name: bFrameByFrame_
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

###ofLoopType loopMode

<!--
_name: loopMode_
_type: ofLoopType_
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

###GstElement * gstSink

<!--
_name: gstSink_
_type: GstElement *_
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

###GstElement * gstPipeline

<!--
_name: gstPipeline_
_type: GstElement *_
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

###ofGstAppSink appsink

<!--
_name: appsink_
_type: ofGstAppSink_
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

###bool posChangingPaused

<!--
_name: posChangingPaused_
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

###int pipelineState

<!--
_name: pipelineState_
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

###float speed

<!--
_name: speed_
_type: float_
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

###gint64 durationNanos

<!--
_name: durationNanos_
_type: gint64_
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

###bool isAppSink

<!--
_name: isAppSink_
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

###bool isStream

<!--
_name: isStream_
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

