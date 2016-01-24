#class ofShader


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description

Graphics Language Shading Language (GLSL) can be used in oF by using the ofShader object. Shading happens in two distinct steps: the vertex shader creates values for each vertex in the model, and the fragment shader creates values for each pixel in the rendered object. To define a shader, create a .frag file for the fragment shader and a .vert file for the vertex shader.
A vertex shader has attributes about a location in space or vertex, which means not only the actual coordinates of that location but also its color, how any textures should be mapped onto it, and how the vertices are modified in the operation. A vertex shader can change the positions of each vertex, the number of lighting computations per vertex, and the color that will be applied to each vertex.
A geometry shader can generate new graphics primitives like points, lines, and triangles, from those primitives that were sent to the graphics card from the CPU. This means that you could get a point and turn it into a triangle or even a bunch of triangles, or get a line and turn it into a rectangle, or do real-time extrusion. They are very powerful and can be quite tricky to get right, but they're becoming more popular.
The fragment shader is somewhat misleadingly named because what it really allows you to do is to change values assigned to each pixel. The vertex shader operates on the vertices, and the fragment shader operates on the pixels. By the time the fragment shader gets information passed into it by the graphics card, the color of a particular pixel has already been computed and in the fragment shader can be combined with an element like a lighting effecting, a fog effect, or a blur among many other options. The usual end result of this stage per fragment is a color value and a depth for the fragment.





##Methods



###void begin()

<!--
_syntax: begin()_
_name: begin_
_returns: void_
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







_description: _

After you call begin() everything that you draw, vertexes and textures, in your of application have the effects of the shader applied to them.





<!----------------------------------------------------------------------------->

###void bindAttribute(location, &name)

<!--
_syntax: bindAttribute(location, &name)_
_name: bindAttribute_
_returns: void_
_returns_description: _
_parameters: GLuint location, const string &name_
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







<!----------------------------------------------------------------------------->

###bool bindDefaults()

<!--
_syntax: bindDefaults()_
_name: bindDefaults_
_returns: bool_
_returns_description: _
_parameters: _
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

Binds default uniforms and attributes, only useful for fixed pipeline simulation under programmable renderer.
Has to be called before linkProgram().

See setupShaderFromSource() example.





<!----------------------------------------------------------------------------->

###void checkAndCreateProgram()

<!--
_syntax: checkAndCreateProgram()_
_name: checkAndCreateProgram_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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

###void checkProgramInfoLog(program)

<!--
_syntax: checkProgramInfoLog(program)_
_name: checkProgramInfoLog_
_returns: void_
_returns_description: _
_parameters: GLuint program_
_access: private_
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

###bool checkProgramLinkStatus(program)

<!--
_syntax: checkProgramLinkStatus(program)_
_name: checkProgramLinkStatus_
_returns: bool_
_returns_description: _
_parameters: GLuint program_
_access: private_
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







<!----------------------------------------------------------------------------->

###void checkShaderInfoLog(shader, type, logLevel)

<!--
_syntax: checkShaderInfoLog(shader, type, logLevel)_
_name: checkShaderInfoLog_
_returns: void_
_returns_description: _
_parameters: GLuint shader, GLenum type, ofLogLevel logLevel_
_access: private_
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

###void dispatchCompute(x, y, z)

<!--
_syntax: dispatchCompute(x, y, z)_
_name: dispatchCompute_
_returns: void_
_returns_description: _
_parameters: GLuint x, GLuint y, GLuint z_
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

###void end()

<!--
_syntax: end()_
_name: end_
_returns: void_
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







_description: _

After you call end() any drawing, vertexes and textures, do not have the effect of the shader applied to them.





<!----------------------------------------------------------------------------->

###GLint getAttributeLocation(&name)

<!--
_syntax: getAttributeLocation(&name)_
_name: getAttributeLocation_
_returns: GLint_
_returns_description: _
_parameters: const string &name_
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







<!----------------------------------------------------------------------------->

###int getGeometryMaxOutputCount()

<!--
_syntax: getGeometryMaxOutputCount()_
_name: getGeometryMaxOutputCount_
_returns: int_
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







_description: _

returns maximum number of supported vertices for your graphics card





<!----------------------------------------------------------------------------->

###GLuint getProgram()

<!--
_syntax: getProgram()_
_name: getProgram_
_returns: GLuint_
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







_description: _

This returns the GLuint for the actual shader object that is active on the graphics card. This is more of an advanced usage method, but can be helpful if you need to do something that the ofShader doesn't support currently. This is all the shaders: vertex, geom, and frag.





