#class ofShader

Example



Reference



Methods



//----------------------

##None ofShader()

_syntax: ofShader()_

_name: ofShader_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ~ofShader()

_syntax: ~ofShader()_

_name: ~ofShader_

_returns: None_

_parameters: _



_description: _















//----------------------

##bool setup(string shaderName)

_syntax: setup(string shaderName)_

_name: setup_

_returns: bool_

_parameters: string_



_description: _















//----------------------

##bool setup(string vertName, string fragName, string geomName="")

_syntax: setup(string vertName, string fragName, string geomName="")_

_name: setup_

_returns: bool_

_parameters: string, string, string = ""_



_description: _















//----------------------

##void setGeometryInputType(GLenum type)

_syntax: setGeometryInputType(GLenum type)_

_name: setGeometryInputType_

_returns: void_

_parameters: GLenum_



_description: _















//----------------------

##void setGeometryOutputType(GLenum type)

_syntax: setGeometryOutputType(GLenum type)_

_name: setGeometryOutputType_

_returns: void_

_parameters: GLenum_



_description: _















//----------------------

##void setGeometryOutputCount(int count)

_syntax: setGeometryOutputCount(int count)_

_name: setGeometryOutputCount_

_returns: void_

_parameters: int_



_description: _















//----------------------

##int getGeometryMaxOutputCount()

_syntax: getGeometryMaxOutputCount()_

_name: getGeometryMaxOutputCount_

_returns: int_

_parameters: _



_description: _















//----------------------

##void unload()

_syntax: unload()_

_name: unload_

_returns: void_

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

##void setUniformTexture(const char *name, ofBaseHasTexture &img, int textureLocation)

_syntax: setUniformTexture(const char *name, ofBaseHasTexture &img, int textureLocation)_

_name: setUniformTexture_

_returns: void_

_parameters: const char *, , int_



_description: _















//----------------------

##void setUniform1i(const char *name, int v1)

_syntax: setUniform1i(const char *name, int v1)_

_name: setUniform1i_

_returns: void_

_parameters: const char *, int_



_description: _















//----------------------

##void setUniform2i(const char *name, int v1, int v2)

_syntax: setUniform2i(const char *name, int v1, int v2)_

_name: setUniform2i_

_returns: void_

_parameters: const char *, int, int_



_description: _















//----------------------

##void setUniform3i(const char *name, int v1, int v2, int v3)

_syntax: setUniform3i(const char *name, int v1, int v2, int v3)_

_name: setUniform3i_

_returns: void_

_parameters: const char *, int, int, int_



_description: _















//----------------------

##void setUniform4i(const char *name, int v1, int v2, int v3, int v4)

_syntax: setUniform4i(const char *name, int v1, int v2, int v3, int v4)_

_name: setUniform4i_

_returns: void_

_parameters: const char *, int, int, int, int_



_description: _















//----------------------

##void setUniform1f(const char *name, float v1)

_syntax: setUniform1f(const char *name, float v1)_

_name: setUniform1f_

_returns: void_

_parameters: const char *, float_



_description: _















//----------------------

##void setUniform2f(const char *name, float v1, float v2)

_syntax: setUniform2f(const char *name, float v1, float v2)_

_name: setUniform2f_

_returns: void_

_parameters: const char *, float, float_



_description: _















//----------------------

##void setUniform3f(const char *name, float v1, float v2, float v3)

_syntax: setUniform3f(const char *name, float v1, float v2, float v3)_

_name: setUniform3f_

_returns: void_

_parameters: const char *, float, float, float_



_description: _















//----------------------

##void setUniform4f(const char *name, float v1, float v2, float v3, float v4)

_syntax: setUniform4f(const char *name, float v1, float v2, float v3, float v4)_

_name: setUniform4f_

_returns: void_

_parameters: const char *, float, float, float, float_



_description: _















//----------------------

##void setUniform1iv(const char *name, int *v, int count=1)

