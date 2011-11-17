#class ofGstVideoUtils

Example



Reference



Methods



//----------------------

##None ofGstVideoUtils()

_syntax: ofGstVideoUtils()_

_name: ofGstVideoUtils_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ~ofGstVideoUtils()

_syntax: ~ofGstVideoUtils()_

_name: ~ofGstVideoUtils_

_returns: None_

_parameters: _



_description: _















//----------------------

##bool setPipeline(string pipeline, int bpp=24, bool isStream=false, int w=-1, int h=-1)

_syntax: setPipeline(string pipeline, int bpp=24, bool isStream=false, int w=-1, int h=-1)_

_name: setPipeline_

_returns: bool_

_parameters: string, int = 24, bool = False, int = -1, int = -1_



_description: _















//----------------------

##bool allocate(int w, int h, int bpp)

_syntax: allocate(int w, int h, int bpp)_

_name: allocate_

_returns: bool_

_parameters: int, int, int_



_description: _















//----------------------

##bool isFrameNew()

_syntax: isFrameNew()_

_name: isFrameNew_

_returns: bool_

_parameters: _



_description: _















//----------------------

##unsigned char * getPixels()

_syntax: getPixels()_

_name: getPixels_

_returns: unsigned char *_

_parameters: _



_description: _















//----------------------

##ofPixelsRef getPixelsRef()

_syntax: getPixelsRef()_

_name: getPixelsRef_

_returns: ofPixelsRef_

_parameters: _



_description: _















//----------------------

##void update()

_syntax: update()_

_name: update_

_returns: void_

_parameters: _



_description: _















//----------------------

##float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_parameters: _



_description: _















//----------------------

##void close()

_syntax: close()_

_name: close_

_returns: void_

_parameters: _



_description: _















//----------------------

##GstFlowReturn preroll_cb(GstBuffer *buffer)

_syntax: preroll_cb(GstBuffer *buffer)_

_name: preroll_cb_

_returns: GstFlowReturn_

_parameters: GstBuffer *_



_description: _















//----------------------

##GstFlowReturn buffer_cb(GstBuffer *buffer)

_syntax: buffer_cb(GstBuffer *buffer)_

_name: buffer_cb_

_returns: GstFlowReturn_

_parameters: GstBuffer *_



_description: _















//----------------------

##void eos_cb()

_syntax: eos_cb()_

_name: eos_cb_

_returns: void_

_parameters: _



_description: _















