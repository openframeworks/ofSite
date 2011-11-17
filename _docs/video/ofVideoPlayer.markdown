#class ofVideoPlayer

Example



Reference



Methods



//----------------------

##void start()

_syntax: start()_

_name: start_

_returns: void_

_parameters: _



_description: _

Starts the movie, checking for whether the movie has been both loaded and if it has been started. If it has been loaded but not started the movie is initialized and then played, otherwise it is just played.













//----------------------

##bool setPlayer(ofBaseVideoPlayer *newPlayer)

_syntax: setPlayer(ofBaseVideoPlayer *newPlayer)_

_name: setPlayer_

_returns: bool_

_parameters: _



_description: _















//----------------------

##ofBaseVideoPlayer getPlayer()

_syntax: getPlayer()_

_name: getPlayer_

_returns: ofBaseVideoPlayer_

_parameters: _



_description: _















//----------------------

##bool loadMovie(string name)

_syntax: loadMovie(string name)_

_name: loadMovie_

_returns: bool_

_parameters: string_



_description: _















//----------------------

##void setPixelFormat(ofPixelFormat pixelFormat)

_syntax: setPixelFormat(ofPixelFormat pixelFormat)_

_name: setPixelFormat_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofPixelsRef getPixelsRef()

_syntax: getPixelsRef()_

_name: getPixelsRef_

_returns: ofPixelsRef_

_parameters: _



_description: _















//----------------------

##void setPosition(float pct)

_syntax: setPosition(float pct)_

_name: setPosition_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setVolume(int volume)

_syntax: setVolume(int volume)_

_name: setVolume_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setLoopState(ofLoopType state)

_syntax: setLoopState(ofLoopType state)_

_name: setLoopState_

_returns: void_

_parameters: _



_description: _















//----------------------

##int getLoopState()

_syntax: getLoopState()_

_name: getLoopState_

_returns: int_

_parameters: _



_description: _















//----------------------

##void setSpeed(float speed)

_syntax: setSpeed(float speed)_

_name: setSpeed_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setFrame(int frame)

_syntax: setFrame(int frame)_

_name: setFrame_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setUseTexture(bool bUse)

_syntax: setUseTexture(bool bUse)_

_name: setUseTexture_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void draw(float x, float y, float w, float h)

_syntax: draw(float x, float y, float w, float h)_

_name: draw_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void draw(float x, float y)

_syntax: draw(float x, float y)_

_name: draw_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void draw(const ofPoint &p)

_syntax: draw(const ofPoint &p)_

_name: draw_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setAnchorPercent(float xPct, float yPct)

_syntax: setAnchorPercent(float xPct, float yPct)_

_name: setAnchorPercent_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void setAnchorPoint(float x, float y)

_syntax: setAnchorPoint(float x, float y)_

_name: setAnchorPoint_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void setPaused(bool bPause)

_syntax: setPaused(bool bPause)_

_name: setPaused_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##bool isPaused()

_syntax: isPaused()_

_name: isPaused_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isLoaded()

_syntax: isLoaded()_

_name: isLoaded_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool isPlaying()

_syntax: isPlaying()_

_name: isPlaying_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void createImgMemAndGWorld()

_syntax: createImgMemAndGWorld()_

_name: createImgMemAndGWorld_

_returns: void_

_parameters: _



_description: _













//----------------------

##void loadMovie(name)

_syntax: loadMovie(name)_

_name: loadMovie_

_returns: void_

_parameters: string name_



_description: _

Load a movie file (fileName) into that object. It will look for the movie file inside of the data/ folder. The movie does not automatically play once loaded.

Example:

$$code(lang=c++)
ofVideoPlayer myPlayer;
myPlayer.loadMovie('myMovie.mov');
$$/code














//----------------------

##void seek_lock()

_syntax: seek_lock()_

_name: seek_lock_

_returns: void_

_parameters: _



_description: _













//----------------------

##void closeMovie()

_syntax: closeMovie()_

