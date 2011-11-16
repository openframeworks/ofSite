<%inherit file="_templates/docs.mako" />
___ofBaseVideoPlayer___
$$code(lang=c++)
None ~ofBaseVideoPlayer()
$$/code



$$code(lang=c++)
bool loadMovie(string name)=0
$$/code



$$code(lang=c++)
void close()=0
$$/code



$$code(lang=c++)
void update()=0
$$/code



$$code(lang=c++)
void play()=0
$$/code



$$code(lang=c++)
void stop()=0
$$/code



$$code(lang=c++)
bool isFrameNew()=0
$$/code



$$code(lang=c++)
unsigned char * getPixels()=0
$$/code



$$code(lang=c++)
None getTexture()
$$/code



$$code(lang=c++)
float getWidth()=0
$$/code



$$code(lang=c++)
float getHeight()=0
$$/code



$$code(lang=c++)
bool isPaused()=0
$$/code



$$code(lang=c++)
bool isLoaded()=0
$$/code



$$code(lang=c++)
bool isPlaying()=0
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
void setPaused(bool bPause)
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
void setSpeed(float speed)
$$/code



$$code(lang=c++)
void setFrame(int frame)
$$/code



$$code(lang=c++)
int getCurrentFrame()
$$/code



$$code(lang=c++)
int getTotalNumFrames()
$$/code



$$code(lang=c++)
int getLoopState()
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
void setPixelFormat(ofPixelFormat pixelFormat)
$$/code



