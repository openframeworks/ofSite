#class ofSoundBuffer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

/*!

@brief Buffer for audio samples and associated metadata.

ofSoundBuffer stores audio as an array of interleaved floating point samples, with a given sample rate for playback.

#### How sound recording works

Physically speaking, what we call _sound_ is simply changes in air pressure perceived by a listener. These changes in sound pressure are converted
by a microphone into changes in voltage that can be recorded, making a _sound recording_. A sound recording is therefore a recording of changes in air
pressure at a particular point in space (ie where the microphone was positioned). When it is played back through a speaker, the speaker reproduces the
same pattern of changes in air pressure as were recorded by the microphone, but this time at a different point in space (ie where the speaker is positioned).

In digital audio these changes in air pressure are recorded as a set of discrete numbers (_samples_), each number representing a snapshot of the air pressure
at a particular point in time. For high quality audio there are typically 44,100 snapshots recorded every second. This is called the _sample rate_ and is
expressed in _Hz_ (44100Hz) or _kHz_ (44.1kHz).

Because humans have two ears, rather than one, sound is usually recorded in stereo. The simplest stereo sound recording is two _channels_ of sound
recorded by two microphones at two different points in space. More channels can also be recorded (eg with 5.1 surround sound systems or Ambisonics).


#### Frames, channels and samples

Data in an ofSoundBuffer is stored _interleaved_ as an array of floats. Interleaved audio is analogous to how different color channels are stored side by side
in an ofImage or ofPixels object.

The functions and function arguments in ofSoundBuffer that deal with this interleaved data are based on 3 key terms:

_channels_ refers to the number of channels or individual streams of interleaved audio samples in the buffer. A mono recording has 1 channel, a stereo
recording has 2 channels.

_samples_ refers to the actual raw data. One _sample_ is a single floating point number between -1 and 1, which represents a snapshot of sound pressure at
a single moment in time. A 0.1 second long buffer at 44100Hz contains 4410 _samples_ if it has 1 channel, 8820 _samples_ if it has 2 channels, 13230
_samples_ if it has 3 channels, and so on.

_frames_ refers to the number of multi-channel sets of interleaved sample data there are in the buffer. A 0.1 second long buffer at 44100Hz always has
4410 _frames_, regardless of how many channels it has. To get the number of _samples_ in a buffer you multiply the number of _channels_ by the number of _frames_.


If I have an ofSoundBuffer with 8 _frames_ of mono (1 _channel_) audio, the underlying array contains 8 _samples_ (ie it is 8 floats long),
and the samples are arranged like this:

L L L L L L L L

where `L` represents a single sample.


If I have an ofSoundBuffer with 8 _frames_ of stereo (2 _channel_) audio, then the underlying array contains 16 _samples_ ((getNumFrames()*getNumChannels(),
ie 8*2) arranged in an _interleaved_ pattern:

L R L R L R L R L R L R L R L R

where `L` represents a single sample for the left channel, and `R` represents a single sample for the right channel. Grouping the frames together for clarity:

LR LR LR LR LR LR LR LR


If I have an ofSoundBuffer with 8 frames of 5.1 surround (6 _channel_) audio, then the underlying array of floats contains 48 _samples_ (getNumFrames()*getNumChannels(),
ie 8*6) and is usually arranged in an _interleaved_ pattern like this:

L C R Ls Rs Lfe L C R Ls Rs Lfe L C R Ls Rs Lfe L C R Ls Rs Lfe L C R Ls Rs Lfe L C R Ls Rs Lfe L C R Ls Rs Lfe L C R Ls Rs Lfe

where `L` represents a single sample for the left channel, `C` for centre, `R` for right, `Ls` for left surround, `Rs` for right surround and `Lfe` for the subwoofer.
Grouping the frames together for clarity:

LCRLsRsLfe LCRLsRsLfe LCRLsRsLfe LCRLsRsLfe LCRLsRsLfe LCRLsRsLfe LCRLsRsLfe LCRLsRsLfe

*/





##Description





##Methods



###void addTo(&outBuffer, outNumFrames, outNumChannels, fromFrame, loop = false)

<!--
_syntax: addTo(&outBuffer, outNumFrames, outNumChannels, fromFrame, loop = false)_
_name: addTo_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &outBuffer, size_t outNumFrames, size_t outNumChannels, size_t fromFrame, bool loop=false_
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

