#class ofxCvImage


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

This is the base class for all the ofxOpenCV image types: ofxCvShortImage, ofxCvColorImage, ofxCvFloatImage, ofxCvGrayscaleImage. It's made to provide interoperability between the core OF imaging types, ofImage and ofTexture, and OpenCv.





##Methods



###void allocate(w, h)

<!--
_syntax: allocate(w, h)_
_name: allocate_
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


Allocates the image with the w, h passed in. This must be done before the pixels of the image are created.







<!----------------------------------------------------------------------------->

###void blur(value = 3)

<!--
_syntax: blur(value = 3)_
_name: blur_
_returns: void_
_returns_description: _
_parameters: int value=3_
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


Blurs the image

![Blurring] (blur.png "Blurring an image original on Left")







<!----------------------------------------------------------------------------->

###void blurGaussian(value = 3)

<!--
_syntax: blurGaussian(value = 3)_
_name: blurGaussian_
_returns: void_
_returns_description: _
_parameters: int value=3_
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


Blurs the using Gaussian blurring. Gaussian blurring is typically to reduce image noise and reduce detail.







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


This increases the contrast of the image remapping the brightest points in the image to 255 and the darkest points in the image to 0.







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

![Image convert to range](convertToRangeColor.png "Converting the range of an image")







<!----------------------------------------------------------------------------->

###int countNonZeroInRegion(x, y, w, h)

<!--
_syntax: countNonZeroInRegion(x, y, w, h)_
_name: countNonZeroInRegion_
_returns: int_
_returns_description: _
_parameters: int x, int y, int w, int h_
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


Returns the number of non-zero pixels in an image.







<!----------------------------------------------------------------------------->

###void dilate()

<!--
_syntax: dilate()_
_name: dilate_
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


![Dilating] (dilate.png "Dilating an image, original on Left")







<!----------------------------------------------------------------------------->

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
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


Draw the image at the x,y.







<!----------------------------------------------------------------------------->

###void draw(x, y, w, h)

