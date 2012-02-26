#class ofVideoPlayer


##Description

The ofVideoPlayer class loads in a movie file via quicktime in windows and OSX or gstreamer in linux, and offers various controls to play the movie, control the properties of the movie, and to access the pixels of a given frame.

Example:
~~~~{.cpp}
ofVideoPlayer myPlayer;
~~~~




##Methods



### ofVideoPlayer()

<!--
_syntax: ofVideoPlayer()_
_name: ofVideoPlayer_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void start()

<!--
_syntax: start()_
_name: start_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Starts the movie, checking for whether the movie has been both loaded and if it has been started. If it has been loaded but not started the movie is initialized and then played, otherwise it is just played.






<!----------------------------------------------------------------------------->

###void ~ofVideoPlayer()

<!--
_syntax: ~ofVideoPlayer()_
_name: ~ofVideoPlayer_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void createImgMemAndGWorld()

<!--
_syntax: createImgMemAndGWorld()_
_name: createImgMemAndGWorld_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool loadMovie(name)

<!--
_syntax: loadMovie(name)_
_name: loadMovie_
_returns: bool_
_returns_description: _
_parameters: string name_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Load a movie file (fileName) into that object. It will look for the movie file inside of the data/ folder. The movie does not automatically play once loaded.

Example:
~~~~{.cpp}
ofVideoPlayer myPlayer;
myPlayer.loadMovie("myMovie.mov");
~~~~






<!----------------------------------------------------------------------------->

###void seek_lock()

<!--
_syntax: seek_lock()_
_name: seek_lock_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void closeMovie()

<!--
_syntax: closeMovie()_
_name: closeMovie_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Closes the movie file and de-allocates resources.


Example:
~~~~{.cpp}
ofVideoPlayer myPlayer;
myPlayer.loadMovie("myMovie.mov"); //Loads video resources
myPlayer.closeMovie(); //Unloads video resources
~~~~






<!----------------------------------------------------------------------------->

###void seek_unlock()

<!--
_syntax: seek_unlock()_
_name: seek_unlock_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Calls the closeMovie() function, which closes the movie file and de-allocates resources.






<!----------------------------------------------------------------------------->

###void gstHandleMessage()

<!--
_syntax: gstHandleMessage()_
_name: gstHandleMessage_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Calls the idleMovie() function. This function idles the movie player, so that the movie can play. If you don't call it, when the movie is playing then you may encounter problems, especially on windows machines. 






<!----------------------------------------------------------------------------->

###bool allocate()

<!--
_syntax: allocate()_
_name: allocate_
_returns: bool_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void idleMovie()

<!--
_syntax: idleMovie()_
_name: idleMovie_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This function idles the movie player, so that the movie can play. If you don't call it, when the movie is playing then you may encouter problems, especially on winodws machines.






<!----------------------------------------------------------------------------->

###void play()

<!--
_syntax: play()_
_name: play_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Plays the movie. If the movie has been stopped or paused it will the continue playback at the point it was stopped. 






<!----------------------------------------------------------------------------->

###void stop()

<!--
_syntax: stop()_
_name: stop_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Stops the movie. 






<!----------------------------------------------------------------------------->

###bool isFrameNew()

<!--
_syntax: isFrameNew()_
_name: isFrameNew_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

For example, if the pixels are new, you could then process them.
~~~~{.cpp}

if (myMovie.isFrameNew()){
	// do something
}
~~~~






<!----------------------------------------------------------------------------->

###unsigned char * getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: unsigned char *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

For example, to get the red, green, and blue of the pixel at (100,20):

~~~~{.cpp}
unsigned char * pixels = myMovie.getPixels();
int widthOfLine = myMovie.width;  // how long is a line of pixels
int red 	= pixels[(20 * widthOfLine) + 100 * 3    ];
int green 	= pixels[(20 * widthOfLine) + 100 * 3 + 1];
int blue 	= pixels[(20 * widthOfLine) + 100 * 3 + 2];
~~~~






<!----------------------------------------------------------------------------->

###float getPosition()

<!--
_syntax: getPosition()_
_name: getPosition_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the position of the playhead in seconds.




<!----------------------------------------------------------------------------->

###float getSpeed()

<!--
_syntax: getSpeed()_
_name: getSpeed_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the speed that the movie is being played at as a floating point number. 1 = normal speed, 0 = paused, -1 = backwards. 






