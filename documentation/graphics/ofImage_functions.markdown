#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###void ofCloseFreeImage()

<!--
_syntax: ofCloseFreeImage()_
_name: ofCloseFreeImage_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Deallocates FreeImage resources.

Used internally during shutdown.





_description: _







<!----------------------------------------------------------------------------->

###string ofImageFormatExtension(format)

<!--
_syntax: ofImageFormatExtension(format)_
_name: ofImageFormatExtension_
_returns: string_
_returns_description: _
_parameters: ofImageFormat format_
_version_started: 0.10.0_
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

###bool ofLoadImage(&pix, &buffer, &settings)

<!--
_syntax: ofLoadImage(&pix, &buffer, &settings)_
_name: ofLoadImage_
_returns: bool_
_returns_description: _
_parameters: ofShortPixels &pix, const ofBuffer &buffer, const ofImageLoadSettings &settings_
_version_started: _
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

###bool ofLoadImage(&pix, &buffer, &settings)

<!--
_syntax: ofLoadImage(&pix, &buffer, &settings)_
_name: ofLoadImage_
_returns: bool_
_returns_description: _
_parameters: ofFloatPixels &pix, const ofBuffer &buffer, const ofImageLoadSettings &settings_
_version_started: _
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

###bool ofLoadImage(&pix, &buffer, &settings)

<!--
_syntax: ofLoadImage(&pix, &buffer, &settings)_
_name: ofLoadImage_
_returns: bool_
_returns_description: _
_parameters: ofPixels &pix, const ofBuffer &buffer, const ofImageLoadSettings &settings_
_version_started: _
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

###bool ofLoadImage(&pix, &path, &settings)

<!--
_syntax: ofLoadImage(&pix, &path, &settings)_
_name: ofLoadImage_
_returns: bool_
_returns_description: _
_parameters: ofShortPixels &pix, const filesystem::path &path, const ofImageLoadSettings &settings_
_version_started: _
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

###bool ofLoadImage(&pix, &path, &settings)

<!--
_syntax: ofLoadImage(&pix, &path, &settings)_
_name: ofLoadImage_
_returns: bool_
_returns_description: _
_parameters: ofFloatPixels &pix, const filesystem::path &path, const ofImageLoadSettings &settings_
_version_started: _
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

###bool ofLoadImage(&pix, &path, &settings)

<!--
_syntax: ofLoadImage(&pix, &path, &settings)_
_name: ofLoadImage_
_returns: bool_
_returns_description: _
_parameters: ofPixels &pix, const filesystem::path &path, const ofImageLoadSettings &settings_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\todo Needs documentation.





_description: _







<!----------------------------------------------------------------------------->

###bool ofLoadImage(&tex, &buffer, &settings)

<!--
_syntax: ofLoadImage(&tex, &buffer, &settings)_
_name: ofLoadImage_
_returns: bool_
_returns_description: _
_parameters: ofTexture &tex, const ofBuffer &buffer, const ofImageLoadSettings &settings_
_version_started: _
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

###bool ofLoadImage(&tex, &path, &settings)

<!--
_syntax: ofLoadImage(&tex, &path, &settings)_
_name: ofLoadImage_
_returns: bool_
_returns_description: _
_parameters: ofTexture &tex, const filesystem::path &path, const ofImageLoadSettings &settings_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\todo Needs documentation.





_description: _







<!----------------------------------------------------------------------------->

###bool ofSaveImage(&pix, &buffer, format = OF_IMAGE_FORMAT_PNG, qualityLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: ofSaveImage(&pix, &buffer, format = OF_IMAGE_FORMAT_PNG, qualityLevel = OF_IMAGE_QUALITY_BEST)_
_name: ofSaveImage_
_returns: bool_
_returns_description: _
_parameters: const ofShortPixels &pix, ofBuffer &buffer, ofImageFormat format=OF_IMAGE_FORMAT_PNG, ofImageQualityType qualityLevel=OF_IMAGE_QUALITY_BEST_
_version_started: _
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

###bool ofSaveImage(&pix, &buffer, format = OF_IMAGE_FORMAT_PNG, qualityLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: ofSaveImage(&pix, &buffer, format = OF_IMAGE_FORMAT_PNG, qualityLevel = OF_IMAGE_QUALITY_BEST)_
_name: ofSaveImage_
_returns: bool_
_returns_description: _
_parameters: const ofFloatPixels &pix, ofBuffer &buffer, ofImageFormat format=OF_IMAGE_FORMAT_PNG, ofImageQualityType qualityLevel=OF_IMAGE_QUALITY_BEST_
_version_started: _
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

###bool ofSaveImage(&pix, &buffer, format = OF_IMAGE_FORMAT_PNG, qualityLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: ofSaveImage(&pix, &buffer, format = OF_IMAGE_FORMAT_PNG, qualityLevel = OF_IMAGE_QUALITY_BEST)_
_name: ofSaveImage_
_returns: bool_
_returns_description: _
_parameters: const ofPixels &pix, ofBuffer &buffer, ofImageFormat format=OF_IMAGE_FORMAT_PNG, ofImageQualityType qualityLevel=OF_IMAGE_QUALITY_BEST_
_version_started: _
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

###bool ofSaveImage(&pix, &path, qualityLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: ofSaveImage(&pix, &path, qualityLevel = OF_IMAGE_QUALITY_BEST)_
_name: ofSaveImage_
_returns: bool_
_returns_description: _
_parameters: const ofShortPixels &pix, const filesystem::path &path, ofImageQualityType qualityLevel=OF_IMAGE_QUALITY_BEST_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\todo Needs documentation.





_description: _







<!----------------------------------------------------------------------------->

###bool ofSaveImage(&pix, &path, qualityLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: ofSaveImage(&pix, &path, qualityLevel = OF_IMAGE_QUALITY_BEST)_
_name: ofSaveImage_
_returns: bool_
_returns_description: _
_parameters: const ofFloatPixels &pix, const filesystem::path &path, ofImageQualityType qualityLevel=OF_IMAGE_QUALITY_BEST_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\todo Needs documentation.





_description: _







<!----------------------------------------------------------------------------->

###bool ofSaveImage(&pix, &path, qualityLevel = OF_IMAGE_QUALITY_BEST)

<!--
_syntax: ofSaveImage(&pix, &path, qualityLevel = OF_IMAGE_QUALITY_BEST)_
_name: ofSaveImage_
_returns: bool_
_returns_description: _
_parameters: const ofPixels &pix, const filesystem::path &path, ofImageQualityType qualityLevel=OF_IMAGE_QUALITY_BEST_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\todo Needs documentation.





_description: _







<!----------------------------------------------------------------------------->

###string ofToString(&imgType)

<!--
_syntax: ofToString(&imgType)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: const ofImageType &imgType_
_version_started: 0.10.0_
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

###string ofToString(&v)

<!--
_syntax: ofToString(&v)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: const T &v_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\section String Conversion
Convert a value to a string.

ofToString does its best to convert any value to a string. If the data type
implements a stream << operator, then it will be converted.

Example:
~~~~{.cpp}
		std::string str = "framerate is ";
		str += ofToString(ofGetFrameRate()) + " fps";
		// The string now containes something like "framerate is 60 fps".
~~~~

\tparam T The data type of the value to convert to a string.

**Parameters:**

value The value to convert to a string.

**Returns**: A string representing the value or an empty string on failure.





_description: _







<!----------------------------------------------------------------------------->

