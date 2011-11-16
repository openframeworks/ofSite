<%inherit file="_templates/docs.mako" />
___ofPixels____
$$code(lang=c++)
$$/code



$$code(lang=c++)
PixelType * pixels
$$/code



$$code(lang=c++)
int width
$$/code



$$code(lang=c++)
int height
$$/code



$$code(lang=c++)
int channels
$$/code



$$code(lang=c++)
bool bAllocated
$$/code



$$code(lang=c++)
bool pixelsOwner
$$/code



$$code(lang=c++)
None ofPixels_()
$$/code



$$code(lang=c++)
None ~ofPixels_()
$$/code



$$code(lang=c++)
None ofPixels_(const ofPixels_< PixelType > &mom)
$$/code



$$code(lang=c++)
None operator=(const ofPixels_< PixelType > &mom)
$$/code



$$code(lang=c++)
None ofPixels_(const ofPixels_< SrcType > &mom)
$$/code



$$code(lang=c++)
None operator=(const ofPixels_< SrcType > &mom)
$$/code



$$code(lang=c++)
void allocate(int w, int h, int channels)
$$/code



$$code(lang=c++)
void allocate(int w, int h, ofPixelFormat type)
$$/code



$$code(lang=c++)
void allocate(int w, int h, ofImageType type)
$$/code



$$code(lang=c++)
void set(PixelType val)
$$/code



$$code(lang=c++)
void set(int channel, PixelType val)
$$/code



$$code(lang=c++)
void setFromPixels(const PixelType *newPixels, int w, int h, int channels)
$$/code



$$code(lang=c++)
void setFromPixels(const PixelType *newPixels, int w, int h, ofImageType type)
$$/code



$$code(lang=c++)
void setFromExternalPixels(PixelType *newPixels, int w, int h, int channels)
$$/code



$$code(lang=c++)
void setFromAlignedPixels(const PixelType *newPixels, int width, int height, int channels, int stride)
$$/code



$$code(lang=c++)
void crop(int x, int y, int width, int height)
$$/code



$$code(lang=c++)
void cropTo(ofPixels_< PixelType > &toPix, int x, int y, int _width, int _height)
$$/code



$$code(lang=c++)
void rotate90(int nClockwiseRotations)
$$/code



$$code(lang=c++)
void mirror(bool vertically, bool horizontal)
$$/code



$$code(lang=c++)
bool resize(int dstWidth, int dstHeight, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR)
$$/code



$$code(lang=c++)
bool resizeTo(ofPixels_< PixelType > &dst, ofInterpolationMethod interpMethod=OF_INTERPOLATE_NEAREST_NEIGHBOR)
$$/code



$$code(lang=c++)
bool pasteInto(ofPixels_< PixelType > &dst, int x, int y)
$$/code



$$code(lang=c++)
void swapRgb()
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
PixelType * getPixels()
$$/code



$$code(lang=c++)
const PixelType * getPixels() const 
$$/code



$$code(lang=c++)
int getPixelIndex(int x, int y) const 
$$/code



$$code(lang=c++)
None getColor(int x, int y) const 
$$/code



$$code(lang=c++)
void setColor(int x, int y, ofColor_< PixelType > color)
$$/code



$$code(lang=c++)
const PixelType & operator[](int pos) const 
$$/code



$$code(lang=c++)
PixelType & operator[](int pos)
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
int getBytesPerChannel() const 
$$/code



$$code(lang=c++)
int getBitsPerChannel() const 
$$/code



$$code(lang=c++)
int getNumChannels() const 
$$/code



$$code(lang=c++)
None getChannel(int channel) const 
$$/code



$$code(lang=c++)
void setChannel(int channel, const ofPixels_< PixelType > channelPixels)
$$/code



$$code(lang=c++)
None getImageType() const 
$$/code



$$code(lang=c++)
int size() const 
$$/code



$$code(lang=c++)
float bicubicInterpolate(const float *patch, float x, float y, float x2, float y2, float x3, float y3)
$$/code



$$code(lang=c++)
void copyFrom(const ofPixels_< PixelType > &mom)
$$/code



$$code(lang=c++)
void copyFrom(const ofPixels_< SrcType > &mom)
$$/code



