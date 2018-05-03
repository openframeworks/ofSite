#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






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

Parameters:
value The value to convert to a string.

Returns: A string representing the value or an empty string on failure.





_description: _







<!----------------------------------------------------------------------------->

###string ofToString(&pixelType)

<!--
_syntax: ofToString(&pixelType)_
_name: ofToString_
_returns: string_
_returns_description: _
_parameters: const ofPixelFormat &pixelType_
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

