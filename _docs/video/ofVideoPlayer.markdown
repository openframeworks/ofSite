#class ofVideoPlayer

//----------------------

##Example



//----------------------

##Reference



//----------------------

##Methods



//----------------------

###void ofVideoPlayer()

_syntax: ofVideoPlayer()_

_name: ofVideoPlayer_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void start()

_syntax: start()_

_name: start_

_returns: void_

_returns_description: _

_parameters: _

_access: protected_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Starts the movie, checking for whether the movie has been both loaded and if it has been started. If it has been loaded but not started the movie is initialized and then played, otherwise it is just played.















//----------------------

###void ~ofVideoPlayer()

_syntax: ~ofVideoPlayer()_

_name: ~ofVideoPlayer_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void createImgMemAndGWorld()

_syntax: createImgMemAndGWorld()_

_name: createImgMemAndGWorld_

_returns: void_

_returns_description: _

_parameters: _

_access: protected_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###bool loadMovie(name)

_syntax: loadMovie(name)_

_name: loadMovie_

_returns: bool_

_returns_description: Returns true if the video is loaded successfully and false if not_

_parameters: string name_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Load a movie file (fileName) into that object. It will look for the movie file inside of the data/ folder. The movie does not automatically play once loaded.

Example:

$$code(lang=c++)
ofVideoPlayer myPlayer;
myPlayer.loadMovie('myMovie.mov');
$$/code
















//----------------------

###void seek_lock()

_syntax: seek_lock()_

_name: seek_lock_

_returns: void_

_returns_description: _

_parameters: _

_access: protected_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void closeMovie()

_syntax: closeMovie()_

_name: closeMovie_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Closes the movie file and de-allocates resources.


Example:

$$code(lang=c++)
ofVideoPlayer myPlayer;
myPlayer.loadMovie("myMovie.mov"); //Loads video resources
myPlayer.closeMovie(); //Unloads video resources
$$/code
















//----------------------

###void seek_unlock()

_syntax: seek_unlock()_

_name: seek_unlock_

_returns: void_

_returns_description: _

_parameters: _

_access: protected_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void close()

_syntax: close()_

_name: close_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Calls the closeMovie() function, which closes the movie file and de-allocates resources.















//----------------------

###void gstHandleMessage()

_syntax: gstHandleMessage()_

_name: gstHandleMessage_

_returns: void_

_returns_description: _

_parameters: _

_access: protected_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void update()

_syntax: update()_

_name: update_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Calls the idleMovie() function. This function idles the movie player, so that the movie can play. If you don't call it, when the movie is playing then you may encounter problems, especially on windows machines. 















//----------------------

###bool allocate()

_syntax: allocate()_

_name: allocate_

_returns: bool_

_returns_description: _

_parameters: _

_access: protected_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void idleMovie()

_syntax: idleMovie()_

_name: idleMovie_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

This function idles the movie player, so that the movie can play. If you don't call it, when the movie is playing then you may encouter problems, especially on winodws machines.















//----------------------

###void play()

_syntax: play()_

_name: play_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Plays the movie. If the movie has been stopped or paused it will the continue playback at the point it was stopped. 















//----------------------

###void stop()

_syntax: stop()_

_name: stop_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Stops the movie. 















//----------------------

###bool isFrameNew()

_syntax: isFrameNew()_

_name: isFrameNew_

_returns: bool_

_returns_description: Returns true if the frame of pixels is "new"._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

For example, if the pixels are new, you could then process them.

$$code(lang=c++)

if (myMovie.isFrameNew()){
	;	// do something
}

$$/code
















//----------------------

###unsigned char * getPixels()

_syntax: getPixels()_

_name: getPixels_

_returns: unsigned char *_

_returns_description: Returns a pointer to the array of pixels that are RGB (width*height*3)._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

For example, to get the red green and blue of the pixel (100,20):

