<%inherit file="_templates/docs.mako" />
___ofGstVideoUtils___
$$code(lang=c++)
ofEvent<  prerollEvent
$$/code



$$code(lang=c++)
ofEvent<  bufferEvent
$$/code



$$code(lang=c++)
ofEvent< ofEventArgs > eosEvent
$$/code



$$code(lang=c++)
None pixels
$$/code



$$code(lang=c++)
None backPixels
$$/code



$$code(lang=c++)
bool bIsFrameNew
$$/code



$$code(lang=c++)
bool bHavePixelsChanged
$$/code



$$code(lang=c++)
bool bBackPixelsChanged
$$/code



$$code(lang=c++)
None mutex
$$/code



$$code(lang=c++)
None ofGstVideoUtils()
$$/code



$$code(lang=c++)
None ~ofGstVideoUtils()
$$/code



$$code(lang=c++)
bool setPipeline(string pipeline, int bpp=24, bool isStream=false, int w=-1, int h=-1)
$$/code



$$code(lang=c++)
bool allocate(int w, int h, int bpp)
$$/code



$$code(lang=c++)
bool isFrameNew()
$$/code



$$code(lang=c++)
unsigned char * getPixels()
$$/code



$$code(lang=c++)
None getPixelsRef()
$$/code



$$code(lang=c++)
void update()
$$/code



$$code(lang=c++)
float getHeight()
$$/code



$$code(lang=c++)
float getWidth()
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
GstFlowReturn preroll_cb(GstBuffer *buffer)
$$/code



$$code(lang=c++)
GstFlowReturn buffer_cb(GstBuffer *buffer)
$$/code



$$code(lang=c++)
void eos_cb()
$$/code



