<%inherit file="_templates/docs.mako" />
___ofSoundPlayer___
$$code(lang=c++)
None player
$$/code



$$code(lang=c++)
None ofSoundPlayer()
$$/code



$$code(lang=c++)
void setPlayer(ofPtr< ofBaseSoundPlayer > newPlayer)
$$/code



$$code(lang=c++)
None getPlayer()
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
int getPositionMS()
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



