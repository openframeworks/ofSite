#class ofFbo


##Description





The settings object is an easier way to set up the fbo when you allocate the fbo.









##Methods



### ofFbo()

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



_description: _







### ofFbo(&mom)

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



_description: _







###ofFbo operator=(&fbo)

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



_description: _







### ~ofFbo()

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



_description: _







###void allocate(width, height, internalformat = GL_RGBA, numSamples = 0)

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



_description: _







###void allocate(settings = Settings())

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



_description: _







###void draw(x, y)

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



_description: _







###void draw(x, y, width, height)

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



_description: _







###void setAnchorPercent(xPct, yPct)

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



_description: _







###void setAnchorPoint(x, y)

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



_description: _







###void resetAnchor()

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



_description: _







###void setDefaultTextureIndex(defaultTexture)

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



_description: _







###int getDefaultTextureIndex()

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



_description: _







###ofTexture getTextureReference()

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



_description: _







###ofTexture getTextureReference(attachmentPoint)

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



_description: _







###void setUseTexture(bUseTex)

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



_description: _







###void begin()

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

_static: no_

_visible: True_

_advanced: False_



_description: _







###void end()

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



_description: _







###void readToPixels(&pixels, attachmentPoint = 0)

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



_description: _







###void readToPixels(&pixels, attachmentPoint = 0)

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



_description: _







###void readToPixels(&pixels, attachmentPoint = 0)

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



_description: _







###float getWidth()

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



_description: _







###float getHeight()

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



_description: _







###void bind()

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



_description: _







###void unbind()

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



_description: _







###int getNumTextures()

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



_description: _







###GLuint getFbo()

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



_description: _







###GLuint getDepthBuffer()

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



_description: _







###GLuint getStencilBuffer()

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



_description: _







###bool checkGLSupport()

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



_description: _







###int maxColorAttachments()

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



_description: _







###int maxDrawBuffers()

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



_description: _







###int maxSamples()

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



_description: _







###void destroy()

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



_description: _







###bool checkStatus()

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



_description: _







###void createAndAttachTexture(attachmentPoint)

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



_description: _







###GLuint createAndAttachRenderbuffer(internalFormat, attachmentPoint)

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



_description: _







###void updateTexture(attachmentPoint)

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



_description: _







##Variables



###Settings settings

_name: settings_

_type: Settings_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###int isBound

_name: isBound_

_type: int_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###GLuint fbo

_name: fbo_

_type: GLuint_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###GLuint fboTextures

_name: fboTextures_

_type: GLuint_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###GLuint depthBuffer

_name: depthBuffer_

_type: GLuint_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###GLuint stencilBuffer

_name: stencilBuffer_

_type: GLuint_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###GLint savedFramebuffer

_name: savedFramebuffer_

_type: GLint_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###vector< GLuint > colorBuffers

_name: colorBuffers_

_type: vector< GLuint >_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###ofTexture textures

_name: textures_

_type: ofTexture_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###bool dirty

_name: dirty_

_type: bool_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###int defaultTextureIndex

_name: defaultTextureIndex_

_type: int_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###int _maxColorAttachments

_name: _maxColorAttachments_

_type: int_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###int _maxDrawBuffers

_name: _maxDrawBuffers_

_type: int_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###int _maxSamples

_name: _maxSamples_

_type: int_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







