#class ofVideoGrabber

Example



Reference



Methods



//----------------------

##void ofVideoGrabber()

_syntax: ofVideoGrabber()_

_name: ofVideoGrabber_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void ~ofVideoGrabber()

_syntax: ~ofVideoGrabber()_

_name: ~ofVideoGrabber_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void listDevices()

_syntax: listDevices()_

_name: listDevices_

_returns: void_

_returns_description: _

_parameters: _



_description: _

Prints to the console a list of available capture devices with the device ID of each device. The device ID can then be used with setDeviceID() to specify a specific device to capture from.















//----------------------

##bool isFrameNew()

_syntax: isFrameNew()_

_name: isFrameNew_

_returns: bool_

_returns_description: Returns true, if the current pixels have changed since the last time isFrameNew() was called. _

_parameters: _



_description: _

















//----------------------

##void grabFrame()

_syntax: grabFrame()_

_name: grabFrame_

_returns: void_

_returns_description: _

_parameters: _



_description: _

This function should be called regularly (for example, once per update) if you'd like to get new data from the sequence grabber. It will idle the video grabbing component so that you get new data.















//----------------------

##void close()

_syntax: close()_

_name: close_

_returns: void_

_returns_description: _

_parameters: _



_description: _

Closes the sequence grabber and de-allocates any allocated resources. 















//----------------------

##bool initGrabber(w, h, bTexture)

_syntax: initGrabber(w, h, bTexture)_

_name: initGrabber_

_returns: bool_

_returns_description: Returns true if the initialization is done successfully and false if not_

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

_returns_description: _

_parameters: _



_description: _

Loads the video settings on screen. If your opengl application is full screen, this window might appear underneath the main window the first time you call this.















//----------------------

##unsigned char * getPixels()

_syntax: getPixels()_

_name: getPixels_

_returns: unsigned char *_

_returns_description: _

_parameters: _



_description: _

Returns the pointer to the array of pixels that represents the current frame of live video. the data is stored as RGB, and in an array which is the size: width*height*3.















//----------------------

##ofTexture & getTextureReference()

_syntax: getTextureReference()_

_name: getTextureReference_

_returns: ofTexture &_

_returns_description: Returns the ofTexture object that our videoGrabber class is using._

_parameters: _



_description: _

















//----------------------

##void setVerbose(bTalkToMe)

_syntax: setVerbose(bTalkToMe)_

_name: setVerbose_

_returns: void_

_returns_description: _

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

_returns_description: _

_parameters: int _deviceID_



_description: _

Choose to capture from a specific capture device specified by _deviceID. Use listDevices() to see a list of available capture devices and their device IDs.















//----------------------

##void setUseTexture(bUse)

_syntax: setUseTexture(bUse)_

_name: setUseTexture_

_returns: void_

_returns_description: _

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

_returns_description: _

_parameters: float x, float y, float w, float h_



_description: _

Draws the internal texture of the movie grabber class at the position (x,y) with the given width (w) and height (h). 















//----------------------

##void draw(x, y)

_syntax: draw(x, y)_

_name: draw_

_returns: void_

_returns_description: _

_parameters: float x, float y_



_description: _

Draws the internal texture of the movie grabber class at the position (x,y) with the internal width and height of the movie grabber.















//----------------------

##void update()

_syntax: update()_

_name: update_

_returns: void_

_returns_description: _

_parameters: _



_description: _

Calls grabframe function.















//----------------------

##float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_returns_description: Returns the height of the video grabber._

_parameters: _



_description: _

















//----------------------

##float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_returns_description: Returns the width of the video grabber._

_parameters: _



_description: _

















//----------------------

##void setAnchorPercent(xPct, yPct)

_syntax: setAnchorPercent(xPct, yPct)_

_name: setAnchorPercent_

_returns: void_

_returns_description: _

_parameters: float xPct, float yPct_



_description: _

















//----------------------

##void setAnchorPoint(x, y)

_syntax: setAnchorPoint(x, y)_

_name: setAnchorPoint_

_returns: void_

_returns_description: _

_parameters: int x, int y_



_description: _

















//----------------------

##void resetAnchor()

_syntax: resetAnchor()_

_name: resetAnchor_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















