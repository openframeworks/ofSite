#class ofTexture


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseDraws_
-->

##InlineDescription


A wrapper class for an OpenGL texture.





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

Allocate the texture using the given settings.

This is useful if you need manual control over loading a number of
textures with the same settings. Make sure to set the texture data
parameters first.


Parameters:
textureData The settings to use when allocating the ofTexture.





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

Allocate the texture using the given settings and custom format.

Parameters:
textureData The settings to use when allocating the ofTexture.
glFormat GL texture format: GL_RGBA, GL_LUMINANCE, etc.
pixelType GL pixel type: GL_UNSIGNED_BYTE, GL_FLOAT, etc.





_description: _







<!----------------------------------------------------------------------------->

###void allocate(w, h, glInternalFormat)

<!--
_syntax: allocate(w, h, glInternalFormat)_
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

The width (w) and height (h) do not necessarily need to be powers of 2,
but they do need to be large enough to contain the data you will upload
to the texture.

The internal data type `glFormat` describes how OpenGL will store this
texture internally. For example, if you want a grayscale texture, you
can use `GL_LUMINANCE`. You can upload what ever type of data you want
(using `loadData()`) but internally, opengl will store the information
as grayscale. Other types include: `GL_RGB`, `GL_RGBA`.

This method applies the currently set OF texture type and defaults to
ARB rectangular textures if they are supported. (They are not supported
on OpenGL ES).


Parameters:
w Desired width in pixels.
h Desired height in pixels.
glInternalFormat OpenGL internal data format: `GL_RGBA`, `GL_LUMINANCE`, etc.





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


See also: allocate(int w, int h, int glInternalFormat)

Parameters:
w Desired width in pixels.
h Desired height in pixels.
glInternalFormat The internal openGL format.
glFormat The openGL format.
pixelType GL pixel type: GL_UNSIGNED_BYTE, GL_FLOAT, etc.





_description: _







<!----------------------------------------------------------------------------->

###void allocate(w, h, glInternalFormat, bUseARBExtension)

<!--
_syntax: allocate(w, h, glInternalFormat, bUseARBExtension)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, int glInternalFormat, bool bUseARBExtension_
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

This allows to enable the ARBE extension for this texture.
This will overide the default OF texture type, in case you need a
square texture (`GL_TEXTURE_2D`).


Warning: ARB textures are not available in OpenGL ES.

See also: ofEnableArbTex()

See also: allocate(int w, int h, int glInternalFormat)

Parameters:
w Desired width in pixels.
h Desired height in pixels.
glInternalFormat The internal openGL format.
bUseARBExtension Set to true to use rectangular textures.





_description: _

See previous allocate for knowing the behaviour of this function. The parameter bUseARBEExtension allow the user to enable the ARBE extension for this texture.
You need to allocate the texture before drawing it or loading data into it, lets you overide the default OF texture type





<!----------------------------------------------------------------------------->

###void allocate(w, h, glInternalFormat, bUseARBExtension, glFormat, pixelType)

<!--
_syntax: allocate(w, h, glInternalFormat, bUseARBExtension, glFormat, pixelType)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int w, int h, int glInternalFormat, bool bUseARBExtension, int glFormat, int pixelType_
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


See also: allocate(int w, int h, int glInternalFormat)

Parameters:
w Desired width in pixels.
h Desired height in pixels.
glInternalFormat OpenGL data format: `GL_RGBA`, `GL_LUMINANCE`, etc.
bUseARBExtension Set to true to use rectangular textures.
glFormat The OpenGL format.
pixelType OpenGL pixel type: `GL_UNSIGNED_BYTE`, `GL_FLOAT`, etc.





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

Pixel type and OpenGL format are determined from pixel settings.


Parameters:
pix Reference to ofPixels instance.





_description: _







<!----------------------------------------------------------------------------->

###void allocate(&pix, bUseARBExtension)

<!--
_syntax: allocate(&pix, bUseARBExtension)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofPixels &pix, bool bUseARBExtension_
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

Allocate texture using an ofPixels instance and type.

This lets you overide the default OF texture type in case you need a
square GL_TEXTURE_2D texture.


Warning: ARB textures are not available in OpenGL ES.

See also: ofEnableArbTex()

See also: allocate(const ofPixels& pix)

Parameters:
pix Reference to ofPixels instance.
bUseARBExtension Set to true to use rectangular textures.





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

