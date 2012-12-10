#class ofFbo


##Description


As an example, with an fbo you can do some drawing to the fbo (instead of to the screen or a texture) and then do some blurring, maybe invert the colors, combine multiple images, all without needing to draw it to the screen until you're ready.
fbos are also used to create views of other scenes, like a TV in a house. A scene can be rendered through an FBO to a texture, then that texture can be applied to the surface of another object.
You can also create a depth buffer within your fbo to figure out which objects should go in front of which other objects.
As an example of an advanced usage:
Create an ofFbo.
Attach the color buffer of the ofFbo to a texture.
Attach the depth buffer of the ofFbo to a texture.
Render the texture to screen with a pixel shader using ofShader.
Rad!
The following code snippet shows ping-ponging, a common technique with FBOs that involves adding two textures to the FBO and blurring one then the other in succession to create a blur effect.
~~~~{.cpp}
// draw scene into fbo
fbo.begin();
vidGrabber.draw(0, 0, fbo.getWidth(), fbo.getHeight());
fbo.end();
// ping pong between two attachments using shader
fbo.begin();
shader.begin();
// the fbo contains two textures, so we blur one
// then copy it to the other and repeat 8 times
for(int i=0; i<8; i++) {
	int srcPos = i % 2;				// attachment to write to
	int dstPos = 1 - srcPos;		// attachment to read from
	glDrawBuffer(GL_COLOR_ATTACHMENT0_EXT + dstPos);	// write to this texture
	ofClear(0, 0, 0, 0);
	
	shader.setUniform1i("tex0", 0);
	shader.setUniform1f("sampleOffset", i*2+1);
	fbo.getTextureReference(srcPos).draw(0, 0);
}
shader.end();
fbo.end();
fbo.draw(0, 0);
~~~~
Bloom effects are also often done with FBO objects as as Multiple Render to Texture or MRT effectrs.





##Methods



###void activateAllDrawBuffers()

<!--
_syntax: activateAllDrawBuffers()_
_name: activateAllDrawBuffers_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void allocate(width, height, internalformat = GL_RGBA, numSamples = 0)

<!--
_syntax: allocate(width, height, internalformat = GL_RGBA, numSamples = 0)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int width, int height, int internalformat=GL_RGBA, int numSamples=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Before you use the fbo you need to allocate it. This sets the width, height, and GL type of the fbo (i.e. whether it has alpha data or not) and the number of samples for MSAA. MSAA is sort of a big topic.
MSAA is what you typically have in hardware on a modern graphics card. The graphics card renders to a surface that is larger than the final image, but in shading each "cluster" of samples (that will end up in a single pixel on the final screen) the pixel shader is run only once. We save a ton of fill rate, but we still burn memory bandwidth.
This technique does not anti-alias any effects coming out of the shader, because the shader runs at 1x, so alpha cutouts are jagged. This is the most common way to run a forward-rendering game. MSAA does not work for a deferred renderer because lighting decisions are made after the MSAA is "resolved" (down-sized) to its final image size.







<!----------------------------------------------------------------------------->

###void allocate(settings = Settings())

<!--
_syntax: allocate(settings = Settings())_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: Settings settings=Settings()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


You can also allocate the ofFbo using a Settings object







<!----------------------------------------------------------------------------->

###void begin()

<!--
_syntax: begin()_
_name: begin_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


Any drawing that you do after begin() is drawn into the fbo rather than the screen. This is how you draw things into your ofFbo instance.







<!----------------------------------------------------------------------------->

###void begin(setupScreen = true)

<!--
_syntax: begin(setupScreen = true)_
_name: begin_
_returns: void_
_returns_description: _
_parameters: bool setupScreen=true_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void bind()

<!--
_syntax: bind()_
_name: bind_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This lets you draw the fbo using vertices to define the area that the fbo will be drawn into. This can be an ofRectangle, ofMesh, or other vertex based drawing technique.







<!----------------------------------------------------------------------------->

###bool checkGLSupport()

<!--
_syntax: checkGLSupport()_
_name: checkGLSupport_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _


This allows you quickly check whether your graphics card supports FBO objects.







<!----------------------------------------------------------------------------->

###bool checkStatus()

<!--
_syntax: checkStatus()_
_name: checkStatus_
_returns: bool_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void createAndAttachDepthStencilTexture(target, internalformat, format, type, attachment)

<!--
_syntax: createAndAttachDepthStencilTexture(target, internalformat, format, type, attachment)_
_name: createAndAttachDepthStencilTexture_
_returns: void_
_returns_description: _
_parameters: GLenum target, GLint internalformat, GLenum format, GLenum type, GLenum attachment_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint createAndAttachRenderbuffer(internalFormat, attachmentPoint)

<!--
_syntax: createAndAttachRenderbuffer(internalFormat, attachmentPoint)_
_name: createAndAttachRenderbuffer_
_returns: GLuint_
_returns_description: _
_parameters: GLenum internalFormat, GLenum attachmentPoint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void createAndAttachTexture(attachmentPoint)

