#class ofxAndroidVideoGrabber


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: ofBaseVideoGrabber_
-->

##InlineDescription






##Description





##Methods



###void close()

<!--
_syntax: close()_
_name: close_
_returns: void_
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







<!----------------------------------------------------------------------------->

###ofPixelsRef getAuxBuffer()

<!--
_syntax: getAuxBuffer()_
_name: getAuxBuffer_
_returns: ofPixelsRef_
_returns_description: _
_parameters: _
_access: private_
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







<!----------------------------------------------------------------------------->

###int getBackCamera()

<!--
_syntax: getBackCamera()_
_name: getBackCamera_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get device id of back facing camera.
Returns -1 if no match is found





_description: _







<!----------------------------------------------------------------------------->

###int getCameraFacing(facing)

<!--
_syntax: getCameraFacing(facing)_
_name: getCameraFacing_
_returns: int_
_returns_description: _
_parameters: int facing_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int getCameraOrientation(device)

<!--
_syntax: getCameraOrientation(device)_
_name: getCameraOrientation_
_returns: int_
_returns_description: _
_parameters: int device_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the physical orientation of the camera. Typically on a phone the camera mounted in
landscape mode, this returns 90





_description: _







<!----------------------------------------------------------------------------->

###int getFacingOfCamera(device)

<!--
_syntax: getFacingOfCamera(device)_
_name: getFacingOfCamera_
_returns: int_
_returns_description: _
_parameters: int device_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get facing of camera.
Leave device = -1 to get selected cameras facing

Returns 0 on backfacing camera, and 1 on frontal facing camera.





_description: _







<!----------------------------------------------------------------------------->

###int getFrontCamera()

<!--
_syntax: getFrontCamera()_
_name: getFrontCamera_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get device id of front facing (selfie) camera.
Returns -1 if no match is found





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







<!----------------------------------------------------------------------------->

###int getNumCameras()

<!--
_syntax: getNumCameras()_
_name: getNumCameras_
_returns: int_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get number of cameras available





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPixels & getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: ofPixels &_
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







<!----------------------------------------------------------------------------->

###const ofPixels & getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: const ofPixels &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofTexture * getTexturePtr()

<!--
_syntax: getTexturePtr()_
_name: getTexturePtr_
_returns: ofTexture *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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







<!----------------------------------------------------------------------------->

###bool initCamera()

<!--
_syntax: initCamera()_
_name: initCamera_
_returns: bool_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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







<!----------------------------------------------------------------------------->

###bool isInitialized()

<!--
_syntax: isInitialized()_
_name: isInitialized_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###vector< ofVideoDevice > listDevices()

<!--
_syntax: listDevices()_
_name: listDevices_
_returns: vector< ofVideoDevice >_
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







<!----------------------------------------------------------------------------->

### ofxAndroidVideoGrabber()

<!--
_syntax: ofxAndroidVideoGrabber()_
_name: ofxAndroidVideoGrabber_
_returns: _
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







<!----------------------------------------------------------------------------->

###bool setAutoFocus(autofocus)

<!--
_syntax: setAutoFocus(autofocus)_
_name: setAutoFocus_
_returns: bool_
_returns_description: _
_parameters: bool autofocus_
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

Set desired frame rate of the camera.
By default will the camera pick the highest frame rate available





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
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set specific camera device id.
Must be a value between 0 and numCameras.
Default is first back facing camera





_description: _







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







<!----------------------------------------------------------------------------->

###void setUsePixels(usePixels)

<!--
_syntax: setUsePixels(usePixels)_
_name: setUsePixels_
_returns: void_
_returns_description: _
_parameters: bool usePixels_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setVerbose(bTalkToMe)

<!--
_syntax: setVerbose(bTalkToMe)_
_name: setVerbose_
_returns: void_
_returns_description: _
_parameters: bool bTalkToMe_
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







<!----------------------------------------------------------------------------->

###bool setup(w, h)

<!--
_syntax: setup(w, h)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: int w, int h_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool supportsTextureRendering()

<!--
_syntax: supportsTextureRendering()_
_name: supportsTextureRendering_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
_returns: void_
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







<!----------------------------------------------------------------------------->

###void videoSettings()

<!--
_syntax: videoSettings()_
_name: videoSettings_
_returns: void_
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







<!----------------------------------------------------------------------------->

### ~ofxAndroidVideoGrabber()

<!--
_syntax: ~ofxAndroidVideoGrabber()_
_name: ~ofxAndroidVideoGrabber_
_returns: _
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







<!----------------------------------------------------------------------------->

##Variables



###shared_ptr< ofxAndroidVideoGrabber::Data > data

<!--
_name: data_
_type: shared_ptr< ofxAndroidVideoGrabber::Data >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