Allocate texture using an ofShortPixels instance.

Same as void allocate(const ofPixels& pix), except using ofShortPixels.


See also: allocate(const ofPixels& pix)

Parameters:
pix Reference to ofShortPixels instance.





_description: _







<!----------------------------------------------------------------------------->

###void allocate(&pix, bUseARBExtension)

<!--
_syntax: allocate(&pix, bUseARBExtension)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofShortPixels &pix, bool bUseARBExtension_
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

Allocate texture using an ofShortPixels instance and type.

Same as void void allocate(const ofPixels& pix), except using ofShortPixels.


See also: allocate(const ofShortPixels& pix)

Parameters:
pix Reference to ofShortPixels instance.
bUseARBExtension Set to true to use rectangular textures.





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

Allocate texture using an ofFloatPixels instance.

Same as void allocate(const ofPixels& pix), except using ofFloatPixels.


See also: allocate(const ofPixels& pix)

Parameters:
pix Reference to ofFloatPixels instance.





_description: _







<!----------------------------------------------------------------------------->

###void allocate(&pix, bUseARBExtension)

<!--
_syntax: allocate(&pix, bUseARBExtension)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: const ofFloatPixels &pix, bool bUseARBExtension_
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

Allocate texture using an ofShortPixels instance and type.

Same as void void allocate(const ofPixels& pix), except using ofShortPixels.


See also: allocate(const ofFloatPixels& pix)

Parameters:
pix Reference to ofFloatPixels instance.
bUseARBExtension Set to true to use rectangular textures.





_description: _







<!----------------------------------------------------------------------------->

###void allocateAsBufferTexture(&buffer, glInternalFormat)

<!--
_syntax: allocateAsBufferTexture(&buffer, glInternalFormat)_
_name: allocateAsBufferTexture_
_returns: void_
_returns_description: _
_parameters: const ofBufferObject &buffer, int glInternalFormat_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allocate texture as a Buffer Texture.

Uses a GPU buffer as data for the texture instead of pixels in RAM
Allows to use texture buffer objects (TBO) which make it easier to send big
amounts of data to a shader as a uniform.

Buffer textures are 1D textures, and may only be sampled using texelFetch
in GLSL.

See textureBufferInstanceExample and https://www.opengl.org/wiki/Buffer_Texture


See also: allocate(const ofBufferObject & buffer, int glInternalFormat)

Parameters:
buffer Reference to ofBufferObject instance.
glInternalFormat Internal pixel format of the data.





_description: _







<!----------------------------------------------------------------------------->

###void bind(textureLocation = 0)

<!--
_syntax: bind(textureLocation = 0)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: int textureLocation=0_
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

For advanced users who need to manually manage texture drawing without
calling ofTexture::draw.


See also: http://www.opengl.org/sdk/docs/man4/html/glBindTexture.xhtml





_description: _

This is for the advanced user who wants to draw textures in their own way. Each set of vertices that you draw after calling bind() will be textured using this texture.





<!----------------------------------------------------------------------------->

###void bindAsImage(unit, access, level = 0, layered, layer = 0)

<!--
_syntax: bindAsImage(unit, access, level = 0, layered, layer = 0)_
_name: bindAsImage_
_returns: void_
_returns_description: _
_parameters: GLuint unit, GLenum access, GLint level=0, GLboolean layered, GLint layer=0_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calls glBindImageTexture on the texture

Binds the texture as an read or write image, only available since OpenGL 4.2

Warning: This is not available in OpenGLES

See also: http://www.opengl.org/wiki/GLAPI/glBindImageTexture





_description: _







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

Clears / frees the texture memory, if something was already allocated.
Useful if you need to control the memory on the graphics card.

The internal GL texture ID is only released if this is the last texture
using it.





_description: _

clears / frees the texture memory, if something was already allocated. useful if you need to control the memory on the graphics card.
Clears all the data from the texture





<!----------------------------------------------------------------------------->

###void copyTo(&buffer)

<!--
_syntax: copyTo(&buffer)_
_name: copyTo_
_returns: void_
_returns_description: _
_parameters: ofBufferObject &buffer_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Copy the texture to an ofBufferObject.

Parameters:
buffer the target buffer to copy to.





_description: _







<!----------------------------------------------------------------------------->

###void disableAlphaMask()

