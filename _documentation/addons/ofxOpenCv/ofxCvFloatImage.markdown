#class ofxCvFloatImage


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

ofxCvFloatImage is an image class that represents the values of each color of each pixel as float values, on a scale of 0.0 - 1.0. They are a more precise but heavier (i.e. requiring more memory) way representing the data in an image. Keep in mind though that most of the image operations in OpenCV expect a grayscale image, which you can construct using the ofxCvGrayscaleImage. If you're loading image data from another image you might want to check what image scale is being used with the image to ensure that you don't get your scales wrong.





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


Remove all pixel data from the ofxCvFloatImage instance.







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


This increases the contrast of the image remapping the brightest points in the image to 255 and the darkest points in the image to 0.







<!----------------------------------------------------------------------------->

###void convertFloatToGray(*floatImg, *grayImg)

<!--
_syntax: convertFloatToGray(*floatImg, *grayImg)_
_name: convertFloatToGray_
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

###void convertGrayToFloat(*grayImg, *floatImg)

<!--
_syntax: convertGrayToFloat(*grayImg, *floatImg)_
_name: convertGrayToFloat_
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

second.convertToRange(100, 140); // super low contrast

~~~~

![Image convert to range](convertToRangeColor.png "Converting the range of an image")







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


Flag whether the image pixel data has changed so that the ofTexture can be updated.







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

###ofFloatPixels & getFloatPixelsRef()

<!--
_syntax: getFloatPixelsRef()_
_name: getFloatPixelsRef_
_returns: ofFloatPixels &_
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


Returns a ofFloatPixels that contains the pixels of the image.







<!----------------------------------------------------------------------------->

###float getNativeScaleMax()

<!--
_syntax: getNativeScaleMax()_
_name: getNativeScaleMax_
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


If you've set the native scale max and min using setNativeScale() this returns the maximum value.







<!----------------------------------------------------------------------------->

###float getNativeScaleMin()

<!--
_syntax: getNativeScaleMin()_
_name: getNativeScaleMin_
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


If you've set the native scale max and min using setNativeScale() this returns the minimum value.







<!----------------------------------------------------------------------------->

###float * getPixelsAsFloats()

<!--
_syntax: getPixelsAsFloats()_
_name: getPixelsAsFloats_
_returns: float *_
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


Returns a pointer to an array of floating point numbers that represent the pixels of the image.







<!----------------------------------------------------------------------------->

###ofFloatPixels & getRoiFloatPixelsRef()

<!--
_syntax: getRoiFloatPixelsRef()_
_name: getRoiFloatPixelsRef_
_returns: ofFloatPixels &_
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


Returns a ofFloatPixels that contains the pixels within the ROI the image.







<!----------------------------------------------------------------------------->

###float * getRoiPixelsAsFloats()

<!--
_syntax: getRoiPixelsAsFloats()_
_name: getRoiPixelsAsFloats_
_returns: float *_
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


Returns a pointer to an array of floating point numbers that represent the pixels of the ROI of the image.







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

### ofxCvFloatImage()

<!--
_syntax: ofxCvFloatImage()_
_name: ofxCvFloatImage_
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

### ofxCvFloatImage(&mom)

<!--
_syntax: ofxCvFloatImage(&mom)_
_name: ofxCvFloatImage_
_returns: _
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


Copy constructor.







<!----------------------------------------------------------------------------->

###void operator&=(&mom)

<!--
_syntax: operator&=(&mom)_
_name: operator&=_
_returns: void_
_returns_description: _
_parameters: ofxCvImage &mom_
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