_syntax: setUniform1iv(const char *name, int *v, int count=1)_

_name: setUniform1iv_

_returns: void_

_parameters: const char *, int *, int = 1_



_description: _















//----------------------

##void setUniform2iv(const char *name, int *v, int count=1)

_syntax: setUniform2iv(const char *name, int *v, int count=1)_

_name: setUniform2iv_

_returns: void_

_parameters: const char *, int *, int = 1_



_description: _















//----------------------

##void setUniform3iv(const char *name, int *v, int count=1)

_syntax: setUniform3iv(const char *name, int *v, int count=1)_

_name: setUniform3iv_

_returns: void_

_parameters: const char *, int *, int = 1_



_description: _















//----------------------

##void setUniform4iv(const char *name, int *v, int count=1)

_syntax: setUniform4iv(const char *name, int *v, int count=1)_

_name: setUniform4iv_

_returns: void_

_parameters: const char *, int *, int = 1_



_description: _















//----------------------

##void setUniform1fv(const char *name, float *v, int count=1)

_syntax: setUniform1fv(const char *name, float *v, int count=1)_

_name: setUniform1fv_

_returns: void_

_parameters: const char *, float *, int = 1_



_description: _















//----------------------

##void setUniform2fv(const char *name, float *v, int count=1)

_syntax: setUniform2fv(const char *name, float *v, int count=1)_

_name: setUniform2fv_

_returns: void_

_parameters: const char *, float *, int = 1_



_description: _















//----------------------

##void setUniform3fv(const char *name, float *v, int count=1)

_syntax: setUniform3fv(const char *name, float *v, int count=1)_

_name: setUniform3fv_

_returns: void_

_parameters: const char *, float *, int = 1_



_description: _















//----------------------

##void setUniform4fv(const char *name, float *v, int count=1)

_syntax: setUniform4fv(const char *name, float *v, int count=1)_

_name: setUniform4fv_

_returns: void_

_parameters: const char *, float *, int = 1_



_description: _















//----------------------

##GLint getAttributeLocation(const char *name)

_syntax: getAttributeLocation(const char *name)_

_name: getAttributeLocation_

_returns: GLint_

_parameters: const char *_



_description: _















//----------------------

##void setAttribute1s(GLint location, short v1)

_syntax: setAttribute1s(GLint location, short v1)_

_name: setAttribute1s_

_returns: void_

_parameters: GLint, short_



_description: _















//----------------------

##void setAttribute2s(GLint location, short v1, short v2)

_syntax: setAttribute2s(GLint location, short v1, short v2)_

_name: setAttribute2s_

_returns: void_

_parameters: GLint, short, short_



_description: _















//----------------------

##void setAttribute3s(GLint location, short v1, short v2, short v3)

_syntax: setAttribute3s(GLint location, short v1, short v2, short v3)_

_name: setAttribute3s_

_returns: void_

_parameters: GLint, short, short, short_



_description: _















//----------------------

##void setAttribute4s(GLint location, short v1, short v2, short v3, short v4)

_syntax: setAttribute4s(GLint location, short v1, short v2, short v3, short v4)_

_name: setAttribute4s_

_returns: void_

_parameters: GLint, short, short, short, short_



_description: _















//----------------------

##void setAttribute1f(GLint location, float v1)

_syntax: setAttribute1f(GLint location, float v1)_

_name: setAttribute1f_

_returns: void_

_parameters: GLint, float_



_description: _















//----------------------

##void setAttribute2f(GLint location, float v1, float v2)

_syntax: setAttribute2f(GLint location, float v1, float v2)_

_name: setAttribute2f_

_returns: void_

_parameters: GLint, float, float_



_description: _















//----------------------

##void setAttribute3f(GLint location, float v1, float v2, float v3)

_syntax: setAttribute3f(GLint location, float v1, float v2, float v3)_

_name: setAttribute3f_

_returns: void_

_parameters: GLint, float, float, float_



_description: _















//----------------------

