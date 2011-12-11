#class ofxCvShortImage


##Description





##Methods



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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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







