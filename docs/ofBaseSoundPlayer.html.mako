<%inherit file="_templates/docs.mako" />
___ofBaseSoundPlayer___
$$code(lang=c++)
None ofBaseSoundPlayer()
$$/code



$$code(lang=c++)
None ~ofBaseSoundPlayer()
$$/code



$$code(lang=c++)
void loadSound(string fileName, bool stream=false)=0
$$/code



$$code(lang=c++)
void unloadSound()=0
$$/code



$$code(lang=c++)
void play()=0
$$/code



$$code(lang=c++)
void stop()=0
$$/code



$$code(lang=c++)
void setVolume(float vol)=0
$$/code



$$code(lang=c++)
void setPan(float vol)=0
$$/code



$$code(lang=c++)
void setSpeed(float spd)=0
$$/code



$$code(lang=c++)
void setPaused(bool bP)=0
$$/code



$$code(lang=c++)
void setLoop(bool bLp)=0
$$/code



$$code(lang=c++)
void setMultiPlay(bool bMp)=0
$$/code



$$code(lang=c++)
void setPosition(float pct)=0
$$/code



$$code(lang=c++)
void setPositionMS(int ms)=0
$$/code



$$code(lang=c++)
float getPosition()=0
$$/code



$$code(lang=c++)
int getPositionMS()=0
$$/code



$$code(lang=c++)
bool getIsPlaying()=0
$$/code



$$code(lang=c++)
float getSpeed()=0
$$/code



$$code(lang=c++)
float getPan()=0
$$/code



