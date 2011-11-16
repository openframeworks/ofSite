<%inherit file="_templates/docs.mako" />
___ofBaseSoundStream___
$$code(lang=c++)
None ~ofBaseSoundStream()
$$/code



$$code(lang=c++)
void listDevices()=0
$$/code



$$code(lang=c++)
void setDeviceID(int deviceID)=0
$$/code



$$code(lang=c++)
bool setup(int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)=0
$$/code



$$code(lang=c++)
bool setup(ofBaseApp *app, int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)=0
$$/code



$$code(lang=c++)
void setInput(ofBaseSoundInput *soundInput)=0
$$/code



$$code(lang=c++)
void setOutput(ofBaseSoundOutput *soundOutput)=0
$$/code



$$code(lang=c++)
void start()=0
$$/code



$$code(lang=c++)
void stop()=0
$$/code



$$code(lang=c++)
void close()=0
$$/code



$$code(lang=c++)
long unsigned long getTickCount()=0
$$/code



