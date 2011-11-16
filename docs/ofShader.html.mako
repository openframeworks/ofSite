<%inherit file="_templates/docs.mako" />
___ofShader___
$$code(lang=c++)
GLuint program
$$/code



$$code(lang=c++)
map< GLenum, GLuint > shaders
$$/code



$$code(lang=c++)
bool bLoaded
$$/code



$$code(lang=c++)
None ofShader()
$$/code



$$code(lang=c++)
None ~ofShader()
$$/code



$$code(lang=c++)
bool load(string shaderName)
$$/code



$$code(lang=c++)
bool load(string vertName, string fragName, string geomName="")
$$/code



$$code(lang=c++)
void setGeometryInputType(GLenum type)
$$/code



$$code(lang=c++)
void setGeometryOutputType(GLenum type)
$$/code



$$code(lang=c++)
void setGeometryOutputCount(int count)
$$/code



$$code(lang=c++)
int getGeometryMaxOutputCount()
$$/code



$$code(lang=c++)
void unload()
$$/code



$$code(lang=c++)
void begin()
$$/code



$$code(lang=c++)
void end()
$$/code



$$code(lang=c++)
void setUniformTexture(const char *name, ofBaseHasTexture &img, int textureLocation)
$$/code



$$code(lang=c++)
void setUniformTexture(const char *name, ofTexture &img, int textureLocation)
$$/code



$$code(lang=c++)
void setUniformTexture(const char *name, int textureTarget, GLint textureID, int textureLocation)
$$/code



$$code(lang=c++)
void setUniform1i(const char *name, int v1)
$$/code



$$code(lang=c++)
void setUniform2i(const char *name, int v1, int v2)
$$/code



$$code(lang=c++)
void setUniform3i(const char *name, int v1, int v2, int v3)
$$/code



$$code(lang=c++)
void setUniform4i(const char *name, int v1, int v2, int v3, int v4)
$$/code



$$code(lang=c++)
void setUniform1f(const char *name, float v1)
$$/code



$$code(lang=c++)
void setUniform2f(const char *name, float v1, float v2)
$$/code



$$code(lang=c++)
void setUniform3f(const char *name, float v1, float v2, float v3)
$$/code



$$code(lang=c++)
void setUniform4f(const char *name, float v1, float v2, float v3, float v4)
$$/code



$$code(lang=c++)
void setUniform1iv(const char *name, int *v, int count=1)
$$/code



$$code(lang=c++)
void setUniform2iv(const char *name, int *v, int count=1)
$$/code



$$code(lang=c++)
void setUniform3iv(const char *name, int *v, int count=1)
$$/code



$$code(lang=c++)
void setUniform4iv(const char *name, int *v, int count=1)
$$/code



$$code(lang=c++)
void setUniform1fv(const char *name, float *v, int count=1)
$$/code



$$code(lang=c++)
void setUniform2fv(const char *name, float *v, int count=1)
$$/code



$$code(lang=c++)
void setUniform3fv(const char *name, float *v, int count=1)
$$/code



$$code(lang=c++)
void setUniform4fv(const char *name, float *v, int count=1)
$$/code



$$code(lang=c++)
GLint getAttributeLocation(const char *name)
$$/code



$$code(lang=c++)
void setAttribute1s(GLint location, short v1)
$$/code



$$code(lang=c++)
void setAttribute2s(GLint location, short v1, short v2)
$$/code



$$code(lang=c++)
void setAttribute3s(GLint location, short v1, short v2, short v3)
$$/code



$$code(lang=c++)
void setAttribute4s(GLint location, short v1, short v2, short v3, short v4)
$$/code



$$code(lang=c++)
void setAttribute1f(GLint location, float v1)
$$/code



$$code(lang=c++)
void setAttribute2f(GLint location, float v1, float v2)
$$/code



$$code(lang=c++)
void setAttribute3f(GLint location, float v1, float v2, float v3)
$$/code



$$code(lang=c++)
void setAttribute4f(GLint location, float v1, float v2, float v3, float v4)
$$/code



$$code(lang=c++)
void setAttribute1d(GLint location, double v1)
$$/code



$$code(lang=c++)
void setAttribute2d(GLint location, double v1, double v2)
$$/code



$$code(lang=c++)
void setAttribute3d(GLint location, double v1, double v2, double v3)
$$/code



$$code(lang=c++)
void setAttribute4d(GLint location, double v1, double v2, double v3, double v4)
$$/code



$$code(lang=c++)
void printActiveUniforms()
$$/code



$$code(lang=c++)
void printActiveAttributes()
$$/code



$$code(lang=c++)
bool setupShaderFromSource(GLenum type, string source)
$$/code



$$code(lang=c++)
bool setupShaderFromFile(GLenum type, string filename)
$$/code



$$code(lang=c++)
bool linkProgram()
$$/code



$$code(lang=c++)
GLuint & getProgram()
$$/code



$$code(lang=c++)
GLuint & getShader(GLenum type)
$$/code



$$code(lang=c++)
GLint getUniformLocation(const char *name)
$$/code



$$code(lang=c++)
void checkProgramInfoLog(GLuint program)
$$/code



$$code(lang=c++)
bool checkShaderLinkStatus(GLuint shader, GLenum type)
$$/code



$$code(lang=c++)
void checkShaderInfoLog(GLuint shader, GLenum type)
$$/code



$$code(lang=c++)
void checkAndCreateProgram()
$$/code



$$code(lang=c++)
string nameForType(GLenum type)
$$/code



