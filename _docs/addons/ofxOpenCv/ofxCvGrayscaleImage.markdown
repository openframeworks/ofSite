#class ofxCvGrayscaleImage


##Description





##Methods



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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







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







