<%inherit file="_templates/docs.mako" />
___ofSoundStream___
$$code(lang=c++)
None soundStream
$$/code



$$code(lang=c++)
None ofSoundStream()
$$/code



$$code(lang=c++)
void setSoundStream(ofPtr< ofBaseSoundStream > soundStreamPtr)
$$/code



$$code(lang=c++)
None getSoundStream()
$$/code



$$code(lang=c++)
void listDevices()
$$/code



$$code(lang=c++)
void setDeviceID(int deviceID)
$$/code



$$code(lang=c++)
bool setup(ofBaseApp *app, int outChannels, int inChannels, int sampleRate, int bufferSize, int nBuffers)
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