<!----------------------------------------------------------------------------->

###float getDuration()

<!--
_syntax: getDuration()_
_name: getDuration_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Returns the duration of the movie in seconds as a floating number.




<!----------------------------------------------------------------------------->

###bool getIsMovieDone()

<!--
_syntax: getIsMovieDone()_
_name: getIsMovieDone_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Returns whether the movie has played all the way until the end.



<!----------------------------------------------------------------------------->

###void setPosition(pct)

<!--
_syntax: setPosition(pct)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: float pct_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sets the position of the playhead to a given percentage through the movie. This can be used to scrub through a movie. 






<!----------------------------------------------------------------------------->

###void setVolume(volume)

<!--
_syntax: setVolume(volume)_
_name: setVolume_
_returns: void_
_returns_description: _
_parameters: int volume_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sets the volume of a movie as it plays. The maximum values is 100, 0 is silent.






<!----------------------------------------------------------------------------->

###void setLoopState(state)

<!--
_syntax: setLoopState(state)_
_name: setLoopState_
_returns: void_
_returns_description: _
_parameters: int state_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the looping state of the movie. Deafult behavior is to loop. There are three options:
~~~~{.cpp}

OF_LOOP_NONE - don't loop, the movie will stop when it gets to the last frame (or first frame, if playing backwards)
OF_LOOP_NORMAL - loop normally (the last frame loops to the first frame)
OF_LOOP_PALINDROME - loop back and forth
~~~~






<!----------------------------------------------------------------------------->

###void setSpeed(speed)

<!--
_syntax: setSpeed(speed)_
_name: setSpeed_
_returns: void_
_returns_description: _
_parameters: float speed_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sets the speed of the movie that is playing. 1 = normal, 2 = 2x as fast, 0 = stopped, -1 = backwards, etc; 






<!----------------------------------------------------------------------------->

###void setFrame(frame)

<!--
_syntax: setFrame(frame)_
_name: setFrame_
_returns: void_
_returns_description: _
_parameters: int frame_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sets the current frame of the video. Should be used only if you know the bounds of the movie ( using totalNumberFrames() ) or store a location using getCurrentFrame();






<!----------------------------------------------------------------------------->

###void setUseTexture(bUse)

<!--
_syntax: setUseTexture(bUse)_
_name: setUseTexture_
_returns: void_
_returns_description: _
_parameters: bool bUse_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Set the usage of texture inside this object. Typically, you will want to draw the movie on screen, and so it will be necessary to use a texture, but there may be cases where it helps to not use a texture in order to save memory or for better performance. To disable the internal use of the texture, you can load the movie like this:
~~~~{.cpp}

myMovie.setUseTexture(false);
myMovie.loadMovie("blah.mov");
~~~~






<!----------------------------------------------------------------------------->

###ofTexture getTextureReference()

<!--
_syntax: getTextureReference()_
_name: getTextureReference_
_returns: ofTexture_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns a reference to the videoPlayer's texture.






<!----------------------------------------------------------------------------->

###void draw(x, y, w, h)

