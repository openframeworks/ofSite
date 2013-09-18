#class ofxCvGrayscaleImage


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

This represents an OpenCV friendly image in grayscale, i.e. without any color data. This is useful because many of the image processing and analysis routines in OpenCV (or OF for that matter) don't require color information. Less information to sort through means faster image analysis and faster applications. You can convert an ofxCvColorImage to an ofxCvGrayscaleImage using the = operator like so:

~~~~{.cpp}
grayscaleImg = colorImg;
~~~~

A common routine that you'll see is something like the following:

~~~~{.cpp}
colorImg.setFromPixels(vidGrabber.getPixelsRef());
grayImage = colorImg; // convert our color image to a grayscale image
~~~~

The ofxCvGrayscaleImage can then be passed to a ofxCvContourFinder instance for contour and blob detection.

~~~~{.cpp}
contourFinder.findContours(grayscaleImage, 5, (340*240)/4, 4, false, true);
~~~~





##Methods



###void absDiff(&mom)

<!--
_syntax: absDiff(&mom)_
_name: absDiff_
_returns: void_
_returns_description: _
_parameters: ofxCvGrayscaleImage &mom_
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


Makes a diff of the current image and the mom image. This alters the pixels of the ofxCvGrayscaleImage instance. 

~~~~{.cpp}
current.absDiff(incoming);
~~~~

The below image shows how the diff process operates:

![Image diff](absdiff.png "Diffing two images")







<!----------------------------------------------------------------------------->

###void absDiff(&mom, &dad)

<!--
_syntax: absDiff(&mom, &dad)_
_name: absDiff_
_returns: void_
_returns_description: _
_parameters: ofxCvGrayscaleImage &mom, ofxCvGrayscaleImage &dad_
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


Sets the pixels of the images ofxCvGrayscaleImage instance to a diff of the &mom and &dad instance.

![Image diff](absdiff.png "Diffing two images")







<!----------------------------------------------------------------------------->

###void adaptiveThreshold(blockSize, offset = 0, invert = false, gauss = false)

<!--
_syntax: adaptiveThreshold(blockSize, offset = 0, invert = false, gauss = false)_
_name: adaptiveThreshold_
_returns: void_
_returns_description: _
_parameters: int blockSize, int offset=0, bool invert=false, bool gauss=false_
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


Increases the contrast of the image by blocks, the larger the block, the larger the area that is thresholded at one time. Invert flips the values of the image, making black into white and vice versa. gauss determines whether the image is to be thresholded usinga Gaussian method or simply a plain thresholding. Below you can see the result of using adaptive threshold with two different values.

~~~~{.cpp}
left.adaptiveThreshold(20);
right.adaptiveThreshold(50);
~~~~

![Threshold](threshold.png "Thresholding an image")







<!----------------------------------------------------------------------------->

###void blurHeavily()

<!--
_syntax: blurHeavily()_
_name: blurHeavily_
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


Blurs the image using a pre-determine blur amount.







<!----------------------------------------------------------------------------->

###void brightnessContrast(brightness, contrast)

<!--
_syntax: brightnessContrast(brightness, contrast)_
_name: brightnessContrast_
_returns: void_
_returns_description: _
_parameters: float brightness, float contrast_
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


Sets the brightness and contrast of an image.







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


This increases the contrast of the image remapping the brightest points in the image to white and the darkest points in the image to black. Generally on a ofxCvGrayscaleImage it isn't particularly noticeable, though it can have a large effect mathematically.







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

###void dilate_3x3()

<!--
_syntax: dilate_3x3()_
_name: dilate_3x3_
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

###void erode_3x3()

<!--
_syntax: erode_3x3()_
_name: erode_3x3_
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

### ofxCvGrayscaleImage()

<!--
_syntax: ofxCvGrayscaleImage()_
_name: ofxCvGrayscaleImage_
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

### ofxCvGrayscaleImage(&mom)

<!--
_syntax: ofxCvGrayscaleImage(&mom)_
_name: ofxCvGrayscaleImage_
_returns: _
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


Copy constructor, allows you copy one ofxCvGrayscaleImage into another.







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


Sets the ofxCvGrayscaleImage from the pixels pointer. Be sure that the pixels are the same size and dimensions as the ofxCvGrayscaleImage.







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


Copies one ofxCvGrayscaleImage to another ofxCvGrayscaleImage using the = symbol.

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


Copies a ofxCvColorImage into a ofxCvGrayscaleImage using the = symbol.

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


Copies a ofxCvFloatImage into a ofxCvGrayscaleImage using the = symbol.

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


Copies a ofxCvShortImage into a ofxCvGrayscaleImage using the = symbol.

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


Copies a IplImage into a ofxCvGrayscaleImage using the = symbol.

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


Set all the pixels in the image to the float value passed in. This is useful for blanking or filling an image quickly. the values are 1.0 to 255.0.







<!----------------------------------------------------------------------------->

###void setFromColorImage(&mom)

<!--
_syntax: setFromColorImage(&mom)_
_name: setFromColorImage_
_returns: void_
_returns_description: _
_parameters: ofxCvColorImage &mom_
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


Sets the grayscale image from an ofxCvColorImage.







<!----------------------------------------------------------------------------->

###void setFromFloatImage(&mom)

<!--
_syntax: setFromFloatImage(&mom)_
_name: setFromFloatImage_
_returns: void_
_returns_description: _
_parameters: ofxCvFloatImage &mom_
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


Sets the grayscale image from an ofxCvFloatImage.







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


Set all the pixels in a ofxCvGrayscaleImage from a pointer to an array of unsigned char values, using the w and h parameters to determine the dimensions of the image. The array is assumed to contain grayscale values.







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

###void threshold(value, invert = false)

<!--
_syntax: threshold(value, invert = false)_
_name: threshold_
_returns: void_
_returns_description: _
_parameters: int value, bool invert=false_
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


Increases the contrast of the image. The value is the threshold level applied to the image, for instance:

~~~~{.cpp}
altered.threshold(30); // super high contrast
~~~~

![Threshold](threshold.png "Thresholding an image")







<!----------------------------------------------------------------------------->

### ~ofxCvGrayscaleImage()

<!--
_syntax: ~ofxCvGrayscaleImage()_
_name: ~ofxCvGrayscaleImage_
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


Destructor.







<!----------------------------------------------------------------------------->

##Variables



###CvMat * briConLutMatrix

<!--
_name: briConLutMatrix_
_type: CvMat *_
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

