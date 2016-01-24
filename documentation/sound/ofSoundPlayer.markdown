#class ofSoundPlayer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseSoundPlayer_
-->

##InlineDescription


Plays sound files.

ofSoundPlayer handles simple playback of sound files, with controls for
volume, pan, speed, seeking and multiplay.  This is a common cross-platform
sound player interface which is inherited by each of the platform-specific
sound player implementations.





##Description

The ofSoundPlayer class wraps one of several underlying audio utility libraries, depending on your OS and your configuration that can be Fmod, Quicktime, or OpenAL. The ofSoundPlayer is primarily to allow you to load sound files and control and manipulate their playback and properties, if you want more low level access to sound data and to your sound card then you should take a look at the ofSoundStream class. 





##Methods



###float getPan()

<!--
_syntax: getPan()_
_name: getPan_
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

Gets stereo pan.
\return stereo pan in the range -1 to 1.





_description: _

Returns the pan position of the sound. -1.0 - 1.0 range.
0.0 is center pan, -1.0 is full left pan and 1.0 is full right pan. Default is
0.0
  
Example:
~~~~{.cpp}
    
    ofSoundPlayer mySound;    
    mySound.load("beat.mp3");    
    mySound.play();    
    mySound.getPan();//Returns 0.0     
    mySound.setPan(1.0f);     
    mySound.getPan();//Returns 1.0
~~~~





<!----------------------------------------------------------------------------->

###shared_ptr< ofBaseSoundPlayer > getPlayer()

<!--
_syntax: getPlayer()_
_name: getPlayer_
_returns: shared_ptr< ofBaseSoundPlayer >_
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

ofSoundPlayer actually wraps a dynamic instance of a specific sound player for a specific engine, that is, it contains an interface to the sound engine being used to load and playback sounds. This allows you access to the pointer that contains the specific interface.





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

Gets position of the playhead.
\return playhead position as a float between 0 and 1.





_description: _

Returns the current position of the playhead as a float between 0.0 and 1.0. 0.0 is the beginning of the sound file and 1.0 is the end.
  
Example:
~~~~{.cpp}    
    ofSoundPlayer mySound;  
    mySound.load("beat.mp3");   
    mySound.play();   
    mySound.getPosition(); //Returns the current position as a percent 0.0-1.0
~~~~





<!----------------------------------------------------------------------------->

###int getPositionMS()

<!--
_syntax: getPositionMS()_
_name: getPositionMS_
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

Gets position of the playhead.
\return playhead position in milliseconds.





_description: _

This returns the position of the playhead in terms of milliseconds (i.e. 5000 for 5 seconds into the sound).





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

Gets playback speed.
\return playback speed (see ofSoundPlayer::setSpeed()).





_description: _

Returns the speed of the sound playback in relation to its normal speed.
So 2.0 would mean the sound is playing twice as fast. 0.5 would mean half as fast. 

Example:
~~~~{.cpp}
    
    ofSoundPlayer mySound;    
    mySound.load("beat.mp3");   
    mySound.getSpeed(); //Returns 1.0   
    mySound.setSpeed(2.0f);   
    mySound.getSpeed(); //Returns 2.0f
~~~~





<!----------------------------------------------------------------------------->

###float getVolume()

<!--
_syntax: getVolume()_
_name: getVolume_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Gets current volume.
\return current volume in the range 0 to 1.





_description: _

Returns the current volume of the sound player, as set by `setVolume()`. 0.0 is silent and 1.0 is full volume.





<!----------------------------------------------------------------------------->

###bool isLoaded()

<!--
_syntax: isLoaded()_
_name: isLoaded_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Queries the player to see if its file was loaded successfully.
\return whether or not the player is ready to begin playback.





_description: _

Returns whether or not a sound has been successfully loaded into the sound player. 





<!----------------------------------------------------------------------------->

###bool isPlaying()

<!--
_syntax: isPlaying()_
_name: isPlaying_
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

Gets current playback state.
\return true if the player is currently playing a file.





_description: _







<!----------------------------------------------------------------------------->

###bool load(fileName, stream = false)

<!--
_syntax: load(fileName, stream = false)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: string fileName, bool stream=false_
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

Tells the sound player which file to play.

Codec support varies by platform but wav, aif, and mp3 are safe.


Parameters:
fileName Path to the sound file, relative to your app's data folder.
stream set "true" to enable streaming from disk (for large files).





_description: _







<!----------------------------------------------------------------------------->

### ofSoundPlayer()

<!--
_syntax: ofSoundPlayer()_
_name: ofSoundPlayer_
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

Creates the ofSoundPlayer instance and initializes the underlying properties in the underlying engine.





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

Starts playback.





_description: _

Plays the sound. If setMultiPlay() has been set to true each play() command will spawn a new copy of the sound on a new channel, letting the existing sounds continue until they are finished. If setMultiPlay() is set to false it will restart the playback of the song.

Examples:

Normal Playback:
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play(); //Plays sound
mySound.play(); //Restarts and plays sound
~~~~

Multiplay:
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.setMultiPlay(true);
mySound.load("beat.mp3");
mySound.play(); //Plays sound
mySound.play(); //Adds new copy of sound to channel and plays over currently playing sound
~~~~





<!----------------------------------------------------------------------------->

###void setLoop(loop)

<!--
_syntax: setLoop(loop)_
_name: setLoop_
_returns: void_
_returns_description: _
_parameters: bool loop_
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

Sets whether to loop once the end of the file is reached.

