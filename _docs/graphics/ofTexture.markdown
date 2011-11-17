#class ofTexture

Example



Reference



Methods



//----------------------

##None ofTexture(const ofTexture &mom)

_syntax: ofTexture(const ofTexture &mom)_

_name: ofTexture_

_returns: None_

_parameters: const _



_description: _















//----------------------

##ofTexture operator=(const ofTexture &mom)

_syntax: operator=(const ofTexture &mom)_

_name: operator=_

_returns: ofTexture_

_parameters: const _



_description: _















//----------------------

##void allocate(int w, int h, int internalGlDataType)

_syntax: allocate(int w, int h, int internalGlDataType)_

_name: allocate_

_returns: void_

_parameters: int, int, int_



_description: _















//----------------------

##void allocate(int w, int h, int internalGlDataType, bool bUseARBExtention)

_syntax: allocate(int w, int h, int internalGlDataType, bool bUseARBExtention)_

_name: allocate_

_returns: void_

_parameters: int, int, int, bool_



_description: _















//----------------------

##void loadData(float *data, int w, int h, int glDataType)

_syntax: loadData(float *data, int w, int h, int glDataType)_

_name: loadData_

_returns: void_

_parameters: float *, int, int, int_



_description: _















//----------------------

##void loadData(unsigned char *data, int w, int h, int glDataType)

_syntax: loadData(unsigned char *data, int w, int h, int glDataType)_

_name: loadData_

_returns: void_

_parameters: unsigned char *, int, int, int_



_description: _















//----------------------

##void loadData(ofPixels &pix)

_syntax: loadData(ofPixels &pix)_

_name: loadData_

_returns: void_

_parameters: _



_description: _















//----------------------

##void loadScreenData(int x, int y, int w, int h)

_syntax: loadScreenData(int x, int y, int w, int h)_

_name: loadScreenData_

_returns: void_

_parameters: int, int, int, int_



_description: _















//----------------------

##void setAnchorPercent(float xPct, float yPct)

_syntax: setAnchorPercent(float xPct, float yPct)_

_name: setAnchorPercent_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void setAnchorPoint(float x, float y)

_syntax: setAnchorPoint(float x, float y)_

_name: setAnchorPoint_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void draw(const ofRectangle &r)

_syntax: draw(const ofRectangle &r)_

_name: draw_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void draw(const ofPoint &p, float w, float h)

_syntax: draw(const ofPoint &p, float w, float h)_

_name: draw_

_returns: void_

_parameters: const , float, float_



_description: _















//----------------------

##void draw(float x, float y, float w, float h)

_syntax: draw(float x, float y, float w, float h)_

_name: draw_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void draw(float x, float y, float z, float w, float h)

_syntax: draw(float x, float y, float z, float w, float h)_

_name: draw_

_returns: void_

_parameters: float, float, float, float, float_



_description: _















//----------------------

##void draw(float x, float y)

_syntax: draw(float x, float y)_

_name: draw_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void draw(float x, float y, float z)

_syntax: draw(float x, float y, float z)_

_name: draw_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##void draw(ofPoint p1, ofPoint p2, ofPoint p3, ofPoint p4)

_syntax: draw(ofPoint p1, ofPoint p2, ofPoint p3, ofPoint p4)_

_name: draw_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofPoint getCoordFromPoint(float xPos, float yPos)

_syntax: getCoordFromPoint(float xPos, float yPos)_

_name: getCoordFromPoint_

_returns: ofPoint_

_parameters: float, float_



_description: _















//----------------------

##ofPoint getCoordFromPercent(float xPts, float yPts)

_syntax: getCoordFromPercent(float xPts, float yPts)_

_name: getCoordFromPercent_

_returns: ofPoint_

_parameters: float, float_



_description: _















//----------------------

##void setTextureWrap(GLint wrapModeHorizontal, GLint wrapModeVertical)

_syntax: setTextureWrap(GLint wrapModeHorizontal, GLint wrapModeVertical)_

_name: setTextureWrap_

_returns: void_

_parameters: GLint, GLint_



_description: _















//----------------------

##void setTextureMinMagFilter(GLint minFilter, GLint maxFilter)

_syntax: setTextureMinMagFilter(GLint minFilter, GLint maxFilter)_

_name: setTextureMinMagFilter_

_returns: void_

_parameters: GLint, GLint_



