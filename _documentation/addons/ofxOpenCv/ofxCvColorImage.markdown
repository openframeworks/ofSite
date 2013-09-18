#class ofxCvColorImage


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofxCvColorImage represents the data of each pixel as unsigned char values, like the ofxCvGrayscaleImage, but has 3 channels, RGB, to represent color images.





##Methods



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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Clears the pixel data of the image. The image must be allocated again with a call to allocate() before it can be used.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This increases the contrast of the image remapping the brightest points in the image to white and the darkest points in the image to black.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Converts the image from values in the Hue Saturation and Value color space (sometimes called Hue Saturation Brightness) to values in the Red Green and Blue color space.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Converts the image from values in the Red Green and Blue color space to values in the Hue Saturation and Value color space (sometimes called Hue Saturation Brightness)

![HSV](../../types/hsb-cone.jpg "HSB")







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copies the pixels of the ofxCvColorImage into an ofxCvGrayscale image. You can optionally specify whether you want to use the R G or B channel of the ofxCvColorImage to set the values of the ofxCvGrayscale.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copies the different channels of the ofxCvColorImage into 3 different grayscale images using the R G and B channels of the ofxCvColorImage.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Maps the pixels of an image to the min and max range passed in.

~~~~{.cpp}

colors.setFromPixels(grabber.getPixelsRef());

first = colors; // will leave unaltered
second = colors; // change it
second.convertToRange(100, 140); // super low contrast

~~~~

![Image convert to range](convertToRange.png "Converting the range of an image")







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copy constructor, which allows you to this:

~~~~{.cpp}
ofxCvShortImage old;
// allocate old
ofxCvShortImage new(old);
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Adds the pixel data of the right hand side image from the current image:

~~~~{.cpp}
first += second; // both are ofxCvFloatImage instances
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Subtracts the pixel data of the right hand side image from the current image:

~~~~{.cpp}
first -= second; // both are ofxCvFloatImage instances
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sets the ofxCvColorImage from the pixels pointer. Be sure that the pixels are the same size and dimensions as the ofxCvColorImage.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copies ofxCvGrayscaleImage to another ofxCvShortImage using the = symbol.

~~~~{.cpp}
imageOne = imageTwo; // make sure that the dimensions and ROI match







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copies the data from an ofxCvColorImage into the instance using the = symbol.

~~~~{.cpp}
colorImage1 = colorImage2; // make sure that the dimensions and ROI match
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copies the data from an ofxCvFloatImage into a ofxCvShortImage using the = symbol.

~~~~{.cpp}
colorImage = floatColorImage; // make sure that the dimensions and ROI match
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copies the data from a ofxCvShortImage into the ofxCvColorImage using the = symbol.

~~~~{.cpp}
colorImage = shortColorImage; // make sure that the dimensions and ROI match
~~~~







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Copies the data from an IplImage into the ofxCvColorImage using the = symbol.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Resizes the image to the w, h passed in.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set all the pixels in the image to the float value passed in as a color using 0 to 255 scale for each channel. This is useful for blanking or filling an image quickly.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This method allows you use multiple ofxCvGrayscaleImage images to create a full color image. Each ofxCvGrayscaleImage represents the data of one channel, r, g, b.







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set the Region Of Interest using a pointer to an unsigned char array and a w,h to define the area of the ROI







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

