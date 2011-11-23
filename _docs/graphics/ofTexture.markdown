#class ofTexture


##Description





oftexture is a wrapper for opengl's texture support. Specifically, it allows to use non power of 2 textures in opengl, and to upload and draw graphical data.


oftexture is a wrapper for opengl's texture support. Specifically, it allows to use non power of 2 textures in opengl, and to upload and draw graphical data.





##Methods



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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _

























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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _

























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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


















Copy constructor







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


Makes the current ofTexture a copy of another ofTexture.
e.g:

$$code(lang=c++)


ofTexture text1,text2;

//we modify here text1 texture

text2 = text1;

$$/code



text2 and text1 are now identical.

















Let's you do 

$$code(lang=c++)
tex2 = tex1;
$$/code







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


This is the call to allocate opengl texture. The width (w) and height (h) do not necessarily need to be powers of 2, but they do need to be large enough to contain the data you will upload to the texture.  The internal data type describes how opengl will store this texture internally. For example, if you want a grayscale texture, you can use "GL_LUMINANCE". You can uplaod what ever type of data you want (using loadData()) but internally, opengl will store the information as grayscale. Other types include: GL_RGB, GL_RGBA. 















You need to allocate the texture before drawing it or loading data into it.
uses the currently set OF texture type - default ARB texture







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


See previous allocate for knowing the behaviour of this function. The parameter bUseARBEExtension allow the user to enable the ARBE extension for this texture.















You need to allocate the texture before drawing it or loading data into it, lets you overide the default OF texture type







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


clears / frees the texture memory, if something was already allocated. useful if you need to control the memory on the graphics card.















Clears all the data from the texture







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


Loads into the texture the array of unsigned chars (data), with a given width (w) and height (h). You also pass in the format that the data is stored in (some options: GL_LUMINANCE, GL_RGB, GL_RGBA). For example, to upload a 200*100 pixel RGB array into an already allocated texture:

$$code(lang=c++)

unsigned char pixels[200*100];
for (int i = 0; i < 200*100; i++){
	pixels[i] = (int)(255 * ofRandomuf());
}
myTexture.loadData(pixels, 200, 100, GL_RGB);

$$/code






















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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


Grabs a region of the screen and loads it into the texture. Specifiy the position (x,y) you wish to grab from, with the width (w) and height (h) of the region. Make sure that you have allocated your texture (using allocate()) to be large enough to hold the region of the screen you wish to load.















Load data from the current screen into this texture. Grabs a region of the screen and loads it into the texture. Specifiy the position (x,y) you wish to grab from, with the width (w) and height (h) of the region. Make sure that you have allocated your texture (using allocate()) to be large enough to hold the region of the screen you wish to load.







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _



















The anchor is the point the image is drawn around. This can be useful if you want to rotate an image around a particular point, allowing you to set the anchor as a percentage of the image width/height ( 0.0-1.0 range )







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


Sets our texture anchor point and enables the use of it.





















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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _

























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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


draws the texture at a given point (x,y), with a given width (w) and height (h). 















Draws the texture at the x, y and w, h.







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


Draws the texture at a given point (x,y), using the textures true width and height.















Draws the texture at the point passed in.







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


















This is for the advanced user who wants to draw textures in their own way. Each set of vertices that you draw after calling bind() will be textured using this texture.







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

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


















This for the advanced user who wants to draw textures in their own way. This stops vertices from being textured using this texture.







###bool bAllocated()

_syntax: bAllocated()_

_name: bAllocated_

_returns: bool_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _


















Get whether the texture has been allocated.







###ofTextureData getTextureData()

_syntax: getTextureData()_

_name: getTextureData_

_returns: ofTextureData_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _
























###float getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: float_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _
























###float getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: float_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: true_



_description: _
























### void  allocate(textureData)

_syntax: allocate(textureData)_

_name: allocate_

_returns:  void _

_returns_description: _

_parameters: const ofTextureData & textureData_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

You need to allocate the texture before drawing it or loading data into it.







### void  loadData(data, w, h, glFormat)

_syntax: loadData(data, w, h, glFormat)_

_name: loadData_

_returns:  void _

_returns_description: _

_parameters: float* data, int w, int h, int glFormat_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Loads raw data from an array. Make sure to se the pixel type in the glFormat correctly.

Loads into the texture the array of unsigned chars (data), with a given width (w) and height (h). You also pass in the format that the data is stored in (some options: GL_LUMINANCE, GL_RGB, GL_RGBA). For example, to upload a 200*100 pixel RGB array into an already allocated texture:


unsigned char pixels[200*100];

for (int i = 0; i < 200*100; i++){

	pixels[i] = (int)(255 * ofRandomuf());

}

myTexture.loadData(pixels, 200, 100, GL_RGB);








### void  loadData(data, w, h, glFormat)

_syntax: loadData(data, w, h, glFormat)_

_name: loadData_

_returns:  void _

_returns_description: _

_parameters: unsigned char* data, int w, int h, int glFormat_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Loads raw data from an array. Make sure to se the pixel type  in the glFormat correctly.







### void  loadData(data, w, h, glFormat)

_syntax: loadData(data, w, h, glFormat)_

_name: loadData_

_returns:  void _

_returns_description: _

_parameters: unsigned short* data, int w, int h, int glFormat_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Loads raw data from an array. Make sure to se the pixel type  in the glFormat correctly.







### void  loadData(pix)

_syntax: loadData(pix)_

