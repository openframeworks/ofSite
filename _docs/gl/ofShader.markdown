#class ofShader


##Description


Graphics Language Shading Language (GLSL) can be used in oF by using the ofShader object. Shading happens in two distinct steps: the vertex shader creates values for each vertex in the model, and the fragment shader creates values for each pixel in the rendered object. To define a shader, create a .frag file for the fragment shader and a .vert file for the vertex shader.
A vertex shader has attributes about a location in space or vertex, which means not only the actual coordinates of that location but also its color, how any textures should be mapped onto it, and how the vertices are modified in the operation. A vertex shader can change the positions of each vertex, the number of lighting computations per vertex, and the color that will be applied to each vertex.
A geometry shader can generate new graphics primitives like points, lines, and triangles, from those primitives that were sent to the graphics card from the CPU. This means that you could get a point and turn it into a triangle or even a bunch of triangles, or get a line and turn it into a rectangle, or do real-time extrusion. They are very powerful and can be quite tricky to get right, but theyre becoming more popular.
The fragment shader is somewhat misleadingly named because what it really allows you to do is to change values assigned to each pixel. The vertex shader operates on the vertices, and the fragment shader operates on the pixels. By the time the fragment shader gets information passed into it by the graphics card, the color of a particular pixel has already been computed and in the fragment shader can be combined with an element like a lighting effecting, a fog effect, or a blur among many other options. The usual end result of this stage per fragment is a color value and a depth for the fragment.





##Methods



### ofShader()

_syntax: ofShader()_

_name: ofShader_

_returns: _

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







### ~ofShader()

_syntax: ~ofShader()_

_name: ~ofShader_

_returns: _

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### bool load(shaderName)

_syntax: load(shaderName)_

_name: load_

_returns:  bool_

_returns_description: _

_parameters: string shaderName_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

This assumes that your vertex and fragment shaders have the same name and loads them.







### bool load(vertName, fragName, geomName = "")

_syntax: load(vertName, fragName, geomName = "")_

_name: load_

_returns:  bool_

_returns_description: _

_parameters: string vertName, string fragName, string geomName=""_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Here you can load shaders with whatever names you choose. The geometry shader is optional, but the vertex and fragment shaders aren't.







### void setGeometryInputType(type)

_syntax: setGeometryInputType(type)_

_name: setGeometryInputType_

_returns:  void_

_returns_description: _

_parameters: GLenum type_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

You have to call this before linking the program with geometry shaders.
Possible types are GL_POINTS, GL_LINES, GL_LINES_ADJACENCY_EXT, GL_TRIANGLES, GL_TRIANGLES_ADJACENCY_EXT







### void setGeometryOutputType(type)

_syntax: setGeometryOutputType(type)_

_name: setGeometryOutputType_

_returns:  void_

_returns_description: _

_parameters: GLenum type_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

You have to call this before linking the program with geometry shaders.
type: GL_POINTS, GL_LINE_STRIP or GL_TRIANGLE_STRIP







### void setGeometryOutputCount(count)

_syntax: setGeometryOutputCount(count)_

_name: setGeometryOutputCount_

_returns:  void_

_returns_description: _

_parameters: int count_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

You have to call this before linking the program with geometry shaders to set number of output vertices







### int getGeometryMaxOutputCount()

_syntax: getGeometryMaxOutputCount()_

_name: getGeometryMaxOutputCount_

_returns:  int_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

returns maximum number of supported vertices for your graphics card








### void unload()

_syntax: unload()_

_name: unload_

_returns:  void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

This unload the shader, which means that it will not be active on the graphics card any longer.







### void begin()

_syntax: begin()_

_name: begin_

_returns:  void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


After you call begin() everything that you draw, vertexes and textures, in your of application have the effects of the shader applied to them.







### void end()

_syntax: end()_

_name: end_

_returns:  void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


After you call end() any drawing, vertexes and textures, do not have the effect of the shader applied to them.







### void setUniformTexture(name, img, textureLocation)

_syntax: setUniformTexture(name, img, textureLocation)_

_name: setUniformTexture_

_returns:  void_

_returns_description: _

_parameters: const char* name, ofBaseHasTexture& img, int textureLocation_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

set a texture reference

On your shader it should look like this:

$$code(lang=c++)
uniform sampler2DRect texture;
$$/code







### void setUniformTexture(name, img, textureLocation)

_syntax: setUniformTexture(name, img, textureLocation)_

_name: setUniformTexture_

_returns:  void_

_returns_description: _

_parameters: const char* name, ofTexture& img, int textureLocation_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


For multi-texturing.

$$code(lang=c++)
uniform sampler2DRect texture;
$$/code







### void setUniform1i(name, v1)

_syntax: setUniform1i(name, v1)_

_name: setUniform1i_

_returns:  void_

_returns_description: _

_parameters: const char* name, int v1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


set a single uniform value. On your shader this should look like:

$$code(lang=c++)
uniform int texture;
$$/code







### void setUniform2i(name, v1, v2)

_syntax: setUniform2i(name, v1, v2)_

_name: setUniform2i_

_returns:  void_

