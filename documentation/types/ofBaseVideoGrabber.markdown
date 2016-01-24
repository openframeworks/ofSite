#class ofBaseVideoGrabber


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: ofBaseVideo_
-->

##InlineDescription

A base class representing a video device such as a camera.





##Description





##Methods



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

Get the video grabber's height.

Returns: the video grabber's height.





_description: _







<!----------------------------------------------------------------------------->

###ofTexture * getTexturePtr()

<!--
_syntax: getTexturePtr()_
_name: getTexturePtr_
_returns: ofTexture *_
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

Get the video grabber's internal ofTexture pointer if available.

\note Subclasses should implement this method only if internal API can
upload video grabber pixels directly to an ofTexture.


Returns: the internal ofTexture pointer or nullptr if not available.





_description: _







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

Get the video grabber's width.

Returns: the video grabber's width.





_description: _







<!----------------------------------------------------------------------------->

###vector< ofVideoDevice > listDevices()

<!--
_syntax: listDevices()_
_name: listDevices_
_returns: vector< ofVideoDevice >_
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

Get a list of available video grabber devices.

Returns: a std::vector of ofVideoDevice objects.





_description: _







<!----------------------------------------------------------------------------->

###void setDesiredFrameRate(framerate)

<!--
_syntax: setDesiredFrameRate(framerate)_
_name: setDesiredFrameRate_
_returns: void_
_returns_description: _
_parameters: int framerate_
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

Set the video grabber's desired frame rate.

Many video grabbers support user-specified frame rates.  This frame rate
should be considered a hint for the video grabber and is not guaranteed.


Parameters:
framerate the desired frame rate.





_description: _







<!----------------------------------------------------------------------------->

###void setDeviceID(deviceID)

<!--
_syntax: setDeviceID(deviceID)_
_name: setDeviceID_
_returns: void_
_returns_description: _
_parameters: int deviceID_
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

Set the video grabber's device ID.

In most cases, a user can choose a specific grabber source by ID.  This
device ID information should be available to the user via the
listDevices() method.


Parameters:
deviceID The device ID provided by listDevices().





_description: _







<!----------------------------------------------------------------------------->

###void setVerbose(bTalkToMe)

<!--
_syntax: setVerbose(bTalkToMe)_
_name: setVerbose_
_returns: void_
_returns_description: _
_parameters: bool bTalkToMe_
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

Set the video grabber's hardware verbosity level.

Parameters:
bTalkToMe true if verbose grabber logging feedback is required.





_description: _







<!----------------------------------------------------------------------------->

###bool setup(w, h)

<!--
_syntax: setup(w, h)_
_name: setup_
_returns: bool_
_returns_description: _
_parameters: int w, int h_
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

Set up the grabber with the requested width and height.

Some video grabbers may take the requested width and height as
a hint and choose the closest dimensions to those requested.
Users can check the actual width and height by calling getWidth() and
getHeight() respectively after a successful setup.


Parameters:
w the requested width.
h the requested height.

Returns: true if the video grabber was set up successfully.





_description: _







<!----------------------------------------------------------------------------->

###void videoSettings()

<!--
_syntax: videoSettings()_
_name: videoSettings_
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

Request a native GUI for video grabber settings.
\note This feature may not be implemented by all video grabbers.





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseVideoGrabber()

<!--
_syntax: ~ofBaseVideoGrabber()_
_name: ~ofBaseVideoGrabber_
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

Destroy the ofBaseVideoGrabber





_description: _







<!----------------------------------------------------------------------------->

##Variables