<!--
_syntax: createAndAttachTexture(attachmentPoint)_
_name: createAndAttachTexture_
_returns: void_
_returns_description: _
_parameters: GLenum attachmentPoint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void destroy()

<!--
_syntax: destroy()_
_name: destroy_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you draw everything that's in your fbo to the screen using its default height and width at the x, y indicated.







<!----------------------------------------------------------------------------->

###void draw(x, y, width, height)

<!--
_syntax: draw(x, y, width, height)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you draw everything that's in your fbo to the screen using any height and width. Any stretching is up to you to handle appropriately.







<!----------------------------------------------------------------------------->

###void end()

<!--
_syntax: end()_
_name: end_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Any drawing that you do after end() is drawn into the fbo rather than the screen. This is how you stop drawing things into your ofFbo instance.







<!----------------------------------------------------------------------------->

###int getDefaultTextureIndex()

<!--
_syntax: getDefaultTextureIndex()_
_name: getDefaultTextureIndex_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


If you've set the default texture reference, you can get access to it here.







<!----------------------------------------------------------------------------->

###GLuint getDepthBuffer()

<!--
_syntax: getDepthBuffer()_
_name: getDepthBuffer_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This gives you the OpenGL id of the depthBuffer that the fbo contains.







<!----------------------------------------------------------------------------->

###ofTexture getDepthTexture()

<!--
_syntax: getDepthTexture()_
_name: getDepthTexture_
_returns: ofTexture_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint getFbo()

<!--
_syntax: getFbo()_
_name: getFbo_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This returnes the GLuint of Fbo for advanced actions, if you're interested in doing something with the FBO id directly.







<!----------------------------------------------------------------------------->

###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This returns the height of the fbo. This is just like height of a texture: it sets how many pixels wide the allocated memory on the graphics card is.







<!----------------------------------------------------------------------------->

###int getNumTextures()

<!--
_syntax: getNumTextures()_
_name: getNumTextures_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This returns the number of textures that the fbo contains.







<!----------------------------------------------------------------------------->

###GLuint getStencilBuffer()

<!--
_syntax: getStencilBuffer()_
_name: getStencilBuffer_
_returns: GLuint_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This gives you the OpenGL id of the depthBuffer that the fbo contains.







<!----------------------------------------------------------------------------->

###ofTexture getTextureReference()

<!--
_syntax: getTextureReference()_
_name: getTextureReference_
_returns: ofTexture_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This gives you access to the ofTexture contained w/in the fbo. This returns the texture index returned by setDefaultTextureIndex() if you've set it there.







<!----------------------------------------------------------------------------->

###ofTexture getTextureReference(attachmentPoint)

<!--
_syntax: getTextureReference(attachmentPoint)_
_name: getTextureReference_
_returns: ofTexture_
_returns_description: _
_parameters: int attachmentPoint_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This gives you access to a particular ofTexture if there are more than 1 contained w/in the fbo.







<!----------------------------------------------------------------------------->

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This returns the width of the fbo that was set when it was allocated. This is just like width of a texture: it sets how many pixels wide the allocated memory on the graphics card is.







<!----------------------------------------------------------------------------->

###bool isAllocated()

<!--
_syntax: isAllocated()_
_name: isAllocated_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int maxColorAttachments()

<!--
_syntax: maxColorAttachments()_
_name: maxColorAttachments_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _


This returnes the max number of simultaneous max color attachments, i.e. textures that will just be used for color information.







<!----------------------------------------------------------------------------->

###int maxDrawBuffers()

<!--
_syntax: maxDrawBuffers()_
_name: maxDrawBuffers_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _


This returnes the max number of simultaneous draw buffers that your graphics card supports, i.e. color buffers that can be drawn to simultaneously. This is usually 4 at present.







<!----------------------------------------------------------------------------->

###int maxSamples()

<!--
_syntax: maxSamples()_
_name: maxSamples_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _


This is the maximum number of MSAA samples that your graphic card supports.







<!----------------------------------------------------------------------------->

### ofFbo()

<!--
_syntax: ofFbo()_
_name: ofFbo_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This is the default constructor for the ofFbo.







<!----------------------------------------------------------------------------->

### ofFbo(&mom)

<!--
_syntax: ofFbo(&mom)_
_name: ofFbo_
_returns: _
_returns_description: _
_parameters: const ofFbo &mom_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


Copies all data from the mom fbo







<!----------------------------------------------------------------------------->

###ofFbo operator=(&fbo)

<!--
_syntax: operator=(&fbo)_
_name: operator=_
_returns: ofFbo_
_returns_description: _
_parameters: const ofFbo &fbo_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This overloaded operator allows you to set one fbo from another using the = operator. Very convenient.







<!----------------------------------------------------------------------------->

###void readToPixels(&pixels, attachmentPoint = 0)

