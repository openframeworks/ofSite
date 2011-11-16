<%inherit file="_templates/docs.mako" />
___ofBaseSoundOutput___
$$code(lang=c++)
None ~ofBaseSoundOutput()
$$/code



$$code(lang=c++)
void audioOut(float *output, int bufferSize, int nChannels, int deviceID, long unsigned long tickCount)
$$/code



$$code(lang=c++)
void audioOut(float *output, int bufferSize, int nChannels)
$$/code



$$code(lang=c++)
void audioRequested(float *output, int bufferSize, int nChannels)
$$/code



