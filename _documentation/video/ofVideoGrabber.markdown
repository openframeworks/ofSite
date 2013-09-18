#class ofVideoGrabber


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Closes the sequence grabber and de-allocates any allocated resources. Call this only when you want to stop the video grabber finally.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Draws the internal texture of the movie grabber class at the position (x,y) with the given width (w) and height (h).   As the video grabber operates, it grabs pixel data and uploads it to it's internal texture (ie, on the GPU), unless you call setUseTexture(false), which disables the texture uploading.  This draws that internal texture on screen. 







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Draws the internal texture of the movie grabber class at the position (x,y) with the internal width and height of the movie grabber.   It uses the native size of the grabber, so if you initialize the grabber at 320 x 240, it will draw a rectangle at x,y with a width and height of 320 x 240.  Please note, ofSetRectMode() can have an effect on if the x,y is the top left corner or center point. 







<!----------------------------------------------------------------------------->

###ofPtr< ofBaseVideoGrabber > getGrabber()

<!--
_syntax: getGrabber()_
_name: getGrabber_
_returns: ofPtr< ofBaseVideoGrabber >_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


getGrabber returns a pointer (ofPtr) to the internally running video grabber.  Since the ofVideoGrabber object has different potential systems for grabbing (quicktime, qtkit, directshow), this ptr gives you access to the underlying video grabber that's running inside of ofVideoGrabber.  Note: use this only if you need low level access to an internal grabbing object, such as to call a specific function.   







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the height of the video grabber object.  If you initialize the object at 320x240, it will return 240;







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the height of the video grabber object.  If you initialize the object at 320x240, it will return 240;







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the pointer to the array of pixels that represents the current frame of live video. the data is stored interleaved as RGB, and in an array which is the size: width*height*3.  This function returns a pointer to an unsigned char array -- it's up to the user to deal with this memory correctly.  Functions like getWidth() and getHeight() can help.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This returns an ofPixels reference that you can use to access the raw pixel data of the ofImage.  







<!----------------------------------------------------------------------------->

###ofTexture & getTextureReference()

<!--
_syntax: getTextureReference()_
_name: getTextureReference_
_returns: ofTexture &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This returns the texture reference that the ofVideoGrabber contains. You can use this to directly manipulate the texture itself.  For example, you could bind the texture yourself and draw it using lower level opengl commands. 







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the width of the video grabber object.  If you initialize the object at 320x240, it will return 320.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Initializes either the default capture device or the capture device specified by setDeviceID. Attempts to setup capture at the width and height specified. If the capture dimensions are not available it will setup capture for the next closest dimensions available. It is good to check what the actual size is before you start processing the pixels.
~~~~{.cpp}

myGrabber.setVerbose(true);
myGrabber.setDeviceID(1);
myGrabber.initGrabber(320,240);
int grabW = myGrabber.width;
int grabH = myGrabber.height;
printf("asked for 320 by 240 - actual size is %i by %i 
", grabW, grabH);
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This function can be called after calling ofImage::update() (or alternatively, ofImage::ofIdleGrabber()) to figure out if a frame is new, ie. if there is a new pixel data.  This is typically because your main frame rate might not be in sync with the video grabber, and you can skip processing on frames where there is no new data.    

~~~~{.cpp}

void testApp::update(){

	grabber.update();  // call this once per update
	if (grabber.isFrameNew()){
		; // do computer vision / process the pixels
	}

}

~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns a boolean if the video grabber is properly initialized. 







<!----------------------------------------------------------------------------->

###vector< ofVideoDevice > listDevices()

<!--
_syntax: listDevices()_
_name: listDevices_
_returns: vector< ofVideoDevice >_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Prints to the console a list of available capture devices with the device ID of each device. The device ID can then be used with setDeviceID() to specify a specific device to capture from.  This is especially useful if you have multiple devices, or want to see what kind of cameras openframeworks sees. 







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
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _








_description: _


Initializes the video grabber.  This function doesn't really do any real allocation, which happens in ofVideoGrabber::initGrabber().  In openframeworks we typically use empty constructors so that objects can be defined in h files, ie, you don't need to do dynamic allocation or use pointers as much in your code. 







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
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _








_description: _


This removes any anchor positioning, meaning that the ofVideoGrabber will be draw with the upper left hand corner at the point passed into draw().







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
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _








_description: _


Adjusts ofVideoGrabbers anchor for more drawing control.  see ofImage::setAnchorPercent() for info. 







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Adjusts ofVideoGrabbers anchor for more drawing control.  see ofImage::setAnchorPoint(x,y) for info. 







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set's the desired frame rate of the grabber.  This should be called before initGrabber(), which will try to initialize at the desired frame rate.  Not all frame rates will be supported, but this at least gives you some abilitity to try grab at different rates. 







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Choose to capture from a specific capture device specified by _deviceID. Use listDevices() to see a list of available capture devices and their device IDs.   This should be called before initGrabber(), which will use this info to choose the device you want. 







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This function, similar to getGrabber, allows for low level access to the internal grabber object.  This is useful if you want to adjust the internal grabber that ofVideoGrabber is using.







<!----------------------------------------------------------------------------->

###bool setPixelFormat(pixelFormat)

<!--
_syntax: setPixelFormat(pixelFormat)_
_name: setPixelFormat_
_returns: bool_
_returns_description: _
_parameters: ofPixelFormat pixelFormat_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Some video grabbers allow you to adjust the pixel format, which might help for optimization.  At the moment, this seems to only apply to the linux video grabber (GST).  For all other grabbers, the only format accepted is OF_PIXELS_RGB







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Loads the video settings on screen. If your opengl application is full screen, this window might appear underneath the main window the first time you call this.   Note: in qtKit grabbers (10.7+), this video settings panel is not available.







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
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _








_description: _


Destructor for the video grabber, will release any allocated memory. 







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

###bool grabberRunning

<!--
_name: grabberRunning_
_type: bool_
_access: private_
_version_started: 0072_
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

