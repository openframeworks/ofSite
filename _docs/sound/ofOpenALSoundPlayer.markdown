#class ofOpenALSoundPlayer

Example



Reference



Methods



//----------------------

##None ofOpenALSoundPlayer()

_syntax: ofOpenALSoundPlayer()_

_name: ofOpenALSoundPlayer_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ~ofOpenALSoundPlayer()

_syntax: ~ofOpenALSoundPlayer()_

_name: ~ofOpenALSoundPlayer_

_returns: None_

_parameters: _



_description: _















//----------------------

##void loadSound(string fileName, bool stream=false)

_syntax: loadSound(string fileName, bool stream=false)_

_name: loadSound_

_returns: void_

_parameters: string, bool = False_



_description: _















//----------------------

##void unloadSound()

_syntax: unloadSound()_

_name: unloadSound_

_returns: void_

_parameters: _



_description: _















//----------------------

##void play()

_syntax: play()_

_name: play_

_returns: void_

_parameters: _



_description: _















//----------------------

##void stop()

_syntax: stop()_

_name: stop_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setVolume(float vol)

_syntax: setVolume(float vol)_

_name: setVolume_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setPan(float vol)

_syntax: setPan(float vol)_

_name: setPan_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setSpeed(float spd)

_syntax: setSpeed(float spd)_

_name: setSpeed_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setPaused(bool bP)

_syntax: setPaused(bool bP)_

_name: setPaused_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void setLoop(bool bLp)

_syntax: setLoop(bool bLp)_

_name: setLoop_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void setMultiPlay(bool bMp)

_syntax: setMultiPlay(bool bMp)_

_name: setMultiPlay_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void setPosition(float pct)

_syntax: setPosition(float pct)_

_name: setPosition_

_returns: void_

_parameters: float_



_description: _















//----------------------

##float getPosition()

_syntax: getPosition()_

_name: getPosition_

_returns: float_

_parameters: _



_description: _















//----------------------

##bool getIsPlaying()

_syntax: getIsPlaying()_

_name: getIsPlaying_

_returns: bool_

_parameters: _



_description: _















//----------------------

##float getSpeed()

_syntax: getSpeed()_

_name: getSpeed_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getPan()

_syntax: getPan()_

_name: getPan_

_returns: float_

_parameters: _



_description: _















//----------------------

##bool getIsPaused()

_syntax: getIsPaused()_

_name: getIsPaused_

_returns: bool_

_parameters: _



_description: _















//----------------------

##float * getSpectrum(int bands)

_syntax: getSpectrum(int bands)_

_name: getSpectrum_

_returns: float *_

_parameters: int_



_description: _















//----------------------

##void initialize()

_syntax: initialize()_

_name: initialize_

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















//----------------------

##float * getSystemSpectrum(int bands)

_syntax: getSystemSpectrum(int bands)_

_name: getSystemSpectrum_

_returns: float *_

_parameters: int_



_description: _















//----------------------

##void threadedFunction()

_syntax: threadedFunction()_

_name: threadedFunction_

_returns: void_

_parameters: _



_description: _















//----------------------

##void update(ofEventArgs &args)

_syntax: update(ofEventArgs &args)_

_name: update_

_returns: void_

_parameters: ofEventArgs &_



_description: _















//----------------------

##void initFFT(int bands)

_syntax: initFFT(int bands)_

_name: initFFT_

_returns: void_

_parameters: int_



_description: _















//----------------------

##float * getCurrentBufferSum(int size)

_syntax: getCurrentBufferSum(int size)_

_name: getCurrentBufferSum_

_returns: float *_

_parameters: int_



_description: _















//----------------------

##bool sfReadFile(string path, vector< short > &buffer, vector< float > &fftAuxBuffer)

_syntax: sfReadFile(string path, vector< short > &buffer, vector< float > &fftAuxBuffer)_

_name: sfReadFile_

_returns: bool_

_parameters: string, vector< short > &, vector< float > &_



_description: _















//----------------------

##bool sfStream(string path, vector< short > &buffer, vector< float > &fftAuxBuffer)

_syntax: sfStream(string path, vector< short > &buffer, vector< float > &fftAuxBuffer)_

_name: sfStream_

_returns: bool_

_parameters: string, vector< short > &, vector< float > &_



_description: _















//----------------------

##void readFile(string fileName, vector< short > &buffer)

_syntax: readFile(string fileName, vector< short > &buffer)_

_name: readFile_

_returns: void_

_parameters: string, vector< short > &_



_description: _















//----------------------

##void stream(string fileName, vector< short > &buffer)

_syntax: stream(string fileName, vector< short > &buffer)_

_name: stream_

_returns: void_

_parameters: string, vector< short > &_



_description: _















//----------------------

##void createWindow(int size)

_syntax: createWindow(int size)_

_name: createWindow_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void runWindow(vector< float > &signal)

_syntax: runWindow(vector< float > &signal)_

_name: runWindow_

_returns: void_

_parameters: vector< float > &_



_description: _















//----------------------

##void initSystemFFT(int bands)

_syntax: initSystemFFT(int bands)_

_name: initSystemFFT_

_returns: void_

_parameters: int_



_description: _















