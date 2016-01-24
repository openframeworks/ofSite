#class ofFbo


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseDraws, ofBaseHasTexture_
-->

##InlineDescription






##Description

At it's core the ofFBO is a container for textures and an optional depth buffer. Kind of like, well, an OpenGL framebuffer, which is what you're normally rendering to. One way, conceptually correct but technically a bit loose, is that it's another renderer that you can write to. You can draw textures to it, draw 3D or 2D objects to it, render the view of cameras inside of it, all with one key difference: it's just an object stored on the graphics card that repreesents a rendered drawing pass. You can have multiple of them, draw all kinds of things inside of them, and then get all the textures out of them to play with in a shader or just draw them directly to the screen. They are, for most purposes, little render buffers that you can render to and store without needing to be drawing to the screen.

To start working with an ofFbo, you have to allocate it, the same way that you would with an ofTexture:

~~~~{.cpp}
fbo.allocate(400, 400, GL_RGBA); // with alpha, 8 bits red, 8 bits green, 8 bits blue, 8 bits alpha, from 0 to 255 in 256 steps
~~~~

Often the FBO will contain artefacts from the memory that the graphics card has just allocated for it, so it's good to clear it before starting to draw it:

~~~~{.cpp}
    fbo.begin();
	ofClear(255,255,255, 0);
    fbo.end();
~~~~

When you call begin() you're telling the framebuffer to store the rendered results of any drawing calls (or shaders for that matter) in the FBO:

~~~~{.cpp}
float alpha = ofMap(ofGetMouseX(), 0, ofGetWidth(), 0, 255);
fbo.begin();
	ofSetColor(255,255,255, alpha);
	ofDrawRectangle(0,0,400,400);
fbo.end();
~~~~

When it's time to draw your FBO, you can simply call draw:

~~~~{.cpp}
void ofApp::draw()
{
	fbo.draw(0,0);
}
~~~~

If you want to pass the FBO to say, an ofShader, you do:

~~~~{.cpp}
shader.setUniformTexture("fboTexture", fbo.getTextureReference(0), 0);
~~~~

You can also use the ofFbo::Settings object to create a more customized FBO that allows you to set the internal format of the depth and stencil textures, create multiple textures to render to, and use different texture targets, among other things.