_returns_description: _

_parameters: const char* name, int v1, int v2_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


$$code(lang=c++)
uniform ivec2 texture;
$$/code







### void setUniform3i(name, v1, v2, v3)

_syntax: setUniform3i(name, v1, v2, v3)_

_name: setUniform3i_

_returns:  void_

_returns_description: _

_parameters: const char* name, int v1, int v2, int v3_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


$$code(lang=c++)
uniform ivec3 texture;
$$/code







### void setUniform4i(name, v1, v2, v3, v4)

_syntax: setUniform4i(name, v1, v2, v3, v4)_

_name: setUniform4i_

_returns:  void_

_returns_description: _

_parameters: const char* name, int v1, int v2, int v3, int v4_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


$$code(lang=c++)
uniform ivec4 texture;
$$/code







### void setUniform1f(name, v1)

_syntax: setUniform1f(name, v1)_

_name: setUniform1f_

_returns:  void_

_returns_description: _

_parameters: const char* name, float v1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

set a float uniform on the shader







### void setUniform2f(name, v1, v2)

_syntax: setUniform2f(name, v1, v2)_

_name: setUniform2f_

_returns:  void_

_returns_description: _

_parameters: const char* name, float v1, float v2_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

set a vec2 uniform on the shader







### void setUniform3f(name, v1, v2, v3)

_syntax: setUniform3f(name, v1, v2, v3)_

_name: setUniform3f_

_returns:  void_

_returns_description: _

_parameters: const char* name, float v1, float v2, float v3_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

set a vec3 uniform on the shader








### void setUniform4f(name, v1, v2, v3, v4)

_syntax: setUniform4f(name, v1, v2, v3, v4)_

_name: setUniform4f_

_returns:  void_

_returns_description: _

_parameters: const char* name, float v1, float v2, float v3, float v4_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

set a vec4 uniform on the shader

$$code(lang=c++)
vec4 fv;
$$/code







### void setUniform1iv(name, v, count =  1)

_syntax: setUniform1iv(name, v, count =  1)_

_name: setUniform1iv_

_returns:  void_

_returns_description: _

_parameters: const char* name, int* v, int count = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


set an array of uniform values on the shader, this uses single values, i.e. 

$$code(lang=c++)
int ids[4] = {1, 2, 3, 4};
$$/code
On the shader side, this is:

$$code(lang=c++)
ivec iv[2];
$$/code







### void setUniform2iv(name, v, count =  1)

_syntax: setUniform2iv(name, v, count =  1)_

_name: setUniform2iv_

_returns:  void_

_returns_description: _

_parameters: const char* name, int* v, int count = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

set an array of uniform values on the shader using int[2] value. On the shader this looks like:

$$code(lang=c++)
ivec2 iv[2];
$$/code







### void setUniform3iv(name, v, count =  1)

_syntax: setUniform3iv(name, v, count =  1)_

_name: setUniform3iv_

_returns:  void_

_returns_description: _

_parameters: const char* name, int* v, int count = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

set an array of uniform values on the shader using int[2] value. On the shader this looks like:

$$code(lang=c++)
ivec3 iv[2];
$$/code







### void setUniform4iv(name, v, count =  1)

_syntax: setUniform4iv(name, v, count =  1)_

_name: setUniform4iv_

_returns:  void_

_returns_description: _

_parameters: const char* name, int* v, int count = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

set an array of uniform values on the shader using int[2] value. On the shader this looks like:

$$code(lang=c++)
ivec4 iv[2];
$$/code







### void setUniform1fv(name, v, count =  1)

_syntax: setUniform1fv(name, v, count =  1)_

_name: setUniform1fv_

_returns:  void_

_returns_description: _

_parameters: const char* name, float* v, int count = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


set an array of uniform values on the shader using int[2] value. On the shader this looks like:

This allows you to set multiple float uniforms.

$$code(lang=c++)
float v[2];
$$/code







### void setUniform2fv(name, v, count =  1)

_syntax: setUniform2fv(name, v, count =  1)_

_name: setUniform2fv_

_returns:  void_

_returns_description: _

_parameters: const char* name, float* v, int count = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


This allows you to set multiple vec2 uniforms.

$$code(lang=c++)
vec2 v[2];
$$/code







### void setUniform3fv(name, v, count =  1)

_syntax: setUniform3fv(name, v, count =  1)_

_name: setUniform3fv_

_returns:  void_

_returns_description: _

_parameters: const char* name, float* v, int count = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


This allows you to set multiple vec3 uniforms.

$$code(lang=c++)
vec3 v[2];
$$/code







### void setUniform4fv(name, v, count =  1)

_syntax: setUniform4fv(name, v, count =  1)_

_name: setUniform4fv_

_returns:  void_

_returns_description: _

_parameters: const char* name, float* v, int count = 1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


This allows you to set multiple vec4 uniforms.

$$code(lang=c++)
vec4 v[2];
$$/code







### GLint getAttributeLocation(name)

_syntax: getAttributeLocation(name)_

_name: getAttributeLocation_

_returns:  GLint_

_returns_description: _

