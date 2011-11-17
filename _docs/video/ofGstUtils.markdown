#class ofGstUtils

Example



Reference



Methods



//----------------------

##None ofGstUtils()

_syntax: ofGstUtils()_

_name: ofGstUtils_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ~ofGstUtils()

_syntax: ~ofGstUtils()_

_name: ~ofGstUtils_

_returns: None_

_parameters: _



_description: _















//----------------------

##bool setPipelineWithSink(string pipeline, string sinkname="sink", bool isStream=false)

_syntax: setPipelineWithSink(string pipeline, string sinkname="sink", bool isStream=false)_

_name: setPipelineWithSink_

_returns: bool_

_parameters: string, string = "sink", bool = False_



_description: _















//----------------------

##bool setPipelineWithSink(GstElement *pipeline, GstElement *sink, bool isStream=false)

_syntax: setPipelineWithSink(GstElement *pipeline, GstElement *sink, bool isStream=false)_

_name: setPipelineWithSink_

_returns: bool_

_parameters: GstElement *, GstElement *, bool = False_



_description: _















//----------------------

##void play()

_syntax: play()_

_name: play_

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

##void setPaused(bool bPause)

_syntax: setPaused(bool bPause)_

_name: setPaused_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##bool isPaused()

_syntax: isPaused()_

_name: isPaused_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isLoaded()

_syntax: isLoaded()_

_name: isLoaded_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isPlaying()

_syntax: isPlaying()_

_name: isPlaying_

_returns: bool_

_parameters: _



_description: _















//----------------------

##float getPosition()

_syntax: getPosition()_

_name: getPosition_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getSpeed()

_syntax: getSpeed()_

_name: getSpeed_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getDuration()

_syntax: getDuration()_

_name: getDuration_

_returns: float_

_parameters: _



_description: _















//----------------------

##guint64 getDurationNanos()

_syntax: getDurationNanos()_

_name: getDurationNanos_

_returns: guint64_

_parameters: _



_description: _















//----------------------

##bool getIsMovieDone()

_syntax: getIsMovieDone()_

_name: getIsMovieDone_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void setPosition(float pct)

_syntax: setPosition(float pct)_

_name: setPosition_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setVolume(int volume)

_syntax: setVolume(int volume)_

_name: setVolume_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setLoopState(ofLoopType state)

_syntax: setLoopState(ofLoopType state)_

_name: setLoopState_

_returns: void_

_parameters: _



_description: _















//----------------------

##int getLoopState()

_syntax: getLoopState()_

_name: getLoopState_

_returns: int_

_parameters: _



_description: _















//----------------------

##void setSpeed(float speed)

_syntax: setSpeed(float speed)_

_name: setSpeed_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setFrameByFrame(bool bFrameByFrame)

_syntax: setFrameByFrame(bool bFrameByFrame)_

_name: setFrameByFrame_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##bool isFrameByFrame()

_syntax: isFrameByFrame()_

_name: isFrameByFrame_

_returns: bool_

_parameters: _



_description: _















//----------------------

##GstElement * getPipeline()

_syntax: getPipeline()_

_name: getPipeline_

_returns: GstElement *_

_parameters: _



_description: _















//----------------------

##GstElement * getSink()

_syntax: getSink()_

_name: getSink_

_returns: GstElement *_

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

##void setSinkListener(ofGstAppSink *appsink)

_syntax: setSinkListener(ofGstAppSink *appsink)_

_name: setSinkListener_

_returns: void_

_parameters: _



_description: _















//----------------------

##GstFlowReturn preroll_cb(GstBuffer *buffer)

_syntax: preroll_cb(GstBuffer *buffer)_

_name: preroll_cb_

_returns: GstFlowReturn_

_parameters: GstBuffer *_



_description: _















//----------------------

##GstFlowReturn buffer_cb(GstBuffer *buffer)

_syntax: buffer_cb(GstBuffer *buffer)_

_name: buffer_cb_

_returns: GstFlowReturn_

_parameters: GstBuffer *_



_description: _















//----------------------

##void eos_cb()

_syntax: eos_cb()_

_name: eos_cb_

_returns: void_

_parameters: _



_description: _















//----------------------

##void gstHandleMessage()

_syntax: gstHandleMessage()_

_name: gstHandleMessage_

_returns: void_

_parameters: _



_description: _















//----------------------

##void update(ofEventArgs &args)

_syntax: update(ofEventArgs &args)_

_name: update_

_returns: void_

_parameters: ofEventArgs &_



_description: _















//----------------------

##bool startPipeline()

_syntax: startPipeline()_

_name: startPipeline_

_returns: bool_

_parameters: _



_description: _