<!----------------------------------------------------------------------------->

###GLuint getShader(type)

<!--
_syntax: getShader(type)_
_name: getShader_
_returns: GLuint_
_returns_description: _
_parameters: GLenum type_
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

This returns the GLuint for the actual shader object that is active on the graphics card. This is more of an advanced usage method, but can be helpful if you need to do something that the ofShader doesn't support currently. This returns only one of the shaders. You can pass GL_VERTEX_SHADER, GL_GEOMETRY_SHADER_EXT, GL_FRAGMENT_SHADER





<!----------------------------------------------------------------------------->

###string getShaderSource(type)

<!--
_syntax: getShaderSource(type)_
_name: getShaderSource_
_returns: string_
_returns_description: _
_parameters: GLenum type_
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

@brief returns the shader source as it was passed to the GLSL compiler
@param type (GL_VERTEX_SHADER | GL_FRAGMENT_SHADER | GL_GEOMETRY_SHADER_EXT) the shader source you'd like to inspect.





_description: _







<!----------------------------------------------------------------------------->

###GLint getUniformLocation(&name)

<!--
_syntax: getUniformLocation(&name)_
_name: getUniformLocation_
_returns: GLint_
_returns_description: _
_parameters: const string &name_
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







<!----------------------------------------------------------------------------->

###bool isLoaded()

<!--
_syntax: isLoaded()_
_name: isLoaded_
_returns: bool_
_returns_description: _
_parameters: _
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







<!----------------------------------------------------------------------------->

###bool linkProgram()

<!--
_syntax: linkProgram()_
_name: linkProgram_
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







_description: _

Links program with all compiled shaders. This is more of an advanced use method, as this is done automatically for you.





<!----------------------------------------------------------------------------->

###bool load(shaderName)

<!--
_syntax: load(shaderName)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: string shaderName_
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

This assumes that your vertex and fragment shaders have the same name, i.e. "dof.vert" and "dof.frag" and loads them using just the name of the shader:

~~~~{.cpp}
shader.load("dof"); // assumes the shaders are in /data
~~~~





<!----------------------------------------------------------------------------->

###bool load(vertName, fragName, geomName)

<!--
_syntax: load(vertName, fragName, geomName)_
_name: load_
_returns: bool_
_returns_description: _
_parameters: string vertName, string fragName, string geomName_
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

Here you can load shaders with whatever names you choose. The geometry shader is optional, but the vertex and fragment shaders aren't.

~~~~{.cpp}
shader.load("dof.vert", "dof.frag"); // assumes the shaders are in /data
~~~~





<!----------------------------------------------------------------------------->

###string nameForType(type)

<!--
_syntax: nameForType(type)_
_name: nameForType_
_returns: string_
_returns_description: _
_parameters: GLenum type_
_access: private_
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







<!----------------------------------------------------------------------------->

### ofShader()

<!--
_syntax: ofShader()_
_name: ofShader_
_returns: _
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







_description: _







<!----------------------------------------------------------------------------->

### ofShader(&shader)

<!--
_syntax: ofShader(&shader)_
_name: ofShader_
_returns: _
_returns_description: _
_parameters: const ofShader &shader_
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







<!----------------------------------------------------------------------------->

###bool operator!=(&other)

<!--
_syntax: operator!=(&other)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofShader &other_
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







<!----------------------------------------------------------------------------->

###ofShader & operator=(&shader)

<!--
_syntax: operator=(&shader)_
_name: operator=_
_returns: ofShader &_
_returns_description: _
_parameters: const ofShader &shader_
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







<!----------------------------------------------------------------------------->

###bool operator==(&other)

<!--
_syntax: operator==(&other)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofShader &other_
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







<!----------------------------------------------------------------------------->

###string parseForIncludes(&source, &sourceDirectoryPath)

<!--
_syntax: parseForIncludes(&source, &sourceDirectoryPath)_
_name: parseForIncludes_
_returns: string_
_returns_description: _
_parameters: const string &source, const string &sourceDirectoryPath_
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _

@brief			Mimics the #include behaviour of the c preprocessor
@description	Includes files specified using the
					'#pragma include <filepath>' directive.
@note			Include paths are always specified _relative to the including file's current path_
	@note			Recursive #pragma include statements are possible
@note			Includes will be processed up to 32 levels deep





_description: _







<!----------------------------------------------------------------------------->

###string parseForIncludes(&source, &included, level = 0, &sourceDirectoryPath)