<!--
_syntax: draw(x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Draws the texture of the movie player class at the position (x,y) with the given width (w) and height (h). 






<!----------------------------------------------------------------------------->

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Draws the texture of the movie player class as the position (x,y) with the internal width and height of the loaded movie. 






<!----------------------------------------------------------------------------->

###void setAnchorPercent(xPct, yPct)

<!--
_syntax: setAnchorPercent(xPct, yPct)_
_name: setAnchorPercent_
_returns: void_
_returns_description: _
_parameters: float xPct, float yPct_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
_returns_description: _
_parameters: int x, int y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _







<!----------------------------------------------------------------------------->

###void resetAnchor()

<!--
_syntax: resetAnchor()_
_name: resetAnchor_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

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
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sets the paused state of the movie. Use "true" to pause and false to unpause. 






<!----------------------------------------------------------------------------->

###int getCurrentFrame()

<!--
_syntax: getCurrentFrame()_
_name: getCurrentFrame_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the number of frames that the movie file being played contains.




<!----------------------------------------------------------------------------->

###void firstFrame()

<!--
_syntax: firstFrame()_
_name: firstFrame_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Moves the playhead to the first frame of the movie. This can also be accomplished using setCurrentFrame(0).






<!----------------------------------------------------------------------------->

###void nextFrame()

<!--
_syntax: nextFrame()_
_name: nextFrame_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Advances the playhead by one frame.






<!----------------------------------------------------------------------------->

###void previousFrame()

<!--
_syntax: previousFrame()_
_name: previousFrame_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Reverses the playhead by one frame.






<!----------------------------------------------------------------------------->

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Get the height of the movie file.




<!----------------------------------------------------------------------------->

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _



Get the width of the movie file.



<!----------------------------------------------------------------------------->

###void setPlayer(newPlayer)

<!--
_syntax: setPlayer(newPlayer)_
_name: setPlayer_
_returns: void_
_returns_description: _
_parameters: ofPtr< ofBaseVideoPlayer > newPlayer_
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







<!----------------------------------------------------------------------------->

###ofPtr getPlayer()

<!--
_syntax: getPlayer()_
_name: getPlayer_
_returns: ofPtr_
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







<!----------------------------------------------------------------------------->

###void setPixelFormat(pixelFormat)

<!--
_syntax: setPixelFormat(pixelFormat)_
_name: setPixelFormat_
_returns: void_
_returns_description: _
_parameters: ofPixelFormat pixelFormat_
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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int getLoopState()

<!--
_syntax: getLoopState()_
_name: getLoopState_
_returns: int_
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







<!----------------------------------------------------------------------------->

###void draw(&p)

<!--
_syntax: draw(&p)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
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







<!----------------------------------------------------------------------------->

###void draw(&r)

<!--
_syntax: draw(&r)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &r_
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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

##Variables



###int width

<!--
_name: width_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

Variable containing the width of the video.






<!----------------------------------------------------------------------------->

###bool bStarted

<!--
_name: bStarted_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int height

<!--
_name: height_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

Variable containing the height of the video.






<!----------------------------------------------------------------------------->

###bool bPlaying

<!--
_name: bPlaying_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###float speed

<!--
_name: speed_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

Contains the playback speed of the video. 1.0 is the normal speed. 2.0 is double the normal speed, -1 is backwards etc. 






<!----------------------------------------------------------------------------->

###bool bPaused

<!--
_name: bPaused_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool bLoaded

<!--
_name: bLoaded_
_type: bool_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

A boolean that describes if the movie loaded properly. 






<!----------------------------------------------------------------------------->

###bool bIsFrameNew

<!--
_name: bIsFrameNew_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int nFrames

<!--
_name: nFrames_
_type: int_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

Variable containing the number of frames of the video.






<!----------------------------------------------------------------------------->

###ofGstVideoData gstData

<!--
_name: gstData_
_type: ofGstVideoData_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###unsigned char * pixels

<!--
_name: pixels_
_type: unsigned char *_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

Array of pixels that represents the current frame of live video. The data is stored as RGB in an array which is the size: width*height*3.






<!----------------------------------------------------------------------------->

###bool bIsMovieDone

<!--
_name: bIsMovieDone_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool bHavePixelsChanged

<!--
_name: bHavePixelsChanged_
_type: bool_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

A boolean controlling if pixels have change.






<!----------------------------------------------------------------------------->

###bool isStream

<!--
_name: isStream_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofTexture tex

<!--
_name: tex_
_type: ofTexture_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

ofTexture used by the video player class. 






<!----------------------------------------------------------------------------->

###GstElement * gstPipeline

<!--
_name: gstPipeline_
_type: GstElement *_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool bUseTexture

<!--
_name: bUseTexture_
_type: bool_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

bUseTexture enables and disables the use of ofTexture in our video player.






<!----------------------------------------------------------------------------->

###GstElement * gstSink

<!--
_name: gstSink_
_type: GstElement *_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool allocated

<!--
_name: allocated_
_type: bool_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _

Boolean varible containing true if the texture has been already allocated inside our video player.






<!----------------------------------------------------------------------------->

###gint64 durationNanos

<!--
_name: durationNanos_
_type: gint64_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int loopMode

<!--
_name: loopMode_
_type: int_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool posChangingPaused

<!--
_name: posChangingPaused_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###pthread_mutex_t seek_mutex

<!--
_name: seek_mutex_
_type: pthread_mutex_t_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofPtr player

<!--
_name: player_
_type: ofPtr_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofTexture playerTex

<!--
_name: playerTex_
_type: ofTexture_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofPixelFormat internalPixelFormat

<!--
_name: internalPixelFormat_
_type: ofPixelFormat_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

