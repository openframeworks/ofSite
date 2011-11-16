<%inherit file="_templates/docs.mako" />
___ofOpenALSoundPlayer___
$$code(lang=c++)
bool isStreaming
$$/code



$$code(lang=c++)
bool bMultiPlay
$$/code



$$code(lang=c++)
bool bLoop
$$/code



$$code(lang=c++)
bool bLoadedOk
$$/code



$$code(lang=c++)
bool bPaused
$$/code



$$code(lang=c++)
float pan
$$/code



$$code(lang=c++)
float volume
$$/code



$$code(lang=c++)
float internalFreq
$$/code



$$code(lang=c++)
float speed
$$/code



$$code(lang=c++)
unsigned int length
$$/code



$$code(lang=c++)
int channels
$$/code



$$code(lang=c++)
float duration
$$/code



$$code(lang=c++)
int samplerate
$$/code



$$code(lang=c++)
vector< ALuint > buffers
$$/code



$$code(lang=c++)
vector< ALuint > sources
$$/code



$$code(lang=c++)
vector< vector< float > > fftBuffers
$$/code



$$code(lang=c++)
kiss_fftr_cfg fftCfg
$$/code



$$code(lang=c++)
vector< float > windowedSignal
$$/code



$$code(lang=c++)
vector< float > bins
$$/code



$$code(lang=c++)
vector< kiss_fft_cpx > cx_out
$$/code



$$code(lang=c++)
SNDFILE * streamf
$$/code



$$code(lang=c++)
size_t stream_samples_read
$$/code



$$code(lang=c++)
int stream_encoding
$$/code



$$code(lang=c++)
int mp3_buffer_size
$$/code



$$code(lang=c++)
int stream_subformat
$$/code



$$code(lang=c++)
double stream_scale
$$/code



$$code(lang=c++)
vector< short > buffer
$$/code



$$code(lang=c++)
vector< float > fftAuxBuffer
$$/code



$$code(lang=c++)
bool stream_end
$$/code



$$code(lang=c++)
ALCdevice * alDevice
$$/code



$$code(lang=c++)
ALCcontext * alContext
$$/code



$$code(lang=c++)
vector< float > window
$$/code



$$code(lang=c++)
float windowSum
$$/code



$$code(lang=c++)
kiss_fftr_cfg systemFftCfg
$$/code



$$code(lang=c++)
vector< float > systemWindowedSignal
$$/code



$$code(lang=c++)
vector< float > systemBins
$$/code



$$code(lang=c++)
vector< kiss_fft_cpx > systemCx_out
$$/code



$$code(lang=c++)
None ofOpenALSoundPlayer()
$$/code



$$code(lang=c++)
None ~ofOpenALSoundPlayer()
$$/code



$$code(lang=c++)
void loadSound(string fileName, bool stream=false)
$$/code



$$code(lang=c++)
void unloadSound()
$$/code



$$code(lang=c++)
void play()
$$/code



$$code(lang=c++)
void stop()
$$/code



$$code(lang=c++)
void setVolume(float vol)
$$/code



$$code(lang=c++)
void setPan(float vol)
$$/code



$$code(lang=c++)
void setSpeed(float spd)
$$/code



$$code(lang=c++)
void setPaused(bool bP)
$$/code



$$code(lang=c++)
void setLoop(bool bLp)
$$/code



$$code(lang=c++)
void setMultiPlay(bool bMp)
$$/code



$$code(lang=c++)
void setPosition(float pct)
$$/code



$$code(lang=c++)
float getPosition()
$$/code



$$code(lang=c++)
bool getIsPlaying()
$$/code



$$code(lang=c++)
float getSpeed()
$$/code



$$code(lang=c++)
float getPan()
$$/code



$$code(lang=c++)
bool getIsPaused()
$$/code



$$code(lang=c++)
float * getSpectrum(int bands)
$$/code



$$code(lang=c++)
void initialize()
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
float * getSystemSpectrum(int bands)
$$/code



$$code(lang=c++)
void threadedFunction()
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
void update(ofEventArgs &args)
$$/code



$$code(lang=c++)
void initFFT(int bands)
$$/code



$$code(lang=c++)
float * getCurrentBufferSum(int size)
$$/code



$$code(lang=c++)
bool sfReadFile(string path, vector< short > &buffer, vector< float > &fftAuxBuffer)
$$/code



$$code(lang=c++)
bool sfStream(string path, vector< short > &buffer, vector< float > &fftAuxBuffer)
$$/code



$$code(lang=c++)
void readFile(string fileName, vector< short > &buffer)
$$/code



$$code(lang=c++)
void stream(string fileName, vector< short > &buffer)
$$/code



$$code(lang=c++)
void createWindow(int size)
$$/code



$$code(lang=c++)
void runWindow(vector< float > &signal)
$$/code



$$code(lang=c++)
void initSystemFFT(int bands)
$$/code



