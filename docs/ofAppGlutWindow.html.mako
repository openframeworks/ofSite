<%inherit file="_templates/docs.mako" />
___ofAppGlutWindow___
$$code(lang=c++)
string displayString
$$/code



$$code(lang=c++)
None ofAppGlutWindow()
$$/code



$$code(lang=c++)
None ~ofAppGlutWindow()
$$/code



$$code(lang=c++)
void setupOpenGL(int w, int h, int screenMode)
$$/code



$$code(lang=c++)
void initializeWindow()
$$/code



$$code(lang=c++)
void runAppViaInfiniteLoop(ofBaseApp *appPtr)
$$/code



$$code(lang=c++)
void setGlutDisplayString(string str)
$$/code



$$code(lang=c++)
void hideCursor()
$$/code



$$code(lang=c++)
void showCursor()
$$/code



$$code(lang=c++)
void setFullscreen(bool fullScreen)
$$/code



$$code(lang=c++)
void toggleFullscreen()
$$/code



$$code(lang=c++)
void setWindowTitle(string title)
$$/code



$$code(lang=c++)
void setWindowPosition(int x, int y)
$$/code



$$code(lang=c++)
void setWindowShape(int w, int h)
$$/code



$$code(lang=c++)
None getWindowPosition()
$$/code



$$code(lang=c++)
None getWindowSize()
$$/code



$$code(lang=c++)
None getScreenSize()
$$/code



$$code(lang=c++)
void setOrientation(ofOrientation orientation)
$$/code



$$code(lang=c++)
None getOrientation()
$$/code



$$code(lang=c++)
int getWidth()
$$/code



$$code(lang=c++)
int getHeight()
$$/code



$$code(lang=c++)
int getWindowMode()
$$/code



$$code(lang=c++)
int getFrameNum()
$$/code



$$code(lang=c++)
float getFrameRate()
$$/code



$$code(lang=c++)
double getLastFrameTime()
$$/code



$$code(lang=c++)
void setFrameRate(float targetRate)
$$/code



$$code(lang=c++)
void enableSetupScreen()
$$/code



$$code(lang=c++)
void disableSetupScreen()
$$/code



$$code(lang=c++)
void display(void)
$$/code



$$code(lang=c++)
void mouse_cb(int button, int state, int x, int y)
$$/code



$$code(lang=c++)
void motion_cb(int x, int y)
$$/code



$$code(lang=c++)
void passive_motion_cb(int x, int y)
$$/code



$$code(lang=c++)
void idle_cb(void)
$$/code



$$code(lang=c++)
void keyboard_cb(unsigned char key, int x, int y)
$$/code



$$code(lang=c++)
void keyboard_up_cb(unsigned char key, int x, int y)
$$/code



$$code(lang=c++)
void special_key_cb(int key, int x, int y)
$$/code



$$code(lang=c++)
void special_key_up_cb(int key, int x, int y)
$$/code



$$code(lang=c++)
void resize_cb(int w, int h)
$$/code



$$code(lang=c++)
void dragEvent(char **fileNames, int howManyFiles, int dragX, int dragY)
$$/code



