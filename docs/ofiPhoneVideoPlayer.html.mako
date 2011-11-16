<%inherit file="_templates/docs.mako" />
___ofiPhoneVideoPlayer___
$$code(lang=c++)
void * videoPlayer
$$/code



$$code(lang=c++)
string videoPath
$$/code



$$code(lang=c++)
bool videoWasStopped
$$/code



$$code(lang=c++)
int width
$$/code



$$code(lang=c++)
int height
$$/code



$$code(lang=c++)
float playbackSpeed
$$/code



$$code(lang=c++)
int vol
$$/code



$$code(lang=c++)
GLubyte * pixels
$$/code



$$code(lang=c++)
None videoTexture
$$/code



$$code(lang=c++)
float lastUpdateTime
$$/code



$$code(lang=c++)
GLint internalGLFormat
$$/code



$$code(lang=c++)
GLubyte * pixelsTmp
$$/code



$$code(lang=c++)
None ofiPhoneVideoPlayer()
$$/code



$$code(lang=c++)
None ~ofiPhoneVideoPlayer()
$$/code



$$code(lang=c++)
bool loadMovie(string name)
$$/code



$$code(lang=c++)
void setPixelFormat(ofPixelFormat PixelFormat)
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
void play()
$$/code



$$code(lang=c++)
void stop()
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
None getTexture()
$$/code



$$code(lang=c++)
float getWidth()
$$/code



$$code(lang=c++)
float getHeight()
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
void update()
$$/code



$$code(lang=c++)
float getPosition()
$$/code



$$code(lang=c++)
float getDuration()
$$/code



$$code(lang=c++)
bool getIsMovieDone()
$$/code



$$code(lang=c++)
void setPaused(bool bPause)
$$/code



$$code(lang=c++)
void setVolume(int volume)
$$/code



$$code(lang=c++)
void initWithPath(string path)
$$/code



$$code(lang=c++)
void updateCurrentFrameRef()
$$/code



