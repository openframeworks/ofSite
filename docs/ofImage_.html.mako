<%inherit file="_templates/docs.mako" />
___ofImage____
$$code(lang=c++)
int width
$$/code



$$code(lang=c++)
int height
$$/code



$$code(lang=c++)
int bpp
$$/code



$$code(lang=c++)
int type
$$/code



$$code(lang=c++)
None pixels
$$/code



$$code(lang=c++)
bool bUseTexture
$$/code



$$code(lang=c++)
None tex
$$/code



$$code(lang=c++)
None ofImage_()
$$/code



$$code(lang=c++)
None ~ofImage_()
$$/code



$$code(lang=c++)
None ofImage_(const ofPixels_< PixelType > &pix)
$$/code



$$code(lang=c++)
None ofImage_(const ofFile &file)
$$/code



$$code(lang=c++)
None ofImage_(const string &filename)
$$/code



$$code(lang=c++)
void allocate(int w, int h, ofImageType type)
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
None ofImage_(const ofImage_< PixelType > &mom)
$$/code



$$code(lang=c++)
None operator=(const ofImage_< PixelType > &mom)
$$/code



$$code(lang=c++)
None ofImage_(const ofImage_< SrcType > &mom)
$$/code



$$code(lang=c++)
None operator=(const ofImage_< SrcType > &mom)
$$/code



$$code(lang=c++)
void clone(const ofImage_< SrcType > &mom)
$$/code



$$code(lang=c++)
void setUseTexture(bool bUse)
$$/code



$$code(lang=c++)
bool isUsingTexture()
$$/code



$$code(lang=c++)
None getTextureReference()
$$/code



$$code(lang=c++)
void bind()
$$/code



$$code(lang=c++)
void unbind()
$$/code



$$code(lang=c++)
bool loadImage(string fileName)
$$/code



$$code(lang=c++)
bool loadImage(const ofBuffer &buffer)
$$/code



$$code(lang=c++)
bool loadImage(const ofFile &file)
$$/code



$$code(lang=c++)
void saveImage(string fileName, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST)
$$/code



$$code(lang=c++)
void saveImage(ofBuffer &buffer, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST)
$$/code



$$code(lang=c++)
void saveImage(const ofFile &file, ofImageQualityType compressionLevel=OF_IMAGE_QUALITY_BEST)
$$/code



$$code(lang=c++)
void setCompression(ofTexCompression compression)
$$/code



$$code(lang=c++)
PixelType * getPixels()
$$/code



$$code(lang=c++)
None getPixelsRef()
$$/code



$$code(lang=c++)
None operator ofPixels_< PixelType > &()
$$/code



$$code(lang=c++)
None getColor(int x, int y) const 
$$/code



$$code(lang=c++)
void setColor(int x, int y, ofColor_< PixelType > color)
$$/code



$$code(lang=c++)
void setFromPixels(const PixelType *pixels, int w, int h, ofImageType type, bool bOrderIsRGB=true)
$$/code



$$code(lang=c++)
void setFromPixels(const ofPixels_< PixelType > &pixels)
$$/code



$$code(lang=c++)
void setImageType(ofImageType type)
$$/code



$$code(lang=c++)
void resize(int newWidth, int newHeight)
$$/code



$$code(lang=c++)
void grabScreen(int x, int y, int w, int h)
$$/code



$$code(lang=c++)
void crop(int x, int y, int w, int h)
$$/code



$$code(lang=c++)
void cropFrom(ofImage_< PixelType > &otherImage, int x, int y, int w, int h)
$$/code



$$code(lang=c++)
void rotate90(int rotation)
$$/code



$$code(lang=c++)
void mirror(bool vertical, bool horizontal)
$$/code



$$code(lang=c++)
void update()
$$/code



$$code(lang=c++)
void setAnchorPercent(float xPct, float yPct)
$$/code



$$code(lang=c++)
void setAnchorPoint(float x, float y)
$$/code



$$code(lang=c++)
void resetAnchor()
$$/code



$$code(lang=c++)
void draw(const ofRectangle &r)
$$/code



$$code(lang=c++)
void draw(const ofPoint &p, float w, float h)
$$/code



$$code(lang=c++)
void draw(float x, float y, float w, float h)
$$/code



$$code(lang=c++)
void draw(float x, float y, float z, float w, float h)
$$/code



$$code(lang=c++)
void draw(const ofPoint &p)
$$/code



$$code(lang=c++)
void draw(float x, float y)
$$/code



$$code(lang=c++)
void draw(float x, float y, float z)
$$/code



$$code(lang=c++)
float getHeight()
$$/code



$$code(lang=c++)
float getWidth()
$$/code



$$code(lang=c++)
bool bAllocated()
$$/code



$$code(lang=c++)
bool isAllocated()
$$/code



$$code(lang=c++)
void reloadTexture()
$$/code



$$code(lang=c++)
None operator=(ofPixels_< PixelType > &pixels)
$$/code



$$code(lang=c++)
void changeTypeOfPixels(ofPixels_< PixelType > &pix, ofImageType type)
$$/code



$$code(lang=c++)
void resizePixels(ofPixels_< PixelType > &pix, int newWidth, int newHeight)
$$/code