_description: _















//----------------------

##void setCompression(ofTexCompression compression)

_syntax: setCompression(ofTexCompression compression)_

_name: setCompression_

_returns: void_

_parameters: _



_description: _















//----------------------

##void loadData(void *data, int w, int h, int glDataType)

_syntax: loadData(void *data, int w, int h, int glDataType)_

_name: loadData_

_returns: void_

_parameters: void *, int, int, int_



_description: _















//----------------------

##void ofTexture(mom)

_syntax: ofTexture(mom)_

_name: ofTexture_

_returns: void_

_parameters: const ofTexture & mom_



_description: _













//----------------------

##void operator=(mom)

_syntax: operator=(mom)_

_name: operator=_

_returns: void_

_parameters: const ofTexture & mom_



_description: _

Makes the current ofTexture a copy of another ofTexture.
e.g:

$$code(lang=c++)


ofTexture text1,text2;

//we modify here text1 texture

text2 = text1;

$$/code



text2 and text1 are now identical.















//----------------------

##void allocate(w, h, internalGlDataType)

_syntax: allocate(w, h, internalGlDataType)_

_name: allocate_

_returns: void_

_parameters: int w, int h, int internalGlDataType_



_description: _

This is the call to allocate opengl texture. The width (w) and height (h) do not necessarily need to be powers of 2, but they do need to be large enough to contain the data you will upload to the texture.  The internal data type describes how opengl will store this texture internally. For example, if you want a grayscale texture, you can use "GL_LUMINANCE". You can uplaod what ever type of data you want (using loadData()) but internally, opengl will store the information as grayscale. Other types include: GL_RGB, GL_RGBA. 













//----------------------

##void allocate(w, h, internalGlDataType, bUseARBExtention)

_syntax: allocate(w, h, internalGlDataType, bUseARBExtention)_

_name: allocate_

_returns: void_

_parameters: int w, int h, int internalGlDataType, bool bUseARBExtention_



_description: _

See previous allocate for knowing the behaviour of this function. The parameter bUseARBEExtension allow the user to enable the ARBE extension for this texture.













//----------------------

##void clear()

_syntax: clear()_

_name: clear_

_returns: void_

_parameters: _



_description: _

clears / frees the texture memory, if something was already allocated. useful if you need to control the memory on the graphics card.

<br/><br/>return type changed from  to void in 0.07













//----------------------

##void loadData(data, w, h, glDataType)

_syntax: loadData(data, w, h, glDataType)_

_name: loadData_

_returns: void_

_parameters: unsigned char * data, int w, int h, int glDataType_



_description: _

Loads into the texture the array of unsigned chars (data), with a given width (w) and height (h). You also pass in the format that the data is stored in (some options: GL_LUMINANCE, GL_RGB, GL_RGBA). For example, to upload a 200*100 pixel RGB array into an already allocated texture:

$$code(lang=c++)

unsigned char pixels[200*100];
for (int i = 0; i < 200*100; i++){
	pixels[i] = (int)(255 * ofRandomuf());
}
myTexture.loadData(pixels, 200, 100, GL_RGB);

$$/code














//----------------------

##void loadScreenData(x, y, w, h)

_syntax: loadScreenData(x, y, w, h)_

_name: loadScreenData_

_returns: void_

_parameters: int x, int y, int w, int h_



_description: _

Grabs a region of the screen and loads it into the texture. Specifiy the position (x,y) you wish to grab from, with the width (w) and height (h) of the region. Make sure that you have allocated your texture (using allocate()) to be large enough to hold the region of the screen you wish to load.













//----------------------

##void draw(x, y, w, h)

_syntax: draw(x, y, w, h)_

_name: draw_

_returns: void_

_parameters: float x, float y, float w, float h_



_description: _

draws the texture at a given point (x,y), with a given width (w) and height (h). 













//----------------------

##void draw(x, y)

_syntax: draw(x, y)_

_name: draw_

_returns: void_

_parameters: float x, float y_



_description: _

Draws the texture at a given point (x,y), using the textures true width and height.













//----------------------

##bool bAllocated()

_syntax: bAllocated()_

_name: bAllocated_

_returns: bool_

_parameters: _



_description: _



<br/><br/>return type changed from  to bool in 0.07













//----------------------

##float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from  to float in 0.07













//----------------------

##float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from  to float in 0.07













