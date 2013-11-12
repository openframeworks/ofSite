#class ofxKinect


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription


wrapper for a freenect kinect device

references:[http://openkinect.org/wiki/Main_Page](http://openkinect.org/wiki/Main_Page)[https://github.com/OpenKinect/libfreenect/blob/master/include/libfreenect.h](https://github.com/OpenKinect/libfreenect/blob/master/include/libfreenect.h) 






##Description





##Methods



###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

clear resources, do not call this while ofxKinect is running! 








_description: _








<!----------------------------------------------------------------------------->

###void close()

<!--
_syntax: close()_
_name: close_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

close the connection and stop grabbing images 








_description: _








<!----------------------------------------------------------------------------->

###void draw(x, y, w, h)

<!--
_syntax: draw(x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

draw the video texture 








_description: _








<!----------------------------------------------------------------------------->

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 0.8.0_
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

###void draw(&point)

<!--
_syntax: draw(&point)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &point_
_access: public_
_version_started: 0.8.0_
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

###void draw(&rect)

<!--
_syntax: draw(&rect)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &rect_
_access: public_
_version_started: 0.8.0_
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

###void drawDepth(x, y, w, h)

<!--
_syntax: drawDepth(x, y, w, h)_
_name: drawDepth_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

draw the grayscale depth texture 








_description: _








<!----------------------------------------------------------------------------->

###void drawDepth(x, y)

<!--
_syntax: drawDepth(x, y)_
_name: drawDepth_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 0.8.0_
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

###void drawDepth(&point)

<!--
_syntax: drawDepth(&point)_
_name: drawDepth_
_returns: void_
_returns_description: _
_parameters: const ofPoint &point_
_access: public_
_version_started: 0.8.0_
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

###void drawDepth(&rect)

<!--
_syntax: drawDepth(&rect)_
_name: drawDepth_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &rect_
_access: public_
_version_started: 0.8.0_
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

###void enableDepthNearValueWhite(bEnabled = true)

<!--
_syntax: enableDepthNearValueWhite(bEnabled = true)_
_name: enableDepthNearValueWhite_
_returns: void_
_returns_description: _
_parameters: bool bEnabled=true_
_access: public_
_version_started: 0.8.0_
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

###float getAccelPitch()

<!--
_syntax: getAccelPitch()_
_name: getAccelPitch_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


get the current pitch (x axis) & roll (z axis) of the kinect in degrees

useful to correct the 3d scene based on the camera inclination 







_description: _








<!----------------------------------------------------------------------------->

###float getAccelRoll()

<!--
_syntax: getAccelRoll()_
_name: getAccelRoll_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###ofColor getColorAt(x, y)

<!--
_syntax: getColorAt(x, y)_
_name: getColorAt_
_returns: ofColor_
_returns_description: _
_parameters: int x, int y_
_access: public_
_version_started: 0.8.0_
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

###ofColor getColorAt(&p)

<!--
_syntax: getColorAt(&p)_
_name: getColorAt_
_returns: ofColor_
_returns_description: _
_parameters: const ofPoint &p_
_access: public_
_version_started: 0.8.0_
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

###float getCurrentCameraTiltAngle()

<!--
_syntax: getCurrentCameraTiltAngle()_
_name: getCurrentCameraTiltAngle_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the current angle 








_description: _








<!----------------------------------------------------------------------------->

###unsigned char * getDepthPixels()

<!--
_syntax: getDepthPixels()_
_name: getDepthPixels_
_returns: unsigned char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the pixels of the most recent depth frame 


grayscale values 







_description: _








<!----------------------------------------------------------------------------->

###ofPixels & getDepthPixelsRef()

<!--
_syntax: getDepthPixelsRef()_
_name: getDepthPixelsRef_
_returns: ofPixels &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the pixels of the most recent depth frame 


grayscale values 







_description: _








<!----------------------------------------------------------------------------->

###ofTexture & getDepthTextureReference()

<!--
_syntax: getDepthTextureReference()_
_name: getDepthTextureReference_
_returns: ofTexture &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the grayscale depth texture 








_description: _








<!----------------------------------------------------------------------------->

###int getDeviceId()

<!--
_syntax: getDeviceId()_
_name: getDeviceId_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###float getDistanceAt(x, y)

<!--
_syntax: getDistanceAt(x, y)_
_name: getDistanceAt_
_returns: float_
_returns_description: _
_parameters: int x, int y_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the calulated distance for a depth point 








_description: _








<!----------------------------------------------------------------------------->

###float getDistanceAt(&p)

<!--
_syntax: getDistanceAt(&p)_
_name: getDistanceAt_
_returns: float_
_returns_description: _
_parameters: const ofPoint &p_
_access: public_
_version_started: 0.8.0_
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

###float * getDistancePixels()

<!--
_syntax: getDistancePixels()_
_name: getDistancePixels_
_returns: float *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the distance in millimeters to a given point as a float array 








_description: _








<!----------------------------------------------------------------------------->

###ofFloatPixels & getDistancePixelsRef()

<!--
_syntax: getDistancePixelsRef()_
_name: getDistancePixelsRef_
_returns: ofFloatPixels &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the distance in millimeters to a given point as a float array 








_description: _








<!----------------------------------------------------------------------------->

###float getFarClipping()

<!--
_syntax: getFarClipping()_
_name: getFarClipping_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###ofPoint getMksAccel()

<!--
_syntax: getMksAccel()_
_name: getMksAccel_
_returns: ofPoint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


axis-based gravity adjusted accelerometer values

from libfreeenect:

as laid out via the accelerometer data sheet, which is available at

[http://www.kionix.com/Product%20Sheets/KXSD9%20Product%20Brief.pdf](http://www.kionix.com/Product%20Sheets/KXSD9%20Product%20Brief.pdf) 







_description: _








<!----------------------------------------------------------------------------->

###float getNearClipping()

<!--
_syntax: getNearClipping()_
_name: getNearClipping_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###unsigned char * getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: unsigned char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###ofPixels & getPixelsRef()

<!--
_syntax: getPixelsRef()_
_name: getPixelsRef_
_returns: ofPixels &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the video pixels reference 








_description: _








<!----------------------------------------------------------------------------->

###ofPoint getRawAccel()

<!--
_syntax: getRawAccel()_
_name: getRawAccel_
_returns: ofPoint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

raw axis values 








_description: _








<!----------------------------------------------------------------------------->

###unsigned short * getRawDepthPixels()

<!--
_syntax: getRawDepthPixels()_
_name: getRawDepthPixels_
_returns: unsigned short *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

raw 11 bit values 








_description: _








<!----------------------------------------------------------------------------->

###ofShortPixels & getRawDepthPixelsRef()

<!--
_syntax: getRawDepthPixelsRef()_
_name: getRawDepthPixelsRef_
_returns: ofShortPixels &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

raw 11 bit values 








_description: _








<!----------------------------------------------------------------------------->

###float getSensorCameraDistance()

<!--
_syntax: getSensorCameraDistance()_
_name: getSensorCameraDistance_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the distance between the IR sensor and the RGB camera in cm 








_description: _








<!----------------------------------------------------------------------------->

###float getSensorEmitterDistance()

<!--
_syntax: getSensorEmitterDistance()_
_name: getSensorEmitterDistance_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the distance between the IR sensor and IR emitter in cm 








_description: _








<!----------------------------------------------------------------------------->

###string getSerial()

<!--
_syntax: getSerial()_
_name: getSerial_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


get the unique serial number returns an empty string "" if not connected

NOTE: currently, libfreenect returns a serial number with all 0s for kinect models > 1414, so this will only work with the original xbox kinect 







_description: _








<!----------------------------------------------------------------------------->

###float getTargetCameraTiltAngle()

<!--
_syntax: getTargetCameraTiltAngle()_
_name: getTargetCameraTiltAngle_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the target angle (if the camera is currently moving) 








_description: _








<!----------------------------------------------------------------------------->

###ofTexture & getTextureReference()

<!--
_syntax: getTextureReference()_
_name: getTextureReference_
_returns: ofTexture &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the video (ir or rgb) texture 








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
_version_started: 0.8.0_
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

###ofVec3f getWorldCoordinateAt(cx, cy)

<!--
_syntax: getWorldCoordinateAt(cx, cy)_
_name: getWorldCoordinateAt_
_returns: ofVec3f_
_returns_description: _
_parameters: int cx, int cy_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


calculates the coordinate in the world for the depth point (perspective calculation)

center of image is (0.0) 







_description: _








<!----------------------------------------------------------------------------->

###ofVec3f getWorldCoordinateAt(cx, cy, wz)

<!--
_syntax: getWorldCoordinateAt(cx, cy, wz)_
_name: getWorldCoordinateAt_
_returns: ofVec3f_
_returns_description: _
_parameters: float cx, float cy, float wz_
_access: public_
_version_started: 0.8.0_
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

###float getZeroPlaneDistance()

<!--
_syntax: getZeroPlaneDistance()_
_name: getZeroPlaneDistance_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the focal length of the IR sensor in mm 








_description: _








<!----------------------------------------------------------------------------->

###float getZeroPlanePixelSize()

<!--
_syntax: getZeroPlanePixelSize()_
_name: getZeroPlanePixelSize_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the size of a single pixel on the zero plane in mm 








_description: _








<!----------------------------------------------------------------------------->

###void grabDepthFrame(*dev, *depth, timestamp)

<!--
_syntax: grabDepthFrame(*dev, *depth, timestamp)_
_name: grabDepthFrame_
_returns: void_
_returns_description: _
_parameters: freenect_device *dev, void *depth, uint32_t timestamp_
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

libfreenect callbacks 








_description: _








<!----------------------------------------------------------------------------->

###void grabVideoFrame(*dev, *video, timestamp)

<!--
_syntax: grabVideoFrame(*dev, *video, timestamp)_
_name: grabVideoFrame_
_returns: void_
_returns_description: _
_parameters: freenect_device *dev, void *video, uint32_t timestamp_
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###bool hasAccelControl()

<!--
_syntax: hasAccelControl()_
_name: hasAccelControl_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###bool hasCamTiltControl()

<!--
_syntax: hasCamTiltControl()_
_name: hasCamTiltControl_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###bool hasLedControl()

<!--
_syntax: hasLedControl()_
_name: hasLedControl_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###bool init(infrared = false, video = true, texture = true)

<!--
_syntax: init(infrared = false, video = true, texture = true)_
_name: init_
_returns: bool_
_returns_description: _
_parameters: bool infrared=false, bool video=true, bool texture=true_
_access: public_
_version_started: 0.8.0_
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

###bool isConnected()

<!--
_syntax: isConnected()_
_name: isConnected_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

is the connection currently open? 








_description: _








<!----------------------------------------------------------------------------->

###bool isDepthNearValueWhite()

<!--
_syntax: isDepthNearValueWhite()_
_name: isDepthNearValueWhite_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###bool isDeviceConnected(id)

<!--
_syntax: isDeviceConnected(id)_
_name: isDeviceConnected_
_returns: bool_
_returns_description: _
_parameters: int id_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

is a device already connected? 








_description: _








<!----------------------------------------------------------------------------->

###bool isDeviceConnected(serial)

<!--
_syntax: isDeviceConnected(serial)_
_name: isDeviceConnected_
_returns: bool_
_returns_description: _
_parameters: string serial_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
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
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

is the current frame new? 








_description: _








<!----------------------------------------------------------------------------->

###bool isFrameNewDepth()

<!--
_syntax: isFrameNewDepth()_
_name: isFrameNewDepth_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###bool isFrameNewVideo()

<!--
_syntax: isFrameNewVideo()_
_name: isFrameNewVideo_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###void listDevices()

<!--
_syntax: listDevices()_
_name: listDevices_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

print the device list 








_description: _








<!----------------------------------------------------------------------------->

###int nextAvailableId()

<!--
_syntax: nextAvailableId()_
_name: nextAvailableId_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _


get the id of the next available device, returns -1 if nothing found 







_description: _








<!----------------------------------------------------------------------------->

###string nextAvailableSerial()

<!--
_syntax: nextAvailableSerial()_
_name: nextAvailableSerial_
_returns: string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _


get the serial number of the next available device, returns an empty string "" if nothing found 







_description: _








<!----------------------------------------------------------------------------->

###int numAvailableDevices()

<!--
_syntax: numAvailableDevices()_
_name: numAvailableDevices_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the number of available devices (not connected) 








_description: _








<!----------------------------------------------------------------------------->

###int numConnectedDevices()

<!--
_syntax: numConnectedDevices()_
_name: numConnectedDevices_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the number of currently connected devices 








_description: _








<!----------------------------------------------------------------------------->

###int numTotalDevices()

<!--
_syntax: numTotalDevices()_
_name: numTotalDevices_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

get the total number of devices 








_description: _








<!----------------------------------------------------------------------------->

### ofxKinect()

<!--
_syntax: ofxKinect()_
_name: ofxKinect_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###bool open(id = -1)

<!--
_syntax: open(id = -1)_
_name: open_
_returns: bool_
_returns_description: _
_parameters: int id=-1_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


open the connection and start grabbing images

set the id to choose a kinect, see numAvailableDevices() if you don't set the id (ie id=-1), the first available kinect will be used

note: this is the freenct bus id and may change each time the app is run 







_description: _








<!----------------------------------------------------------------------------->

###bool open(serial)

<!--
_syntax: open(serial)_
_name: open_
_returns: bool_
_returns_description: _
_parameters: string serial_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


open using a kinect unique serial number

NOTE: currently, libfreenect returns a serial number with all 0s for kinect models > 1414, so this will only work with the original xbox kinect 







_description: _








<!----------------------------------------------------------------------------->

###bool setCameraTiltAngle(angleInDegrees)

<!--
_syntax: setCameraTiltAngle(angleInDegrees)_
_name: setCameraTiltAngle_
_returns: bool_
_returns_description: _
_parameters: float angleInDegrees_
_access: public_
_version_started: 0.8.0_
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

###void setDepthClipping(nearClip = 500, farClip = 4000)

<!--
_syntax: setDepthClipping(nearClip = 500, farClip = 4000)_
_name: setDepthClipping_
_returns: void_
_returns_description: _
_parameters: float nearClip=500, float farClip=4000_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


set the clipping planes for the depth calculations in millimeters

these are used for the depth value (12bit) -> grayscale (1 byte) conversion ie setting a short range will give you greater sensitivity from 0-255

default is 50cm - 4m note: you won't get any data < 50cm and distances > 4m start to get noisy 







_description: _








<!----------------------------------------------------------------------------->

###void setLed(mode)

<!--
_syntax: setLed(mode)_
_name: setLed_
_returns: void_
_returns_description: _
_parameters: ofxKinect::LedMode mode_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


set the current led color and/or blink mode, only applied while the kinect is open 







_description: _








<!----------------------------------------------------------------------------->

###void setRegistration(bUseRegistration = false)

<!--
_syntax: setRegistration(bUseRegistration = false)_
_name: setRegistration_
_returns: void_
_returns_description: _
_parameters: bool bUseRegistration=false_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


calibrates the depth image to align with the rgb image, disabled by default

call this before open(), has no effect while the connection is running

note: this calculation uses some cpu, leave off if not needed 







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
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

enable/disable frame loading into textures on update() 








_description: _








<!----------------------------------------------------------------------------->

###void threadedFunction()

<!--
_syntax: threadedFunction()_
_name: threadedFunction_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

thread function 








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
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


updates the pixel buffers and textures

make sure to call this to update to the latest incoming frames 







_description: _








<!----------------------------------------------------------------------------->

###void updateDepthLookupTable()

<!--
_syntax: updateDepthLookupTable()_
_name: updateDepthLookupTable_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.8.0_
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

###void updateDepthPixels()

<!--
_syntax: updateDepthPixels()_
_name: updateDepthPixels_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.8.0_
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

### ~ofxKinect()

<!--
_syntax: ~ofxKinect()_
_name: ~ofxKinect_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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



###bool  bGotData

<!--
_name: bGotData_
_type: bool _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bGrabVideo

<!--
_name: bGrabVideo_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bGrabberInited

<!--
_name: bGrabberInited_
_type: bool _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bHasMotorControl

<!--
_name: bHasMotorControl_
_type: bool _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bIsFrameNewDepth

<!--
_name: bIsFrameNewDepth_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bIsFrameNewVideo

<!--
_name: bIsFrameNewVideo_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bIsVideoInfrared

<!--
_name: bIsVideoInfrared_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bLedNeedsApplying

<!--
_name: bLedNeedsApplying_
_type: bool _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bNearWhite

<!--
_name: bNearWhite_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bNeedsUpdateDepth

<!--
_name: bNeedsUpdateDepth_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bNeedsUpdateVideo

<!--
_name: bNeedsUpdateVideo_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bTiltNeedsApplying

<!--
_name: bTiltNeedsApplying_
_type: bool _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bUseRegistration

<!--
_name: bUseRegistration_
_type: bool _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool  bUseTexture

<!--
_name: bUseTexture_
_type: bool _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int  currentLed

<!--
_name: currentLed_
_type: int _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float  currentTiltAngleDeg

<!--
_name: currentTiltAngleDeg_
_type: float _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###vector< unsigned char >  depthLookupTable

<!--
_name: depthLookupTable_
_type: vector< unsigned char > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPixels  depthPixels

<!--
_name: depthPixels_
_type: ofPixels _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofShortPixels  depthPixelsRaw

<!--
_name: depthPixelsRaw_
_type: ofShortPixels _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofShortPixels  depthPixelsRawBack

<!--
_name: depthPixelsRawBack_
_type: ofShortPixels _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofShortPixels  depthPixelsRawIntra

<!--
_name: depthPixelsRawIntra_
_type: ofShortPixels _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTexture  depthTex

<!--
_name: depthTex_
_type: ofTexture _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int  deviceId

<!--
_name: deviceId_
_type: int _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofFloatPixels  distancePixels

<!--
_name: distancePixels_
_type: ofFloatPixels _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float  farClipping

<!--
_name: farClipping_
_type: float _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###const int  height

<!--
_name: height_
_type: const int _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofxKinectContext kinectContext

<!--
_name: kinectContext_
_type: ofxKinectContext_
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###freenect_device *  kinectDevice

<!--
_name: kinectDevice_
_type: freenect_device * _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int  lastDeviceId

<!--
_name: lastDeviceId_
_type: int _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint  mksAccel

<!--
_name: mksAccel_
_type: ofPoint _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float  nearClipping

<!--
_name: nearClipping_
_type: float _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint  rawAccel

<!--
_name: rawAccel_
_type: ofPoint _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###string  serial

<!--
_name: serial_
_type: string _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float  targetTiltAngleDeg

<!--
_name: targetTiltAngleDeg_
_type: float _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float  timeSinceOpen

<!--
_name: timeSinceOpen_
_type: float _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int  tryCount

<!--
_name: tryCount_
_type: int _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int  videoBytesPerPixel

<!--
_name: videoBytesPerPixel_
_type: int _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPixels  videoPixels

<!--
_name: videoPixels_
_type: ofPixels _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPixels  videoPixelsBack

<!--
_name: videoPixelsBack_
_type: ofPixels _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPixels  videoPixelsIntra

<!--
_name: videoPixelsIntra_
_type: ofPixels _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTexture  videoTex

<!--
_name: videoTex_
_type: ofTexture _
_access: protected_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###const int  width

<!--
_name: width_
_type: const int _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

