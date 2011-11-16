<%inherit file="_templates/docs.mako" />
___ofBaseVideoGrabber___
$$code(lang=c++)
None ~ofBaseVideoGrabber()
$$/code



$$code(lang=c++)
void listDevices()=0
$$/code



$$code(lang=c++)
bool initGrabber(int w, int h)=0
$$/code



$$code(lang=c++)
void update()=0
$$/code



$$code(lang=c++)
bool isFrameNew()=0
$$/code



$$code(lang=c++)
unsigned char * getPixels()=0
$$/code



$$code(lang=c++)
void close()=0
$$/code



$$code(lang=c++)
float getHeight()=0
$$/code



$$code(lang=c++)
float getWidth()=0
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
void videoSettings()
$$/code



$$code(lang=c++)
void setPixelFormat(ofPixelFormat pixelFormat)
$$/code



$$code(lang=c++)
None getPixelFormat()
$$/code