unsigned char * pixels = myMovie.getPixels();
int widthOfLine = myMovie.width * w;  // how long is a line of pixels
int red 	= pixels[(20 * widthOfLine) + 100 * 3    ];
int green 	= pixels[(20 * widthOfLine) + 100 * 3 + 1];
int blue 	= pixels[(20 * widthOfLine) + 100 * 3 + 2];















//----------------------

###float getPosition()

_syntax: getPosition()_

_name: getPosition_

_returns: float_

_returns_description: Returns the current playhead position, between 0 (start of movie) and 1 (end of movie). _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###float getSpeed()

_syntax: getSpeed()_

_name: getSpeed_

_returns: float_

_returns_description: Returns the current speed of the movie._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

note: 1 = normal speed, 0 = paused, -1 = backwards. 















//----------------------

###float getDuration()

_syntax: getDuration()_

_name: getDuration_

_returns: float_

_returns_description: Returns the duration, in seconds, of the movie. _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###bool getIsMovieDone()

_syntax: getIsMovieDone()_

_name: getIsMovieDone_

_returns: bool_

_returns_description: Returns a boolean with the current status of the movie (returns true if finished, or false if still playing)._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void setPosition(pct)

_syntax: setPosition(pct)_

_name: setPosition_

_returns: void_

_returns_description: _

_parameters: float pct_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Sets the position of the playhead to a given percentage through the movie. Can be used to scrub through a movie. 















//----------------------

###void setVolume(volume)

_syntax: setVolume(volume)_

_name: setVolume_

_returns: void_

_returns_description: _

_parameters: int volume_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Sets the volume of a movie - default = 0, silent 















//----------------------

###void setLoopState(state)

_syntax: setLoopState(state)_

_name: setLoopState_

_returns: void_

_returns_description: _

_parameters: int state_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Sets the looping state of the movie. Deafult behavior is to loop. There are three options:

$$code(lang=c++)

OF_LOOP_NONE - don't loop, the movie will stop when it gets to the last frame (or first frame, if playing backwards)
OF_LOOP_NORMAL - loop normally (the last frame loops to the first frame)
OF_LOOP_PALINDROME - loop back and forth

$$/code
















//----------------------

###void setSpeed(speed)

_syntax: setSpeed(speed)_

_name: setSpeed_

_returns: void_

_returns_description: _

_parameters: float speed_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Sets the speed of the movie that is playing. 1 = normal, 2 = 2x as fast, 0 = stopped, -1 = backwards, etc; 















//----------------------

###void setFrame(frame)

_syntax: setFrame(frame)_

_name: setFrame_

_returns: void_

_returns_description: _

_parameters: int frame_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Sets the current frame of the video. Should be used only if you know the bounds of the movie ( using totalNumberFrames() ) or store a location using getCurrentFrame();















//----------------------

###void setUseTexture(bUse)

_syntax: setUseTexture(bUse)_

_name: setUseTexture_

_returns: void_

_returns_description: _

_parameters: bool bUse_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Set the usage of texture inside this object. Typically, you will want to draw the movie on screen, and so it will be necessary to use a texture, but there may be cases where it helps to not use a texture in order to save memory or for better performance. To disable the internal use of the texture, you can load the movie like this:

$$code(lang=c++)

myMovie.setUseTexture(false);
myMovie.loadMovie("blah.mov");

$$/code
















//----------------------

###ofTexture & getTextureReference()

_syntax: getTextureReference()_

_name: getTextureReference_

_returns: ofTexture &_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Returns a reference to the videoPlayer's texture.















//----------------------

###void draw(x, y, w, h)

_syntax: draw(x, y, w, h)_

_name: draw_

_returns: void_

_returns_description: _

_parameters: float x, float y, float w, float h_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Draws the texture of the movie player class at the position (x,y) with the given width (w) and height (h). 















//----------------------

###void draw(x, y)

_syntax: draw(x, y)_

_name: draw_

_returns: void_

_returns_description: _

_parameters: float x, float y_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Draws the texture of the movie player class as the position (x,y) with the internal width and height of the loaded movie. 