<!--
_syntax: parseForIncludes(&source, &included, level = 0, &sourceDirectoryPath)_
_name: parseForIncludes_
_returns: string_
_returns_description: _
_parameters: const string &source, vector< string > &included, int level=0, const string &sourceDirectoryPath_
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void printActiveAttributes()

<!--
_syntax: printActiveAttributes()_
_name: printActiveAttributes_
_returns: void_
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







_description: _

This prints out all the active attributes to the console.





<!----------------------------------------------------------------------------->

###void printActiveUniforms()

<!--
_syntax: printActiveUniforms()_
_name: printActiveUniforms_
_returns: void_
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







_description: _

This prints out all the active uniforms to the console.





<!----------------------------------------------------------------------------->

###void setAttribute1d(location, v1)

<!--
_syntax: setAttribute1d(location, v1)_
_name: setAttribute1d_
_returns: void_
_returns_description: _
_parameters: GLint location, double v1_
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

Set one double attribute on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute1f(location, v1)

<!--
_syntax: setAttribute1f(location, v1)_
_name: setAttribute1f_
_returns: void_
_returns_description: _
_parameters: GLint location, float v1_
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

Set one float attributes on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute1fv(&name, *v, stride)

<!--
_syntax: setAttribute1fv(&name, *v, stride)_
_name: setAttribute1fv_
_returns: void_
_returns_description: _
_parameters: const string &name, const float *v, GLsizei stride_
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







<!----------------------------------------------------------------------------->

###void setAttribute1s(location, v1)

<!--
_syntax: setAttribute1s(location, v1)_
_name: setAttribute1s_
_returns: void_
_returns_description: _
_parameters: GLint location, short v1_
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

Set a short attribute, a short int, on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute2d(location, v1, v2)

<!--
_syntax: setAttribute2d(location, v1, v2)_
_name: setAttribute2d_
_returns: void_
_returns_description: _
_parameters: GLint location, double v1, double v2_
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

Set two double attribute on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute2f(location, v1, v2)

<!--
_syntax: setAttribute2f(location, v1, v2)_
_name: setAttribute2f_
_returns: void_
_returns_description: _
_parameters: GLint location, float v1, float v2_
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

Set two float attributes on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute2fv(&name, *v, stride)

<!--
_syntax: setAttribute2fv(&name, *v, stride)_
_name: setAttribute2fv_
_returns: void_
_returns_description: _
_parameters: const string &name, const float *v, GLsizei stride_
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







<!----------------------------------------------------------------------------->

###void setAttribute2s(location, v1, v2)

<!--
_syntax: setAttribute2s(location, v1, v2)_
_name: setAttribute2s_
_returns: void_
_returns_description: _
_parameters: GLint location, short v1, short v2_
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

Set two short attributes, a short int, on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute3d(location, v1, v2, v3)

<!--
_syntax: setAttribute3d(location, v1, v2, v3)_
_name: setAttribute3d_
_returns: void_
_returns_description: _
_parameters: GLint location, double v1, double v2, double v3_
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

Set three double attribute on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute3f(location, v1, v2, v3)

<!--
_syntax: setAttribute3f(location, v1, v2, v3)_
_name: setAttribute3f_
_returns: void_
_returns_description: _
_parameters: GLint location, float v1, float v2, float v3_
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

Set three float attributes on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute3fv(&name, *v, stride)

<!--
_syntax: setAttribute3fv(&name, *v, stride)_
_name: setAttribute3fv_
_returns: void_
_returns_description: _
_parameters: const string &name, const float *v, GLsizei stride_
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







<!----------------------------------------------------------------------------->

###void setAttribute3s(location, v1, v2, v3)

<!--
_syntax: setAttribute3s(location, v1, v2, v3)_
_name: setAttribute3s_
_returns: void_
_returns_description: _
_parameters: GLint location, short v1, short v2, short v3_
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

Set three short attributes, a short int, on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute4d(location, v1, v2, v3, v4)

<!--
_syntax: setAttribute4d(location, v1, v2, v3, v4)_
_name: setAttribute4d_
_returns: void_
_returns_description: _
_parameters: GLint location, double v1, double v2, double v3, double v4_
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

Set four double attribute on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute4f(location, v1, v2, v3, v4)

<!--
_syntax: setAttribute4f(location, v1, v2, v3, v4)_
_name: setAttribute4f_
_returns: void_
_returns_description: _
_parameters: GLint location, float v1, float v2, float v3, float v4_
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

