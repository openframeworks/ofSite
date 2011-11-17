#class ofSoundPlayer

Example



Reference



Methods



//----------------------

##void ofSoundPlayer()

_syntax: ofSoundPlayer()_

_name: ofSoundPlayer_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void initializeFmod()

_syntax: initializeFmod()_

_name: initializeFmod_

_returns: void_

_returns_description: _

_parameters: _



_description: _

Initializes fMod. Should only be called once internally.















//----------------------

##void ~ofSoundPlayer()

_syntax: ~ofSoundPlayer()_

_name: ~ofSoundPlayer_

_returns: void_

_returns_description: _

_parameters: _



_description: _

















//----------------------

##void closeFmod()

_syntax: closeFmod()_

_name: closeFmod_

_returns: void_

_returns_description: _

_parameters: _



_description: _

If Fmod is initialized via initializeFmod we can close it via closeFmod().















//----------------------

##void loadSound(fileName, stream)

_syntax: loadSound(fileName, stream)_

_name: loadSound_

_returns: void_

_returns_description: _

_parameters: string fileName, bool stream_



_description: _

Loads a sound file given by fileName. Sound files can be in .wav, .aif, .mp3, .mp2, .ogg or .raw format. The program will look for the file relative to the data/ folder. If you set the optional 'bool stream' argument to true the file will be streamed from disk instead of being completely loaded into memory. It makes a lot of sense to stream files if you are dynamically loading large sound files into your program, which would normally cause the program to freeze for a short time as the whole sound is read into memory. 

Examples:

Load a Sound

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.loadSound("beat.mp3");
$$/code


Load a Sound with Folder Path

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.loadSound("sounds/beat.mp3");
$$/code


















//----------------------

##void unloadSound()

_syntax: unloadSound()_

_name: unloadSound_

_returns: void_

_returns_description: _

_parameters: _



_description: _

Stops and unloads the current sound.

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.unloadSound(); //Stops sound from playing, unloads "beat.mp3"
$$/code
















//----------------------

##void play()

_syntax: play()_

_name: play_

_returns: void_

_returns_description: _

_parameters: _



_description: _

Plays the sound. If setMultiPlay() has been set to true each play() command will spawn a new copy of the sound on a new channel, letting the existing sounds continue until they are finished. If setMultiPlay() is set to false it will restart the playback of the song.

Examples:

Normal Playback:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play(); //Plays sound
mySound.play(); //Restarts and plays sound
$$/code


Multiplay:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.setMultiPlay(true);
mySound.load("beat.mp3");
mySound.play(); //Plays sound
mySound.play(); //Adds new copy of sound to channel and plays over currently playing sound
$$/code
















//----------------------

##void stop()

_syntax: stop()_

_name: stop_

_returns: void_

_returns_description: _

_parameters: _



_description: _

Stops the sound currently playing. 

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play(); //Begins playback of sound
mySound.stop(); //Ends playback, stops audio
$$/code
















//----------------------

##void setVolume(vol)

_syntax: setVolume(vol)_

_name: setVolume_

_returns: void_

_returns_description: _

_parameters: float vol_



_description: _

Sets the volume (vol) of the sound. 0.0 - 1.0 range. 0.0 is silent and 1.0 is full volume. 

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setVolume(0.1f); //Sets volume at 10% of maximum
$$/code
















//----------------------

##void setPan(vol)

_syntax: setPan(vol)_

_name: setPan_

_returns: void_

_returns_description: _

_parameters: float vol_



_description: _

Sets the pan position (pct) of the sound. 0.0 - 1.0 range. 0.5 is center pan, 0.0 is full left pan and 1.0 is full right pan. 

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.pan(0.2f); //Pans to the left
mySound.pan(0.8f); //Pans to the right
mySound.pan(0.5f); //Back to center
$$/code
















//----------------------

##void setSpeed(spd)

_syntax: setSpeed(spd)_

_name: setSpeed_

_returns: void_

_returns_description: _

_parameters: float spd_



