<%inherit file="_templates/docs.mako" />
___ofTexture___
$$code(lang=c++)
None texData
$$/code



$$code(lang=c++)
None anchor
$$/code



$$code(lang=c++)
bool bAnchorIsPct
$$/code



$$code(lang=c++)
None ofTexture()
$$/code



$$code(lang=c++)
None ofTexture(const ofTexture &mom)
$$/code



$$code(lang=c++)
None operator=(const ofTexture &mom)
$$/code



$$code(lang=c++)
None ~ofTexture()
$$/code



$$code(lang=c++)
void allocate(const ofTextureData &textureData)
$$/code



$$code(lang=c++)
void allocate(int w, int h, int glInternalFormat)
$$/code



$$code(lang=c++)
void allocate(int w, int h, int glInternalFormat, bool bUseARBExtention)
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
void loadData(float *data, int w, int h, int glFormat)
$$/code



$$code(lang=c++)
void loadData(unsigned char *data, int w, int h, int glFormat)
$$/code



$$code(lang=c++)
void loadData(unsigned short *data, int w, int h, int glFormat)
$$/code



$$code(lang=c++)
void loadData(ofPixels &pix)
$$/code



$$code(lang=c++)
void loadData(ofShortPixels &pix)
$$/code



$$code(lang=c++)
void loadData(ofFloatPixels &pix)
$$/code



$$code(lang=c++)
void loadScreenData(int x, int y, int w, int h)
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
void draw(ofPoint p1, ofPoint p2, ofPoint p3, ofPoint p4)
$$/code



$$code(lang=c++)
void readToPixels(ofPixels &pixels)
$$/code



$$code(lang=c++)
void readToPixels(ofShortPixels &pixels)
$$/code



$$code(lang=c++)
void readToPixels(ofFloatPixels &pixels)
$$/code



$$code(lang=c++)
void bind()
$$/code



$$code(lang=c++)
void unbind()
$$/code



$$code(lang=c++)
None getCoordFromPoint(float xPos, float yPos)
$$/code



$$code(lang=c++)
None getCoordFromPercent(float xPts, float yPts)
$$/code



$$code(lang=c++)
void setTextureWrap(GLint wrapModeHorizontal, GLint wrapModeVertical)
$$/code



$$code(lang=c++)
void setTextureMinMagFilter(GLint minFilter, GLint maxFilter)
$$/code



$$code(lang=c++)
void setCompression(ofTexCompression compression)
$$/code



$$code(lang=c++)
bool bAllocated()
$$/code



$$code(lang=c++)
bool isAllocated()
$$/code



$$code(lang=c++)
None getTextureData()
$$/code



$$code(lang=c++)
float getHeight()
$$/code



$$code(lang=c++)
float getWidth()
$$/code



$$code(lang=c++)
void loadData(void *data, int w, int h, int glFormat)
$$/code



