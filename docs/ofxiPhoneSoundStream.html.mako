<%inherit file="_templates/docs.mako" />
___ofxiPhoneSoundStream___
$$code(lang=c++)
long unsigned long tickCount
$$/code



$$code(lang=c++)
int nInputChannels
$$/code



$$code(lang=c++)
int nOutputChannels
$$/code



$$code(lang=c++)
int sampleRate
$$/code



$$code(lang=c++)
None ofxiPhoneSoundStream()
$$/code



$$code(lang=c++)
None ~ofxiPhoneSoundStream()
$$/code



$$code(lang=c++)
void listDevices()
$$/code



$$code(lang=c++)
void setDeviceID(int deviceID)
$$/code



$$code(lang=c++)
void setInput(ofBaseSoundInput *soundInput)
$$/code



$$code(lang=c++)
void setOutput(ofBaseSoundOutput *soundOutput)
$$/code



$$code(lang=c++)
bool setup(int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)
$$/code



$$code(lang=c++)
bool setup(ofBaseApp *app, int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)
$$/code



$$code(lang=c++)
void start()
$$/code



$$code(lang=c++)
void stop()
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
long unsigned long getTickCount()
$$/code



$$code(lang=c++)
int getNumInputChannels()
$$/code



$$code(lang=c++)
int getNumOutputChannels()
$$/code