<!--
_syntax: draw(x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
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


Draw the image at the x,y with the w,h.







<!----------------------------------------------------------------------------->

###void draw(&point)

<!--
_syntax: draw(&point)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &point_
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


Draw the image at the ofPoint passed in.







<!----------------------------------------------------------------------------->

###void draw(&rect)

<!--
_syntax: draw(&rect)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &rect_
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


Draw the image into the ofRectangle passed in.







<!----------------------------------------------------------------------------->

###void drawBlobIntoMe(&blob, color)

<!--
_syntax: drawBlobIntoMe(&blob, color)_
_name: drawBlobIntoMe_
_returns: void_
_returns_description: _
_parameters: ofxCvBlob &blob, int color_
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


Draw the outline of an ofxCvblob into the ofxCvImage.







<!----------------------------------------------------------------------------->

###void drawROI(x, y)

<!--
_syntax: drawROI(x, y)_
_name: drawROI_
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


Draw just the Region of Interest of the image at the x,y.







<!----------------------------------------------------------------------------->

###void drawROI(x, y, w, h)

<!--
_syntax: drawROI(x, y, w, h)_
_name: drawROI_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
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


Draw just the Region of Interest of the image into the x,y with the w,h passed in.







<!----------------------------------------------------------------------------->

###void erode()

<!--
_syntax: erode()_
_name: erode_
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


Erodes the image.

![Eroding] (erode.png "Eroding an image, original on Left")







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

###IplImage * getCvImage()

<!--
_syntax: getCvImage()_
_name: getCvImage_
_returns: IplImage *_
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


Returns a raw pointer to the OpenCV IplImage.







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


Returns the height of the image in pixels.







<!----------------------------------------------------------------------------->

###ofRectangle getIntersectionROI(&rec1, &rec2)

<!--
_syntax: getIntersectionROI(&rec1, &rec2)_
_name: getIntersectionROI_
_returns: ofRectangle_
_returns_description: _
_parameters: const ofRectangle &rec1, const ofRectangle &rec2_
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

###unsigned char * getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: unsigned char *_
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


Returns a raw pointer to the pixel data within the image.







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


Returns an ofPixels reference to the pixel data within the image.







<!----------------------------------------------------------------------------->

###ofRectangle getROI()

<!--
_syntax: getROI()_
_name: getROI_
_returns: ofRectangle_
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


Returns the region of interest in an ofxCvImage.







<!----------------------------------------------------------------------------->

###unsigned char * getRoiPixels()

<!--
_syntax: getRoiPixels()_
_name: getRoiPixels_
_returns: unsigned char *_
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


Returns a raw pointer to the pixel data within the Region of Interest in the ofxCvImage.







<!----------------------------------------------------------------------------->

###ofPixelsRef getRoiPixelsRef()

<!--
_syntax: getRoiPixelsRef()_
_name: getRoiPixelsRef_
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


Returns an ofPixels reference to the pixel data within the Region of Interest in the ofxCvImage.







<!----------------------------------------------------------------------------->

###ofTexture & getTextureReference()

<!--
_syntax: getTextureReference()_
_name: getTextureReference_
_returns: ofTexture &_
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


If the ofxCvImage has an ofTexture texture, then this returns a reference to that texture.







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


Returns the width of the image in pixels.







<!----------------------------------------------------------------------------->

###void invert()

<!--
_syntax: invert()_
_name: invert_
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


Flip the pixel values of the image.

![Inverting an image] (invert.png "Original on Left")







<!----------------------------------------------------------------------------->

###bool matchingROI(&rec1, &rec2)

<!--
_syntax: matchingROI(&rec1, &rec2)_
_name: matchingROI_
_returns: bool_
_returns_description: _
_parameters: const ofRectangle &rec1, const ofRectangle &rec2_
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


Returns whether the Region of Interests match position and dimension or not.







<!----------------------------------------------------------------------------->

###void mirror(bFlipVertically, bFlipHorizontally)

<!--
_syntax: mirror(bFlipVertically, bFlipHorizontally)_
_name: mirror_
_returns: void_
_returns_description: _
_parameters: bool bFlipVertically, bool bFlipHorizontally_
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


Flips the image horizontally and/or vertically.







<!----------------------------------------------------------------------------->

### ofxCvImage()

<!--
_syntax: ofxCvImage()_
_name: ofxCvImage_
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
first *= second; // both are ofxCvImage instances
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
first += second; // both are ofxCvImage instances
~~~~







<!----------------------------------------------------------------------------->

###void operator+=(&mom)

<!--
_syntax: operator+=(&mom)_
_name: operator+=_
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


Adds the pixel data of the right hand side image from the current image:

~~~~{.cpp}
first += second; // both are ofxCvImage instances
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
first -= second; // both are ofxCvImage instances
~~~~







<!----------------------------------------------------------------------------->

###void operator-=(&mom)

<!--
_syntax: operator-=(&mom)_
_name: operator-=_
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


Subtracts the pixel data of the right hand side image from the current image:

~~~~{.cpp}
first -= second; // both are ofxCvImage instances
~~~~







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


Copy a ofxCvGrayscaleImage into the current ofxCvImage.







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


Copy the image data of an ofxCvColorImage into the ofxCvImage instance.







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


Copy the image data ofxCvFloatImage into the ofxCvImage instance.







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


Copy the image data of a ofxCvShortImage into the ofxCvImage instance.







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


Copy the data from an IplImage into the ofxCvImage instance.







<!----------------------------------------------------------------------------->

###void rangeMap(*img, min1, max1, min2, max2)

<!--
_syntax: rangeMap(*img, min1, max1, min2, max2)_
_name: rangeMap_
_returns: void_
_returns_description: _
_parameters: IplImage *img, float min1, float max1, float min2, float max2_
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

###void rangeMap(*mom, *kid, min1, max1, min2, max2)

<!--
_syntax: rangeMap(*mom, *kid, min1, max1, min2, max2)_
_name: rangeMap_
_returns: void_
_returns_description: _
_parameters: IplImage *mom, IplImage *kid, float min1, float max1, float min2, float max2_
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

###void remap(*mapX, *mapY)

<!--
_syntax: remap(*mapX, *mapY)_
_name: remap_
_returns: void_
_returns_description: _
_parameters: IplImage *mapX, IplImage *mapY_
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


This uses a generic geometrical transformation to remap one image to another. This is particularly useful when doing camera calibration.







<!----------------------------------------------------------------------------->

###void resetAnchor()

<!--
_syntax: resetAnchor()_
_name: resetAnchor_
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


Reset the anchor point of the image, i.e. the center point for rotations, 







<!----------------------------------------------------------------------------->

###void resetImageROI(*img)

<!--
_syntax: resetImageROI(*img)_
_name: resetImageROI_
_returns: void_
_returns_description: _
_parameters: IplImage *img_
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

###void resetROI()

<!--
_syntax: resetROI()_
_name: resetROI_
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


Removes the region of interest from an ofxCvImage.







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

###void rotate(angle, centerX, centerY)

<!--
_syntax: rotate(angle, centerX, centerY)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float angle, float centerX, float centerY_
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


Rotates the image. This is different than the OpenGL rotate as it actually sets the pixel data, rather than just the posotion of the drawing.







<!----------------------------------------------------------------------------->

###void scale(scaleX, sclaeY)

<!--
_syntax: scale(scaleX, sclaeY)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float scaleX, float sclaeY_
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


Scales the image to the scaleX, scaleY passed in. This is different than the OpenGL rotate as it actually sets the pixel data, rather than just the posotion of the drawing.







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

###void setAnchorPercent(xPct, yPct)

<!--
_syntax: setAnchorPercent(xPct, yPct)_
_name: setAnchorPercent_
_returns: void_
_returns_description: _
_parameters: float xPct, float yPct_
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


Set the anchor point of the image, i.e. the center point for rotations, at the percentage positions passed in.







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


Set the anchor point of the image, i.e. the center point for rotations, at the x,y passed in.







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


Set all the pixels in a ofxCvImage from a pointer to an array of unsigned char values, using the w and h parameters to determine the dimensions of the image.







<!----------------------------------------------------------------------------->

###void setFromPixels(&pixels)

<!--
_syntax: setFromPixels(&pixels)_
_name: setFromPixels_
_returns: void_
_returns_description: _
_parameters: const ofPixels &pixels_
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


Set all the pixels in a ofxCvImage from an ofPixels reference.







<!----------------------------------------------------------------------------->

###void setImageROI(*img, &rect)

<!--
_syntax: setImageROI(*img, &rect)_
_name: setImageROI_
_returns: void_
_returns_description: _
_parameters: IplImage *img, const ofRectangle &rect_
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

###void setROI(x, y, w, h)

<!--
_syntax: setROI(x, y, w, h)_
_name: setROI_
_returns: void_
_returns_description: _
_parameters: int x, int y, int w, int h_
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


Sets the region of interest on the image.  Region of Interest is a rectangular area in an image, to segment object for further processing. Once the ROI is defined, OpenCV functions will operate on the ROI, reducing the number of pixels that the operation will examine.







<!----------------------------------------------------------------------------->

###void setROI(&rect)

<!--
_syntax: setROI(&rect)_
_name: setROI_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &rect_
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


Sets the region of interest on the image.  Region of Interest is a rectangular area in an image, to segment object for further processing. Once the ROI is defined, OpenCV functions will operate on the ROI, reducing the number of pixels that the operation will examine.







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

###void setRoiFromPixels(&pixels)

<!--
_syntax: setRoiFromPixels(&pixels)_
_name: setRoiFromPixels_
_returns: void_
_returns_description: _
_parameters: const ofPixels &pixels_
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


Set the Region Of Interest using an ofPixels reference The w,h of the ofPixels will define the area of the ROI







<!----------------------------------------------------------------------------->

###void setUseTexture(bUse)

<!--
_syntax: setUseTexture(bUse)_
_name: setUseTexture_
_returns: void_
_returns_description: _
_parameters: bool bUse_
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


Sets whether the image is using a texture or not. If the image is not using a texture then calls to getTextureReference() will return null and the image cannot be drawn. This is handy if you know that you won't be displaying the image to the screen.







<!----------------------------------------------------------------------------->

###void swapTemp()

<!--
_syntax: swapTemp()_
_name: swapTemp_
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

###void transform(angle, centerX, centerY, scaleX, scaleY, moveX, moveY)

<!--
_syntax: transform(angle, centerX, centerY, scaleX, scaleY, moveX, moveY)_
_name: transform_
_returns: void_
_returns_description: _
_parameters: float angle, float centerX, float centerY, float scaleX, float scaleY, float moveX, float moveY_
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


Transforms the image with the angle, scaling, and transformation passed in. This is different than the OpenGL rotate as it actually sets the pixel data, rather than just the posotion of the drawing.







<!----------------------------------------------------------------------------->

###void translate(x, y)

<!--
_syntax: translate(x, y)_
_name: translate_
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


Moves the image by the x,y amount passed in. This is different than the OpenGL rotate as it actually sets the pixel data, rather than just the posotion of the drawing.







<!----------------------------------------------------------------------------->

###void undistort(radialDistX, radialDistY, tangentDistX, tangentDistY, focalX, focalY, centerX, centerY)

<!--
_syntax: undistort(radialDistX, radialDistY, tangentDistX, tangentDistY, focalX, focalY, centerX, centerY)_
_name: undistort_
_returns: void_
_returns_description: _
_parameters: float radialDistX, float radialDistY, float tangentDistX, float tangentDistY, float focalX, float focalY, float centerX, float centerY_
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


undistort Usage Example: undistort( 0, 1, 0, 0, 200, 200, cwidth/2, cheight/2 ); creates kind of an old TV monitor distortion. 







_description: _


The function cvUnDistortOnce corrects camera lens distortion for the image. It requires that you have an estimate of the camera distortion from a call to cvCalibrateCamera() or other calibration method.







<!----------------------------------------------------------------------------->

###void updateTexture()

<!--
_syntax: updateTexture()_
_name: updateTexture_
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


Updates the texture of the ofxCvImage if it contains one. This is handy after you've changed the image pixel data and want it to be uploaded to the texture on the graphics card.







<!----------------------------------------------------------------------------->

###void warpIntoMe(&mom, src[4], dst[4])

<!--
_syntax: warpIntoMe(&mom, src[4], dst[4])_
_name: warpIntoMe_
_returns: void_
_returns_description: _
_parameters: ofxCvImage &mom, const ofPoint src[4], const ofPoint dst[4]_
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


This warps the image perspective into the ofxCvImage using two sets four points passed in:

~~~~{.cpp}
ofPoint[4] src;
src[0] = ofPoint(0, 0);
src[1] = ofPoint(320, 0);
src[2] = ofPoint(320, 240);
src[3] = ofPoint(0, 240);

ofPoint[4] dst;
dst[0] = ofPoint(10, 0);
dst[1] = ofPoint(310, 0);
dst[2] = ofPoint(310, 230);
dst[3] = ofPoint(10, 230);

image.warpIntoMe(parent, src, dst);

~~~~

![Warping] (warpPerspective.png "Four corners for warping")







<!----------------------------------------------------------------------------->

###void warpPerspective(&A, &B, &C, &D)

<!--
_syntax: warpPerspective(&A, &B, &C, &D)_
_name: warpPerspective_
_returns: void_
_returns_description: _
_parameters: const ofPoint &A, const ofPoint &B, const ofPoint &C, const ofPoint &D_
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


A +----------+ B / \ / \ / \ D +----------------- + C 







_description: _


This warps the image perspective to the four points passed in:

![Warping] (warpPerspective.png "Four corners for warping")







<!----------------------------------------------------------------------------->

### ~ofxCvImage()

<!--
_syntax: ~ofxCvImage()_
_name: ~ofxCvImage_
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



###ofPoint anchor

<!--
_name: anchor_
_type: ofPoint_
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

###bool bAllocated

<!--
_name: bAllocated_
_type: bool_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bAnchorIsPct

<!--
_name: bAnchorIsPct_
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

###bool bPixelsDirty

<!--
_name: bPixelsDirty_
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

###bool bRoiPixelsDirty

<!--
_name: bRoiPixelsDirty_
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

###bool bTextureDirty

<!--
_name: bTextureDirty_
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

###bool bUseTexture

<!--
_name: bUseTexture_
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

###IplImage * cvImage

<!--
_name: cvImage_
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

###IplImage * cvImageTemp

<!--
_name: cvImageTemp_
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

###int glchannels

<!--
_name: glchannels_
_type: int_
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

###int gldepth

<!--
_name: gldepth_
_type: int_
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

###int height

<!--
_name: height_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int iplchannels

<!--
_name: iplchannels_
_type: int_
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

###int ipldepth

<!--
_name: ipldepth_
_type: int_
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

###ofPixels pixels

<!--
_name: pixels_
_type: ofPixels_
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

###ofPixels roiPixels

<!--
_name: roiPixels_
_type: ofPixels_
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

###ofTexture tex

<!--
_name: tex_
_type: ofTexture_
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

###int width

<!--
_name: width_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

