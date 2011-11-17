#class ofVideoGrabber

Example



Reference



Methods



//----------------------

##bool setGrabber(ofBaseVideoGrabber *newGrabber)

_syntax: setGrabber(ofBaseVideoGrabber *newGrabber)_

_name: setGrabber_

_returns: bool_

_parameters: _



_description: _















//----------------------

##ofBaseVideoGrabber getGrabber()

_syntax: getGrabber()_

_name: getGrabber_

_returns: ofBaseVideoGrabber_

_parameters: _



_description: _















//----------------------

##bool initGrabber(int w, int h)

_syntax: initGrabber(int w, int h)_

_name: initGrabber_

_returns: bool_

_parameters: int, int_



_description: _















//----------------------

##bool initGrabber(int w, int h, bool bTexture)

_syntax: initGrabber(int w, int h, bool bTexture)_

_name: initGrabber_

_returns: bool_

_parameters: int, int, bool_



_description: _















//----------------------

##void setPixelFormat(ofPixelFormat pixelFormat)

_syntax: setPixelFormat(ofPixelFormat pixelFormat)_

_name: setPixelFormat_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofPixelFormat getPixelFormat()

_syntax: getPixelFormat()_

_name: getPixelFormat_

_returns: ofPixelFormat_

_parameters: _



_description: _















//----------------------

##ofPixelsRef getPixelsRef()

_syntax: getPixelsRef()_

_name: getPixelsRef_

_returns: ofPixelsRef_

_parameters: _



_description: _















//----------------------

##void setVerbose(bool bTalkToMe)

_syntax: setVerbose(bool bTalkToMe)_

_name: setVerbose_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void setDeviceID(int _deviceID)

_syntax: setDeviceID(int _deviceID)_

_name: setDeviceID_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setDesiredFrameRate(int framerate)

_syntax: setDesiredFrameRate(int framerate)_

_name: setDesiredFrameRate_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setUseTexture(bool bUse)

_syntax: setUseTexture(bool bUse)_

_name: setUseTexture_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void draw(float x, float y, float w, float h)

_syntax: draw(float x, float y, float w, float h)_

_name: draw_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void draw(float x, float y)

_syntax: draw(float x, float y)_

_name: draw_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void draw(const ofPoint &p)

_syntax: draw(const ofPoint &p)_

_name: draw_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setAnchorPercent(float xPct, float yPct)

_syntax: setAnchorPercent(float xPct, float yPct)_

_name: setAnchorPercent_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void setAnchorPoint(float x, float y)

_syntax: setAnchorPoint(float x, float y)_

_name: setAnchorPoint_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void listDevices()

_syntax: listDevices()_

_name: listDevices_

_returns: void_

_parameters: _



_description: _

Prints to the console a list of available capture devices with the device ID of each device. The device ID can then be used with setDeviceID() to specify a specific device to capture from.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##bool isFrameNew()

_syntax: isFrameNew()_

_name: isFrameNew_

_returns: bool_

_parameters: _



_description: _



<br/><br/>return type changed from  to bool in 0.07













//----------------------

##void grabFrame()

_syntax: grabFrame()_

_name: grabFrame_

_returns: void_

_parameters: _



_description: _

This function should be called regularly (for example, once per update) if you'd like to get new data from the sequence grabber. It will idle the video grabbing component so that you get new data.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void close()

_syntax: close()_

_name: close_

_returns: void_

_parameters: _



_description: _

Closes the sequence grabber and de-allocates any allocated resources. 

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void initGrabber(w, h, bTexture)

_syntax: initGrabber(w, h, bTexture)_

_name: initGrabber_

_returns: void_

_parameters: int w, int h, bool bTexture_



_description: _

Initializes either the default capture device or the capture device specified by setDeviceID. Attempts to setup capture at the width and height specified. If the capture dimensions are not available it will setup capture for the next closest dimensions available. It is good to check what the actual size is before you start processing the pixels.

$$code(lang=c++)

myGrabber.setVerbose(true);
myGrabber.setDeviceID(1);
myGrabber.initGrabber(320,240,false);
int grabW = myGrabber.width;
int grabH = myGrabber.height;
printf("asked for 320 by 240 - actual size is %i by %i 
", grabW, grabH);

$$/code


bTexture variable tells ofVideoGrabber that it should setup a texture so you can display the video on the screen.













//----------------------

##void videoSettings()

_syntax: videoSettings()_

_name: videoSettings_

_returns: void_

_parameters: _



_description: _

Loads the video settings on screen. If your opengl application is full screen, this window might appear underneath the main window the first time you call this.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##unsigned char * getPixels()

_syntax: getPixels()_

_name: getPixels_

_returns: unsigned char *_

_parameters: _



_description: _

Returns the pointer to the array of pixels that represents the current frame of live video. the data is stored as RGB, and in an array which is the size: width*height*3.

<br/><br/>return type changed from  to unsigned char * in 0.07













//----------------------

##ofTexture getTextureReference()

_syntax: getTextureReference()_

_name: getTextureReference_

_returns: ofTexture_

_parameters: _



_description: _



<br/><br/>return type changed from  to ofTexture in 0.07













//----------------------

##void setVerbose(bTalkToMe)

_syntax: setVerbose(bTalkToMe)_

_name: setVerbose_

_returns: void_

_parameters: bool bTalkToMe_



_description: _

Sets the verbosity - this can be useful for debugging the video grabber interface. you can set the verbosity and then try initGrabber();

From 0.06 this method has no effect. Use ofSetLogLevel(OF_LOG_VERBOSE) to enable verbose messages.

$$code(lang=c++)

myGrabber.setVerbose(true);
myGrabber.initGrabber(320,240);

$$/code














//----------------------

##void setDeviceID(_deviceID)

_syntax: setDeviceID(_deviceID)_

_name: setDeviceID_

_returns: void_

_parameters: int _deviceID_



_description: _

Choose to capture from a specific capture device specified by _deviceID. Use listDevices() to see a list of available capture devices and their device IDs.













//----------------------

##void setUseTexture(bUse)

_syntax: setUseTexture(bUse)_

_name: setUseTexture_

_returns: void_

_parameters: bool bUse_



_description: _

Set the usage of texture inside this object. Typically, you will want to draw the movie grabber on screen, and so it will be necessary to use a texture, but there may be cases where it helps to not use a texture in order to save memory or for better performance. To disable the internal use of the texture, you can initialize the sequence grabber like this:

$$code(lang=c++)

myGrabber.setUseTexture(false);
myGrabber.initGrabber(320,240);

$$/code














//----------------------

##void draw(x, y, w, h)

_syntax: draw(x, y, w, h)_

_name: draw_

_returns: void_

_parameters: float x, float y, float w, float h_



_description: _

Draws the internal texture of the movie grabber class at the position (x,y) with the given width (w) and height (h). 













//----------------------

##void draw(x, y)

_syntax: draw(x, y)_

_name: draw_

_returns: void_

_parameters: float x, float y_



_description: _

Draws the internal texture of the movie grabber class at the position (x,y) with the internal width and height of the movie grabber.













//----------------------

##void update()

_syntax: update()_

_name: update_

_returns: void_

_parameters: _



_description: _

Calls grabframe function.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from  to float in 0.07













//----------------------

##float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from  to float in 0.07













