<%inherit file="_templates/docs.mako" />
___ofGstVideoPlayer___
$$code(lang=c++)
None internalPixelFormat
$$/code



$$code(lang=c++)
guint64 nFrames
$$/code



$$code(lang=c++)
int fps_n
$$/code



$$code(lang=c++)
int fps_d
$$/code



$$code(lang=c++)
bool bIsStream
$$/code



$$code(lang=c++)
bool bIsAllocated
$$/code



$$code(lang=c++)
None videoUtils
$$/code



$$code(lang=c++)
None ofGstVideoPlayer()
$$/code



$$code(lang=c++)
None ~ofGstVideoPlayer()
$$/code



$$code(lang=c++)
void setPixelFormat(ofPixelFormat pixelFormat)
$$/code



$$code(lang=c++)
bool loadMovie(string uri)
$$/code



$$code(lang=c++)
void update()
$$/code



$$code(lang=c++)
int getCurrentFrame()
$$/code



$$code(lang=c++)
int getTotalNumFrames()
$$/code



$$code(lang=c++)
void firstFrame()
$$/code



$$code(lang=c++)
void nextFrame()
$$/code



$$code(lang=c++)
void previousFrame()
$$/code



$$code(lang=c++)
void setFrame(int frame)
$$/code



$$code(lang=c++)
bool isStream()
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
void close()
$$/code



$$code(lang=c++)
bool isFrameNew()
$$/code



$$code(lang=c++)
unsigned char * getPixels()
$$/code



$$code(lang=c++)
None getPixelsRef()
$$/code



$$code(lang=c++)
float getHeight()
$$/code



$$code(lang=c++)
float getWidth()
$$/code



$$code(lang=c++)
void setFrameByFrame(bool frameByFrame)
$$/code



$$code(lang=c++)
None getGstVideoUtils()
$$/code



$$code(lang=c++)
bool allocate()
$$/code



$$code(lang=c++)
void on_stream_prepared()
$$/code



$$code(lang=c++)
bool on_message(GstMessage *msg)
$$/code