as copyTo but mixes source audio with audio in `outBuffer` by adding samples together (+), instead of overwriting.





_description: _







<!----------------------------------------------------------------------------->

###void addTo(&outBuffer, fromFrame, loop = false)

<!--
_syntax: addTo(&outBuffer, fromFrame, loop = false)_
_name: addTo_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &outBuffer, size_t fromFrame, bool loop=false_
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

as addTo above but reads outNumFrames and outNumChannels from outBuffer





_description: _







<!----------------------------------------------------------------------------->

###void addTo(*outBuffer, outNumFrames, outNumChannels, fromFrame, loop = false)

<!--
_syntax: addTo(*outBuffer, outNumFrames, outNumChannels, fromFrame, loop = false)_
_name: addTo_
_returns: void_
_returns_description: _
_parameters: float *outBuffer, size_t outNumFrames, size_t outNumChannels, size_t fromFrame, bool loop=false_
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

as copyTo but mixes source audio with audio in `out` by adding samples together (+), instead of overwriting





_description: _







<!----------------------------------------------------------------------------->

###void allocate(numSamples, numChannels)

<!--
_syntax: allocate(numSamples, numChannels)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: size_t numSamples, size_t numChannels_
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

###void append(&other)

<!--
_syntax: append(&other)_
_name: append_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &other_
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

###bool checkSizeAndChannelsConsistency(&function)

<!--
_syntax: checkSizeAndChannelsConsistency(&function)_
_name: checkSizeAndChannelsConsistency_
_returns: bool_
_returns_description: _
_parameters: const string &function_
_access: protected_
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

###void clear()

<!--
_syntax: clear()_
_name: clear_
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

remove all samples, preserving channel count and sample rate.





_description: _







<!----------------------------------------------------------------------------->

###void copyFrom(*shortBuffer, numFrames, numChannels, sampleRate)

<!--
_syntax: copyFrom(*shortBuffer, numFrames, numChannels, sampleRate)_
_name: copyFrom_
_returns: void_
_returns_description: _
_parameters: const short *shortBuffer, size_t numFrames, size_t numChannels, unsigned int sampleRate_
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

copy length samples from shortBuffer and interpret as interleaved with the given number of channels at the given samplerate





_description: _







<!----------------------------------------------------------------------------->

###void copyFrom(*floatBuffer, numFrames, numChannels, sampleRate)

<!--
_syntax: copyFrom(*floatBuffer, numFrames, numChannels, sampleRate)_
_name: copyFrom_
_returns: void_
_returns_description: _
_parameters: const float *floatBuffer, size_t numFrames, size_t numChannels, unsigned int sampleRate_
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

###void copyFrom(&shortBuffer, numChannels, sampleRate)

<!--
_syntax: copyFrom(&shortBuffer, numChannels, sampleRate)_
_name: copyFrom_
_returns: void_
_returns_description: _
_parameters: const vector< short > &shortBuffer, size_t numChannels, unsigned int sampleRate_
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

###void copyFrom(&floatBuffer, numChannels, sampleRate)

<!--
_syntax: copyFrom(&floatBuffer, numChannels, sampleRate)_
_name: copyFrom_
_returns: void_
_returns_description: _
_parameters: const vector< float > &floatBuffer, size_t numChannels, unsigned int sampleRate_
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

###void copyTo(&outBuffer, outNumFrames, outNumChannels, fromFrame, loop = false)

<!--
_syntax: copyTo(&outBuffer, outNumFrames, outNumChannels, fromFrame, loop = false)_
_name: copyTo_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &outBuffer, size_t outNumFrames, size_t outNumChannels, size_t fromFrame, bool loop=false_
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

resize outBuffer to outNumFrames with outNumChannels, and then copy outNumFrames of data from us to outBuffer.
fromFrame is a frame offset. if we don't have enough source data, loop with fromFrame=0 until we have filled outBuffer.
if outBuffer has fewer channels than our buffer, just copy the first outNumChannels of our data and skip the rest.
if outBuffer has more channels than our buffer, loop through our channels repeatedly until done.





_description: _







<!----------------------------------------------------------------------------->

###void copyTo(&outBuffer, frameFrame, loop = false)

<!--
_syntax: copyTo(&outBuffer, frameFrame, loop = false)_
_name: copyTo_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &outBuffer, size_t frameFrame, bool loop=false_
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