##void setAttribute4f(GLint location, float v1, float v2, float v3, float v4)

_syntax: setAttribute4f(GLint location, float v1, float v2, float v3, float v4)_

_name: setAttribute4f_

_returns: void_

_parameters: GLint, float, float, float, float_



_description: _















//----------------------

##void setAttribute1d(GLint location, double v1)

_syntax: setAttribute1d(GLint location, double v1)_

_name: setAttribute1d_

_returns: void_

_parameters: GLint, double_



_description: _















//----------------------

##void setAttribute2d(GLint location, double v1, double v2)

_syntax: setAttribute2d(GLint location, double v1, double v2)_

_name: setAttribute2d_

_returns: void_

_parameters: GLint, double, double_



_description: _















//----------------------

##void setAttribute3d(GLint location, double v1, double v2, double v3)

_syntax: setAttribute3d(GLint location, double v1, double v2, double v3)_

_name: setAttribute3d_

_returns: void_

_parameters: GLint, double, double, double_



_description: _















//----------------------

##void setAttribute4d(GLint location, double v1, double v2, double v3, double v4)

_syntax: setAttribute4d(GLint location, double v1, double v2, double v3, double v4)_

_name: setAttribute4d_

_returns: void_

_parameters: GLint, double, double, double, double_



_description: _















//----------------------

##void printActiveUniforms()

_syntax: printActiveUniforms()_

_name: printActiveUniforms_

_returns: void_

_parameters: _



_description: _















//----------------------

##void printActiveAttributes()

_syntax: printActiveAttributes()_

_name: printActiveAttributes_

_returns: void_

_parameters: _



_description: _















//----------------------

##bool setupShaderFromSource(GLenum type, string source)

_syntax: setupShaderFromSource(GLenum type, string source)_

_name: setupShaderFromSource_

_returns: bool_

_parameters: GLenum, string_



_description: _















//----------------------

##bool setupShaderFromFile(GLenum type, string filename)

_syntax: setupShaderFromFile(GLenum type, string filename)_

_name: setupShaderFromFile_

_returns: bool_

_parameters: GLenum, string_



_description: _















//----------------------

##bool linkProgram()

_syntax: linkProgram()_

_name: linkProgram_

_returns: bool_

_parameters: _



_description: _















//----------------------

##GLuint & getProgram()

_syntax: getProgram()_

_name: getProgram_

_returns: GLuint &_

_parameters: _



_description: _















//----------------------

##GLuint & getShader(GLenum type)

_syntax: getShader(GLenum type)_

_name: getShader_

_returns: GLuint &_

_parameters: GLenum_



_description: _















//----------------------

##GLint getUniformLocation(const char *name)

_syntax: getUniformLocation(const char *name)_

_name: getUniformLocation_

_returns: GLint_

_parameters: const char *_



_description: _















//----------------------

##void checkProgramInfoLog(GLuint program)

_syntax: checkProgramInfoLog(GLuint program)_

_name: checkProgramInfoLog_

_returns: void_

_parameters: GLuint_



_description: _















//----------------------

##bool checkShaderLinkStatus(GLuint shader, GLenum type)

_syntax: checkShaderLinkStatus(GLuint shader, GLenum type)_

_name: checkShaderLinkStatus_

_returns: bool_

_parameters: GLuint, GLenum_



_description: _















//----------------------

##void checkShaderInfoLog(GLuint shader, GLenum type)

_syntax: checkShaderInfoLog(GLuint shader, GLenum type)_

_name: checkShaderInfoLog_

_returns: void_

_parameters: GLuint, GLenum_



_description: _















//----------------------

##void checkAndCreateProgram()

_syntax: checkAndCreateProgram()_

_name: checkAndCreateProgram_

_returns: void_

_parameters: _



_description: _















//----------------------

##string nameForType(GLenum type)

_syntax: nameForType(GLenum type)_

_name: nameForType_

_returns: string_

_parameters: GLenum_



_description: _















