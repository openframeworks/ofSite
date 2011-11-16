<%inherit file="_templates/docs.mako" />
___ofVideoGrabber___
$$code(lang=c++)
int height
$$/code



$$code(lang=c++)
int width
$$/code



$$code(lang=c++)
None tex
$$/code



$$code(lang=c++)
bool bUseTexture
$$/code



$$code(lang=c++)
bool bInitialized
$$/code



$$code(lang=c++)
None grabber
$$/code



$$code(lang=c++)
int RequestedDeviceID
$$/code



$$code(lang=c++)
None internalPixelFormat
$$/code



$$code(lang=c++)
int desiredFramerate
$$/code



$$code(lang=c++)
None ofVideoGrabber()
$$/code



$$code(lang=c++)
None ~ofVideoGrabber()
$$/code



$$code(lang=c++)
void setGrabber(ofPtr< ofBaseVideoGrabber > newGrabber)
$$/code



$$code(lang=c++)
None getGrabber()
$$/code



$$code(lang=c++)
void listDevices()
$$/code



$$code(lang=c++)
bool isFrameNew()
$$/code



$$code(lang=c++)
void update()
$$/code



$$code(lang=c++)
void grabFrame()
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
bool initGrabber(int w, int h)
$$/code



$$code(lang=c++)
bool initGrabber(int w, int h, bool bTexture)
$$/code



$$code(lang=c++)
void setPixelFormat(ofPixelFormat pixelFormat)
$$/code



$$code(lang=c++)
None getPixelFormat()
$$/code



$$code(lang=c++)
void videoSettings()
$$/code



$$code(lang=c++)
unsigned char * getPixels()
$$/code



$$code(lang=c++)
None getPixelsRef()
$$/code



$$code(lang=c++)
None getTextureReference()
$$/code



$$code(lang=c++)
void setVerbose(bool bTalkToMe)
$$/code



$$code(lang=c++)
void setDeviceID(int _deviceID)
$$/code



$$code(lang=c++)
void setDesiredFrameRate(int framerate)
$$/code



$$code(lang=c++)
void setUseTexture(bool bUse)
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
float getHeight()
$$/code



$$code(lang=c++)
float getWidth()
$$/code



$$code(lang=c++)
bool isInitialized()
$$/code