as copyTo above but reads outNumFrames and outNumChannels from outBuffer





_description: _







<!----------------------------------------------------------------------------->

###void copyTo(*outBuffer, outNumFrames, outNumChannels, fromFrame, loop = false)

<!--
_syntax: copyTo(*outBuffer, outNumFrames, outNumChannels, fromFrame, loop = false)_
_name: copyTo_
_returns: void_
_returns_description: _
_parameters: float *outBuffer, size_t outNumFrames, size_t outNumChannels, size_t fromFrame, bool loop=false_
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

copy sample data to out, where out is already allocated to match outNumFrames and outNumChannels (ie outNumFrames*outNumChannels samples).
fromFrame is a frame offset. if we don't have enough source data, loop with fromFrame=0 until we have filled the out buffer.
if out has fewer channels than our buffer, just copy the first outNumChannels of our data and skip the rest.
if out has more channels than our buffer, loop through our channels repeatedly until done.





_description: _







<!----------------------------------------------------------------------------->

###void fillWithNoise(amplitude = 1.0f)

<!--
_syntax: fillWithNoise(amplitude = 1.0f)_
_name: fillWithNoise_
_returns: void_
_returns_description: _
_parameters: float amplitude=1.0f_
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

fills the buffer with random noise between -amplitude and amplitude. useful for debugging.





_description: _







<!----------------------------------------------------------------------------->

###float fillWithTone(pitchHz = 440.0f, phase = 0.0f)

<!--
_syntax: fillWithTone(pitchHz = 440.0f, phase = 0.0f)_
_name: fillWithTone_
_returns: float_
_returns_description: _
_parameters: float pitchHz=440.0f, float phase=0.0f_
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

fills the buffer with a sine wave. useful for debugging.





_description: _







<!----------------------------------------------------------------------------->

###vector< float > & getBuffer()

<!--
_syntax: getBuffer()_
_name: getBuffer_
_returns: vector< float > &_
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

return the underlying buffer. careful!





_description: _







<!----------------------------------------------------------------------------->

###const vector< float > & getBuffer()

<!--
_syntax: getBuffer()_
_name: getBuffer_
_returns: const vector< float > &_
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

###void getChannel(&outBuffer, sourceChannel)

<!--
_syntax: getChannel(&outBuffer, sourceChannel)_
_name: getChannel_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &outBuffer, size_t sourceChannel_
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

copy the requested channel of our data to outBuffer. resize outBuffer to fit.





_description: _







<!----------------------------------------------------------------------------->

###int getDeviceID()

<!--
_syntax: getDeviceID()_
_name: getDeviceID_
_returns: int_
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

return the ID of the device which generated this buffer





_description: _







<!----------------------------------------------------------------------------->

###uint64_t getDurationMS()

<!--
_syntax: getDurationMS()_
_name: getDurationMS_
_returns: uint64_t_
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

return the duration of audio in this buffer in milliseconds (==(getNumFrames()/getSampleRate())*1000)





_description: _







<!----------------------------------------------------------------------------->

###uint64_t getDurationMicros()

<!--
_syntax: getDurationMicros()_
_name: getDurationMicros_
_returns: uint64_t_
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

###uint64_t getDurationNanos()

<!--
_syntax: getDurationNanos()_
_name: getDurationNanos_
_returns: uint64_t_
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

###size_t getNumChannels()

<!--
_syntax: getNumChannels()_
_name: getNumChannels_
_returns: size_t_
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

the number of channels per frame





_description: _







<!----------------------------------------------------------------------------->

###size_t getNumFrames()

<!--
_syntax: getNumFrames()_
_name: getNumFrames_
_returns: size_t_
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

the number of frames, ie the number of sets of (getNumChannels()) samples





_description: _







<!----------------------------------------------------------------------------->

###float getRMSAmplitude()

<!--
_syntax: getRMSAmplitude()_
_name: getRMSAmplitude_
_returns: float_
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

###float getRMSAmplitudeChannel(channel)

<!--
_syntax: getRMSAmplitudeChannel(channel)_
_name: getRMSAmplitudeChannel_
_returns: float_
_returns_description: _
_parameters: size_t channel_
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

###float & getSample(frameIndex, channel)

<!--
_syntax: getSample(frameIndex, channel)_
_name: getSample_
_returns: float &_
_returns_description: _
_parameters: size_t frameIndex, size_t channel_
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

access the sample at frameIndex on a soecific channel





