<%inherit file="_templates/docs.mako" />
___ofQuickTimePlayer___
$$code(lang=c++)
bool bHavePixelsChanged
$$/code



$$code(lang=c++)
None pixels
$$/code



$$code(lang=c++)
int width
$$/code



$$code(lang=c++)
int height
$$/code



$$code(lang=c++)
bool bLoaded
$$/code



$$code(lang=c++)
int nFrames
$$/code



$$code(lang=c++)
bool allocated
$$/code



$$code(lang=c++)
None currentLoopState
$$/code



$$code(lang=c++)
bool bStarted
$$/code



$$code(lang=c++)
bool bPlaying
$$/code



$$code(lang=c++)
bool bPaused
$$/code



$$code(lang=c++)
bool bIsFrameNew
$$/code



$$code(lang=c++)
float speed
$$/code



$$code(lang=c++)
None ofQuickTimePlayer()
$$/code



$$code(lang=c++)
None ~ofQuickTimePlayer()
$$/code



$$code(lang=c++)
bool loadMovie(string name)
$$/code



$$code(lang=c++)
void closeMovie()
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
void update()
$$/code



$$code(lang=c++)
void play()
$$/code



$$code(lang=c++)
void stop()
$$/code



$$code(lang=c++)
void clearMemory()
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
const  getPixelsRef() const 
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
float getPosition()
$$/code



$$code(lang=c++)
float getDuration()
$$/code



$$code(lang=c++)
int getTotalNumFrames()
$$/code



$$code(lang=c++)
float getSpeed()
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
void setSpeed(float speed)
$$/code



$$code(lang=c++)
void setFrame(int frame)
$$/code



$$code(lang=c++)
void setPaused(bool bPause)
$$/code



$$code(lang=c++)
int getCurrentFrame()
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
void createImgMemAndGWorld()
$$/code



$$code(lang=c++)
void start()
$$/code



