<%inherit file="_templates/docs.mako" />
___ofThread___
$$code(lang=c++)
pthread_t myThread
$$/code



$$code(lang=c++)
None mutex
$$/code



$$code(lang=c++)
bool threadRunning
$$/code



$$code(lang=c++)
bool blocking
$$/code



$$code(lang=c++)
bool verbose
$$/code



$$code(lang=c++)
None ofThread()
$$/code



$$code(lang=c++)
None ~ofThread()
$$/code



$$code(lang=c++)
bool isThreadRunning()
$$/code



$$code(lang=c++)
void startThread(bool _blocking=true, bool _verbose=true)
$$/code



$$code(lang=c++)
bool lock()
$$/code



$$code(lang=c++)
bool unlock()
$$/code



$$code(lang=c++)
void stopThread(bool close=true)
$$/code



$$code(lang=c++)
void waitForThread(bool stop=true)
$$/code



$$code(lang=c++)
void threadedFunction()
$$/code



$$code(lang=c++)
void * thread(void *objPtr)
$$/code