<!--
_syntax: disableAlphaMask()_
_name: disableAlphaMask_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Disable the alpha mask.





_description: _







<!----------------------------------------------------------------------------->

###void disableMipmap()

<!--
_syntax: disableMipmap()_
_name: disableMipmap_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets flag disallowing texture to auto-generate mipmap.

By default, this will set your minFilter to GL_LINEAR_MIPMAP_LINEAR.
If you want to change your minFilter later use setTextureMinMagFilter()

	If you want to generate a mipmap later, or at a specific
point in your code, use ofTexture::generateMipmap() instead.


See also: generateMipmap()

See also: enableMipmap()

See also: setTextureMinMagFilter()





_description: _







<!----------------------------------------------------------------------------->

###void disableTextureMatrix()

<!--
_syntax: disableTextureMatrix()_
_name: disableTextureMatrix_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Disable the texture matrix.
Disable the texture matrix.





_description: _







<!----------------------------------------------------------------------------->

###void disableTextureTarget(textureLocation)

<!--
_syntax: disableTextureTarget(textureLocation)_
_name: disableTextureTarget_
_returns: void_
_returns_description: _
_parameters: int textureLocation_
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

Disable a texture target.

Parameters:
textureLocation the OpenGL texture ID to enable as a target.





_description: _







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

Draw the texture at a given size witdh and depth.


Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
z Draw position on the z axis.
w Draw width.
h Draw height.





_description: _

Draws the texture at the x, y, z in 3D space with the width and height at w,h.





<!----------------------------------------------------------------------------->

###void draw(&p1, &p2, &p3, &p4)

<!--
_syntax: draw(&p1, &p2, &p3, &p4)_
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

Draws the texture at 4 points passed in as if you created 4 glVertices.


Parameters:
p1 Upper left position on the x axis.
p2 Upper left position on the y axis.
p3 Lower right position on the x axis.
p4 Lower right position on the y axis.





_description: _

Draws the texture at 4 points passed in as if you created 4 glVertices.





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

Like ofDrawRectangle() depend on the current `OF_RECT_MODE`:

* `OF_RECT_MODE_CORNER`: drawn with the upper left corner = (x,y)
* `OF_RECT_MODE_CENTER`: drawn centered on (x,y)


See also: ofSetRectMode()


Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
w Draw width.
h Draw height.
sx Subsection x axis offset within the texture.
sy Subsection y axis offset within the texture.





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


See also: drawSubsection(float x, float y, float w, float h, float sx, float sy)

Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
z Draw position on the z axis.
w Draw width.
h Draw height.
sx Subsection x axis offset within the texture.
sy Subsection y axis offset within the texture.





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


See also: drawSubsection(float x, float y, float w, float h, float sx, float sy)

Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
w Draw width.
h Draw height.
sx Subsection x axis offset within the texture.
sy Subsection y axis offset within the texture.
sw Subsection width within the texture.
sh Subsection height within the texture.





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


See also: drawSubsection(float x, float y, float w, float h, float sx, float sy)

Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
z Draw position on the z axis.
w Draw width.
h Draw height.
sx Subsection x axis offset within the texture.
sy Subsection y axis offset within the texture.
sw Subsection width within the texture.
sh Subsection height within the texture.





_description: _







<!----------------------------------------------------------------------------->

###void enableMipmap()

<!--
_syntax: enableMipmap()_
_name: enableMipmap_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets flag allowing texture to auto-generate a mipmap.

By default, this will set your minFilter to GL_LINEAR_MIPMAP_LINEAR.
If you want to change your minFilter later use setTextureMinMagFilter()

	If you want to generate a mipmap later, or at a specific
point in your code, use generateMipmap() instead.


See also: generateMipmap()

See also: disableMipmap()

See also: setTextureMinMagFilter()





_description: _







<!----------------------------------------------------------------------------->

###void enableTextureTarget(textureLocation)

<!--
_syntax: enableTextureTarget(textureLocation)_
_name: enableTextureTarget_
_returns: void_
_returns_description: _
_parameters: int textureLocation_
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

Enable a texture target.

Parameters:
textureLocation the OpenGL texture ID to enable as a target.





_description: _







<!----------------------------------------------------------------------------->

###void generateMipmap()

<!--
_syntax: generateMipmap()_
_name: generateMipmap_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Generate mipmap for the current texture.


