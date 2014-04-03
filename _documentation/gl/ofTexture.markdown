#class ofTexture


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription

An OpenGL image on the the graphics card. 


ofTexture is a wrapper for the OpenGL texture API. It allows use of non-power of 2 textures and to upload and draw graphical data.

***see:*** 
	[https://www.opengl.org/wiki/Texture](https://www.opengl.org/wiki/Texture) 








##Description

ofTexture is used to create textures that live on your graphics card from bitmap data that can then be used to fill other drawn objects, like a bitmap fill on a rectangle. When you draw an ofImage, you're actually just drawing a rectangle of points and then using an ofTexture to fill the space between those points. At it's core, ofTexture is a wrapper for OpenGL textures. It allows use of non-power of 2 textures in opengl, and to upload and draw graphical data. 





##Methods



###void allocate(&textureData)

<!--
_syntax: allocate(&textureData)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofTextureData &textureData_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture using the given settings. 


This is useful if you need manual control over loading a number of textures with the same settings. Make sure to set the parameters first.










_description: _








<!----------------------------------------------------------------------------->

###void allocate(&textureData, glFormat, pixelType)

<!--
_syntax: allocate(&textureData, glFormat, pixelType)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofTextureData &textureData, int glFormat, int pixelType_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture using the given settings & specify the format. 











_description: _








<!----------------------------------------------------------------------------->

###void allocate(w, h, internalGlDataType)

<!--
_syntax: allocate(w, h, internalGlDataType)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, int glInternalFormat_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture of a given size and format. 


Uses the currently set OF texture type. Defaults to ARB rectangular textures if they are supported. (They are not supported on OpenGL ES).










_description: _


This is the call to allocate opengl texture. The width (w) and height (h) do not necessarily need to be powers of 2, but they do need to be large enough to contain the data you will upload to the texture.  The internal data type describes how opengl will store this texture internally. For example, if you want a grayscale texture, you can use "GL_LUMINANCE". You can uplaod what ever type of data you want (using loadData()) but internally, opengl will store the information as grayscale. Other types include: GL_RGB, GL_RGBA. 
You need to allocate the texture before drawing it or loading data into it.
uses the currently set OF texture type - default ARB texture







<!----------------------------------------------------------------------------->

###void allocate(w, h, glInternalFormat, glFormat, pixelType)

<!--
_syntax: allocate(w, h, glInternalFormat, glFormat, pixelType)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, int glInternalFormat, int glFormat, int pixelType_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture of a given size and format. 


Same as allocate(w, h, glInternalFormat) with the addition of:










_description: _








<!----------------------------------------------------------------------------->

###void allocate(w, h, internalGlDataType, bUseARBExtention)

<!--
_syntax: allocate(w, h, internalGlDataType, bUseARBExtention)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, int glInternalFormat, bool bUseARBExtention_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture of a given size and format. Specify texture type. 


This lets you overide the default OF texture type, in case you need a square GL_TEXTURE_2D texture.

***warning:*** 
	ARB textures are not available in OpenGL ES. 


***see:*** 
	ofEnableArbTex()


Same as allocate(w, h, glInternalFormat) with the addition of:










_description: _


See previous allocate for knowing the behaviour of this function. The parameter bUseARBEExtension allow the user to enable the ARBE extension for this texture.
You need to allocate the texture before drawing it or loading data into it, lets you overide the default OF texture type







<!----------------------------------------------------------------------------->

###void allocate(w, h, glInternalFormat, bUseARBExtention, glFormat, pixelType)

<!--
_syntax: allocate(w, h, glInternalFormat, bUseARBExtention, glFormat, pixelType)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, int glInternalFormat, bool bUseARBExtention, int glFormat, int pixelType_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture of a given size, format, & type. 


Not sure how the two texture format parameters are different: glFormat & glInternalFormat.

Same as allocate(w, h, glInternalFormat, bUseARBExtension) with the addition of:










_description: _








<!----------------------------------------------------------------------------->

###void allocate(&pix)

<!--
_syntax: allocate(&pix)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofPixels &pix_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture using an ofPixels instance. 


Pixel type and GL format are determined from pixel settings.










_description: _








<!----------------------------------------------------------------------------->

###void allocate(&pix, bUseARBExtention)

<!--
_syntax: allocate(&pix, bUseARBExtention)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofPixels &pix, bool bUseARBExtention_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture using an ofPixels instance & type. 


This lets you overide the default OF texture type, in case you need a square GL_TEXTURE_2D texture.

***warning:*** 
	ARB textures are not available in OpenGL ES. 


***see:*** 
	ofEnableArbTex()


Same as loadData(ofPixels &) with the addition of: 








_description: _








<!----------------------------------------------------------------------------->

###void allocate(&pix)

<!--
_syntax: allocate(&pix)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofShortPixels &pix_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture using an ofShortPixels instance. Same as loadData(ofPixels &), except using ofShortPixels. 








_description: _








<!----------------------------------------------------------------------------->

###void allocate(&pix, bUseARBExtention)

<!--
_syntax: allocate(&pix, bUseARBExtention)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofShortPixels &pix, bool bUseARBExtention_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture using an ofShortPixels instance & type. Same as loadData(ofPixels &, bool), except using ofShortPixels. 








_description: _








<!----------------------------------------------------------------------------->

###void allocate(&pix)

<!--
_syntax: allocate(&pix)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofFloatPixels &pix_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture using an ofFloatPixels instance. Same as loadData(ofPixels &), except using ofFloatPixels. 








_description: _








<!----------------------------------------------------------------------------->

###void allocate(&pix, bUseARBExtention)

<!--
_syntax: allocate(&pix, bUseARBExtention)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofFloatPixels &pix, bool bUseARBExtention_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture using an ofFloatPixels instance & type. Same as loadData(ofPixels &, bool), except using ofFloatPixels. 








_description: _








<!----------------------------------------------------------------------------->

###bool bAllocated()

<!--
_syntax: bAllocated()_
_name: bAllocated_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Has the texture been allocated? 


Legacy function for backwards compatibility.

***return:*** 
	true if the texture has been allocated. 










_description: _


Get whether the texture has been allocated.







<!----------------------------------------------------------------------------->

###void bind()

<!--
_syntax: bind()_
_name: bind_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Bind the texture. 


For advanced users who need to manually manage texture drawing without calling ofTexture::draw.

***see:*** 
	[http://www.opengl.org/sdk/docs/man4/html/glBindTexture.xhtml](http://www.opengl.org/sdk/docs/man4/html/glBindTexture.xhtml) 










_description: _


This is for the advanced user who wants to draw textures in their own way. Each set of vertices that you draw after calling bind() will be textured using this texture.







<!----------------------------------------------------------------------------->

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clears the texture. 


The internal GL texture ID is only rleased if this is the last texture using it. 







_description: _


clears / frees the texture memory, if something was already allocated. useful if you need to control the memory on the graphics card.
Clears all the data from the texture







<!----------------------------------------------------------------------------->

###void disableTextureTarget()

<!--
_syntax: disableTextureTarget()_
_name: disableTextureTarget_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void draw(p1, p2, p3, p4)

<!--
_syntax: draw(p1, p2, p3, p4)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2, const ofPoint &p3, const ofPoint &p4_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the texture by it's upper left & lower right corners. 











_description: _


Draws the texture at 4 poitns passed in as if you created 4 glVertices.







<!----------------------------------------------------------------------------->

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the texture at it's normal size. 











_description: _


Draws the texture at a given point (x,y), using the textures true width and height.
Draws the texture at the point passed in.







<!----------------------------------------------------------------------------->

###void draw(x, y, z)

<!--
_syntax: draw(x, y, z)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the texture at it's normal size with depth. 











_description: _


Draws the texture at the point passed in in 3D space.







<!----------------------------------------------------------------------------->

###void draw(x, y, w, h)

<!--
_syntax: draw(x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the texture at a given size. 











_description: _


draws the texture at a given point (x,y), with a given width (w) and height (h). 
Draws the texture at the x, y and w, h.







<!----------------------------------------------------------------------------->

###void draw(x, y, z, w, h)

<!--
_syntax: draw(x, y, z, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw the texture at a given size with depth. 











_description: _


Draws the texture at the x, y, z in 3D space with the width and height at w,h.







<!----------------------------------------------------------------------------->

###void drawSubsection(x, y, w, h, sx, sy)

<!--
_syntax: drawSubsection(x, y, w, h, sx, sy)_
_name: drawSubsection_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h, float sx, float sy_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw a subsection of the texture. 


Like ofRect, (x, y) depend on the current OF_RECT_MODE:OF_RECT_MODE_CORNER: drawn with the upper left corner = (x,y)OF_RECT_MODE_CENTER: drawn centered on (x,y)


***see:*** 
	ofSetRectMode()











_description: _








<!----------------------------------------------------------------------------->

###void drawSubsection(x, y, z, w, h, sx, sy)

<!--
_syntax: drawSubsection(x, y, z, w, h, sx, sy)_
_name: drawSubsection_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h, float sx, float sy_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw a subsection of the texture with depth. 


Same as drawSubsection(x, y, w, h, sx, sy) with the addition of:










_description: _








<!----------------------------------------------------------------------------->

###void drawSubsection(x, y, w, h, sx, sy, sw, sh)

<!--
_syntax: drawSubsection(x, y, w, h, sx, sy, sw, sh)_
_name: drawSubsection_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h, float sx, float sy, float sw, float sh_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw a subsection of the texture with an offset. 


Same as drawSubsection(x, y, w, h, sx, sy) with the addition of:










_description: _








<!----------------------------------------------------------------------------->

###void drawSubsection(x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: drawSubsection(x, y, z, w, h, sx, sy, sw, sh)_
_name: drawSubsection_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw a subsection of the texture with an offset and depth. 


Same as drawSubsection(x, y, w, h, sx, sy, sw, sh) with the addition of:










_description: _








<!----------------------------------------------------------------------------->

###void enableTextureTarget()

<!--
_syntax: enableTextureTarget()_
_name: enableTextureTarget_
_returns: void_
_returns_description: _
_parameters: _
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###ofPoint getCoordFromPercent(xPts, yPts)

<!--
_syntax: getCoordFromPercent(xPts, yPts)_
_name: getCoordFromPercent_
_returns: ofPoint_
_returns_description: _
_parameters: float xPts, float yPts_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Helper to convert display coordinate to texture coordinate. 



***return:*** 
	Texture coordinate or (0, 0) if texture is not allocated. 










_description: _








<!----------------------------------------------------------------------------->

###ofPoint getCoordFromPoint(xPos, yPos)

<!--
_syntax: getCoordFromPoint(xPos, yPos)_
_name: getCoordFromPoint_
_returns: ofPoint_
_returns_description: _
_parameters: float xPos, float yPos_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Helper to convert display coordinate to texture coordinate. 



***return:*** 
	Texture coordinate or (0, 0) if texture is not allocated. 










_description: _


these are helpers to allow you to get points for the texture ala "glTexCoordf" but are texture type independent. use them for immediate or non immediate mode







<!----------------------------------------------------------------------------->

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Display height of texture. 


Return value is pixel size (default) or normalized (0 - 1).

***see:*** 
	ofEnabledNormalizedTextures()


***return:*** 
	Display height of texture in pixels. 










_description: _


Returns the height of the texture. This will be in pixels unless you've set your application to use normalized coordinates.







<!----------------------------------------------------------------------------->

###ofTextureData & getTextureData()

<!--
_syntax: getTextureData()_
_name: getTextureData_
_returns: ofTextureData &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Internal texture data access. 


***return:*** 
	a reference to the internal texture data struct. 










_description: _








<!----------------------------------------------------------------------------->

###const ofTextureData & getTextureData()

<!--
_syntax: getTextureData()_
_name: getTextureData_
_returns: const ofTextureData &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Const version of getTextureData(). 


***see:*** 
	ofTextureData::getTextureData() 










_description: _


This returns the internal texture data for this texture, for instance, its textureID, type of texture, whether it's been allocated, and other data about the state of the texture.







<!----------------------------------------------------------------------------->

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Display width of texture. 


Return value is pixel size (default) or normalized (0 - 1).

***see:*** 
	ofEnabledNormalizedTextures()


***return:*** 
	Display width of texture in pixels. 










_description: _


Returns the width of the texture. This will be in pixels unless you've set your application to use normalized coordinates.







<!----------------------------------------------------------------------------->

###bool isAllocated()

<!--
_syntax: isAllocated()_
_name: isAllocated_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Has the texture been allocated? 


***return:*** 
	true if the texture has been allocated. 










_description: _


Get whether the texture has been allocated.
ofTextureData getTextureData() ###
// reference to the actual textureData inside the smart pointer
// for backwards compatibility
ofTextureData texData ###
float getHeight() ###
float getWidth() ###







<!----------------------------------------------------------------------------->

###void loadData(*data, w, h, glFormat)

<!--
_syntax: loadData(*data, w, h, glFormat)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const unsigned char *const data, int w, int h, int glFormat_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load byte pixel data. 


glFormat can be different to the internal format of the texture on each load, ie. we can upload GL_BGRA pixels into a GL_RGBA texture, but the number of channels need to match according to the OpenGL standard.










_description: _








<!----------------------------------------------------------------------------->

###void loadData(*data, w, h, glFormat)

<!--
_syntax: loadData(*data, w, h, glFormat)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const unsigned short *data, int w, int h, int glFormat_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load short (2 byte) pixel data. Same as loadData(unsigned char, ...) but for short pixel data. 








_description: _








<!----------------------------------------------------------------------------->

###void loadData(*data, w, h, glFormat)

<!--
_syntax: loadData(*data, w, h, glFormat)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const float *data, int w, int h, int glFormat_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load float pixel data. Same as loadData(unsigned char, ...) but for float pixel data. 








_description: _








<!----------------------------------------------------------------------------->

###void loadData(&pix)

<!--
_syntax: loadData(&pix)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const ofPixels &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load pixels from an ofPixels instance. 











_description: _








<!----------------------------------------------------------------------------->

###void loadData(&pix)

<!--
_syntax: loadData(&pix)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const ofShortPixels &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load pixels from an ofShortPixels instance. Same as loadData(ofPixels &) but for ofShortPixels. 








_description: _








<!----------------------------------------------------------------------------->

###void loadData(&pix)

<!--
_syntax: loadData(&pix)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const ofFloatPixels &pix_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load pixels from an ofFloatPixels instance. Same as loadData(ofPixels &) but for ofFloatPixels. 








_description: _








<!----------------------------------------------------------------------------->

###void loadData(&pix, glFormat)

<!--
_syntax: loadData(&pix, glFormat)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const ofPixels &pix, int glFormat_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load pixels from an ofPixels instance & specify the format. 


glFormat can be different to the internal format of the texture on each load, ie. we can upload GL_BGRA pixels into a GL_RGBA texture, but the number of channels need to match according to the OpenGL standard.










_description: _








<!----------------------------------------------------------------------------->

###void loadData(&pix, glFormat)

<!--
_syntax: loadData(&pix, glFormat)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const ofShortPixels &pix, int glFormat_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load pixels from an ofShortPixels instance & specify the format. 


Similar to loadData(ofPixels &, int). 







_description: _








<!----------------------------------------------------------------------------->

###void loadData(&pix, glFormat)

<!--
_syntax: loadData(&pix, glFormat)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const ofFloatPixels &pix, int glFormat_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load pixels from an ofFloatPixels instance & specify the format. 


Similar to loadData(ofPixels &, int). 







_description: _








<!----------------------------------------------------------------------------->

###void loadData(*data, w, h, glFormat, glType)

<!--
_syntax: loadData(*data, w, h, glFormat, glType)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const void *data, int w, int h, int glFormat, int glType_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void loadScreenData(x, y, w, h)

<!--
_syntax: loadScreenData(x, y, w, h)_
_name: loadScreenData_
_returns: void_
_returns_description: _
_parameters: int x, int y, int w, int h_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Copy an area of the screen into this texture. 


***see:*** 
	[http://www.opengl.org/sdk/docs/man4/html/glCopyTexSubImage2D.xhtml](http://www.opengl.org/sdk/docs/man4/html/glCopyTexSubImage2D.xhtml)











_description: _


Grabs a region of the screen and loads it into the texture. Specifiy the position (x,y) you wish to grab from, with the width (w) and height (h) of the region. Make sure that you have allocated your texture (using allocate()) to be large enough to hold the region of the screen you wish to load.
Load data from the current screen into this texture. Grabs a region of the screen and loads it into the texture. Specifiy the position (x,y) you wish to grab from, with the width (w) and height (h) of the region. Make sure that you have allocated your texture (using allocate()) to be large enough to hold the region of the screen you wish to load.







<!----------------------------------------------------------------------------->

### ofTexture()

<!--
_syntax: ofTexture()_
_name: ofTexture_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Construct an ofTexture instance. 








_description: _


Creates an empty ofTexture instance. You can't draw a texture right after it's been created as it has actually uploaded any data to the graphics card that can be drawn yet.







<!----------------------------------------------------------------------------->

### ofTexture(&mom)

<!--
_syntax: ofTexture(&mom)_
_name: ofTexture_
_returns: _
_returns_description: _
_parameters: const ofTexture &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Construct an ofTexture from an existing ofTexture. 











_description: _








<!----------------------------------------------------------------------------->

###ofTexture & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofTexture &_
_returns_description: _
_parameters: const ofTexture &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Copy a given ofTexture into this texture. 











_description: _








<!----------------------------------------------------------------------------->

###void readToPixels(&pixels)

<!--
_syntax: readToPixels(&pixels)_
_name: readToPixels_
_returns: void_
_returns_description: _
_parameters: ofPixels &pixels_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Read current texture data from the GPU into pixels. 


***warning:*** 
	This is not supported in OpenGL ES and does nothing.











_description: _








<!----------------------------------------------------------------------------->

###void readToPixels(&pixels)

<!--
_syntax: readToPixels(&pixels)_
_name: readToPixels_
_returns: void_
_returns_description: _
_parameters: ofShortPixels &pixels_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Read current texture data from the GPU into pixels. 


***warning:*** 
	This is not supported in OpenGL ES and does nothing.











_description: _








<!----------------------------------------------------------------------------->

###void readToPixels(&pixels)

<!--
_syntax: readToPixels(&pixels)_
_name: readToPixels_
_returns: void_
_returns_description: _
_parameters: ofFloatPixels &pixels_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Read current texture data from the GPU into pixels. 


***warning:*** 
	This is not supported in OpenGL ES and does nothing.











_description: _








<!----------------------------------------------------------------------------->

###void resetAnchor()

<!--
_syntax: resetAnchor()_
_name: resetAnchor_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Reset the anchor point to (0, 0). 








_description: _








<!----------------------------------------------------------------------------->

###void setAnchorPercent(xPct, yPct)

<!--
_syntax: setAnchorPercent(xPct, yPct)_
_name: setAnchorPercent_
_returns: void_
_returns_description: _
_parameters: float xPct, float yPct_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Set the anchor point the texture is drawn around as a percentage. 


This can be useful if you want to rotate an image around a particular point.










_description: _


The anchor is the point the image is drawn around. This can be useful if you want to rotate an image around a particular point, allowing you to set the anchor as a percentage of the image width/height ( 0.0-1.0 range )







<!----------------------------------------------------------------------------->

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the anchor point the texture is drawn around in pixels. 


This can be useful if you want to rotate an image around a particular point.










_description: _


set the anchor point in pixels







<!----------------------------------------------------------------------------->

###void setCompression(compression)

<!--
_syntax: setCompression(compression)_
_name: setCompression_
_returns: void_
_returns_description: _
_parameters: ofTexCompression compression_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the texture compression. 


Generates mimaps depending on the compression type.

***see:*** 
	ofTexCompression 










_description: _








<!----------------------------------------------------------------------------->

###void setRGToRGBASwizzles(rToRGBSwizzles)

<!--
_syntax: setRGToRGBASwizzles(rToRGBSwizzles)_
_name: setRGToRGBASwizzles_
_returns: void_
_returns_description: _
_parameters: bool rToRGBSwizzles_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Swizzle RGBA to grayscale with alpha in the red channel. 


Use 1 channel GL_R as luminance instead of red channel in OpenGL 3+.

***warning:*** 
	This is not supported in OpenGL ES and does nothing. 










_description: _








<!----------------------------------------------------------------------------->

###void setTextureMinMagFilter(minFilter, maxFilter)

<!--
_syntax: setTextureMinMagFilter(minFilter, maxFilter)_
_name: setTextureMinMagFilter_
_returns: void_
_returns_description: _
_parameters: GLint minFilter, GLint maxFilter_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set texture minification/magnification scaling filters. 


Controls how OpenGL will scale this texture.

***see:*** 
	[http://www.opengl.org/sdk/docs/man4/html/glTexParameter.xhtml](http://www.opengl.org/sdk/docs/man4/html/glTexParameter.xhtml) 

ofTextureSetMinMagFilters()


***warning:*** 
	May be overridden.











_description: _


Set how the texture is scaled up and down, when it's being drawn larger or smaller than it's actual size.







<!----------------------------------------------------------------------------->

###void setTextureWrap(wrapModeHorizontal, wrapModeVertical)

<!--
_syntax: setTextureWrap(wrapModeHorizontal, wrapModeVertical)_
_name: setTextureWrap_
_returns: void_
_returns_description: _
_parameters: GLint wrapModeHorizontal, GLint wrapModeVertical_
_access: public_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set texture wrapping. 


By default, textures are clamped to their edges with GL_CLAMP_TO_EDGE. Setting a repeat mode like GL_REPEAT allows you to create tiled backgrounds with small textures.

***see:*** 
	ofTextureSetWrap() 

[http://www.opengl.org/sdk/docs/man4/html/glTexParameter.xhtml](http://www.opengl.org/sdk/docs/man4/html/glTexParameter.xhtml)


***warning:*** 
	May be overridden.











_description: _


Sets how the texture wraps around the edges of the vertices that the texture is being drawn to.







<!----------------------------------------------------------------------------->

###void setUseExternalTextureID(externTexID)

<!--
_syntax: setUseExternalTextureID(externTexID)_
_name: setUseExternalTextureID_
_returns: void_
_returns_description: _
_parameters: GLuint externTexID_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the texture ID. 


Allows you to point the texture id to an externally allocated id (perhaps from another texture). Its up to you to set the rest of the textData parameters manually.










_description: _








<!----------------------------------------------------------------------------->

###void unbind()

<!--
_syntax: unbind()_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _

Unbind the texture. 


For advanced users who need to manually manage texture drawing without calling ofTexture::draw.

***see:*** 
	[http://www.opengl.org/sdk/docs/man4/html/glBindTexture.xhtml](http://www.opengl.org/sdk/docs/man4/html/glBindTexture.xhtml) 










_description: _


This for the advanced user who wants to draw textures in their own way. This stops vertices from being textured using this texture.







<!----------------------------------------------------------------------------->

### ~ofTexture()

<!--
_syntax: ~ofTexture()_
_name: ~ofTexture_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _

Destroy an ofTexture instance. 


The internal GL texture ID is only rleased if this is the last texture using it. 







_description: _








<!----------------------------------------------------------------------------->

##Variables



###ofPoint anchor

<!--
_name: anchor_
_type: ofPoint_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bAnchorIsPct

<!--
_name: bAnchorIsPct_
_type: bool_
_access: protected_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofMesh quad

<!--
_name: quad_
_type: ofMesh_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTextureData texData

<!--
_name: texData_
_type: ofTextureData_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: True_
-->

_description: _


texData is a variable type ofTextureData. ofTextureData is a structure containing information about the texture such as size. 







<!----------------------------------------------------------------------------->