//----------------------

###void setPaused(bPause)

_syntax: setPaused(bPause)_

_name: setPaused_

_returns: void_

_returns_description: _

_parameters: bool bPause_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Sets the paused state of the movie. Use "true" to pause and false to unpause. 















//----------------------

###int getCurrentFrame()

_syntax: getCurrentFrame()_

_name: getCurrentFrame_

_returns: int_

_returns_description: Returns the current frame of the video._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###int getTotalNumFrames()

_syntax: getTotalNumFrames()_

_name: getTotalNumFrames_

_returns: int_

_returns_description: Returns the total number of frames for the loaded movie._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void firstFrame()

_syntax: firstFrame()_

_name: firstFrame_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Moves the playhead to the first frame of the movie. This can also be accomplished using setCurrentFrame(0).















//----------------------

###void nextFrame()

_syntax: nextFrame()_

_name: nextFrame_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Advances the playhead by one frame.















//----------------------

###void previousFrame()

_syntax: previousFrame()_

_name: previousFrame_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Reverses the playhead by one frame.















//----------------------

###float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_returns_description: Returns the height of the loaded movie._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_returns_description: Returns the width of the loaded movie._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void setAnchorPercent(xPct, yPct)

_syntax: setAnchorPercent(xPct, yPct)_

_name: setAnchorPercent_

_returns: void_

_returns_description: _

_parameters: float xPct, float yPct_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void setAnchorPoint(x, y)

_syntax: setAnchorPoint(x, y)_

_name: setAnchorPoint_

_returns: void_

_returns_description: _

_parameters: int x, int y_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void resetAnchor()

_syntax: resetAnchor()_

_name: resetAnchor_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

##Variables



//----------------------

###int width

_name: width_

_type: int_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

Variable containing the width of the video.













//----------------------

###bool bStarted

_name: bStarted_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###int height

_name: height_

_type: int_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

Variable containing the height of the video.













//----------------------

###bool bPlaying

_name: bPlaying_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###float speed

_name: speed_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

Contains the playback speed of the video. 1.0 is the normal speed. 2.0 is double the normal speed, -1 is backwards etc. 













//----------------------

###bool bPaused

_name: bPaused_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###bool bLoaded

_name: bLoaded_

_type: bool_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

A boolean that describes if the movie loaded properly. 













//----------------------

###bool bIsFrameNew

_name: bIsFrameNew_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###int nFrames

_name: nFrames_

_type: int_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

Variable containing the number of frames of the video.













//----------------------

###ofGstVideoData gstData

_name: gstData_

_type: ofGstVideoData_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###unsigned char * pixels

_name: pixels_

_type: unsigned char *_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

Array of pixels that represents the current frame of live video. The data is stored as RGB in an array which is the size: width*height*3.













//----------------------

###bool bIsMovieDone

_name: bIsMovieDone_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###bool bHavePixelsChanged

_name: bHavePixelsChanged_

_type: bool_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

A boolean controlling if pixels have change.













//----------------------

###bool isStream

_name: isStream_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###ofTexture tex

_name: tex_

_type: ofTexture_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

ofTexture used by the video player class. 













//----------------------

###GstElement * gstPipeline

_name: gstPipeline_

_type: GstElement *_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###bool bUseTexture

_name: bUseTexture_

_type: bool_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

bUseTexture enables and disables the use of ofTexture in our video player.













//----------------------

###GstElement * gstSink

_name: gstSink_

_type: GstElement *_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###bool allocated

_name: allocated_

_type: bool_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

Boolean varible containing true if the texture has been already allocated inside our video player.













//----------------------

###gint64 durationNanos

_name: durationNanos_

_type: gint64_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###int loopMode

_name: loopMode_

_type: int_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###bool posChangingPaused

_name: posChangingPaused_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###pthread_mutex_t seek_mutex

_name: seek_mutex_

_type: pthread_mutex_t_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















