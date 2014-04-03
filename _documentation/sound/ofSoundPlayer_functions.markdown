#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###float * ofSoundGetSpectrum(nBands)

<!--
_syntax: ofSoundGetSpectrum(nBands)_
_name: ofSoundGetSpectrum_
_returns: float *_
_returns_description: _
_parameters: int nBands_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Gets a frequency spectrum sample, taking all current sound players into account. 

Each band will be represented as a float between 0 and 1.







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundSetVolume(vol)

<!--
_syntax: ofSoundSetVolume(vol)_
_name: ofSoundSetVolume_
_returns: void_
_returns_description: _
_parameters: float vol_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets global volume for FMOD-based sound players (windows, osx). 







_description: _


Sets the volume of all ofSoundPlayer objects to the volume (vol) specified. 0.0 - 1.0 range. 0.0 is silent and 1.0 is full volume.







<!----------------------------------------------------------------------------->

###void ofSoundShutdown()

<!--
_syntax: ofSoundShutdown()_
_name: ofSoundShutdown_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Cleans up FMOD (windows, osx). 







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundStopAll()

<!--
_syntax: ofSoundStopAll()_
_name: ofSoundStopAll_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Stops all active sound players on FMOD-based systems (windows, osx). 







_description: _








<!----------------------------------------------------------------------------->

###void ofSoundUpdate()

<!--
_syntax: ofSoundUpdate()_
_name: ofSoundUpdate_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Call in your app's update() to update FMOD-based sound players. 







_description: _


Updates sound engine. This should be called every frame.







<!----------------------------------------------------------------------------->