_description: _







<!----------------------------------------------------------------------------->

###const float & getSample(frameIndex, channel)

<!--
_syntax: getSample(frameIndex, channel)_
_name: getSample_
_returns: const float &_
_returns_description: _
_parameters: size_t frameIndex, size_t channel_
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

###unsigned int getSampleRate()

<!--
_syntax: getSampleRate()_
_name: getSampleRate_
_returns: unsigned int_
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

sample rate of the audio in this buffer





_description: _







<!----------------------------------------------------------------------------->

###uint64_t getTickCount()

<!--
_syntax: getTickCount()_
_name: getTickCount_
_returns: uint64_t_
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

return the tickCount that was assigned by ofSoundStream (if this buffer originated from an ofSoundStream).





_description: _







<!----------------------------------------------------------------------------->

###void hermiteResampleTo(&buffer, fromFrame, numFrames, speed, loop)

<!--
_syntax: hermiteResampleTo(&buffer, fromFrame, numFrames, speed, loop)_
_name: hermiteResampleTo_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &buffer, size_t fromFrame, size_t numFrames, float speed, bool loop_
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

###void linearResampleTo(&buffer, fromFrame, numFrames, speed, loop)

<!--
_syntax: linearResampleTo(&buffer, fromFrame, numFrames, speed, loop)_
_name: linearResampleTo_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &buffer, size_t fromFrame, size_t numFrames, float speed, bool loop_
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

###void normalize(level)

<!--
_syntax: normalize(level)_
_name: normalize_
_returns: void_
_returns_description: _
_parameters: float level_
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

amplifies samples so that the maximum amplitude is equal to 'level'





_description: _







<!----------------------------------------------------------------------------->

### ofSoundBuffer()

<!--
_syntax: ofSoundBuffer()_
_name: ofSoundBuffer_
_returns: _
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

### ofSoundBuffer(*shortBuffer, numFrames, numChannels, sampleRate)

<!--
_syntax: ofSoundBuffer(*shortBuffer, numFrames, numChannels, sampleRate)_
_name: ofSoundBuffer_
_returns: _
_returns_description: _
_parameters: short *shortBuffer, size_t numFrames, size_t numChannels, unsigned int sampleRate_
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

###ofSoundBuffer operator*(value)

<!--
_syntax: operator*(value)_
_name: operator*_
_returns: ofSoundBuffer_
_returns_description: _
_parameters: float value_
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

return a new buffer containing the contents of this buffer multiplied by value.





_description: _







<!----------------------------------------------------------------------------->

###ofSoundBuffer & operator*=(value)

<!--
_syntax: operator*=(value)_
_name: operator*=_
_returns: ofSoundBuffer &_
_returns_description: _
_parameters: float value_
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

multiply everything in this buffer by value, in-place.





_description: _







<!----------------------------------------------------------------------------->

###float & operator[](samplePos)

<!--
_syntax: operator[](samplePos)_
_name: operator[]_
_returns: float &_
_returns_description: _
_parameters: size_t samplePos_
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

access the sample at the given position in the buffer.
to retrieve the sample for channel channelIndex of frame frameIndex, do the following:
ofSoundBuffer myBuffer;
...
float sample = myBuffer[(frameIndex*myBuffer.getNumChannels()) + channelIndex];





_description: _







<!----------------------------------------------------------------------------->

###const float & operator[](samplePos)

<!--
_syntax: operator[](samplePos)_
_name: operator[]_
_returns: const float &_
_returns_description: _
_parameters: size_t samplePos_
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

###void resample(speed, algorithm)

<!--
_syntax: resample(speed, algorithm)_
_name: resample_
_returns: void_
_returns_description: _
_parameters: float speed, ofSoundBuffer::InterpolationAlgorithm algorithm_
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

resample by changing the playback speed, keeping the same sampleRate





_description: _







<!----------------------------------------------------------------------------->

###void resampleTo(&outBuffer, fromFrame, numFrames, speed, loop = false, algorithm)

<!--
_syntax: resampleTo(&outBuffer, fromFrame, numFrames, speed, loop = false, algorithm)_
_name: resampleTo_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &outBuffer, size_t fromFrame, size_t numFrames, float speed, bool loop=false, ofSoundBuffer::InterpolationAlgorithm algorithm_
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

