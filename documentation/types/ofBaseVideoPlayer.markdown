#class ofBaseVideoPlayer


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: ofBaseVideo_
-->

##InlineDescription

A base class representing a video player.





##Description





##Methods



###void firstFrame()

<!--
_syntax: firstFrame()_
_name: firstFrame_
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

Set the playhead position to the first frame.

This is functionally equivalent to setFrame(0) or setPosition(0.0).





_description: _







<!----------------------------------------------------------------------------->

###int getCurrentFrame()

<!--
_syntax: getCurrentFrame()_
_name: getCurrentFrame_
_returns: int_
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

Get the current playhead position as a frame number.

Returns: The current playhead position as a frame number.





_description: _







<!----------------------------------------------------------------------------->

###float getDuration()

<!--
_syntax: getDuration()_
_name: getDuration_
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

Get the duration of the loaded video in seconds.

Returns: The duration of the loaded video in seconds.





_description: _







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

Get the height in pixels of the loaded video.

Returns: The height in pixels of the loaded video or 0 if none is loaded.





_description: _







<!----------------------------------------------------------------------------->

###bool getIsMovieDone()

<!--
_syntax: getIsMovieDone()_
_name: getIsMovieDone_
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

Returns true if the loaded video has finished playing.

Returns: True if the loaded video has finished playing.





_description: _







<!----------------------------------------------------------------------------->

###ofLoopType getLoopState()

<!--
_syntax: getLoopState()_
_name: getLoopState_
_returns: ofLoopType_
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

Get the current loop state of the video.

See also: ::ofLoopType





_description: _







<!----------------------------------------------------------------------------->

###float getPosition()

<!--
_syntax: getPosition()_
_name: getPosition_
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

Get the current playhead position of the loaded video.

This value is a normalized floating point value between 0.0 and 1.0 that
represents the position of the playhead. 0.0 maps to the first frame of
the loaded video and 1.0 maps to the last frame of the loaded video.


Returns: A value between 0.0 and 1.0 representing playhead position.





_description: _







<!----------------------------------------------------------------------------->

###float getSpeed()

<!--
_syntax: getSpeed()_
_name: getSpeed_
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

Get the playback speed of the video player.

When the loop state is OF_LOOP_NONE or OF_LOOP_NORMAL, positive speed
will scale a forward playback rate while a negative speed will scale a
a backward playback rate. When the loop state is OF_LOOP_PALINDROME,
the direction of playback will change each loop, but the playback rate
will still be scaled by the absolute value of the speed.


Returns: The playback speed of the video player.





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

Get a pointer to the video texture used internally if it exists.

If the video player implementation supports direct-to-texture rendering,
this method will return a pointer to the internal texture. If
direct-to-texture rendering is not supported, nullptr is returned.


Returns: A valid pointer to the internal texture, otherwise a nullptr.





_description: _







<!----------------------------------------------------------------------------->

###int getTotalNumFrames()

<!--
_syntax: getTotalNumFrames()_
_name: getTotalNumFrames_
_returns: int_
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

Get the total number of frames in the currently loaded video.

Returns: The total number of frames in the currently loaded video.





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

Get the width in pixels of the loaded video.

Returns: The width in pixels of the loaded video or 0 if none is loaded.





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

Returns true if a video is loaded.

This is helpful when loading a video with loadAsync(). This is also
an alias of isLoaded().


See also: loadAsync()

Returns: True if a video is loaded.





_description: _







<!----------------------------------------------------------------------------->

###bool isLoaded()

<!--
_syntax: isLoaded()_
_name: isLoaded_
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

Returns true if a video is loaded.

This is helpful when loading a video with loadAsync(). This is also an
alias of isInitialized().


See also: loadAsync()

Returns: True if a video is loaded.





_description: _







<!----------------------------------------------------------------------------->

###bool isPaused()

<!--
_syntax: isPaused()_
_name: isPaused_
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

Returns true if the video is paused.

Returns: True if the video is paused.





_description: _







<!----------------------------------------------------------------------------->

###bool isPlaying()

<!--
_syntax: isPlaying()_
_name: isPlaying_
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

Returns true if the loaded video is playing.

Returns: True if the loaded video is playing.





_description: _







<!----------------------------------------------------------------------------->

###bool load(name)

<!--
_syntax: load(name)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: string name_
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

Load a video resource by name.