_name: closeMovie_

_returns: void_

_parameters: _



_description: _

Closes the movie file and de-allocates resources.


Example:

$$code(lang=c++)
ofVideoPlayer myPlayer;
myPlayer.loadMovie("myMovie.mov"); //Loads video resources
myPlayer.closeMovie(); //Unloads video resources
$$/code


<br/><br/>return type changed from  to void in 0.07













//----------------------

##void seek_unlock()

_syntax: seek_unlock()_

_name: seek_unlock_

_returns: void_

_parameters: _



_description: _













//----------------------

##void close()

_syntax: close()_

_name: close_

_returns: void_

_parameters: _



_description: _

Calls the closeMovie() function, which closes the movie file and de-allocates resources.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void gstHandleMessage()

_syntax: gstHandleMessage()_

_name: gstHandleMessage_

_returns: void_

_parameters: _



_description: _













//----------------------

##void update()

_syntax: update()_

_name: update_

_returns: void_

_parameters: _



_description: _

Calls the idleMovie() function. This function idles the movie player, so that the movie can play. If you don't call it, when the movie is playing then you may encounter problems, especially on windows machines. 

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void allocate()

_syntax: allocate()_

_name: allocate_

_returns: void_

_parameters: _



_description: _













//----------------------

##void idleMovie()

_syntax: idleMovie()_

_name: idleMovie_

_returns: void_

_parameters: _



_description: _

This function idles the movie player, so that the movie can play. If you don't call it, when the movie is playing then you may encouter problems, especially on winodws machines.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void play()

_syntax: play()_

_name: play_

_returns: void_

_parameters: _



_description: _

Plays the movie. If the movie has been stopped or paused it will the continue playback at the point it was stopped. 

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void stop()

_syntax: stop()_

_name: stop_

_returns: void_

_parameters: _



_description: _

Stops the movie. 

<br/><br/>return type changed from  to void in 0.07













//----------------------

##bool isFrameNew()

_syntax: isFrameNew()_

_name: isFrameNew_

_returns: bool_

_parameters: _



_description: _

For example, if the pixels are new, you could then process them.

$$code(lang=c++)

if (myMovie.isFrameNew()){
	;	// do something
}

$$/code


<br/><br/>return type changed from  to bool in 0.07













//----------------------

##unsigned char * getPixels()

_syntax: getPixels()_

_name: getPixels_

_returns: unsigned char *_

_parameters: _



_description: _

For example, to get the red green and blue of the pixel (100,20):

unsigned char * pixels = myMovie.getPixels();
int widthOfLine = myMovie.width * w;  // how long is a line of pixels
int red 	= pixels[(20 * widthOfLine) + 100 * 3    ];
int green 	= pixels[(20 * widthOfLine) + 100 * 3 + 1];
int blue 	= pixels[(20 * widthOfLine) + 100 * 3 + 2];

<br/><br/>return type changed from  to unsigned char * in 0.07













//----------------------

##float getPosition()

_syntax: getPosition()_

_name: getPosition_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from  to float in 0.07













//----------------------

##float getSpeed()

_syntax: getSpeed()_

_name: getSpeed_

_returns: float_

_parameters: _



_description: _

note: 1 = normal speed, 0 = paused, -1 = backwards. 

<br/><br/>return type changed from  to float in 0.07













//----------------------

##float getDuration()

_syntax: getDuration()_

_name: getDuration_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from  to float in 0.07













//----------------------

##bool getIsMovieDone()

_syntax: getIsMovieDone()_

_name: getIsMovieDone_

_returns: bool_

_parameters: _



_description: _



<br/><br/>return type changed from  to bool in 0.07













//----------------------

##void setPosition(pct)

_syntax: setPosition(pct)_

_name: setPosition_

_returns: void_

_parameters: float pct_



_description: _

Sets the position of the playhead to a given percentage through the movie. Can be used to scrub through a movie. 













//----------------------

##void setVolume(volume)

