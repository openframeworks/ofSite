#class ofVideoPlayer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseVideoPlayer, ofBaseVideoDraws_
-->

##InlineDescription






##Description

The ofVideoPlayer class loads in a movie file via quicktime in windows and OSX or gstreamer in linux, and offers various controls to play the movie, control the properties of the movie, and to access the pixels of a given frame.

Example:

~~~~{.cpp}
ofVideoPlayer myPlayer;
myPlayer.load("movies/fingers.mov");
~~~~

You need to call play() for your video to begin playing:

~~~~{.cpp}
myPlayer.play();
~~~~

and update to ensure that you're grabbing new frames from the file as the video library decodes them and serves them up as textures:

~~~~{.cpp}

void myApp::update(){
    myPlayer.update(); // get all the new frames
}

~~~~

Just like the ofImage, the ofVideoPlayer can be drawn:

~~~~{.cpp}

myPlayer.draw(20,20); // draw at 20, 20 from the current transform matrix

~~~~

or you can just get the pixels from the player, as we do in the videoGrabberExample in the examples:

~~~~{.cpp}

if (vidGrabber.isFrameNew()){
	int totalPixels = camWidth*camHeight*3;
	unsigned char * pixels = vidGrabber.getPixels();
	for (int i = 0; i < totalPixels; i++){
		videoInverted[i] = 255 - pixels[i];
	}
	texture.loadData(videoInverted, camWidth,camHeight, GL_RGB);
}

~~~~





##Methods



###void bind()

<!--
_syntax: bind()_
_name: bind_
_returns: void_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _


Example:

~~~~{.cpp}
ofVideoPlayer myPlayer;
myPlayer.loadMovie("myMovie.mov"); //Loads video resources
myPlayer.closeMovie(); //Unloads video resources
~~~~





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Draws the texture of the movie player class as the position (x,y) with the internal width and height of the loaded movie. 





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_version_started: 006_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_version_started: 006_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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







_description: _







<!----------------------------------------------------------------------------->

###string getMoviePath()

<!--
_syntax: getMoviePath()_
_name: getMoviePath_
_returns: string_
_returns_description: _
_parameters: _
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
_version_started: 0072_
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

###ofPixels & getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: ofPixels &_
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







_description: _

For example, to get the red, green, and blue of the pixel at (100,20):

~~~~{.cpp}
unsigned char * pixels = myMovie.getPixels();
int nChannels = movie.getPixelsRef().getNumChannels();
int widthOfLine = myMovie.width;  // how long is a line of pixels
int red 	= pixels[(20 * widthOfLine + 100) * nChannels    ];
int green 	= pixels[(20 * widthOfLine + 100) * nChannels + 1];
int blue 	= pixels[(20 * widthOfLine + 100) * nChannels + 2];
~~~~





<!----------------------------------------------------------------------------->

###const ofPixels & getPixels()

<!--
_syntax: getPixels()_
_name: getPixels_
_returns: const ofPixels &_
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







_description: _







<!----------------------------------------------------------------------------->

###shared_ptr< ofBaseVideoPlayer > getPlayer()

<!--
_syntax: getPlayer()_
_name: getPlayer_
_returns: shared_ptr< ofBaseVideoPlayer >_
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







<!----------------------------------------------------------------------------->

###const shared_ptr< ofBaseVideoPlayer > getPlayer()

<!--
_syntax: getPlayer()_
_name: getPlayer_
_returns: const shared_ptr< ofBaseVideoPlayer >_
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







_description: _







<!----------------------------------------------------------------------------->

###shared_ptr< PlayerType > getPlayer()

<!--
_syntax: getPlayer()_
_name: getPlayer_
_returns: shared_ptr< PlayerType >_
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







_description: _







<!----------------------------------------------------------------------------->

###const shared_ptr< PlayerType > getPlayer()

<!--
_syntax: getPlayer()_
_name: getPlayer_
_returns: const shared_ptr< PlayerType >_
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
_version_started: 006_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofTexture & getTexture()

<!--
_syntax: getTexture()_
_name: getTexture_
_returns: ofTexture &_
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







_description: _







<!----------------------------------------------------------------------------->

###const ofTexture & getTexture()

<!--
_syntax: getTexture()_
_name: getTexture_
_returns: const ofTexture &_
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







_description: _







<!----------------------------------------------------------------------------->

###vector< ofTexture > & getTexturePlanes()

<!--
_syntax: getTexturePlanes()_
_name: getTexturePlanes_
_returns: vector< ofTexture > &_
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







_description: _







<!----------------------------------------------------------------------------->

###const vector< ofTexture > & getTexturePlanes()

<!--
_syntax: getTexturePlanes()_
_name: getTexturePlanes_
_returns: const vector< ofTexture > &_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_version_started: 006_
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

###void initDefaultPlayer()

<!--
_syntax: initDefaultPlayer()_
_name: initDefaultPlayer_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.9.0_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This gets whether there are new pixels in your movies player. This is a way to poll the library that's actually reading your video file to see whether there's something new: For example, if the pixels are new, you could then process them.

~~~~{.cpp}

if (myMovie.isFrameNew()){
	ofPixels p = myPlayer.getPixelsRef();
	// walk over each pixel and make something fun
}
~~~~





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







_description: _

Whether the resources that you've tried to load into your ofVideoPlayer have been loaded yet.





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







_description: _

Whether the the ofVideoPlayer is currently paused.





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







_description: _

Whether the the ofVideoPlayer is currently playing.





<!----------------------------------------------------------------------------->

###bool isUsingTexture()

<!--
_syntax: isUsingTexture()_
_name: isUsingTexture_
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
_version_started: 006_
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
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _







_description: _

Constructor.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_version_started: 006_
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
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _

Resets the ancher point of this ofVideoPlayer, if one has been set.





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
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _







_description: _

Sets an anchor percentage for this ofVideoPlayer instance





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

Sets anchor points for this ofVideoPlayer instance.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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







_description: _


~~~~{.cpp}

OF_LOOP_NONE - don't loop, the movie will stop when it gets to the last frame (or first frame, if playing backwards)
OF_LOOP_NORMAL - loop normally (the last frame loops to the first frame)
OF_LOOP_PALINDROME - loop back and forth. Movie will play forward until it gets to the last frame, then plays backwards until it gets to the first frame, and so on.
~~~~





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
OSX: Choose from OF_PIXELS_RGB or OF_PIXELS_RGBA






<!----------------------------------------------------------------------------->

###void setPlayer(newPlayer)

<!--
_syntax: setPlayer(newPlayer)_
_name: setPlayer_
_returns: void_
_returns_description: _
_parameters: shared_ptr< ofBaseVideoPlayer > newPlayer_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Sets the position of the playhead to a given percentage through the movie. This can be used to scrub through a movie. 





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Set the usage of texture inside this object. Typically, you will want to draw the movie on screen, and so it will be necessary to use a texture, but there may be cases where it helps to not use a texture in order to save memory or for better performance. To disable the internal use of the texture, you can load the movie like this:
~~~~{.cpp}

myMovie.setUseTexture(false);
myMovie.loadMovie("blah.mov");
~~~~





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
_version_started: 006_
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

###void unbind()

<!--
_syntax: unbind()_
_name: unbind_
_returns: void_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

##Variables



###bool bUseTexture

<!--
_name: bUseTexture_
_type: bool_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###string moviePath

<!--
_name: moviePath_
_type: string_
_access: private_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofTexture *  playerTex

<!--
_name: playerTex_
_type: ofTexture * _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofTexture tex

<!--
_name: tex_
_type: ofTexture_
_access: private_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

