#class ofxCvColorImage


##Description




The ofxCvColorImage represents the data of each pixel as float values, on a scale of 0.0 - 1.0. They are a more precise but heavier (i.e. requiring more memory) way representing the data in an image. Keep in mind though that most of the image operations in OpenCV expect a grayscale image, which you can construct using the ofxCvGrayscaleImage. If you're loading image data from another image you might want to check what image scale is being used with the image to ensure that you don't get your scales wrong.







##Methods



### ofxCvColorImage()

<!--
_syntax: ofxCvColorImage()_
_name: ofxCvColorImage_
_returns: _
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



Constructor.










<!----------------------------------------------------------------------------->

### ofxCvColorImage(&mom)

<!--
_syntax: ofxCvColorImage(&mom)_
_name: ofxCvColorImage_
_returns: _
_returns_description: _
_parameters: const ofxCvColorImage &mom_
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




Copy constructor, which allows you to this:

~~~~{.cpp}
ofxCvShortImage old;
// allocate old
ofxCvShortImage new(old);
~~~~









<!----------------------------------------------------------------------------->

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
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




Clears the pixel data of the image. The image must be allocated again with a call to allocate() before it can be used.









<!----------------------------------------------------------------------------->

###void set(value)

<!--
_syntax: set(value)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float value_
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





Set all the pixels in the image to the float value passed in. This is useful for blanking or filling an image quickly. The values are 0.0 to 1.0.








<!----------------------------------------------------------------------------->

###void set(valueR, valueG, valueB)

<!--
_syntax: set(valueR, valueG, valueB)_
_name: set_
_returns: void_
_returns_description: _
_parameters: int valueR, int valueG, int valueB_
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




Set all the pixels in the image to the float value passed in as a color using 0 to 255 scale for each channel. This is useful for blanking or filling an image quickly.









<!----------------------------------------------------------------------------->

###void operator-=(value)

<!--
_syntax: operator-=(value)_
_name: operator-=_
_returns: void_
_returns_description: _
_parameters: float value_
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





Subtracts the pixel data of the right hand side image from the current image:



~~~~{.cpp}
first -= second; // both are ofxCvFloatImage instances
~~~~








<!----------------------------------------------------------------------------->

###void operator+=(value)

<!--
_syntax: operator+=(value)_
_name: operator+=_
_returns: void_
_returns_description: _
_parameters: float value_
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





Adds the pixel data of the right hand side image from the current image:



~~~~{.cpp}
first += second; // both are ofxCvFloatImage instances
~~~~









<!----------------------------------------------------------------------------->

###void setFromPixels(*_pixels, w, h)

<!--
_syntax: setFromPixels(*_pixels, w, h)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: const unsigned char *_pixels, int w, int h_
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






Set all the pixels in a ofxCvShortImage from a pointer to an array of unsigned char values, using the w and h parameters to determine the dimensions of the image.









<!----------------------------------------------------------------------------->

###void setRoiFromPixels(*_pixels, w, h)

<!--
_syntax: setRoiFromPixels(*_pixels, w, h)_
_name: setRoiFromPixels_
_returns: void_
_returns_description: _
_parameters: const unsigned char *_pixels, int w, int h_
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







Set the Region Of Interest using a pointer to an unsigned char array and a w,h to define the area of the ROI










<!----------------------------------------------------------------------------->

###void setFromGrayscalePlanarImages(&red, &green, &blue)

<!--
_syntax: setFromGrayscalePlanarImages(&red, &green, &blue)_
_name: setFromGrayscalePlanarImages_
_returns: void_
_returns_description: _
_parameters: ofxCvGrayscaleImage &red, ofxCvGrayscaleImage &green, ofxCvGrayscaleImage &blue_
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




This method allows you use multiple ofxCvGrayscaleImage images to create a full color image. Each ofxCvGrayscaleImage represents the data of one channel, r, g, b.









<!----------------------------------------------------------------------------->

###void operator=(*_pixels)

<!--
_syntax: operator=(*_pixels)_
_name: operator=_
_returns: void_
_returns_description: _
_parameters: unsigned char *_pixels_
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

###void operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: void_
_returns_description: _
_parameters: const ofxCvGrayscaleImage &mom_
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

###void operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: void_
_returns_description: _
_parameters: const ofxCvColorImage &mom_
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

###void operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: void_
_returns_description: _
_parameters: const ofxCvFloatImage &mom_
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

###void operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: void_
_returns_description: _
_parameters: const ofxCvShortImage &mom_
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

###void operator=(*mom)

<!--
_syntax: operator=(*mom)_
_name: operator=_
_returns: void_
_returns_description: _
_parameters: const IplImage *mom_
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

###void convertToGrayscalePlanarImages(&red, &green, &blue)

<!--
_syntax: convertToGrayscalePlanarImages(&red, &green, &blue)_
_name: convertToGrayscalePlanarImages_
_returns: void_
_returns_description: _
_parameters: ofxCvGrayscaleImage &red, ofxCvGrayscaleImage &green, ofxCvGrayscaleImage &blue_
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

###void convertToGrayscalePlanarImage(&grayImage, whichPlane)

<!--
_syntax: convertToGrayscalePlanarImage(&grayImage, whichPlane)_
_name: convertToGrayscalePlanarImage_
_returns: void_
_returns_description: _
_parameters: ofxCvGrayscaleImage &grayImage, int whichPlane_
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

###void contrastStretch()

<!--
_syntax: contrastStretch()_
_name: contrastStretch_
_returns: void_
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

###void convertToRange(min, max)

<!--
_syntax: convertToRange(min, max)_
_name: convertToRange_
_returns: void_
_returns_description: _
_parameters: float min, float max_
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

###void resize(w, h)

<!--
_syntax: resize(w, h)_
_name: resize_
_returns: void_
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

###void scaleIntoMe(&mom, interpolationMethod = CV_INTER_NN)

<!--
_syntax: scaleIntoMe(&mom, interpolationMethod = CV_INTER_NN)_
_name: scaleIntoMe_
_returns: void_
_returns_description: _
_parameters: ofxCvImage &mom, int interpolationMethod=CV_INTER_NN_
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



Scales the image passed in to be the size of the current image, 

~~~~{.cpp}

ofxCvImage first;
first.allocate(640, 480);
ofxCvImage second;
second.allocate(320, 240);

second.scaleIntoMe(first); // first is now 320,240

~~~~










<!----------------------------------------------------------------------------->

###void convertRgbToHsv()

<!--
_syntax: convertRgbToHsv()_
_name: convertRgbToHsv_
_returns: void_
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

###void convertHsvToRgb()

<!--
_syntax: convertHsvToRgb()_
_name: convertHsvToRgb_
_returns: void_
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

###void init()

<!--
_syntax: init()_
_name: init_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
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

##Variables



###IplImage * cvGrayscaleImage

<!--
_name: cvGrayscaleImage_
_type: IplImage *_
_access: protected_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _














<!----------------------------------------------------------------------------->

