#class ofTexture

//----------------------

##Example



//----------------------

##Reference



//----------------------

##Methods



//----------------------

###void ofTexture()

_syntax: ofTexture()_

_name: ofTexture_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void ~ofTexture()

_syntax: ~ofTexture()_

_name: ~ofTexture_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void ofTexture(mom)

_syntax: ofTexture(mom)_

_name: ofTexture_

_returns: void_

_returns_description: _

_parameters: const ofTexture & mom_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###ofTexture & operator=(mom)

_syntax: operator=(mom)_

_name: operator=_

_returns: ofTexture &_

_returns_description: _

_parameters: const ofTexture & mom_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



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

###void allocate(w, h, internalGlDataType)

_syntax: allocate(w, h, internalGlDataType)_

_name: allocate_

_returns: void_

_returns_description: _

_parameters: int w, int h, int internalGlDataType_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

This is the call to allocate opengl texture. The width (w) and height (h) do not necessarily need to be powers of 2, but they do need to be large enough to contain the data you will upload to the texture.  The internal data type describes how opengl will store this texture internally. For example, if you want a grayscale texture, you can use "GL_LUMINANCE". You can uplaod what ever type of data you want (using loadData()) but internally, opengl will store the information as grayscale. Other types include: GL_RGB, GL_RGBA. 















//----------------------

###void allocate(w, h, internalGlDataType, bUseARBExtention)

_syntax: allocate(w, h, internalGlDataType, bUseARBExtention)_

_name: allocate_

_returns: void_

_returns_description: _

_parameters: int w, int h, int internalGlDataType, bool bUseARBExtention_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

See previous allocate for knowing the behaviour of this function. The parameter bUseARBEExtension allow the user to enable the ARBE extension for this texture.















//----------------------

###void clear()

_syntax: clear()_

_name: clear_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

clears / frees the texture memory, if something was already allocated. useful if you need to control the memory on the graphics card.















//----------------------

###void loadData(data, w, h, glDataType)

_syntax: loadData(data, w, h, glDataType)_

_name: loadData_

_returns: void_

_returns_description: _

_parameters: unsigned char * data, int w, int h, int glDataType_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



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

###void loadScreenData(x, y, w, h)

_syntax: loadScreenData(x, y, w, h)_

_name: loadScreenData_

_returns: void_

_returns_description: _

_parameters: int x, int y, int w, int h_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Grabs a region of the screen and loads it into the texture. Specifiy the position (x,y) you wish to grab from, with the width (w) and height (h) of the region. Make sure that you have allocated your texture (using allocate()) to be large enough to hold the region of the screen you wish to load.















//----------------------

###void draw(x, y, w, h)

_syntax: draw(x, y, w, h)_

_name: draw_

_returns: void_

_returns_description: _

_parameters: float x, float y, float w, float h_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

draws the texture at a given point (x,y), with a given width (w) and height (h). 















//----------------------

###void draw(x, y)

_syntax: draw(x, y)_

_name: draw_

_returns: void_

_returns_description: _

_parameters: float x, float y_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Draws the texture at a given point (x,y), using the textures true width and height.















//----------------------

###bool bAllocated()

_syntax: bAllocated()_

_name: bAllocated_

_returns: bool_

_returns_description: Returns true if the texture is allocated correctly._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_returns_description: Returns the Height of the texture._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_returns_description: Returns the Width of the texture._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void setAnchorPercent(xPct, yPct)

_syntax: setAnchorPercent(xPct, yPct)_

_name: setAnchorPercent_

_returns: void_

_returns_description: _

_parameters: float xPct, float yPct_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void setAnchorPoint(x, y)

_syntax: setAnchorPoint(x, y)_

_name: setAnchorPoint_

_returns: void_

_returns_description: _

_parameters: int x, int y_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

Sets our texture anchor point and enables the use of it.















//----------------------

###void resetAnchor()

_syntax: resetAnchor()_

_name: resetAnchor_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void bind()

_syntax: bind()_

_name: bind_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###void unbind()

_syntax: unbind()_

_name: unbind_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

###ofTextureData getTextureData()

_syntax: getTextureData()_

_name: getTextureData_

_returns: ofTextureData_

_returns_description: Returns ofTextureData structure containing information about the texture as texture width and texture height._

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _



_description: _

















//----------------------

##Variables



//----------------------

###ofTextureData texData

_name: texData_

_type: ofTextureData_

_access: public_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _

texData is a variable type ofTextureData. ofTextureData is a structure containing information about the texture such as size. 













//----------------------

###ofPoint anchor

_name: anchor_

_type: ofPoint_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















//----------------------

###bool bAnchorIsPct

_name: bAnchorIsPct_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_constant: 0_

_summary: _



_description: _