Warning: Only GL_TEXTURE_RECTANGLE - which is the default openFrameworks
texture target - does *not* support mipmaps, so make sure to call
ofDisableArbTex() before loading texture
data for a texture you want to generate mipmaps for.


See also: ofEnableArbTex()

See also: ofDisableArbTex()





_description: _







<!----------------------------------------------------------------------------->

###const ofTexture * getAlphaMask()

<!--
_syntax: getAlphaMask()_
_name: getAlphaMask_
_returns: const ofTexture *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

Parameters:
xPts Horizontal position in a normalized percentage (0 - 1).
yPts Vertical position in a normalized percentage (0 - 1).

Returns: Texture coordinate or ofPoint::zero() if texture is not allocated.





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

Parameters:
xPos Horizontal position in pixels.
yPos Vertical position in pixels.

Returns: Texture coordinate or ofPoint::zero() if texture is not allocated.





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

Return value is pixel size (default) or normalized (0 - 1) if ofEnableNormalizedTextures() is set to true.


See also: ofEnabledNormalizedTextures()


Returns: Display height of texture in pixels.





_description: _

Returns the height of the texture. This will be in pixels unless you've set your application to use normalized coordinates.





<!----------------------------------------------------------------------------->

###ofMesh getMeshForSubsection(x, y, z, w, h, sx, sy, sw, sh, vflipped, rectMode)

<!--
_syntax: getMeshForSubsection(x, y, z, w, h, sx, sy, sw, sh, vflipped, rectMode)_
_name: getMeshForSubsection_
_returns: ofMesh_
_returns_description: _
_parameters: float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh, bool vflipped, ofRectMode rectMode_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get a mesh that has the texture coordinates set.


See also: drawSubsection(float x, float y, float w, float h, float sx, float sy)

Parameters:
x Draw position on the x axis.
y Draw position on the y axis.
z Draw position on the z axis.
w Draw width.
h Draw height.
sx Subsection x axis offset within the texture.
sy Subsection y axis offset within the texture.
sw Subsection width within the texture.
sh Subsection height within the texture.
vflipped Takes into account the flipped state in OF.
rectMode rectMode Taking x,y as the center or the top left corner.





_description: _







<!----------------------------------------------------------------------------->

###ofMesh getQuad(&p1, &p2, &p3, &p4)

<!--
_syntax: getQuad(&p1, &p2, &p3, &p4)_
_name: getQuad_
_returns: ofMesh_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2, const ofPoint &p3, const ofPoint &p4_
_access: public_
_version_started: 0.9.0_
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

This returns the internal texture data for this texture, for instance,
its textureID, type of texture, whether it's been allocated and other
data about the state of the texture.


Returns: a reference to the internal texture data struct.





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

See also: ofTextureData::getTextureData()





_description: _

This returns the internal texture data for this texture, for instance, its textureID, type of texture, whether it's been allocated, and other data about the state of the texture.





<!----------------------------------------------------------------------------->

###const ofMatrix4x4 & getTextureMatrix()

<!--
_syntax: getTextureMatrix()_
_name: getTextureMatrix_
_returns: const ofMatrix4x4 &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

Return value is pixel size (default) or normalized (0 - 1) if ofEnableNormalizedTextures() is set to true.


See also: ofEnabledNormalizedTextures()


Returns: Display width of texture in pixels.





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

Determine whether the texture has been allocated.

This lets you check if a texture is safe to draw.  The texture can both
be allocated by using `allocate()` or loading it with data `loadData()`.


Returns: true if the texture has been allocated.





_description: _

Get whether the texture has been allocated.
ofTextureData getTextureData() ###
// reference to the actual textureData inside the smart pointer
// for backwards compatibility
ofTextureData texData ###
float getHeight() ###
float getWidth() ###





<!----------------------------------------------------------------------------->

###bool isUsingTextureMatrix()

<!--
_syntax: isUsingTextureMatrix()_
_name: isUsingTextureMatrix_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
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

###void loadData(data, w, h, glFormat)

<!--
_syntax: loadData(data, w, h, glFormat)_
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

glFormat can be different to the internal format of the texture on each
load, i.e. we can upload GL_BGRA pixels into a GL_RGBA texture but the
number of channels need to match according to the OpenGL standard.


Parameters:
data Pointer to byte pixel data. Must not be nullptr.
w Pixel data width.
h Pixel data height.
glFormat GL pixel type: GL_RGBA, GL_LUMINANCE, etc.





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

