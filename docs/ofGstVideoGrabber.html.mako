<%inherit file="_templates/docs.mako" />
___ofGstVideoGrabber___
$$code(lang=c++)
None camData
$$/code



$$code(lang=c++)
bool bIsCamera
$$/code



$$code(lang=c++)
int attemptFramerate
$$/code



$$code(lang=c++)
int deviceID
$$/code



$$code(lang=c++)
None internalPixelFormat
$$/code



$$code(lang=c++)
None videoUtils
$$/code



$$code(lang=c++)
None ofGstVideoGrabber()
$$/code



$$code(lang=c++)
None ~ofGstVideoGrabber()
$$/code



$$code(lang=c++)
void setPixelFormat(ofPixelFormat pixelFormat)
$$/code



$$code(lang=c++)
void videoSettings()
$$/code



$$code(lang=c++)
void listDevices()
$$/code



$$code(lang=c++)
void setDeviceID(int id)
$$/code



$$code(lang=c++)
void setDesiredFrameRate(int framerate)
$$/code



$$code(lang=c++)
bool initGrabber(int w, int h)
$$/code



$$code(lang=c++)
void update()
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
void close()
$$/code



$$code(lang=c++)
void setVerbose(bool bVerbose)
$$/code



$$code(lang=c++)
None getGstVideoUtils()
$$/code



$$code(lang=c++)
None selectFormat(int w, int h, int desired_framerate)
$$/code



