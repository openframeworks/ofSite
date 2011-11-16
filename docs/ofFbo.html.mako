<%inherit file="_templates/docs.mako" />
___ofFbo___
$$code(lang=c++)
None settings
$$/code



$$code(lang=c++)
int isBound
$$/code



$$code(lang=c++)
GLuint fbo
$$/code



$$code(lang=c++)
GLuint fboTextures
$$/code



$$code(lang=c++)
GLuint depthBuffer
$$/code



$$code(lang=c++)
GLuint stencilBuffer
$$/code



$$code(lang=c++)
GLint savedFramebuffer
$$/code



$$code(lang=c++)
vector< GLuint > colorBuffers
$$/code



$$code(lang=c++)
vector<  textures
$$/code



$$code(lang=c++)
bool dirty
$$/code



$$code(lang=c++)
int defaultTextureIndex
$$/code



$$code(lang=c++)
int _maxColorAttachments
$$/code



$$code(lang=c++)
int _maxDrawBuffers
$$/code



$$code(lang=c++)
int _maxSamples
$$/code



$$code(lang=c++)
None ofFbo()
$$/code



$$code(lang=c++)
None ofFbo(const ofFbo &mom)
$$/code



$$code(lang=c++)
None operator=(const ofFbo &fbo)
$$/code



$$code(lang=c++)
None ~ofFbo()
$$/code



$$code(lang=c++)
void allocate(int width, int height, int internalformat=GL_RGBA, int numSamples=0)
$$/code



$$code(lang=c++)
void allocate(Settings settings=Settings())
$$/code



$$code(lang=c++)
void draw(float x, float y)
$$/code



$$code(lang=c++)
void draw(float x, float y, float width, float height)
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
void setDefaultTextureIndex(int defaultTexture)
$$/code



$$code(lang=c++)
int getDefaultTextureIndex()
$$/code



$$code(lang=c++)
None getTextureReference()
$$/code



$$code(lang=c++)
None getTextureReference(int attachmentPoint)
$$/code



$$code(lang=c++)
void setUseTexture(bool bUseTex)
$$/code



$$code(lang=c++)
void begin()
$$/code



$$code(lang=c++)
void end()
$$/code



$$code(lang=c++)
void readToPixels(ofPixels &pixels, int attachmentPoint=0)
$$/code



$$code(lang=c++)
void readToPixels(ofShortPixels &pixels, int attachmentPoint=0)
$$/code



$$code(lang=c++)
void readToPixels(ofFloatPixels &pixels, int attachmentPoint=0)
$$/code



$$code(lang=c++)
float getWidth()
$$/code



$$code(lang=c++)
float getHeight()
$$/code



$$code(lang=c++)
void bind()
$$/code



$$code(lang=c++)
void unbind()
$$/code



$$code(lang=c++)
int getNumTextures()
$$/code



$$code(lang=c++)
GLuint getFbo()
$$/code



$$code(lang=c++)
GLuint getDepthBuffer()
$$/code



$$code(lang=c++)
GLuint getStencilBuffer()
$$/code



$$code(lang=c++)
bool checkGLSupport()
$$/code



$$code(lang=c++)
int maxColorAttachments()
$$/code



$$code(lang=c++)
int maxDrawBuffers()
$$/code



$$code(lang=c++)
int maxSamples()
$$/code



$$code(lang=c++)
void destroy()
$$/code



$$code(lang=c++)
bool checkStatus()
$$/code



$$code(lang=c++)
void createAndAttachTexture(GLenum attachmentPoint)
$$/code



$$code(lang=c++)
GLuint createAndAttachRenderbuffer(GLenum internalFormat, GLenum attachmentPoint)
$$/code



$$code(lang=c++)
void updateTexture(int attachmentPoint)
$$/code