Set four float attributes on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setAttribute4fv(&name, *v, stride)

<!--
_syntax: setAttribute4fv(&name, *v, stride)_
_name: setAttribute4fv_
_returns: void_
_returns_description: _
_parameters: const string &name, const float *v, GLsizei stride_
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







<!----------------------------------------------------------------------------->

###void setAttribute4s(location, v1, v2, v3, v4)

<!--
_syntax: setAttribute4s(location, v1, v2, v3, v4)_
_name: setAttribute4s_
_returns: void_
_returns_description: _
_parameters: GLint location, short v1, short v2, short v3, short v4_
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

Set four short attributes, a short int, on the shader.
Attributes are different than uniforms in that you can pass an attribute to each vertex or fragment that is being shaded.





<!----------------------------------------------------------------------------->

###void setGeometryInputType(type)

<!--
_syntax: setGeometryInputType(type)_
_name: setGeometryInputType_
_returns: void_
_returns_description: _
_parameters: GLenum type_
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

You have to call this before linking the program with geometry shaders.
Possible types are GL_POINTS, GL_LINES, GL_LINES_ADJACENCY_EXT, GL_TRIANGLES, GL_TRIANGLES_ADJACENCY_EXT





<!----------------------------------------------------------------------------->

###void setGeometryOutputCount(count)

<!--
_syntax: setGeometryOutputCount(count)_
_name: setGeometryOutputCount_
_returns: void_
_returns_description: _
_parameters: int count_
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

You have to call this before linking the program with geometry shaders to set the number of output vertices, For quads, this should be 4, for points 1. Triangle strips can use up to the maximum number. You can check the maximum number supported on your graphics cards with getGeometryMaxOutputCount()





<!----------------------------------------------------------------------------->

###void setGeometryOutputType(type)

<!--
_syntax: setGeometryOutputType(type)_
_name: setGeometryOutputType_
_returns: void_
_returns_description: _
_parameters: GLenum type_
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

You have to call this before linking the program with geometry shaders.
type: GL_POINTS, GL_LINE_STRIP or GL_TRIANGLE_STRIP





<!----------------------------------------------------------------------------->

###void setUniform1f(&name, v1)

<!--
_syntax: setUniform1f(&name, v1)_
_name: setUniform1f_
_returns: void_
_returns_description: _
_parameters: const string &name, float v1_
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

set a float uniform on the shader





<!----------------------------------------------------------------------------->

###void setUniform1fv(&name, *v, count = 1)

<!--
_syntax: setUniform1fv(&name, *v, count = 1)_
_name: setUniform1fv_
_returns: void_
_returns_description: _
_parameters: const string &name, const float *v, int count=1_
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







<!----------------------------------------------------------------------------->

###void setUniform1i(&name, v1)

<!--
_syntax: setUniform1i(&name, v1)_
_name: setUniform1i_
_returns: void_
_returns_description: _
_parameters: const string &name, int v1_
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







<!----------------------------------------------------------------------------->

###void setUniform1iv(&name, *v, count = 1)

<!--
_syntax: setUniform1iv(&name, *v, count = 1)_
_name: setUniform1iv_
_returns: void_
_returns_description: _
_parameters: const string &name, const int *v, int count=1_
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







<!----------------------------------------------------------------------------->

###void setUniform2f(&name, v1, v2)

<!--
_syntax: setUniform2f(&name, v1, v2)_
_name: setUniform2f_
_returns: void_
_returns_description: _
_parameters: const string &name, float v1, float v2_
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







<!----------------------------------------------------------------------------->

###void setUniform2f(&name, &v)

<!--
_syntax: setUniform2f(&name, &v)_
_name: setUniform2f_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofVec2f &v_
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

###void setUniform2fv(&name, *v, count = 1)

<!--
_syntax: setUniform2fv(&name, *v, count = 1)_
_name: setUniform2fv_
_returns: void_
_returns_description: _
_parameters: const string &name, const float *v, int count=1_
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

This allows you to set multiple vec2 uniforms.
~~~~{.cpp}
vec2 v[2];
~~~~





<!----------------------------------------------------------------------------->

###void setUniform2i(&name, v1, v2)

<!--
_syntax: setUniform2i(&name, v1, v2)_
_name: setUniform2i_
_returns: void_
_returns_description: _
_parameters: const string &name, int v1, int v2_
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







<!----------------------------------------------------------------------------->

###void setUniform2iv(&name, *v, count = 1)