_syntax: setVolume(volume)_

_name: setVolume_

_returns: void_

_parameters: int volume_



_description: _

Sets the volume of a movie - default = 0, silent 













//----------------------

##void setLoopState(state)

_syntax: setLoopState(state)_

_name: setLoopState_

_returns: void_

_parameters: int state_



_description: _

Sets the looping state of the movie. Deafult behavior is to loop. There are three options:

$$code(lang=c++)

OF_LOOP_NONE - don't loop, the movie will stop when it gets to the last frame (or first frame, if playing backwards)
OF_LOOP_NORMAL - loop normally (the last frame loops to the first frame)
OF_LOOP_PALINDROME - loop back and forth

$$/code














//----------------------

##void setSpeed(speed)

_syntax: setSpeed(speed)_

_name: setSpeed_

_returns: void_

_parameters: float speed_



_description: _

Sets the speed of the movie that is playing. 1 = normal, 2 = 2x as fast, 0 = stopped, -1 = backwards, etc; 













//----------------------

##void setFrame(frame)

_syntax: setFrame(frame)_

_name: setFrame_

_returns: void_

_parameters: int frame_



_description: _

Sets the current frame of the video. Should be used only if you know the bounds of the movie ( using totalNumberFrames() ) or store a location using getCurrentFrame();













//----------------------

##void setUseTexture(bUse)

_syntax: setUseTexture(bUse)_

_name: setUseTexture_

_returns: void_

_parameters: bool bUse_



_description: _

Set the usage of texture inside this object. Typically, you will want to draw the movie on screen, and so it will be necessary to use a texture, but there may be cases where it helps to not use a texture in order to save memory or for better performance. To disable the internal use of the texture, you can load the movie like this:

$$code(lang=c++)

myMovie.setUseTexture(false);
myMovie.loadMovie("blah.mov");

$$/code














//----------------------

##ofTexture getTextureReference()

_syntax: getTextureReference()_

_name: getTextureReference_

_returns: ofTexture_

_parameters: _



_description: _

Returns a reference to the videoPlayer's texture.

<br/><br/>return type changed from  to ofTexture in 0.07













//----------------------

##void draw(x, y, w, h)

_syntax: draw(x, y, w, h)_

_name: draw_

_returns: void_

_parameters: float x, float y, float w, float h_



_description: _

Draws the texture of the movie player class at the position (x,y) with the given width (w) and height (h). 













//----------------------

##void draw(x, y)

_syntax: draw(x, y)_

_name: draw_

_returns: void_

_parameters: float x, float y_



_description: _

Draws the texture of the movie player class as the position (x,y) with the internal width and height of the loaded movie. 













//----------------------

##void setPaused(bPause)

_syntax: setPaused(bPause)_

_name: setPaused_

_returns: void_

_parameters: bool bPause_



_description: _

Sets the paused state of the movie. Use "true" to pause and false to unpause. 













//----------------------

##int getCurrentFrame()

_syntax: getCurrentFrame()_

_name: getCurrentFrame_

_returns: int_

_parameters: _



_description: _



<br/><br/>return type changed from  to int in 0.07













//----------------------

##int getTotalNumFrames()

_syntax: getTotalNumFrames()_

_name: getTotalNumFrames_

_returns: int_

_parameters: _



_description: _



<br/><br/>return type changed from  to int in 0.07













//----------------------

##void firstFrame()

_syntax: firstFrame()_

_name: firstFrame_

_returns: void_

_parameters: _



_description: _

Moves the playhead to the first frame of the movie. This can also be accomplished using setCurrentFrame(0).

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void nextFrame()

_syntax: nextFrame()_

_name: nextFrame_

_returns: void_

_parameters: _



_description: _

Advances the playhead by one frame.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void previousFrame()

_syntax: previousFrame()_

_name: previousFrame_

_returns: void_

_parameters: _



_description: _

Reverses the playhead by one frame.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from  to float in 0.07













//----------------------

##float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from  to float in 0.07













