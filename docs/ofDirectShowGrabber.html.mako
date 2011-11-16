<%inherit file="_templates/docs.mako" />
___ofDirectShowGrabber___
$$code(lang=c++)
bool bChooseDevice
$$/code



$$code(lang=c++)
int deviceID
$$/code



$$code(lang=c++)
bool bVerbose
$$/code



$$code(lang=c++)
bool bGrabberInited
$$/code



$$code(lang=c++)
None pixels
$$/code



$$code(lang=c++)
int attemptFramerate
$$/code



$$code(lang=c++)
bool bIsFrameNew
$$/code



$$code(lang=c++)
int width
$$/code



$$code(lang=c++)
int height
$$/code



$$code(lang=c++)
None ofDirectShowGrabber()
$$/code



$$code(lang=c++)
None ~ofDirectShowGrabber()
$$/code



$$code(lang=c++)
void listDevices()
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
void close()
$$/code



$$code(lang=c++)
void clearMemory()
$$/code



$$code(lang=c++)
void videoSettings()
$$/code



$$code(lang=c++)
float getWidth()
$$/code



$$code(lang=c++)
float getHeight()
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