The list of supported video types and sources (e.g. rtsp:// sources) is
implementation dependent.


Parameters:
name The name of the video resource to load.

Returns: True if the video was loaded successfully.

See also: loadAsync()





_description: _







<!----------------------------------------------------------------------------->

###void loadAsync(name)

<!--
_syntax: loadAsync(name)_
_name: loadAsync_
_returns: void_
_returns_description: _
_parameters: string name_
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

Asynchronously load a video resource by name.

The list of supported video types and sources (e.g. rtsp:// sources) is
implementation dependent.

When this method is used to load a video resouce, users can determine
when the video is loaded by calling isLoaded().


Parameters:
name The name of the video resource to load.

See also: isLoaded()





_description: _







<!----------------------------------------------------------------------------->

###void nextFrame()

<!--
_syntax: nextFrame()_
_name: nextFrame_
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

Advance the playhead forward one frame.

This allows the user to advance through the video manually one frame at
a time without calling play().





_description: _







<!----------------------------------------------------------------------------->

###void play()

<!--
_syntax: play()_
_name: play_
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

Play the video from the current playhead position.

See also: getPosition()

See also: setPostion()





_description: _







<!----------------------------------------------------------------------------->

###void previousFrame()

<!--
_syntax: previousFrame()_
_name: previousFrame_
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

Advance the playhead backward one frame.

This allows the user to advance backward through the video manually one
frame at a time without calling play().





_description: _







<!----------------------------------------------------------------------------->

###void setFrame(frame)

<!--
_syntax: setFrame(frame)_
_name: setFrame_
_returns: void_
_returns_description: _
_parameters: int frame_
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

Set the current frame by frame number.

Similar to setPosition(), but accepts a frame number instead of
a normalized floating point value. Frame count begins with the first
frame as 0 and the last frame as getTotalNumFrames() - 1.


Parameters:
frame The frame number to set the new playhead to.





_description: _







<!----------------------------------------------------------------------------->

###void setLoopState(state)

<!--
_syntax: setLoopState(state)_
_name: setLoopState_
_returns: void_
_returns_description: _
_parameters: ofLoopType state_
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

Set the video loop state.

Parameters:
state The loop state of the video.

See also: ::ofLoopType





_description: _







<!----------------------------------------------------------------------------->

###void setPaused(bPause)

<!--
_syntax: setPaused(bPause)_
_name: setPaused_
_returns: void_
_returns_description: _
_parameters: bool bPause_
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

Set the paused state of the video.

Parameters:
bPause True to pause the video, false to play.





_description: _







<!----------------------------------------------------------------------------->

###void setPosition(pct)

<!--
_syntax: setPosition(pct)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: float pct_
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

Set the position of the playhead.

This value is a normalized floating point value between 0.0 and 1.0 that
represents the position of the playhead. 0.0 maps to the first frame of
the loaded video and 1.0 maps to the last frame of the loaded video.


Parameters:
pct A value between 0.0 and 1.0 representing playhead position.





_description: _







<!----------------------------------------------------------------------------->

###void setSpeed(speed)

<!--
_syntax: setSpeed(speed)_
_name: setSpeed_
_returns: void_
_returns_description: _
_parameters: float speed_
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

Set the video playback speed.

When the loop state is OF_LOOP_NONE or OF_LOOP_NORMAL, positive speed
will scale a forward playback rate while a negative speed will scale a
a backward playback rate. When the loop state is OF_LOOP_PALINDROME,
the direction of playback will change each loop, but the playback rate
will still be scaled by the absolute value of the speed.

To play a video forward at normal speed, set the loop state to
OF_LOOP_NONE or OF_LOOP_NORMAL and a speed of 1.0. To double the
playback rate, set the speed to 2.0. To play a video backward, set the
speed to a negative number. A speed 0.25 will play the video at 1/4 the
the normal rate and a rate of 0.0 will effectively stop playback.


Parameters:
speed The desired playback speed of the video.





_description: _







<!----------------------------------------------------------------------------->

###void setVolume(volume)

<!--
_syntax: setVolume(volume)_
_name: setVolume_
_returns: void_
_returns_description: _
_parameters: float volume_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the volume of the video player.

This value is a normalized floating point value between 0.0 and 1.0 that
represents the video player volume. 0.0 maps to silence and 1.0 maps to
maximum volume.


Parameters:
volume A value between 0.0 and 1.0 representing volume.





_description: _







<!----------------------------------------------------------------------------->

###void stop()

<!--
_syntax: stop()_
_name: stop_
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

Pause and reset the playhead position to the first frame.





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseVideoPlayer()

<!--
_syntax: ~ofBaseVideoPlayer()_
_name: ~ofBaseVideoPlayer_
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

Destroys the ofBaseVideoPlayer.





_description: _







<!----------------------------------------------------------------------------->

##Variables



