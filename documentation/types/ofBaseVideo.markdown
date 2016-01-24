#class ofBaseVideo


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: ofBaseHasPixels, ofBaseUpdates_
-->

##InlineDescription

A base class representing a video source.





##Description





##Methods



###void close()

<!--
_syntax: close()_
_name: close_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Close the video source.





_description: _







<!----------------------------------------------------------------------------->

###ofPixelFormat getPixelFormat()

<!--
_syntax: getPixelFormat()_
_name: getPixelFormat_
_returns: ofPixelFormat_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns: the current ofPixelFormat.





_description: _







<!----------------------------------------------------------------------------->

###bool isFrameNew()

<!--
_syntax: isFrameNew()_
_name: isFrameNew_
_returns: bool_
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

Returns: true if the pixel data was updated since the last call to update().





_description: _







<!----------------------------------------------------------------------------->

###bool isInitialized()

<!--
_syntax: isInitialized()_
_name: isInitialized_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Determine if the video source is initialized.

Video sources such as cameras are often initialized with a
setup() method.  Video sources such as movie players are often
initialized with a load() method.


Returns: true if the video source is initialized.





_description: _







<!----------------------------------------------------------------------------->

###bool setPixelFormat(pixelFormat)

<!--
_syntax: setPixelFormat(pixelFormat)_
_name: setPixelFormat_
_returns: bool_
_returns_description: _
_parameters: ofPixelFormat pixelFormat_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the requested ofPixelFormat.

Parameters:
pixelFormat the requested ofPixelFormat.

Returns: true if the format was successfully changed.





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseVideo()

<!--
_syntax: ~ofBaseVideo()_
_name: ~ofBaseVideo_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Destroy the ofBaseVideo.





_description: _







<!----------------------------------------------------------------------------->

##Variables



