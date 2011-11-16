<%inherit file="_templates/docs.mako" />
___ofVideoPlayer___
$$code(lang=c++)
int height
$$/code



$$code(lang=c++)
int width
$$/code



$$code(lang=c++)
None player
$$/code



$$code(lang=c++)
None tex
$$/code



$$code(lang=c++)
None playerTex
$$/code



$$code(lang=c++)
bool bUseTexture
$$/code



$$code(lang=c++)
None internalPixelFormat
$$/code



$$code(lang=c++)
None ofVideoPlayer()
$$/code



$$code(lang=c++)
void setPlayer(ofPtr< ofBaseVideoPlayer > newPlayer)
$$/code



$$code(lang=c++)
None getPlayer()
$$/code



$$code(lang=c++)
bool loadMovie(string name)
$$/code



$$code(lang=c++)
void setPixelFormat(ofPixelFormat pixelFormat)
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
void idleMovie()
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
void setFrame(int frame)
$$/code



$$code(lang=c++)
void setUseTexture(bool bUse)
$$/code



$$code(lang=c++)
None getTextureReference()
$$/code



$$code(lang=c++)
void draw(float x, float y, float w, float h)
$$/code



$$code(lang=c++)
void draw(float x, float y)
$$/code



$$code(lang=c++)
void draw(const ofPoint &p)
$$/code



$$code(lang=c++)
void draw(const ofRectangle &r)
$$/code



$$code(lang=c++)
void setAnchorPercent(float xPct, float yPct)
$$/code



$$code(lang=c++)
void setAnchorPoint(float x, float y)
$$/code



$$code(lang=c++)
void resetAnchor()
$$/code



$$code(lang=c++)
void setPaused(bool bPause)
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
float getHeight()
$$/code



$$code(lang=c++)
float getWidth()
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