ofFbo can be a little confusing because it wraps two related, but distinct things in OpenGL: Textures and RenderBuffers. The difference conceptually isn't huge, but it's important if you're looking to understand deeply what's going on inside the ofFbo. RenderBuffers are good for rendering to, not drawing, whereas Textures are ok for both but slightly slower. More info on both [here](http://www.opengl.org/wiki/Renderbuffer_Objects) and [here](http://www.opengl.org/wiki/Framebuffer_Object)





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This method allows you to render the results of a shading pass to all the textures inside the FBO. It's  handy if you have many textures inside your FBO, for instance, a normals texture, a colored depth texture, a color texture, and you want to have a shader render to all of them at once. It calls glDrawBuffers() internally, which you can learn more about [here](http://www.opengl.org/sdk/docs/man/xhtml/glDrawBuffers.xml).





<!----------------------------------------------------------------------------->

###void allocate(width, height, internalformat, numSamples = 0)

<!--
_syntax: allocate(width, height, internalformat, numSamples = 0)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: int width, int height, int internalformat, int numSamples=0_
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







_description: _

Before you use the fbo you need to allocate it. This sets the width, height, and GL type of the fbo (i.e. whether it has alpha data or not) and the number of samples for MSAA. MSAA is sort of a big topic.
MSAA is what you typically have in hardware on a modern graphics card. The graphics card renders to a surface that is larger than the final image, but in shading each "cluster" of samples (that will end up in a single pixel on the final screen) the pixel shader is run only once. We save a ton of fill rate, but we still burn memory bandwidth.
This technique does not anti-alias any effects coming out of the shader, because the shader runs at 1x, so alpha cutouts are jagged. This is the most common way to run a forward-rendering game. MSAA does not work for a deferred renderer because lighting decisions are made after the MSAA is "resolved" (down-sized) to its final image size.





<!----------------------------------------------------------------------------->

###void allocate(settings)

<!--
_syntax: allocate(settings)_
_name: allocate_
_returns: void_
_returns_description: _
_parameters: ofFbo::Settings settings_
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







_description: _

You can also allocate the ofFbo using a Settings object





<!----------------------------------------------------------------------------->

###void attachTexture(&texture, internalFormat, attachmentPoint)

<!--
_syntax: attachTexture(&texture, internalFormat, attachmentPoint)_
_name: attachTexture_
_returns: void_
_returns_description: _
_parameters: ofTexture &texture, GLenum internalFormat, GLenum attachmentPoint_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

   Sets up the framebuffer and binds it for rendering.

Warning:  This is a convenience method, and is considered unsafe
          in multi-window and/or multi-renderer scenarios.
          If you use more than one renderer, use each renderer's
          explicit void ofBaseGLRenderer::begin(const ofFbo & fbo, bool setupPerspective)
          method instead.

See also:       void ofBaseGLRenderer::begin(const ofFbo & fbo, bool setupPerspective)





_description: _

Any drawing that you do after begin() is drawn into the fbo rather than the screen. This is how you draw things into your ofFbo instance.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

   Bind OpenGL GL_FRAMEBUFFER target to this ofFbo

Warning:  If you use this method, you need to manually keep track of the
          currently bound framebuffer, if you ever want to restore state.
          * use ofBaseGLRenderer::getCurrentFramebuffer() to query the current
          framebuffer binding state within the renderer.
          * Better, use the renderer's explicit method:
          ofBaseGLRenderer::bind(const ofFbo & fbo) to bind the fbo, to allow
          the renderer to keep track of any bound fbos.

See also:       unbind()

See also:       virtual void ofBaseGLRenderer::bind(const ofFbo & fbo)





_description: _

This function is internally called by ofFbo::begin() after setting up the
viewport to draw things into your ofFbo instance.

To map the fbo to ofRectangle, ofMesh, or other vertex based drawing, call

```cpp
fbo.getTextureReference().bind();
mesh.draw();
fbo.getTextureReference().unbind();
```




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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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







_description: _

This checks the status of your FBO object.





<!----------------------------------------------------------------------------->

###void clear()

<!--
_syntax: clear()_
_name: clear_
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







_description: _







<!----------------------------------------------------------------------------->

###void createAndAttachDepthStencilTexture(target, internalformat, attachment)

<!--
_syntax: createAndAttachDepthStencilTexture(target, internalformat, attachment)_
_name: createAndAttachDepthStencilTexture_
_returns: void_
_returns_description: _
_parameters: GLenum target, GLint internalformat, GLenum attachment_
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







_description: _

FBOs usually have two textures that are created inside of them: a color texture to hold all of the colors of objects that are rendered and a depth texture that represents all the depth values of objects that are rendered. While there are more esoteric reasons for generating a depth texture, a common one is that depth textures can be used in a vertex or fragment shader to figure out how far away from the camera (and possibly by extension a light) something is.

These are created with the default ofFbo::Settings, which means that unless you don't want one, you have a depth buffer to play with that you can access with:

~~~~{.cpp}
fbo.getDepthTexture();
~~~~

The attachment point is the index of the texture that you're going to be referring to within the FBO. By default this should just be GL_DEPTH_STENCIL but if you know what you're doing and don't want a stencil buffer you can use GL_DEPTH_ATTACHMENT or vice versa, GL_STENCIL_ATTACHMENT.





<!----------------------------------------------------------------------------->

###void createAndAttachDepthStencilTexture(target, internalformat, attachment, transferFormat, transferType)

<!--
_syntax: createAndAttachDepthStencilTexture(target, internalformat, attachment, transferFormat, transferType)_
_name: createAndAttachDepthStencilTexture_
_returns: void_
_returns_description: _
_parameters: GLenum target, GLint internalformat, GLenum attachment, GLenum transferFormat, GLenum transferType_
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







_description: _

FBOs usually have two textures that are created inside of them: a color texture to hold all of the colors of objects that are rendered and a depth texture that represents all the depth values of objects that are rendered. While there are more esoteric reasons for generating a depth texture, a common one is that depth textures can be used in a vertex or fragment shader to figure out how far away from the camera (and possibly by extension a light) something is.

These are created with the default ofFbo::Settings, which means that unless you don't want one, you have a depth buffer to play with that you can access with:

~~~~{.cpp}
fbo.getDepthTexture();
~~~~

The attachment point is the index of the texture that you're going to be referring to within the FBO. By default this should just be GL_DEPTH_STENCIL but if you know what you're doing and don't want a stencil buffer you can use GL_DEPTH_ATTACHMENT or vice versa, GL_STENCIL_ATTACHMENT.

The extra parameters on this method allow you to set the type of depth buffer that you want to create, which is handy if you need particular fidelity for depth, for instance, GL_DEPTH32.





<!----------------------------------------------------------------------------->

###GLuint createAndAttachRenderbuffer(internalFormat, attachmentPoint)

<!--
_syntax: createAndAttachRenderbuffer(internalFormat, attachmentPoint)_
_name: createAndAttachRenderbuffer_
_returns: GLuint_
_returns_description: _
_parameters: GLenum internalFormat, GLenum attachmentPoint_
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







_description: _

This creates a texture of the specified format and attaches it to the FBO at the index specified. Most of this can be handled for you by using the ofFbo::Settings object. RenderBuffers are slightly different than textures, more info can be found on the [OpenGL Wiki](http://www.opengl.org/wiki/Renderbuffer_Objects).





<!----------------------------------------------------------------------------->

###void createAndAttachTexture(internalFormat, attachmentPoint)

<!--
_syntax: createAndAttachTexture(internalFormat, attachmentPoint)_
_name: createAndAttachTexture_
_returns: void_
_returns_description: _
_parameters: GLenum internalFormat, GLenum attachmentPoint_
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







_description: _

This creates a texture of the specified format and attaches it to the FBO at the index specified. Most of this can be handled for you by using the ofFbo::Settings object.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

   Ends the current framebuffer render context.

See also:       void begin(bool setupScreen=true) const;





_description: _

Any drawing that you do after end() is drawn into the fbo rather than the screen. This is how you stop drawing things into your ofFbo instance.





<!----------------------------------------------------------------------------->

###void flagDirty()

<!--
_syntax: flagDirty()_
_name: flagDirty_
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







_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This gives you the OpenGL id of the depth RenderBuffer that the fbo contains. The depthBuffer will only be created if you pass a Setting object with depthStencilAsTexture = false.





<!----------------------------------------------------------------------------->

###ofTexture & getDepthTexture()

<!--
_syntax: getDepthTexture()_
_name: getDepthTexture_
_returns: ofTexture &_
_returns_description: _
_parameters: _
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







_description: _

This gives you the OpenGL id of the depth Texture that the fbo contains. The depthBuffer will be created by default or if you pass a Setting object with depthStencilAsTexture = true.





<!----------------------------------------------------------------------------->

###const ofTexture & getDepthTexture()

<!--
_syntax: getDepthTexture()_
_name: getDepthTexture_
_returns: const ofTexture &_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This returns the height of the fbo. This is just like height of a texture: it sets how many pixels wide the allocated memory on the graphics card is.





<!----------------------------------------------------------------------------->

###GLuint getId()

<!--
_syntax: getId()_
_name: getId_
_returns: GLuint_
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

returns id of the underlying GL object for advanced actions





_description: _







<!----------------------------------------------------------------------------->

###GLuint getIdDrawBuffer()

<!--
_syntax: getIdDrawBuffer()_
_name: getIdDrawBuffer_
_returns: GLuint_
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

returns id of Fbo for texture attachments
which is different when the fbo is using MSAA





_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This gives you the OpenGL id of the stencil RenderBuffer that the fbo contains. The depthBuffer will only be created if you pass a Setting object with depthStencilAsTexture = false and settings.useStencil = true.





<!----------------------------------------------------------------------------->

###ofTexture & getTexture()

<!--
_syntax: getTexture()_
_name: getTexture_
_returns: ofTexture &_
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

###ofTexture & getTexture(attachmentPoint)

<!--
_syntax: getTexture(attachmentPoint)_
_name: getTexture_
_returns: ofTexture &_
_returns_description: _
_parameters: int attachmentPoint_
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

###const ofTexture & getTexture()

<!--
_syntax: getTexture()_
_name: getTexture_
_returns: const ofTexture &_
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

###const ofTexture & getTexture(attachmentPoint)

<!--
_syntax: getTexture(attachmentPoint)_
_name: getTexture_
_returns: const ofTexture &_
_returns_description: _
_parameters: int attachmentPoint_
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
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Returns whether your FBO is allocated or not.





<!----------------------------------------------------------------------------->

###bool isUsingTexture()

<!--
_syntax: isUsingTexture()_
_name: isUsingTexture_
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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This returns the max number of simultaneous max color attachments, i.e. textures that will just be used for color information.





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This returns the max number of simultaneous draw buffers that your graphics card supports, i.e. color buffers that can be drawn to simultaneously. This is usually 4 at present.





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
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Copies all data from the mom fbo





<!----------------------------------------------------------------------------->

###ofFbo & operator=(&fbo)

<!--
_syntax: operator=(&fbo)_
_name: operator=_
_returns: ofFbo &_
_returns_description: _
_parameters: const ofFbo &fbo_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This allows you to get the pixels from an ofFbo and store it in an ofPixels instance. The attachmentPoint parameter allows you indicate which of the textures attached to the fbo you want to grab.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This allows you to get the pixels from an ofFbo and store it in an ofShortPixels instance. The attachmentPoint parameter allows you indicate which of the textures attached to the fbo you want to grab. The ofShortPixels instance is useful when you want your image as floating point values.





<!----------------------------------------------------------------------------->

###void reloadFbo()

<!--
_syntax: reloadFbo()_
_name: reloadFbo_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This sets which texture within your FBO is going contain the results of any drawing method or shading pass, particularly useful if you have multiple color textures, for instance, a normals texture and a color value texture. Doing multiple rendering passes on different objects is called [Deferred Shading](http://en.wikipedia.org/wiki/Deferred_shading) and is a tricky but powerful technique.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This sets which texture within your FBO is going contain the results of any drawing method or shading pass, particularly useful if you have multiple color textures, for instance, a normals texture and a color value texture. Doing multiple rendering passes on different objects is called [Deferred Shading](http://en.wikipedia.org/wiki/Deferred_shading) and is a tricky but powerful technique.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

You can set the anchor position that the texture will be drawn at. This means that passing 0.5, 0.5 will draw the ofFbo center at the point you pass in to the draw() method.





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

This allows you set the default texture that your fbo will use. If you're using multiple textures, this will return the one that should be draw to, scaled, and positioned.





<!----------------------------------------------------------------------------->

###void setUseTexture(bool)

<!--
_syntax: setUseTexture(bool)_
_name: setUseTexture_
_returns: void_
_returns_description: _
_parameters: bool _
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

   Unbinds OpenGL framebuffer target and restores the OpenGL framebuffer
          render target to whatever this ofFbo stores in previousFramebufferBinding.

See also:       bind()

See also:       void setPreviousFramebufferBinding(const GLuint& previousFramebufferBinding_) const





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

   Explicityl resolve MSAA render buffers into textures
\note     if using MSAA, we will have rendered into a colorbuffer, not directly
          into the texture call this to blit from the colorbuffer into the texture
          so we can use the results for rendering, or input to a shader etc.
\note     This will get called implicitly upon getTexture();





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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###vector< GLenum > activeDrawBuffers

<!--
_name: activeDrawBuffers_
_type: vector< GLenum >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< table of currently active color draw buffers, allocate() defaults it to size(textures), with GL_COLOR_ATTACHMENT0..n as members, in order of allocation





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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _

 Flags used internally to keep track of MSAA renderbuffers / textures
\note   The dirty flags are only used when dealing if the framebuffer has MSAA
        enabled attachments, i.e. numSamples is > 0 and extra Textures have
        been bound so that the multisampled renderbuffers can be resolved to
        textures.
        The flags are read whenever an attached texture is accessed. If the texture
        is dirty, i.e. it has not yet been resolved from its associated renderbuffer
        the texture will be resolved through blitting the renderbuffer into it.





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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

