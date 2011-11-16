<%inherit file="_templates/docs.mako" />
___ofFmodSoundPlayer___
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
FMOD_RESULT result
$$/code



$$code(lang=c++)
FMOD_CHANNEL * channel
$$/code



$$code(lang=c++)
FMOD_SOUND * sound
$$/code



$$code(lang=c++)
None ofFmodSoundPlayer()
$$/code



$$code(lang=c++)
None ~ofFmodSoundPlayer()
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
void setPositionMS(int ms)
$$/code



$$code(lang=c++)
float getPosition()
$$/code



$$code(lang=c++)
int getPositionMS()
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
void initializeFmod()
$$/code



$$code(lang=c++)
void closeFmod()
$$/code