<!--
_syntax: setUniform2iv(&name, *v, count = 1)_
_name: setUniform2iv_
_returns: void_
_returns_description: _
_parameters: const string &name, const int *v, int count=1_
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

set an array of uniform values on the shader using int[2] value. On the shader this looks like:
~~~~{.cpp}
ivec2 iv[2];
~~~~





<!----------------------------------------------------------------------------->

###void setUniform3f(&name, v1, v2, v3)

<!--
_syntax: setUniform3f(&name, v1, v2, v3)_
_name: setUniform3f_
_returns: void_
_returns_description: _
_parameters: const string &name, float v1, float v2, float v3_
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

set a vec3 uniform on the shader





<!----------------------------------------------------------------------------->

###void setUniform3f(&name, &v)

<!--
_syntax: setUniform3f(&name, &v)_
_name: setUniform3f_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofVec3f &v_
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

###void setUniform3fv(&name, *v, count = 1)

<!--
_syntax: setUniform3fv(&name, *v, count = 1)_
_name: setUniform3fv_
_returns: void_
_returns_description: _
_parameters: const string &name, const float *v, int count=1_
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

This allows you to set multiple vec3 uniforms.
~~~~{.cpp}
vec3 v[2];
~~~~





<!----------------------------------------------------------------------------->

###void setUniform3i(&name, v1, v2, v3)

<!--
_syntax: setUniform3i(&name, v1, v2, v3)_
_name: setUniform3i_
_returns: void_
_returns_description: _
_parameters: const string &name, int v1, int v2, int v3_
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

~~~~{.cpp}
uniform ivec3 texture;
~~~~





<!----------------------------------------------------------------------------->

###void setUniform3iv(&name, *v, count = 1)

<!--
_syntax: setUniform3iv(&name, *v, count = 1)_
_name: setUniform3iv_
_returns: void_
_returns_description: _
_parameters: const string &name, const int *v, int count=1_
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

set an array of uniform values on the shader using int[2] value. On the shader this looks like:
~~~~{.cpp}
ivec3 iv[2];
~~~~





<!----------------------------------------------------------------------------->

###void setUniform4f(&name, v1, v2, v3, v4)

<!--
_syntax: setUniform4f(&name, v1, v2, v3, v4)_
_name: setUniform4f_
_returns: void_
_returns_description: _
_parameters: const string &name, float v1, float v2, float v3, float v4_
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

set a vec4 uniform on the shader
~~~~{.cpp}
vec4 fv;
~~~~





<!----------------------------------------------------------------------------->

###void setUniform4f(&name, &v)

<!--
_syntax: setUniform4f(&name, &v)_
_name: setUniform4f_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofVec4f &v_
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

###void setUniform4f(&name, &v)

<!--
_syntax: setUniform4f(&name, &v)_
_name: setUniform4f_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofFloatColor &v_
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

###void setUniform4fv(&name, *v, count = 1)

<!--
_syntax: setUniform4fv(&name, *v, count = 1)_
_name: setUniform4fv_
_returns: void_
_returns_description: _
_parameters: const string &name, const float *v, int count=1_
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

This allows you to set multiple vec4 uniforms.
~~~~{.cpp}
vec4 v[2];
~~~~





<!----------------------------------------------------------------------------->

###void setUniform4i(&name, v1, v2, v3, v4)

<!--
_syntax: setUniform4i(&name, v1, v2, v3, v4)_
_name: setUniform4i_
_returns: void_
_returns_description: _
_parameters: const string &name, int v1, int v2, int v3, int v4_
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







<!----------------------------------------------------------------------------->

###void setUniform4iv(&name, *v, count = 1)

<!--
_syntax: setUniform4iv(&name, *v, count = 1)_
_name: setUniform4iv_
_returns: void_
_returns_description: _
_parameters: const string &name, const int *v, int count=1_
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

set an array of uniform values on the shader using int[2] value. On the shader this looks like:
~~~~{.cpp}
ivec4 iv[2];
~~~~





<!----------------------------------------------------------------------------->

###void setUniformMatrix3f(&name, &m, count = 1)

<!--
_syntax: setUniformMatrix3f(&name, &m, count = 1)_
_name: setUniformMatrix3f_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofMatrix3x3 &m, int count=1_
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

###void setUniformMatrix4f(&name, &m, count = 1)

<!--
_syntax: setUniformMatrix4f(&name, &m, count = 1)_
_name: setUniformMatrix4f_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofMatrix4x4 &m, int count=1_
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