_name: loadData_

_returns:  void _

_returns_description: _

_parameters: ofPixels & pix_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Loads raw data from an ofPixels object.







### void  loadData(pix)

_syntax: loadData(pix)_

_name: loadData_

_returns:  void _

_returns_description: _

_parameters: ofShortPixels & pix_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Loads raw data from an ofPixels object.







### void  loadData(pix)

_syntax: loadData(pix)_

_name: loadData_

_returns:  void _

_returns_description: _

_parameters: ofFloatPixels & pix_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Loads raw data from an ofPixels object.







### void  setAnchorPoint(x, y)

_syntax: setAnchorPoint(x, y)_

_name: setAnchorPoint_

_returns:  void _

_returns_description: _

_parameters: float x, float y_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

set the anchor point in pixels







### void  draw(r)

_syntax: draw(r)_

_name: draw_

_returns:  void _

_returns_description: _

_parameters: const ofRectangle & r_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Draws the texture into a rectangle.







### void  draw(p, w, h)

_syntax: draw(p, w, h)_

_name: draw_

_returns:  void _

_returns_description: _

_parameters: const ofPoint & p, float w, float h_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Draws the texture at the point rpresent by ofPoint







### void  draw(x, y, z, w, h)

_syntax: draw(x, y, z, w, h)_

_name: draw_

_returns:  void _

_returns_description: _

_parameters: float x, float y, float z, float w, float h_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Draws the texture at the x, y, z in 3D space with the width and height at w,h.







### void  draw(p)

_syntax: draw(p)_

_name: draw_

_returns:  void _

_returns_description: _

_parameters: const ofPoint & p_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Draws the texture at the point passed in.







### void  draw(x, y, z)

_syntax: draw(x, y, z)_

_name: draw_

_returns:  void _

_returns_description: _

_parameters: float x, float y, float z_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Draws the texture at the point passed in in 3D space.







### void  draw(p1, p2, p3, p4)

_syntax: draw(p1, p2, p3, p4)_

_name: draw_

_returns:  void _

_returns_description: _

_parameters: ofPoint p1, ofPoint p2, ofPoint p3, ofPoint p4_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Draws the texture at 4 poitns passed in as if you created 4 glVertices.







### void  readToPixels(pixels)

_syntax: readToPixels(pixels)_

_name: readToPixels_

_returns:  void _

_returns_description: _

_parameters: ofPixels & pixels_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Reads the data from the texture to an ofPixels object.







### void  readToPixels(pixels)

_syntax: readToPixels(pixels)_

_name: readToPixels_

_returns:  void _

_returns_description: _

_parameters: ofShortPixels & pixels_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Reads the data from the texture to an ofShortPixels object.







### void  readToPixels(pixels)

_syntax: readToPixels(pixels)_

_name: readToPixels_

_returns:  void _

_returns_description: _

_parameters: ofFloatPixels & pixels_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Reads the data from the texture to an ofFloatPixels object.







### ofPoint getCoordFromPoint(xPos, yPos)

_syntax: getCoordFromPoint(xPos, yPos)_

_name: getCoordFromPoint_

_returns:  ofPoint_

_returns_description: _

_parameters: float xPos, float yPos_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

these are helpers to allow you to get points for the texture ala "glTexCoordf" but are texture type independent. use them for immediate or non immediate mode







### ofPoint getCoordFromPercent(xPts, yPts)

_syntax: getCoordFromPercent(xPts, yPts)_

_name: getCoordFromPercent_

_returns:  ofPoint_

_returns_description: _

_parameters: float xPts, float yPts_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _








### void  setTextureWrap(wrapModeHorizontal, wrapModeVertical)

_syntax: setTextureWrap(wrapModeHorizontal, wrapModeVertical)_

_name: setTextureWrap_

_returns:  void _

_returns_description: _

_parameters: GLint wrapModeHorizontal, GLint wrapModeVertical_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Sets how the texture wraps around the edges of the vertices that the texture is being drawn to.







### void  setTextureMinMagFilter(minFilter, maxFilter)

_syntax: setTextureMinMagFilter(minFilter, maxFilter)_

_name: setTextureMinMagFilter_

_returns:  void _

_returns_description: _

_parameters: GLint minFilter, GLint maxFilter_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Set how the texture is scaled up and down, when it's being drawn larger or smaller than it's actual size.







### void  setCompression(compression)

_syntax: setCompression(compression)_

_name: setCompression_

_returns:  void _

_returns_description: _

_parameters: ofTexCompression compression_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _








### bool isAllocated()

_syntax: isAllocated()_

_name: isAllocated_

_returns:  bool_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: false_

_static: false_

_visible: true_

_advanced: false_



_description: _

Get whether the texture has been allocated.

ofTextureData getTextureData() ###

// reference to the actual textureData inside the smart pointer
// for backwards compatibility
ofTextureData texData ###

float getHeight() ###
float getWidth() ###





##Variables



###ofTextureData texData

_name: texData_

_type: ofTextureData_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_constant: 0_

_advanced: 1_



_description: _


texData is a variable type ofTextureData. ofTextureData is a structure containing information about the texture such as size. 



















###ofPoint anchor

_name: anchor_

_type: ofPoint_

_access: protected_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_constant: 0_

_advanced: 0_



_description: _






















###bool bAnchorIsPct

_name: bAnchorIsPct_

_type: bool_

_access: protected_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: 1_

_constant: 0_

_advanced: 0_



_description: _






