_parameters: const char* name_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

// set attributes that vary per vertex (look up the location before glBegin)







### void setAttribute1s(location, v1)

_syntax: setAttribute1s(location, v1)_

_name: setAttribute1s_

_returns:  void_

_returns_description: _

_parameters: GLint location, short v1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set a short attribute, a short int, on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute2s(location, v1, v2)

_syntax: setAttribute2s(location, v1, v2)_

_name: setAttribute2s_

_returns:  void_

_returns_description: _

_parameters: GLint location, short v1, short v2_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set two short attributes, a short int, on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute3s(location, v1, v2, v3)

_syntax: setAttribute3s(location, v1, v2, v3)_

_name: setAttribute3s_

_returns:  void_

_returns_description: _

_parameters: GLint location, short v1, short v2, short v3_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set three short attributes, a short int, on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute4s(location, v1, v2, v3, v4)

_syntax: setAttribute4s(location, v1, v2, v3, v4)_

_name: setAttribute4s_

_returns:  void_

_returns_description: _

_parameters: GLint location, short v1, short v2, short v3, short v4_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set four short attributes, a short int, on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute1f(location, v1)

_syntax: setAttribute1f(location, v1)_

_name: setAttribute1f_

_returns:  void_

_returns_description: _

_parameters: GLint location, float v1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set one float attributes on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute2f(location, v1, v2)

_syntax: setAttribute2f(location, v1, v2)_

_name: setAttribute2f_

_returns:  void_

_returns_description: _

_parameters: GLint location, float v1, float v2_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set two float attributes on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute3f(location, v1, v2, v3)

_syntax: setAttribute3f(location, v1, v2, v3)_

_name: setAttribute3f_

_returns:  void_

_returns_description: _

_parameters: GLint location, float v1, float v2, float v3_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set three float attributes on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute4f(location, v1, v2, v3, v4)

_syntax: setAttribute4f(location, v1, v2, v3, v4)_

_name: setAttribute4f_

_returns:  void_

_returns_description: _

_parameters: GLint location, float v1, float v2, float v3, float v4_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set four float attributes on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute1d(location, v1)

_syntax: setAttribute1d(location, v1)_

_name: setAttribute1d_

_returns:  void_

_returns_description: _

_parameters: GLint location, double v1_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set one double attribute on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute2d(location, v1, v2)

_syntax: setAttribute2d(location, v1, v2)_

_name: setAttribute2d_

_returns:  void_

_returns_description: _

_parameters: GLint location, double v1, double v2_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set two double attribute on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute3d(location, v1, v2, v3)

_syntax: setAttribute3d(location, v1, v2, v3)_

_name: setAttribute3d_

_returns:  void_

_returns_description: _

_parameters: GLint location, double v1, double v2, double v3_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set three double attribute on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void setAttribute4d(location, v1, v2, v3, v4)

_syntax: setAttribute4d(location, v1, v2, v3, v4)_

_name: setAttribute4d_

_returns:  void_

_returns_description: _

_parameters: GLint location, double v1, double v2, double v3, double v4_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Set four double attribute on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.







### void printActiveUniforms()

_syntax: printActiveUniforms()_

_name: printActiveUniforms_

_returns:  void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

This prints out all the active uniforms to the console.







### void printActiveAttributes()

_syntax: printActiveAttributes()_

_name: printActiveAttributes_

_returns:  void_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

This prints out all the active attributes to the console.







### bool setupShaderFromSource(type, source)

_syntax: setupShaderFromSource(type, source)_

_name: setupShaderFromSource_

_returns:  bool_

_returns_description: _

_parameters: GLenum type, string source_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

these methods create and compile a shader from a string, type: GL_VERTEX_SHADER, GL_FRAGMENT_SHADER, GL_GEOMETRY_SHADER_EXT etc.







### bool setupShaderFromFile(type, filename)

_syntax: setupShaderFromFile(type, filename)_

_name: setupShaderFromFile_

_returns:  bool_

_returns_description: _

_parameters: GLenum type, string filename_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

This are more of advanced use function and doesn't need.







### bool linkProgram()

_syntax: linkProgram()_

_name: linkProgram_

_returns:  bool_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

Links program with all compiled shaders. This is more of an advanced use method, as this is done automatically for you.







### GLuint& getProgram()

_syntax: getProgram()_

_name: getProgram_

_returns:  GLuint&_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

This returns the GLuint for the actual shader object that is active on the graphics card. This is more of an advanced usage method, but can be helpful if you need to do something that the ofShader doesn't support currently. This is all the shaders: vertex, geom, and frag.







### GLuint& getShader(type)

_syntax: getShader(type)_

_name: getShader_

_returns:  GLuint&_

_returns_description: _

_parameters: GLenum type_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _

This returns the GLuint for the actual shader object that is active on the graphics card. This is more of an advanced usage method, but can be helpful if you need to do something that the ofShader doesn't support currently. This returns only one of the shaders. You can pass GL_VERTEX_SHADER, GL_GEOMETRY_SHADER_EXT, GL_FRAGMENT_SHADER







##Variables