Load short (2 byte) pixel data.

See also: loadData(const unsigned char* const data, int w, int h, int glFormat)

Parameters:
data Pointer to byte pixel data. Must not be nullptr.
w Pixel data width.
h Pixel data height.
glFormat GL pixel type: GL_RGBA, GL_LUMINANCE, etc.





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

Load float pixel data.

See also: loadData(const unsigned char* const data, int w, int h, int glFormat)

Parameters:
data Pointer to byte pixel data. Must not be nullptr.
w Pixel data width.
h Pixel data height.
glFormat GL pixel type: GL_RGBA, GL_LUMINANCE, etc.





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

Parameters:
pix Reference to ofPixels instance.





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

Load pixels from an ofShortPixels instance.

Same as loadData(ofPixels &) but for ofShortPixels.


See also: loadData(const ofPixels & pix)

Parameters:
pix Reference to ofShortPixels instance.





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

Load pixels from an ofFloatPixels instance.

Same as loadData(ofPixels &) but for ofFloatPixels.


See also: loadData(const ofPixels & pix)

Parameters:
pix Reference to ofFloatPixels instance.





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

Load pixels from an ofPixels instance and specify the format.

glFormat can be different to the internal format of the texture on each
load, ie. we can upload GL_BGRA pixels into a GL_RGBA texture, but the
number of channels need to match according to the OpenGL standard.


Parameters:
pix Reference to ofPixels instance.
glFormat GL pixel type: GL_RGBA, GL_LUMINANCE, etc.





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


See also: loadData(const ofPixels & pix, int glFormat)

Parameters:
pix Reference to ofShortPixels instance.
glFormat GL pixel type: GL_RGBA, GL_LUMINANCE, etc.





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

Load pixels from an ofFloatPixels instance and specify the format.


See also: loadData(const ofPixels & pix, int glFormat)

Parameters:
pix Reference to ofFloatPixels instance.
glFormat GL pixel type: GL_RGBA, GL_LUMINANCE, etc.





_description: _







<!----------------------------------------------------------------------------->

###void loadData(&buffer, glFormat, glType)

<!--
_syntax: loadData(&buffer, glFormat, glType)_
_name: loadData_
_returns: void_
_returns_description: _
_parameters: const ofBufferObject &buffer, int glFormat, int glType_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Load pixels from an ofBufferObject

This is different to allocate(ofBufferObject,internal). That
creates a texture which data lives in GL buffer while this
copies the data from the buffer to the texture.

This is usually used to upload data to be shown asynchronously
by using a buffer object binded as a PBO


Parameters:
buffer The buffer to load.
glFormat GL pixel type: GL_RGBA, GL_LUMINANCE, etc.
glType the GL type to load.





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

Load byte pixel data.

glFormat can be different to the internal format of the texture on each
load, i.e. we can upload GL_BGRA pixels into a GL_RGBA texture but the
number of channels need to match according to the OpenGL standard.


Parameters:
data Pointer to byte pixel data. Must not be nullptr.
w Pixel data width.
h Pixel data height.
glFormat GL pixel type: GL_RGBA, GL_LUMINANCE, etc.
glType the OpenGL type of the data.





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

Specifiy the position (x,y) you wish to grab from, with the width (w)
and height (h) of the region.

Make sure that you have allocated your texture (using `allocate()`)
to be large enough to hold the region of the screen you wish to load.


See also: http://www.opengl.org/sdk/docs/man4/html/glCopyTexSubImage2D.xhtml


Parameters:
x Upper left corner horizontal screen position.
y Upper left corner vertical screen position.
w Width of the area to copy in pixels.
h Height of the area to copy in pixels.





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

Parameters:
mom The ofTexture to copy. Reuses internal GL texture ID.





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

Parameters:
mom The ofTexture to copy from. Reuses internal GL texture ID.





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


Warning: This is not supported in OpenGL ES and does nothing.


Parameters:
pixels Target ofPixels reference.





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


Warning: This is not supported in OpenGL ES and does nothing.


Parameters:
pixels Target pixels reference.





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


Warning: This is not supported in OpenGL ES and does nothing.


Parameters:
pixels Target pixels reference.





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

###void setAlphaMask(&mask)

<!--
_syntax: setAlphaMask(&mask)_
_name: setAlphaMask_
_returns: void_
_returns_description: _
_parameters: ofTexture &mask_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set another ofTexture to use as an alpha mask.