_description: _

Sets the playback speed (spd) of the sound. 1.0 is the normal speed. 2.0 is double the normal speed etc. 

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.loadSound("beat.mp3");
mySound.play();
mySound.setSpeed(2.0f); //Chipmunk Voice
mySound.setSpeed(0.2f); //Isaac Hayes on Muscle Relaxers
mySound.setSpeed(1.0f); //Normal again
$$/code
















//----------------------

##void setPaused(bP)

_syntax: setPaused(bP)_

_name: setPaused_

_returns: void_

_returns_description: _

_parameters: bool bP_



_description: _

Pauses and un-pauses the playback of the sound. 

Example

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setPaused(true); //Sound is paused
mySound.setPaused(false); //Sound is unpaused, playback continues
$$/code
















//----------------------

##void setLoop(bLp)

_syntax: setLoop(bLp)_

_name: setLoop_

_returns: void_

_returns_description: _

_parameters: bool bLp_



_description: _

Loops the sound if set to true. Does not loop the sound if set to false. Default is false.

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.setLoop(true); //Sound will loop
mySound.play();
$$/code
















//----------------------

##void setMultiPlay(bMp)

_syntax: setMultiPlay(bMp)_

_name: setMultiPlay_

_returns: void_

_returns_description: _

_parameters: bool bMp_



_description: _

Allows a sound to be played multiple times at once. When set to true the play() function will start playing the sound on a new channel, letting the old channels continue until they are done playing. When set to false the play() function will stop the channel before playing the sound.

Example:


$$code(lang=c++)
ofSoundPlayer mySound;
mySound.setMultiPlay(true);
mySound.load("beat.mp3");
mySound.play(); //Plays sound
mySound.play(); //Adds new copy of sound to channel and plays over currently playing sound
$$/code
















//----------------------

##void setPosition(pct)

_syntax: setPosition(pct)_

_name: setPosition_

_returns: void_

_returns_description: _

_parameters: float pct_



_description: _

Sets the playback-head to the position (pct) specified. 0.0 - 1.0 range. 0.0 is the beginning of the sound file and 1.0 is the end.

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setPosition(0.5f); //Moves the playhead to halfway through the sound
mySound.setPosition(0.0f); //Moves the playhead back to the beginning of the sound
$$/code
















//----------------------

##float getPosition()

_syntax: getPosition()_

_name: getPosition_

_returns: float_

_returns_description: Returns the current position of the playback-head in the sound. 0.0 - 1.0 range._

_parameters: _



_description: _

0.0 is the beginning of the sound file and 1.0 is the end.

Example:


$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.getPosition(); //Returns the current position as a percent 0.0-1.0
$$/code
















//----------------------

##bool getIsPlaying()

_syntax: getIsPlaying()_

_name: getIsPlaying_

_returns: bool_

_returns_description: Returns true if sound is currently playing, otherwise returns false.
_

_parameters: _



_description: _

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.getIsPlaying(); //Returns false
mySound.play();
mySound.getIsPlaying(); //Returns true
$$/code
















//----------------------

##float getSpeed()

_syntax: getSpeed()_

_name: getSpeed_

_returns: float_

_returns_description: Returns the pan position of the sound. 0.0 - 1.0 range._

_parameters: _



_description: _

0.5 is center pan, 0.0 is full left pan and 1.0 is full right pan.

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.getSpeed(); //Returns 1.0
mySound.setSpeed(2.0f);
mySound.getSpeed(); //Returns 2.0f
$$/code
















//----------------------

##float getPan()

_syntax: getPan()_

_name: getPan_

_returns: float_

_returns_description: Returns the pan position of the sound. 0.0 - 1.0 range._

_parameters: _



_description: _

0.5 is center pan, 0.0 is full left pan and 1.0 is full right pan. Default is 0.5

Example:

$$code(lang=c++)
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.getPan();//Returns 0.5
mySound.setPan(0.2f);
mySound.getPan();//Returns 0.2
$$/code
















