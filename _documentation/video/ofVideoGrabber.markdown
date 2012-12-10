#class ofVideoGrabber


##Description


The ofVideoGrabber class wraps quicktime's sequence grabbing component to provide low level access to live cameras. On windows it now uses the directshow based videoInput library which offers mainy performance advantages over quicktime and does not require quicktime or WinVDig to be installed. A #define in ofConstants.h allows you to choose whether to use quicktime or directshow (default) for windows.
In linux it uses by default unicap, although you can change to v4l through a #define in ofConstants in case some v4l devices don't work properly with unicap.





##Methods



###void close()

<!--
_syntax: close()_
_name: close_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Closes the sequence grabber and de-allocates any allocated resources. 







<!----------------------------------------------------------------------------->

###void draw(x, y, w, h)

<!--
_syntax: draw(x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Draws the internal texture of the movie grabber class at the position (x,y) with the given width (w) and height (h). 







<!----------------------------------------------------------------------------->

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Draws the internal texture of the movie grabber class at the position (x,y) with the internal width and height of the movie grabber.







<!----------------------------------------------------------------------------->

###void draw(&p)

<!--
_syntax: draw(&p)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void draw(&r)

<!--
_syntax: draw(&r)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &r_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPtr getGrabber()

<!--
_syntax: getGrabber()_
_name: getGrabber_
_returns: ofPtr_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPixelFormat getPixelFormat()

<!--
_syntax: getPixelFormat()_
_name: getPixelFormat_
_returns: ofPixelFormat_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###unsigned char * getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: unsigned char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the pointer to the array of pixels that represents the current frame of live video. the data is stored as RGB, and in an array which is the size: width*height*3.







<!----------------------------------------------------------------------------->

###ofPixelsRef getPixelsRef()

<!--
_syntax: getPixelsRef()_
_name: getPixelsRef_
_returns: ofPixelsRef_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTexture getTextureReference()

<!--
_syntax: getTextureReference()_
_name: getTextureReference_
_returns: ofTexture_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void grabFrame()

<!--
_syntax: grabFrame()_
_name: grabFrame_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This function should be called regularly (for example, once per update) if you'd like to get new data from the sequence grabber. It will idle the video grabbing component so that you get new data.







<!----------------------------------------------------------------------------->

###bool initGrabber(w, h, bTexture)

<!--
_syntax: initGrabber(w, h, bTexture)_
_name: initGrabber_
_returns: bool_
_returns_description: _
_parameters: int w, int h, bool bTexture_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Initializes either the default capture device or the capture device specified by setDeviceID. Attempts to setup capture at the width and height specified. If the capture dimensions are not available it will setup capture for the next closest dimensions available. It is good to check what the actual size is before you start processing the pixels.
~~~~{.cpp}

myGrabber.setVerbose(true);
myGrabber.setDeviceID(1);
myGrabber.initGrabber(320,240,false);
int grabW = myGrabber.width;
int grabH = myGrabber.height;
printf("asked for 320 by 240 - actual size is %i by %i 
", grabW, grabH);
~~~~

bTexture variable tells ofVideoGrabber that it should setup a texture so you can display the video on the screen.







<!----------------------------------------------------------------------------->

###bool initGrabber(w, h)

<!--
_syntax: initGrabber(w, h)_
_name: initGrabber_
_returns: bool_
_returns_description: _
_parameters: int w, int h_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool isFrameNew()

<!--
_syntax: isFrameNew()_
_name: isFrameNew_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool isInitialized()

<!--
_syntax: isInitialized()_
_name: isInitialized_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void listDevices()

<!--
_syntax: listDevices()_
_name: listDevices_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Prints to the console a list of available capture devices with the device ID of each device. The device ID can then be used with setDeviceID() to specify a specific device to capture from.







<!----------------------------------------------------------------------------->

### ofVideoGrabber()

<!--
_syntax: ofVideoGrabber()_
_name: ofVideoGrabber_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void resetAnchor()

<!--
_syntax: resetAnchor()_
_name: resetAnchor_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setAnchorPercent(xPct, yPct)

<!--
_syntax: setAnchorPercent(xPct, yPct)_
_name: setAnchorPercent_
_returns: void_
_returns_description: _
_parameters: float xPct, float yPct_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setDesiredFrameRate(framerate)

<!--
_syntax: setDesiredFrameRate(framerate)_
_name: setDesiredFrameRate_
_returns: void_
_returns_description: _
_parameters: int framerate_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setDeviceID(_deviceID)

<!--
_syntax: setDeviceID(_deviceID)_
_name: setDeviceID_
_returns: void_
_returns_description: _
_parameters: int _deviceID_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Choose to capture from a specific capture device specified by _deviceID. Use listDevices() to see a list of available capture devices and their device IDs.







<!----------------------------------------------------------------------------->

###void setGrabber(newGrabber)

<!--
_syntax: setGrabber(newGrabber)_
_name: setGrabber_
_returns: void_
_returns_description: _
_parameters: ofPtr< ofBaseVideoGrabber > newGrabber_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setPixelFormat(pixelFormat)

<!--
_syntax: setPixelFormat(pixelFormat)_
_name: setPixelFormat_
_returns: void_
_returns_description: _
_parameters: ofPixelFormat pixelFormat_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setUseTexture(bUse)

<!--
_syntax: setUseTexture(bUse)_
_name: setUseTexture_
_returns: void_
_returns_description: _
_parameters: bool bUse_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Set the usage of texture inside this object. Typically, you will want to draw the movie grabber on screen, and so it will be necessary to use a texture, but there may be cases where it helps to not use a texture in order to save memory or for better performance. To disable the internal use of the texture, you can initialize the sequence grabber like this:
~~~~{.cpp}

myGrabber.setUseTexture(false);
myGrabber.initGrabber(320,240);
~~~~







<!----------------------------------------------------------------------------->

###void setVerbose(bTalkToMe)

<!--
_syntax: setVerbose(bTalkToMe)_
_name: setVerbose_
_returns: void_
_returns_description: _
_parameters: bool bTalkToMe_
_access: public_
_version_started: 006_
_version_deprecated: 0.06_
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Sets the verbosity - this can be useful for debugging the video grabber interface. you can set the verbosity and then try initGrabber();

From 0.06 this method has no effect. Use ofSetLogLevel(OF_LOG_VERBOSE) to enable verbose messages.
~~~~{.cpp}

myGrabber.setVerbose(true);
myGrabber.initGrabber(320,240);
~~~~







<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Calls grabframe function.







<!----------------------------------------------------------------------------->

###void videoSettings()

<!--
_syntax: videoSettings()_
_name: videoSettings_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Loads the video settings on screen. If your opengl application is full screen, this window might appear underneath the main window the first time you call this.







<!----------------------------------------------------------------------------->

### ~ofVideoGrabber()

<!--
_syntax: ~ofVideoGrabber()_
_name: ~ofVideoGrabber_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

##Variables



###int RequestedDeviceID

<!--
_name: RequestedDeviceID_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bChooseDevice

<!--
_name: bChooseDevice_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bGrabberInited

<!--
_name: bGrabberInited_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bInitialized

<!--
_name: bInitialized_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bIsFrameNew

<!--
_name: bIsFrameNew_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bUseTexture

<!--
_name: bUseTexture_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bVerbose

<!--
_name: bVerbose_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int desiredFramerate

<!--
_name: desiredFramerate_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int deviceID

<!--
_name: deviceID_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPtr grabber

<!--
_name: grabber_
_type: ofPtr_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int height

<!--
_name: height_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


Variable containing the height of the video grabber.







<!----------------------------------------------------------------------------->

###ofPixelFormat internalPixelFormat

<!--
_name: internalPixelFormat_
_type: ofPixelFormat_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###unsigned char * pixels

<!--
_name: pixels_
_type: unsigned char *_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTexture tex

<!--
_name: tex_
_type: ofTexture_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofUCUtils ucGrabber

<!--
_name: ucGrabber_
_type: ofUCUtils_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int width

<!--
_name: width_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


Variable containing the width of the video grabber.







<!----------------------------------------------------------------------------->

