#class ofFbo

Example



Reference



Methods



//----------------------

##None ofFbo()

_syntax: ofFbo()_

_name: ofFbo_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ofFbo(const ofFbo &mom)

_syntax: ofFbo(const ofFbo &mom)_

_name: ofFbo_

_returns: None_

_parameters: const _



_description: _















//----------------------

##ofFbo operator=(const ofFbo &fbo)

_syntax: operator=(const ofFbo &fbo)_

_name: operator=_

_returns: ofFbo_

_parameters: const _



_description: _















//----------------------

##None ~ofFbo()

_syntax: ~ofFbo()_

_name: ~ofFbo_

_returns: None_

_parameters: _



_description: _















//----------------------

##void setup(int width, int height, int internalformat=GL_RGBA, int numSamples=0)

_syntax: setup(int width, int height, int internalformat=GL_RGBA, int numSamples=0)_

_name: setup_

_returns: void_

_parameters: int, int, int = GL_RGBA, int = 0_



_description: _















//----------------------

##void setupShadow(int width, int height)

_syntax: setupShadow(int width, int height)_

_name: setupShadow_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void setup(Settings settings=Settings())

_syntax: setup(Settings settings=Settings())_

_name: setup_

_returns: void_

_parameters:  = _



_description: _















//----------------------

##void draw(float x, float y)

_syntax: draw(float x, float y)_

_name: draw_

_returns: void_

_parameters: float, float_



_description: _















//----------------------

##void draw(float x, float y, float width, float height)

_syntax: draw(float x, float y, float width, float height)_

_name: draw_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##int getWidth()

_syntax: getWidth()_

_name: getWidth_

_returns: int_

_parameters: _



_description: _















//----------------------

##int getHeight()

_syntax: getHeight()_

_name: getHeight_

_returns: int_

_parameters: _



_description: _















//----------------------

##void begin()

_syntax: begin()_

_name: begin_

_returns: void_

_parameters: _



_description: _















//----------------------

##void end()

_syntax: end()_

_name: end_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofTexture getTexture(int attachmentPoint=0)

_syntax: getTexture(int attachmentPoint=0)_

_name: getTexture_

_returns: ofTexture_

_parameters: int = 0_



_description: _















//----------------------

##void bind()

_syntax: bind()_

_name: bind_

_returns: void_

_parameters: _



_description: _















//----------------------

##void unbind()

_syntax: unbind()_

_name: unbind_

_returns: void_

_parameters: _



_description: _















//----------------------

##int getNumTextures()

_syntax: getNumTextures()_

_name: getNumTextures_

_returns: int_

_parameters: _



_description: _















//----------------------

##GLuint getFbo()

_syntax: getFbo()_

_name: getFbo_

_returns: GLuint_

_parameters: _



_description: _















//----------------------

##GLuint getDepthBuffer()

_syntax: getDepthBuffer()_

_name: getDepthBuffer_

_returns: GLuint_

_parameters: _



_description: _















//----------------------

##GLuint getStencilBuffer()

_syntax: getStencilBuffer()_

_name: getStencilBuffer_

_returns: GLuint_

_parameters: _



_description: _















//----------------------

##void checkGLSupport()

_syntax: checkGLSupport()_

_name: checkGLSupport_

_returns: void_

_parameters: _



_description: _















//----------------------

##int maxColorAttachments()

_syntax: maxColorAttachments()_

_name: maxColorAttachments_

_returns: int_

_parameters: _



_description: _















//----------------------

##int maxDrawBuffers()

_syntax: maxDrawBuffers()_

_name: maxDrawBuffers_

_returns: int_

_parameters: _



_description: _















//----------------------

##int maxSamples()

_syntax: maxSamples()_

_name: maxSamples_

_returns: int_

_parameters: _



_description: _















//----------------------

##void destroy()

_syntax: destroy()_

_name: destroy_

_returns: void_

_parameters: _



_description: _















//----------------------

##bool checkStatus()

_syntax: checkStatus()_

_name: checkStatus_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void createAndAttachTexture(GLenum attachmentPoint)

_syntax: createAndAttachTexture(GLenum attachmentPoint)_

_name: createAndAttachTexture_

_returns: void_

_parameters: GLenum_



_description: _















//----------------------

##GLuint createAndAttachRenderbuffer(GLenum internalFormat, GLenum attachmentPoint)

_syntax: createAndAttachRenderbuffer(GLenum internalFormat, GLenum attachmentPoint)_

_name: createAndAttachRenderbuffer_

_returns: GLuint_

_parameters: GLenum, GLenum_



_description: _















//----------------------

##void updateTexture(int attachmentPoint)

_syntax: updateTexture(int attachmentPoint)_

_name: updateTexture_

_returns: void_

_parameters: int_



_description: _















