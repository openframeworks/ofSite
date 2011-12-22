#class ofAudioEventArgs

##Description



This class is integrated into the openframeworks events system. When an audio event (audio received, audio requested) happens we record audio  information inside an object of the class. Used to send event messages. In the new openFrameworks release we can find a very ilustrative example about how to use events in openFrameworks.

##Methods



##Variables



###float * buffer

_name: buffer_

_type: float *_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

When an audio event (audio received, audio requested) happens input/output sound info gets recorded in buffer vector.













###int bufferSize

_name: bufferSize_

_type: int_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

When an audio event (audio received, audio requested) happens we record here the size of the vector containing sound information.













###int nChannels

_name: nChannels_

_type: int_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _

_visible: 1_

_advanced: 0_



_description: _

When an audio event (audio received, audio requested) happens we record here the number of channels the sound has since it can be a multi-channel sound.













