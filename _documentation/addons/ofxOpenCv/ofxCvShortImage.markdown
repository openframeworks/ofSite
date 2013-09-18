#class ofxCvShortImage


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofxCvShortImage represents the color data of each pixel as unsigned char variables or values between 0 and 255. They are a slightly smaller (i.e. less data heavy) way of representing the data in an image but they also have less precision than ofxCvFloatImage. Usually when you're capturing from a camera or video into OpenCV, you're using ofxCvShortImage. Keep in mind though that most of the image operations in OpenCV expect a grayscale image, which you can construct using the ofxCvGrayscaleImage.





##Methods



###void addWeighted(&mom, f)

<!--
_syntax: addWeighted(&mom, f)_
_name: addWeighted_
_returns: void_
_returns_description: _
_parameters: ofxCvGrayscaleImage &mom, float f_
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


Copies the pixel data of an ofxCvGrayscaleImage into the pixel data of the ofxCvShortImage.







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

###void convertGrayToShort(*grayImg, *floatImg)

<!--
_syntax: convertGrayToShort(*grayImg, *floatImg)_
_name: convertGrayToShort_
_returns: void_
_returns_description: _
_parameters: IplImage *grayImg, IplImage *floatImg_
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

###void convertShortToGray(*floatImg, *grayImg)

<!--
_syntax: convertShortToGray(*floatImg, *grayImg)_
_name: convertShortToGray_
_returns: void_
_returns_description: _
_parameters: IplImage *floatImg, IplImage *grayImg_
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

###void flagImageChanged()

<!--
_syntax: flagImageChanged()_
_name: flagImageChanged_
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


Marks the image as changed so that the ofTexture can be updated, if the image contains one.







<!----------------------------------------------------------------------------->

###IplImage * getCv8BitsImage()

<!--
_syntax: getCv8BitsImage()_
_name: getCv8BitsImage_
_returns: IplImage *_
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

###IplImage * getCv8BitsRoiImage()

<!--
_syntax: getCv8BitsRoiImage()_
_name: getCv8BitsRoiImage_
_returns: IplImage *_
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

###ofShortPixels & getRoiShortPixelsRef()

<!--
_syntax: getRoiShortPixelsRef()_
_name: getRoiShortPixelsRef_
_returns: ofShortPixels &_
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


Returns the pixel data of the instance as a ofShortPixels reference. This allows you to directly manipulate the pixels of the ofxCvShortImage.







<!----------------------------------------------------------------------------->

###ofShortPixels & getShortPixelsRef()

<!--
_syntax: getShortPixelsRef()_
_name: getShortPixelsRef_
_returns: ofShortPixels &_
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


Returns the pixel data of the instance as a ofShortPixels instance.







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

### ofxCvShortImage()

<!--
_syntax: ofxCvShortImage()_
_name: ofxCvShortImage_
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

### ofxCvShortImage(&mom)

<!--
_syntax: ofxCvShortImage(&mom)_
_name: ofxCvShortImage_
_returns: _
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


Copy constructor, which allows you to this:

~~~~{.cpp}
ofxCvShortImage old;
// allocate old
ofxCvShortImage new(old);
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


Sets the ofxCvShortImage from the pixels pointer. Be sure that the pixels are the same size and dimensions as the ofxCvShortImage.







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


Copies ofxCvGrayscaleImage to the ofxCvShortImage using the = symbol.

~~~~{.cpp}
imageOne = imageTwo; // make sure that the dimensions and ROI match
~~~~







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


Copies a ofxCvColorImage into a ofxCvShortImage using the = symbol.

~~~~{.cpp}
grayImage = colorImage; // make sure that the dimensions and ROI match
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


opies a ofxCvFloatImage into a ofxCvShortImage using the = symbol.

~~~~{.cpp}
grayImage = floatColorImage; // make sure that the dimensions and ROI match
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


Copies a ofxCvShortImage into a ofxCvShortImage using the = symbol.

~~~~{.cpp}
grayImage = shortColorImage; // make sure that the dimensions and ROI match
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


Copies a IplImage into a ofxCvShortImage using the = symbol.

~~~~{.cpp}
grayImage = iplImage; // make sure that the dimensions and ROI match
~~~~







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


Set all the pixels in the image to the float value passed in. This is useful for blanking or filling an image quickly. Possible values are 0 to 255.







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


Set all the pixels in a ofxCvShortImage from a pointer to an array of unsigned char values, using the w and h parameters to determine the dimensions of the image. The array is assumed to contain color values.







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


This allows you to set the ROI on the image from an ofPixels instance. Region of Interest is a rectangular area in an image, to segment object for further processing. Once the ROI is defined, OpenCV functions will operate on the ROI, reducing the number of pixels that the operation will examine.







<!----------------------------------------------------------------------------->

##Variables



###bool bShortPixelsDirty

<!--
_name: bShortPixelsDirty_
_type: bool_
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

###bool cvGrayscaleDirty

<!--
_name: cvGrayscaleDirty_
_type: bool_
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

###ofShortPixels shortPixels

<!--
_name: shortPixels_
_type: ofShortPixels_
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