Parameters:
loop "true" to loop, default is false.





_description: _

Loops the sound if set to true. Does not loop the sound if set to false. Default is false.

Example:
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.setLoop(true); //Sound will loop
mySound.play();
~~~~





<!----------------------------------------------------------------------------->

###void setMultiPlay(multiplay)

<!--
_syntax: setMultiPlay(multiplay)_
_name: setMultiPlay_
_returns: void_
_returns_description: _
_parameters: bool multiplay_
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

Enables playing multiple simultaneous copies of the sound.

Parameters:
multiplay "true" to enable, default is false.





_description: _

Allows a sound to be played multiple times at once. When set to true the play() function will start playing the sound on a new channel, letting the old channels continue until they are done playing. When set to false the play() function will stop the channel before playing the sound.

Example:

~~~~{.cpp}
ofSoundPlayer mySound;
mySound.setMultiPlay(true);
mySound.load("beat.mp3");
mySound.play(); //Plays sound
mySound.play(); //Adds new copy of sound to channel and plays over currently playing sound
~~~~





<!----------------------------------------------------------------------------->

###void setPan(pan)

<!--
_syntax: setPan(pan)_
_name: setPan_
_returns: void_
_returns_description: _
_parameters: float pan_
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

Sets stereo pan.

Parameters:
pan range is -1 to 1 (-1 is full left, 1 is full right).





_description: _

Sets the pan position (pct) of the sound. -1.0 - 1.0 range. 0.0 is center pan, -1.0 is full left pan and 1.0 is full right pan. 

Example:
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setPan(-1.0f); //Pans to the left
mySound.setPan(1.0f); //Pans to the right
mySound.setPan(0.0f); //Back to center
~~~~





<!----------------------------------------------------------------------------->

###void setPaused(paused)

<!--
_syntax: setPaused(paused)_
_name: setPaused_
_returns: void_
_returns_description: _
_parameters: bool paused_
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

Enables pause / resume.

Parameters:
paused "true" to pause, "false" to resume.





_description: _

Pauses and un-pauses the playback of the sound.

Example
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setPaused(true); //Sound is paused
mySound.setPaused(false); //Sound is unpaused, playback continues
~~~~





<!----------------------------------------------------------------------------->

###void setPlayer(newPlayer)

<!--
_syntax: setPlayer(newPlayer)_
_name: setPlayer_
_returns: void_
_returns_description: _
_parameters: shared_ptr< ofBaseSoundPlayer > newPlayer_
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

ofSoundPlayer actually wraps a dynamic instance of a sound player, that is, it contains an interface to the sound engine being used to load and playback sounds. If you want to set the interface that your system uses, you can pass an ofPtr to an ofSoundPlayer into the ofSoundPlayer and have the ofSoundPlayer manipulate that one instead.

~~~~{.cpp}
ofPtr<ofBaseSoundPlayer> soundPtr(new ofOpenALSoundPlayer());
player.setPlayer(soundPtr);
~~~~





<!----------------------------------------------------------------------------->

###void setPosition(percent)

<!--
_syntax: setPosition(percent)_
_name: setPosition_
_returns: void_
_returns_description: _
_parameters: float percent_
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

Sets position of the playhead within the file (aka "seeking").

Parameters:
percent range is 0 (beginning of file) to 1 (end of file).





_description: _

Sets the playback-head to the position (pct) specified. 0.0 - 1.0 range. 0.0 is the beginning of the sound file and 1.0 is the end.

Example:
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setPosition(0.5f); //Moves the playhead to halfway through the sound
mySound.setPosition(0.0f); //Moves the playhead back to the beginning of the sound
~~~~





<!----------------------------------------------------------------------------->

###void setPositionMS(ms)

<!--
_syntax: setPositionMS(ms)_
_name: setPositionMS_
_returns: void_
_returns_description: _
_parameters: int ms_
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

Sets position of the playhead within the file (aka "seeking").

Parameters:
ms number of milliseconds from the start of the file.





_description: _

This sets the position of the playhead in milliseconds.





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

Sets playback speed.

Parameters:
speed set > 1 for faster playback, < 1 for slower playback.





_description: _

Sets the playback speed of the sound. 1.0 is normal speed. 2.0 is double the normal speed etc. 

Example:
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.loadSound("beat.mp3");
mySound.play();
mySound.setSpeed(2.0f); //Chipmunk Voice
mySound.setSpeed(0.2f); //Isaac Hayes on Muscle Relaxers
mySound.setSpeed(1.0f); //Normal again
~~~~





<!----------------------------------------------------------------------------->

###void setVolume(vol)

<!--
_syntax: setVolume(vol)_
_name: setVolume_
_returns: void_
_returns_description: _
_parameters: float vol_
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

Sets playback volume.

Parameters:
vol range is 0 to 1.





_description: _

Sets the volume of the sound. 0.0 - 1.0 range. 0.0 is silent and 1.0 is full volume. 

Example:
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setVolume(0.1f); //Sets volume at 10% of maximum
~~~~





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

Stops playback.





_description: _

Stops the sound currently playing. 

Example:
~~~~{.cpp}
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play(); //Begins playback of sound
mySound.stop(); //Ends playback, stops audio
~~~~





<!----------------------------------------------------------------------------->

###void unload()

<!--
_syntax: unload()_
_name: unload_
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

Stops and unloads the current sound.





_description: _







<!----------------------------------------------------------------------------->

##Variables



###ofPtr player

<!--
_name: player_
_type: ofPtr_
_access: protected_
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

