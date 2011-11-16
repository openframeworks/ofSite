<%inherit file="_templates/docs.mako" />
___ofPixels___
$$code(lang=c++)
$$/code



$$code(lang=c++)
unsigned char * pixels
$$/code



$$code(lang=c++)
int width
$$/code



$$code(lang=c++)
int height
$$/code



$$code(lang=c++)
int bitsPerPixel
$$/code



$$code(lang=c++)
int bytesPerPixel
$$/code



$$code(lang=c++)
GLint glDataType
$$/code



$$code(lang=c++)
None imageType
$$/code



$$code(lang=c++)
bool bAllocated
$$/code



$$code(lang=c++)
bool pixelsOwner
$$/code



$$code(lang=c++)
None ofPixels()
$$/code



$$code(lang=c++)
None ~ofPixels()
$$/code



$$code(lang=c++)
None ofPixels(const ofPixels &mom)
$$/code



$$code(lang=c++)
None operator=(const ofPixels &mom)
$$/code



$$code(lang=c++)
void allocate(int w, int h, int bitsPerPixel)
$$/code



$$code(lang=c++)
void allocate(int w, int h, ofPixelFormat type)
$$/code



$$code(lang=c++)
void allocate(int w, int h, ofImageType type)
$$/code



$$code(lang=c++)
void set(unsigned char val)
$$/code



$$code(lang=c++)
void setFromPixels(unsigned char *newPixels, int w, int h, ofImageType newType)
$$/code



$$code(lang=c++)
void setFromExternalPixels(unsigned char *newPixels, int w, int h, ofImageType newType)
$$/code



$$code(lang=c++)
void setFromAlignedPixels(unsigned char *newPixels, int w, int h, ofImageType newType, int widthStep)
$$/code



$$code(lang=c++)
void setFromPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel)
$$/code



$$code(lang=c++)
void setFromExternalPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel)
$$/code



$$code(lang=c++)
void setFromAlignedPixels(unsigned char *newPixels, int w, int h, int bitsPerPixel, int widthStep)
$$/code



$$code(lang=c++)
void swapRgb()
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
unsigned char * getPixels()
$$/code



$$code(lang=c++)
unsigned char *const getPixels() const 
$$/code



$$code(lang=c++)
int getPixelIndex(int x, int y) const 
$$/code



$$code(lang=c++)
None getColor(int x, int y) const 
$$/code



$$code(lang=c++)
void setColor(int x, int y, ofColor color)
$$/code



$$code(lang=c++)
unsigned char & operator[](int pos)
$$/code



$$code(lang=c++)
bool isAllocated() const 
$$/code



$$code(lang=c++)
int getWidth() const 
$$/code



$$code(lang=c++)
int getHeight() const 
$$/code



$$code(lang=c++)
int getBytesPerPixel() const 
$$/code



$$code(lang=c++)
int getBitsPerPixel() const 
$$/code



$$code(lang=c++)
None getImageType() const 
$$/code



$$code(lang=c++)
int getGlDataType() const 
$$/code



$$code(lang=c++)
void copyFrom(const ofPixels &mom)
$$/code