<!----------------------------------------------------------------------------->

###void setUniformTexture(&name, &img, textureLocation)

<!--
_syntax: setUniformTexture(&name, &img, textureLocation)_
_name: setUniformTexture_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofBaseHasTexture &img, int textureLocation_
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

set a texture reference
On your shader it should look like this:
~~~~{.cpp}
uniform sampler2DRect texture;
~~~~





<!----------------------------------------------------------------------------->

###void setUniformTexture(&name, &img, textureLocation)

<!--
_syntax: setUniformTexture(&name, &img, textureLocation)_
_name: setUniformTexture_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofTexture &img, int textureLocation_
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







<!----------------------------------------------------------------------------->

###void setUniformTexture(&name, textureTarget, textureID, textureLocation)

<!--
_syntax: setUniformTexture(&name, textureTarget, textureID, textureLocation)_
_name: setUniformTexture_
_returns: void_
_returns_description: _
_parameters: const string &name, int textureTarget, GLint textureID, int textureLocation_
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







<!----------------------------------------------------------------------------->

###void setUniforms(&parameters)

<!--
_syntax: setUniforms(&parameters)_
_name: setUniforms_
_returns: void_
_returns_description: _
_parameters: const ofParameterGroup &parameters_
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

###bool setupShaderFromFile(type, filename)

<!--
_syntax: setupShaderFromFile(type, filename)_
_name: setupShaderFromFile_
_returns: bool_
_returns_description: _
_parameters: GLenum type, string filename_
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

This are more of advanced use function and doesn't need.





<!----------------------------------------------------------------------------->

###bool setupShaderFromSource(type, source, sourceDirectoryPath)

<!--
_syntax: setupShaderFromSource(type, source, sourceDirectoryPath)_
_name: setupShaderFromSource_
_returns: bool_
_returns_description: _
_parameters: GLenum type, string source, string sourceDirectoryPath_
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







_description: _

This method create and compile a shader from source.
Working with OpenGL 3 or OpenGL ES 2.0, remember to call bindDefaults() before linkProgram()

Example of a simple shader to display a texture, using the ofGLProgrammableRenderer:
~~~~{.cpp}
stringstream vertexSrc;
vertexSrc << "#version 150\n";
vertexSrc << "uniform mat4 modelViewProjectionMatrix;\n";
vertexSrc  << "in vec4 position;\n";
vertexSrc  << "in vec2 texcoord;\n";
vertexSrc  << "out vec2 texCoordVarying;\n";
vertexSrc  << "void main(void){\n";
vertexSrc  << "\tgl_Position=modelViewProjectionMatrix*position;\n";
vertexSrc  << "\ttexCoordVarying = texcoord;\n";
vertexSrc  << "}\n";

stringstream fragmentSrc;
fragmentSrc << "#version 150\n";
fragmentSrc << "uniform sampler2DRect tex0;\n";
fragmentSrc << "in vec2 texCoordVarying;\n";
fragmentSrc << "out vec4 outputColor;\n";
fragmentSrc << "uniform vec2 direction;\n";
fragmentSrc << "void main(void) {\n";
fragmentSrc << "\toutputColor = texture(tex0, texCoordVarying);\n";
fragmentSrc << "}\n";

shader.setupShaderFromSource( GL_VERTEX_SHADER, vertexSrc.str() );
shader.setupShaderFromSource( GL_FRAGMENT_SHADER, fragmentSrc.str() );
shader.bindDefaults();
shader.linkProgram();
~~~~





<!----------------------------------------------------------------------------->

###void unload()

<!--
_syntax: unload()_
_name: unload_
_returns: void_
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







_description: _

This unload the shader, which means that it will not be active on the graphics card any longer.





<!----------------------------------------------------------------------------->

### ~ofShader()

<!--
_syntax: ~ofShader()_
_name: ~ofShader_
_returns: _
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







_description: _







<!----------------------------------------------------------------------------->

##Variables



###unordered_map< string, GLint > attributesBindingsCache

<!--
_name: attributesBindingsCache_
_type: unordered_map< string, GLint >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bLoaded

<!--
_name: bLoaded_
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







_description: _







<!----------------------------------------------------------------------------->

###GLuint program

<!--
_name: program_
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

###map< GLenum, GLuint > shaders

<!--
_name: shaders_
_type: map< GLenum, GLuint >_
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

###unordered_map< string, GLint > uniformsCache

<!--
_name: uniformsCache_
_type: unordered_map< string, GLint >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