<!--
_syntax: readToPixels(&pixels, attachmentPoint = 0)_
_name: readToPixels_
_returns: void_
_returns_description: _
_parameters: ofPixels &pixels, int attachmentPoint=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you to get the pixels from an ofFbo and store it in an ofPixels instance. The attachmentPoint parameter allows you indicate which of the textures attached to the fbo you want to grab







<!----------------------------------------------------------------------------->

###void readToPixels(&pixels, attachmentPoint = 0)

<!--
_syntax: readToPixels(&pixels, attachmentPoint = 0)_
_name: readToPixels_
_returns: void_
_returns_description: _
_parameters: ofShortPixels &pixels, int attachmentPoint=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you to get the pixels from an ofFbo and store it in an ofShortPixels instance. The attachmentPoint parameter allows you indicate which of the textures attached to the fbo you want to grab. The ofShortPixels instance is useful when you want your image at short ints, or non-floating point values.







<!----------------------------------------------------------------------------->

###void readToPixels(&pixels, attachmentPoint = 0)

<!--
_syntax: readToPixels(&pixels, attachmentPoint = 0)_
_name: readToPixels_
_returns: void_
_returns_description: _
_parameters: ofFloatPixels &pixels, int attachmentPoint=0_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you to get the pixels from an ofFbo and store it in an ofShortPixels instance. The attachmentPoint parameter allows you indicate which of the textures attached to the fbo you want to grab. The ofShortPixels instance is useful when you want your image as floating point values.







<!----------------------------------------------------------------------------->

###void resetAnchor()

<!--
_syntax: resetAnchor()_
_name: resetAnchor_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you reset the anchor position.







<!----------------------------------------------------------------------------->

###void setActiveDrawBuffer(i)

<!--
_syntax: setActiveDrawBuffer(i)_
_name: setActiveDrawBuffer_
_returns: void_
_returns_description: _
_parameters: int i_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###void setActiveDrawBuffers(&i)

<!--
_syntax: setActiveDrawBuffers(&i)_
_name: setActiveDrawBuffers_
_returns: void_
_returns_description: _
_parameters: const vector< int > &i_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

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
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


You can set the anchor position that the texture will be drawn at. This means that passing 50, 50 will draw the ofFbo center at the point you pass in to the draw() method.







<!----------------------------------------------------------------------------->

###void setAnchorPoint(x, y)

<!--
_syntax: setAnchorPoint(x, y)_
_name: setAnchorPoint_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you set the anchor position of the texture in the fbo when you draw it.







<!----------------------------------------------------------------------------->

###void setDefaultTextureIndex(defaultTexture)

<!--
_syntax: setDefaultTextureIndex(defaultTexture)_
_name: setDefaultTextureIndex_
_returns: void_
_returns_description: _
_parameters: int defaultTexture_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This allows you set the default texture that your fbo will use. If you're using multiple textures, this will return the one that should be draw to, scaled, and positioned.







<!----------------------------------------------------------------------------->

###void setUseTexture(bUseTex)

<!--
_syntax: setUseTexture(bUseTex)_
_name: setUseTexture_
_returns: void_
_returns_description: _
_parameters: bool bUseTex_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


This method does nothing.







<!----------------------------------------------------------------------------->

###void unbind()

<!--
_syntax: unbind()_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _


After you bind the fbo and draw with it, call fbo to stop the fbo from being attached to vertices that are created.







<!----------------------------------------------------------------------------->

###void updateTexture(attachmentPoint)

<!--
_syntax: updateTexture(attachmentPoint)_
_name: updateTexture_
_returns: void_
_returns_description: _
_parameters: int attachmentPoint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

### ~ofFbo()

<!--
_syntax: ~ofFbo()_
_name: ~ofFbo_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

##Variables



###int _maxColorAttachments

<!--
_name: _maxColorAttachments_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int _maxDrawBuffers

<!--
_name: _maxDrawBuffers_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int _maxSamples

<!--
_name: _maxSamples_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bIsAllocated

<!--
_name: bIsAllocated_
_type: bool_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###vector< GLuint > colorBuffers

<!--
_name: colorBuffers_
_type: vector< GLuint >_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int defaultTextureIndex

<!--
_name: defaultTextureIndex_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint depthBuffer

<!--
_name: depthBuffer_
_type: GLuint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTexture depthBufferTex

<!--
_name: depthBufferTex_
_type: ofTexture_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool dirty

<!--
_name: dirty_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint fbo

<!--
_name: fbo_
_type: GLuint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint fboTextures

<!--
_name: fboTextures_
_type: GLuint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int isBound

<!--
_name: isBound_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLint savedFramebuffer

<!--
_name: savedFramebuffer_
_type: GLint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###Settings settings

<!--
_name: settings_
_type: Settings_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint stencilBuffer

<!--
_name: stencilBuffer_
_type: GLuint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofTexture textures

<!--
_name: textures_
_type: ofTexture_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