Binary & (Logical AND http://en.wikipedia.org/wiki/Bitwise_operation) the pixel data of the right hand side image from the current image:

~~~~{.cpp}
cvPuppy.allocate( 320, 240 );    
cvPuppy = puppyImg.getPixels(); // copy pixels from a loaded image
    
andPuppy.allocate( 320, 240 );
    
andPuppy.set(255, 0, 0); // make the AND image red
andPuppy &= cvPuppy; // will & all the bits 
~~~~

![puppy AND](ANDoperation.png "Using the &= operation")







<!----------------------------------------------------------------------------->

###void operator*=(scalar)

<!--
_syntax: operator*=(scalar)_
_name: operator*=_
_returns: void_
_returns_description: _
_parameters: float scalar_
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


Multiplies the pixel data of the right hand side image from the current image:

~~~~{.cpp}
first *= second; // both are ofxCvFloatImage instances
~~~~







<!----------------------------------------------------------------------------->

###void operator*=(&mom)

<!--
_syntax: operator*=(&mom)_
_name: operator*=_
_returns: void_
_returns_description: _
_parameters: ofxCvImage &mom_
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


Multiplies the pixel data of the right hand side image from the current image:

~~~~{.cpp}
first *= second; // both are ofxCvFloatImage instances
~~~~







<!----------------------------------------------------------------------------->

###void operator/=(scalar)

<!--
_syntax: operator/=(scalar)_
_name: operator/=_
_returns: void_
_returns_description: _
_parameters: float scalar_
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


Divides each pixel of the pixel data of the right hand side image from the current image:

~~~~{.cpp}
first /= second; // both are ofxCvFloatImage instances
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


Copy the data from an array of unsigned char numbers into the ofxCvFloatImage instance. The dimensions of the array are assumed to match the dimensions of the image. The values will be converted to a 0.0 - 1.0 scale.







<!----------------------------------------------------------------------------->

###void operator=(*_pixels)

<!--
_syntax: operator=(*_pixels)_
_name: operator=_
_returns: void_
_returns_description: _
_parameters: float *_pixels_
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


Copy the data from an array of floating point numbers into the ofxCvFloatImage instance. The dimensions of the array are assumed to match the dimensions of the image.







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


Copy the data from an ofxCvGrayscaleImage image into the ofxCvFloatImage instance.







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


Copy the data from an ofxCvColor image into the ofxCvFloatImage instance.







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


Copy the data from an ofxCvFloatImage image into the ofxCvFloatImage instance.







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


Resizes the image to the w.h passed in.







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


Set all the pixels in the image to the float value passed in. This is useful for blanking or filling an image quickly. the values are 0.0 to 1.0.







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


Set all the pixels in a ofxCvGrayscaleImage from a pointer to an array of unsigned char values, using the w and h parameters to determine the dimensions of the image. The array is assumed to contain color values.







<!----------------------------------------------------------------------------->

###void setFromPixels(*_pixels, w, h)

<!--
_syntax: setFromPixels(*_pixels, w, h)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: float *_pixels, int w, int h_
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


This allows you to set the ROI on the image from an array of pixels. Region of Interest is a rectangular area in an image, to segment object for further processing. Once the ROI is defined, OpenCV functions will operate on the ROI, reducing the number of pixels that the operation will examine.







<!----------------------------------------------------------------------------->

###void setNativeScale(_scaleMin, _scaleMax)

<!--
_syntax: setNativeScale(_scaleMin, _scaleMax)_
_name: setNativeScale_
_returns: void_
_returns_description: _
_parameters: float _scaleMin, float _scaleMax_
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


Allows you to set the native scale of your images, for instance, if your images contain values ranging from 0.0 to 255.0 (unlikely, but possible) then you would want to set them to ensure that all image operations complete correctly.







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


This allows you to set the ROI on the image from an array of pixels. Region of Interest is a rectangular area in an image, to segment object for further processing. Once the ROI is defined, OpenCV functions will operate on the ROI, reducing the number of pixels that the operation will examine.







<!----------------------------------------------------------------------------->

###void setRoiFromPixels(*_pixels, w, h)

<!--
_syntax: setRoiFromPixels(*_pixels, w, h)_
_name: setRoiFromPixels_
_returns: void_
_returns_description: _
_parameters: float *_pixels, int w, int h_
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



###bool bFloatPixelsDirty

<!--
_name: bFloatPixelsDirty_
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

###ofFloatPixels floatPixels

<!--
_name: floatPixels_
_type: ofFloatPixels_
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

###float scaleMax

<!--
_name: scaleMax_
_type: float_
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

###float scaleMin

<!--
_name: scaleMin_
_type: float_
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