resample our data to outBuffer at the given target speed, starting at fromFrame and copying numFrames of data. resize outBuffer to fit.
speed is relative to current speed (ie 1.0f == no change). lower speeds will give a larger outBuffer, higher speeds a smaller outBuffer.





_description: _







<!----------------------------------------------------------------------------->

###void resize(numSamples, val)

<!--
_syntax: resize(numSamples, val)_
_name: resize_
_returns: void_
_returns_description: _
_parameters: size_t numSamples, float val_
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

resize this buffer to exactly this many samples. it's up to you make sure samples matches the channel count.





_description: _







<!----------------------------------------------------------------------------->

###void set(value)

<!--
_syntax: set(value)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float value_
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

set everything in this buffer to value, preserving size, channel count and sample rate.





_description: _







<!----------------------------------------------------------------------------->

###void setChannel(&inBuffer, channel)

<!--
_syntax: setChannel(&inBuffer, channel)_
_name: setChannel_
_returns: void_
_returns_description: _
_parameters: const ofSoundBuffer &inBuffer, size_t channel_
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

copy data from inBuffer to the given channel. resize ourselves to match inBuffer's getNumFrames().





_description: _







<!----------------------------------------------------------------------------->

###void setDeviceID(id)

<!--
_syntax: setDeviceID(id)_
_name: setDeviceID_
_returns: void_
_returns_description: _
_parameters: int id_
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

###void setNumChannels(channels)

<!--
_syntax: setNumChannels(channels)_
_name: setNumChannels_
_returns: void_
_returns_description: _
_parameters: int channels_
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

set the number of channels. does not change the underlying data, ie causes getNumFrames() to return a different result.





_description: _







<!----------------------------------------------------------------------------->

###void setSampleRate(rate)

<!--
_syntax: setSampleRate(rate)_
_name: setSampleRate_
_returns: void_
_returns_description: _
_parameters: unsigned int rate_
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

###void setTickCount(tick)

<!--
_syntax: setTickCount(tick)_
_name: setTickCount_
_returns: void_
_returns_description: _
_parameters: uint64_t tick_
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

###size_t size()

<!--
_syntax: size()_
_name: size_
_returns: size_t_
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

return the total number of samples in this buffer (==getNumFrames()*getNumChannels())





_description: _







<!----------------------------------------------------------------------------->

###void stereoPan(left, right)

<!--
_syntax: stereoPan(left, right)_
_name: stereoPan_
_returns: void_
_returns_description: _
_parameters: float left, float right_
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

assuming a 2-channel buffer, apply a stereo pan by multiplying channel 0 by left and channel 1 by right.





_description: _







<!----------------------------------------------------------------------------->

###void swap(&otherBuffer)

<!--
_syntax: swap(&otherBuffer)_
_name: swap_
_returns: void_
_returns_description: _
_parameters: ofSoundBuffer &otherBuffer_
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

swap the contents of this buffer with otherBuffer





_description: _







<!----------------------------------------------------------------------------->

###void toShortPCM(&dst)

<!--
_syntax: toShortPCM(&dst)_
_name: toShortPCM_
_returns: void_
_returns_description: _
_parameters: vector< short > &dst_
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

###void toShortPCM(*dst)

<!--
_syntax: toShortPCM(*dst)_
_name: toShortPCM_
_returns: void_
_returns_description: _
_parameters: short *dst_
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

###bool trimSilence(threshold = 0.0001f, trimStart = true, trimEnd = true)

<!--
_syntax: trimSilence(threshold = 0.0001f, trimStart = true, trimEnd = true)_
_name: trimSilence_
_returns: bool_
_returns_description: _
_parameters: float threshold=0.0001f, bool trimStart=true, bool trimEnd=true_
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

removes initial / ending silence from the buffer





_description: _







<!----------------------------------------------------------------------------->

##Variables



###vector< float > buffer

<!--
_name: buffer_
_type: vector< float >_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###size_t channels

<!--
_name: channels_
_type: size_t_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofSoundBuffer::InterpolationAlgorithm defaultAlgorithm

<!--
_name: defaultAlgorithm_
_type: ofSoundBuffer::InterpolationAlgorithm_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###unsigned int samplerate

<!--
_name: samplerate_
_type: unsigned int_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int soundStreamDeviceID

<!--
_name: soundStreamDeviceID_
_type: int_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###uint64_t tickCount

<!--
_name: tickCount_
_type: uint64_t_
_access: protected_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

