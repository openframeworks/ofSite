<%inherit file="_templates/docs.mako" />
___ofGstUtils___
$$code(lang=c++)
bool bPlaying
$$/code



$$code(lang=c++)
bool bPaused
$$/code



$$code(lang=c++)
bool bIsMovieDone
$$/code



$$code(lang=c++)
bool bLoaded
$$/code



$$code(lang=c++)
bool bFrameByFrame
$$/code



$$code(lang=c++)
None loopMode
$$/code



$$code(lang=c++)
GstElement * gstSink
$$/code



$$code(lang=c++)
GstElement * gstPipeline
$$/code



$$code(lang=c++)
None appsink
$$/code



$$code(lang=c++)
bool posChangingPaused
$$/code



$$code(lang=c++)
int pipelineState
$$/code



$$code(lang=c++)
float speed
$$/code



$$code(lang=c++)
gint64 durationNanos
$$/code



$$code(lang=c++)
bool isAppSink
$$/code



$$code(lang=c++)
bool isStream
$$/code



$$code(lang=c++)
None ofGstUtils()
$$/code



$$code(lang=c++)
None ~ofGstUtils()
$$/code



$$code(lang=c++)
bool setPipelineWithSink(string pipeline, string sinkname="sink", bool isStream=false)
$$/code



$$code(lang=c++)
bool setPipelineWithSink(GstElement *pipeline, GstElement *sink, bool isStream=false)
$$/code



$$code(lang=c++)
void play()
$$/code



$$code(lang=c++)
void stop()
$$/code



$$code(lang=c++)
void setPaused(bool bPause)
$$/code



$$code(lang=c++)
bool isPaused()
$$/code



$$code(lang=c++)
bool isLoaded()
$$/code



$$code(lang=c++)
bool isPlaying()
$$/code



$$code(lang=c++)
float getPosition()
$$/code



$$code(lang=c++)
float getSpeed()
$$/code



$$code(lang=c++)
float getDuration()
$$/code



$$code(lang=c++)
guint64 getDurationNanos()
$$/code



$$code(lang=c++)
bool getIsMovieDone()
$$/code



$$code(lang=c++)
void setPosition(float pct)
$$/code



$$code(lang=c++)
void setVolume(int volume)
$$/code



$$code(lang=c++)
void setLoopState(ofLoopType state)
$$/code



$$code(lang=c++)
int getLoopState()
$$/code



$$code(lang=c++)
void setSpeed(float speed)
$$/code



$$code(lang=c++)
void setFrameByFrame(bool bFrameByFrame)
$$/code



$$code(lang=c++)
bool isFrameByFrame()
$$/code



$$code(lang=c++)
GstElement * getPipeline()
$$/code



$$code(lang=c++)
GstElement * getSink()
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
void setSinkListener(ofGstAppSink *appsink)
$$/code



$$code(lang=c++)
GstFlowReturn preroll_cb(GstBuffer *buffer)
$$/code



$$code(lang=c++)
GstFlowReturn buffer_cb(GstBuffer *buffer)
$$/code



$$code(lang=c++)
void eos_cb()
$$/code



$$code(lang=c++)
void gstHandleMessage()
$$/code



$$code(lang=c++)
void update(ofEventArgs &args)
$$/code



$$code(lang=c++)
bool startPipeline()
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
$$/code



