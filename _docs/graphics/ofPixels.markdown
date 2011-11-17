#class ofPixels

Example



Reference



Methods



//----------------------

##None ofPixels()

_syntax: ofPixels()_

_name: ofPixels_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ~ofPixels()

_syntax: ~ofPixels()_

_name: ~ofPixels_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ofPixels(const ofPixels &mom)

_syntax: ofPixels(const ofPixels &mom)_

_name: ofPixels_

_returns: None_

_parameters: const _



_description: _















//----------------------

##ofPixels operator=(const ofPixels &mom)

_syntax: operator=(const ofPixels &mom)_

_name: operator=_

_returns: ofPixels_

_parameters: const _



_description: _















//----------------------

##void allocate(int w, int h, int bitsPerPixel)

_syntax: allocate(int w, int h, int bitsPerPixel)_

_name: allocate_

_returns: void_

_parameters: int, int, int_



_description: _















//----------------------

##void allocate(int w, int h, ofPixelFormat type)

_syntax: allocate(int w, int h, ofPixelFormat type)_

_name: allocate_

_returns: void_

_parameters: int, int, _



_description: _















//----------------------

##void set(unsigned char val)

_syntax: set(unsigned char val)_

_name: set_

_returns: void_

_parameters: unsigned char_



_description: _















//----------------------

##void setFromPixels(unsigned char *newPixels, int w, int h, ofImageType newType)

_syntax: setFromPixels(unsigned char *newPixels, int w, int h, ofImageType newType)_

_name: setFromPixels_

_returns: void_

_parameters: unsigned char *, int, int, _



_description: _















//----------------------

##void setFromExternalPixels(unsigned char *newPixels, int w, int h, ofImageType newType)

_syntax: setFromExternalPixels(unsigned char *newPixels, int w, int h, ofImageType newType)_

_name: setFromExternalPixels_

_returns: void_

_parameters: unsigned char *, int, int, _



_description: _















//----------------------

##void setFromAlignedPixels(unsigned char *newPixels, int w, int h, ofImageType newType, int widthStep)

_syntax: setFromAlignedPixels(unsigned char *newPixels, int w, int h, ofImageType newType, int widthStep)_

_name: setFromAlignedPixels_

_returns: void_

_parameters: unsigned char *, int, int, , int_



_description: _















//----------------------

##void setFromPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel)

_syntax: setFromPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel)_

_name: setFromPixels_

_returns: void_

_parameters: unsigned char *, int, int, int_



_description: _















//----------------------

##void setFromExternalPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel)

_syntax: setFromExternalPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel)_

_name: setFromExternalPixels_

_returns: void_

_parameters: unsigned char *, int, int, int_



_description: _















//----------------------

##void setFromAlignedPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel, int widthStep)

_syntax: setFromAlignedPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel, int widthStep)_

_name: setFromAlignedPixels_

_returns: void_

_parameters: unsigned char *, int, int, int, int_



_description: _















//----------------------

##void swapRgb()

_syntax: swapRgb()_

_name: swapRgb_

_returns: void_

_parameters: _



_description: _















//----------------------

##void clear()

_syntax: clear()_

_name: clear_

_returns: void_

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

##int getPixelIndex(int x, int y) const 

_syntax: getPixelIndex(int x, int y) const _

_name: getPixelIndex_

_returns: int_

_parameters: int, int_



_description: _















//----------------------

##ofColor getColor(int x, int y) const 

_syntax: getColor(int x, int y) const _

_name: getColor_

_returns: ofColor_

_parameters: int, int_



_description: _















//----------------------

##void setColor(int x, int y, ofColor color)

_syntax: setColor(int x, int y, ofColor color)_

_name: setColor_

_returns: void_

_parameters: int, int, _



_description: _















//----------------------

##unsigned char & operator[](int pos)

_syntax: operator[](int pos)_

_name: operator[]_

_returns: unsigned char &_

_parameters: int_



_description: _















//----------------------

##bool isAllocated() const 

_syntax: isAllocated() const _

_name: isAllocated_

_returns: bool_

_parameters: _



_description: _















//----------------------

##int getWidth() const 

_syntax: getWidth() const _

_name: getWidth_

_returns: int_

_parameters: _



_description: _















//----------------------

##int getHeight() const 

_syntax: getHeight() const _

_name: getHeight_

_returns: int_

_parameters: _



_description: _















//----------------------

##int getBytesPerPixel() const 

_syntax: getBytesPerPixel() const _

_name: getBytesPerPixel_

_returns: int_

_parameters: _



_description: _















//----------------------

##int getBitsPerPixel() const 

_syntax: getBitsPerPixel() const _

_name: getBitsPerPixel_

_returns: int_

_parameters: _



_description: _















//----------------------

##ofImageType getImageType() const 

_syntax: getImageType() const _

_name: getImageType_

_returns: ofImageType_

_parameters: _



_description: _















//----------------------

##int getGlDataType() const 

_syntax: getGlDataType() const _

_name: getGlDataType_

_returns: int_

_parameters: _



_description: _















//----------------------

##void copyFrom(const ofPixels &mom)

_syntax: copyFrom(const ofPixels &mom)_

_name: copyFrom_

_returns: void_

_parameters: const _



_description: _