Parameters:
mask The texture to use as alpha mask.





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

This can be useful if you want to rotate an image around a particular
point.


Parameters:
xPct Horizontal texture position as a percentage (0 - 1).
yPct Vertical texture position as a percentage (0 - 1).





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

This can be useful if you want to rotate an image around a particular
point.


Parameters:
x Horizontal texture position in pixels.
y Vertical texture position in pixels.





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

\warning: not yet implemented.

See also: ofTexCompression





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

\todo Define Swizzle in the documentation.
Swizzle RGBA to grayscale with alpha in the red channel.

Use 1 channel GL_R as luminance instead of red channel in OpenGL 3+.


Warning: This is not supported in OpenGL ES and does nothing.

See also: https://en.wikipedia.org/wiki/Swizzling_(computer_graphics)





_description: _







<!----------------------------------------------------------------------------->

###void setSwizzle(srcSwizzle, dstChannel)

<!--
_syntax: setSwizzle(srcSwizzle, dstChannel)_
_name: setSwizzle_
_returns: void_
_returns_description: _
_parameters: GLenum srcSwizzle, GLenum dstChannel_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Swizzle a channel to another

Example:

~~~~~
ofTexture tex;
tex.setSwizzle(GL_TEXTURE_SWIZZLE_R,GL_ALPHA);
~~~~~

will make channel 0 appear as alpha in the shader.


Warning: This is not supported in OpenGL ES and does nothing.

See also: https://en.wikipedia.org/wiki/Swizzling_(computer_graphics)





_description: _







<!----------------------------------------------------------------------------->

###void setTextureMatrix(&m)

<!--
_syntax: setTextureMatrix(&m)_
_name: setTextureMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets a texture matrix to be uploaded whenever the texture is bound.

Parameters:
m The 4x4 texture matrix.





_description: _







<!----------------------------------------------------------------------------->

###void setTextureMinMagFilter(minFilter, magFilter)

<!--
_syntax: setTextureMinMagFilter(minFilter, magFilter)_
_name: setTextureMinMagFilter_
_returns: void_
_returns_description: _
_parameters: GLint minFilter, GLint magFilter_
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


See also: http://www.opengl.org/sdk/docs/man4/html/glTexParameter.xhtml

See also: ofTextureSetMinMagFilters()


Warning: May be overridden.


Parameters:
minFilter minifying filter for scaling a pixel to a smaller area.
magFilter magnifying filter for scaling a pixel to a larger area.





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

By default, textures are clamped to their edges with `GL_CLAMP_TO_EDGE`.
Setting a repeat mode like `GL_REPEAT` allows you to create tiled
backgrounds with small textures.


See also: ofTextureSetWrap()

See also: http://www.opengl.org/sdk/docs/man4/html/glTexParameter.xhtml


Warning: May be overridden.


Parameters:
wrapModeHorizontal wrap parameter for texture coordinate s.
wrapModeVertical wrap parameter for texture coordinate t.





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

Allows you to point the texture id to an externally allocated id
(perhaps from another texture). It's up to you to set the rest of the
textData parameters manually.


Warning: When setting an external texture ID, the user must set the
remaining ofTextureData parameters manually.

Parameters:
externTexID New texture ID.





_description: _







<!----------------------------------------------------------------------------->

###void unbind(textureLocation = 0)

<!--
_syntax: unbind(textureLocation = 0)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: int textureLocation=0_
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

For advanced users who need to manually manage texture drawing without
calling ofTexture::draw.


See also: http://www.opengl.org/sdk/docs/man4/html/glBindTexture.xhtml





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

ofTexture keeps a reference count for the internal OpenGL texture ID.
Thus, the texture ID is only released if there are no additional
references to the internal texture ID.





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

_inlined_description: _

< The texture's anchor point.





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

_inlined_description: _

< Is the anchor point represented as a normalized
< (0 - 1) coordinate?





_description: _







<!----------------------------------------------------------------------------->

###bool bWantsMipmap

<!--
_name: bWantsMipmap_
_type: bool_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< Should mipmaps be created?





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

_inlined_description: _

< Internal texture data access.
< For backwards compatibility.





_description: _

texData is a variable type ofTextureData. ofTextureData is a structure containing information about the texture such as size.





<!----------------------------------------------------------------------------->

