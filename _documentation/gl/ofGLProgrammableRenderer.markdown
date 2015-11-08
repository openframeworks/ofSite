#class ofGLProgrammableRenderer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseGLRenderer_
-->

##InlineDescription






##Description

The OpenGL programable renderer is a renderer for OF that is built specifically to support both newer versions of OpenGL (3+) as well as supporting GLES, which is what you'll be using if you're running OF on an ARM Linux (i.e. Raspberry Pi), Android, or iOS device. There are a few key differences between OpenGL 3 and OpenGL 2 that are largely hidden from you by OF. You can still use the same methods for drawing, making meshes, uploading textures, and other drawing operations on the programmable renderer as you could on the direct pipeline, so you're not missing anything if you stick to the older pipeline. The most significant difference probably comes in writing GLSL shaders, since the syntax changes between the older implementation and the newer. One of the important things that the ofGLProgrammableRenderer adds is default shaders. That's right: every time you run your OF application, shaders are created and uploaded to the GPU without you even knowing it. There's also addition parameters that are automatically passed to the shader program that you can leverage if you're writing your own. Check out [this tutorial](http://www.openframeworks.cc/tutorials/graphics/shaders.html) for more information.

To initialize the ofGLProgrammableRenderer call ofSetCurrentRenderer() before you call ofSetupOpenGL() in your main.cpp file:

~~~~{.cpp}
// say that we're going to *use* the fancy new renderer
ofSetCurrentRenderer(ofGLProgrammableRenderer::TYPE);
ofSetupOpenGL(1024,768, OF_WINDOW);         // <-------- setup the GL context
~~~~

After that, things should remain the same for you whether you're using the older ofGLRenderer or the newer ofGLProgrammableRenderer.





##Methods



###void background(&c)

<!--
_syntax: background(&c)_
_name: background_
_returns: void_
_returns_description: _
_parameters: const ofColor &c_
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

###void background(brightness)

<!--
_syntax: background(brightness)_
_name: background_
_returns: void_
_returns_description: _
_parameters: float brightness_
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

###void background(hexColor, _a = 255.0f)

<!--
_syntax: background(hexColor, _a = 255.0f)_
_name: background_
_returns: void_
_returns_description: _
_parameters: int hexColor, float _a=255.0f_
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

###void background(r, g, b, a = 255)

<!--
_syntax: background(r, g, b, a = 255)_
_name: background_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a=255_
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

###void begin(&fbo, setupPerspective)

<!--
_syntax: begin(&fbo, setupPerspective)_
_name: begin_
_returns: void_
_returns_description: _
_parameters: const ofFbo &fbo, bool setupPerspective_
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

###void beginDefaultShader()

<!--
_syntax: beginDefaultShader()_
_name: beginDefaultShader_
_returns: void_
_returns_description: _
_parameters: _
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

###void bind(&material)

<!--
_syntax: bind(&material)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: const ofBaseMaterial &material_
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

###void bind(&shader)

<!--
_syntax: bind(&shader)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: const ofShader &shader_
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

###void bind(&texture, location)

<!--
_syntax: bind(&texture, location)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: const ofTexture &texture, int location_
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

###void bind(&video)

<!--
_syntax: bind(&video)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: const ofBaseVideoDraws &video_
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

###void bind(&camera, &viewport)

<!--
_syntax: bind(&camera, &viewport)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: const ofCamera &camera, const ofRectangle &viewport_
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

###void bind(&fbo)

<!--
_syntax: bind(&fbo)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: const ofFbo &fbo_
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

###void bindForBlitting(&fboSrc, &fboDst, attachmentPoint)

<!--
_syntax: bindForBlitting(&fboSrc, &fboDst, attachmentPoint)_
_name: bindForBlitting_
_returns: void_
_returns_description: _
_parameters: const ofFbo &fboSrc, ofFbo &fboDst, int attachmentPoint_
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

###void clear(r, g, b, a)

<!--
_syntax: clear(r, g, b, a)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float r, float g, float b, float a_
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

###void clear(brightness, a)

<!--
_syntax: clear(brightness, a)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float brightness, float a_
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

###void clearAlpha()

<!--
_syntax: clearAlpha()_
_name: clearAlpha_
_returns: void_
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

###string defaultFragmentShaderHeader(textureTarget)

<!--
_syntax: defaultFragmentShaderHeader(textureTarget)_
_name: defaultFragmentShaderHeader_
_returns: string_
_returns_description: _
_parameters: GLenum textureTarget_
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

###string defaultVertexShaderHeader(textureTarget)

<!--
_syntax: defaultVertexShaderHeader(textureTarget)_
_name: defaultVertexShaderHeader_
_returns: string_
_returns_description: _
_parameters: GLenum textureTarget_
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







_description: _







<!----------------------------------------------------------------------------->

###void disableAntiAliasing()

<!--
_syntax: disableAntiAliasing()_
_name: disableAntiAliasing_
_returns: void_
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

###void disableLight(lightIndex)

<!--
_syntax: disableLight(lightIndex)_
_name: disableLight_
_returns: void_
_returns_description: _
_parameters: int lightIndex_
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

###void disableLighting()

<!--
_syntax: disableLighting()_
_name: disableLighting_
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

###void disablePointSprites()

<!--
_syntax: disablePointSprites()_
_name: disablePointSprites_
_returns: void_
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

###void disableSeparateSpecularLight()

<!--
_syntax: disableSeparateSpecularLight()_
_name: disableSeparateSpecularLight_
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

###void disableTextureTarget(textureTarget, textureLocation)

<!--
_syntax: disableTextureTarget(textureTarget, textureLocation)_
_name: disableTextureTarget_
_returns: void_
_returns_description: _
_parameters: int textureTarget, int textureLocation_
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

###void draw(&vertexData, renderType, useColors, useTextures, useNormals)

<!--
_syntax: draw(&vertexData, renderType, useColors, useTextures, useNormals)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofMesh &vertexData, ofPolyRenderMode renderType, bool useColors, bool useTextures, bool useNormals_
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

###void draw(&model, renderType)

<!--
_syntax: draw(&model, renderType)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const of3dPrimitive &model, ofPolyRenderMode renderType_
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

###void draw(&node)

<!--
_syntax: draw(&node)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofNode &node_
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

###void draw(&poly)

<!--
_syntax: draw(&poly)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPolyline &poly_
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

###void draw(&path)

<!--
_syntax: draw(&path)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPath &path_
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

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofFloatImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofShortImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofTexture &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

###void draw(&video, x, y, w, h)

<!--
_syntax: draw(&video, x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofBaseVideoDraws &video, float x, float y, float w, float h_
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

###void draw(&vbo, drawMode, first, total)

<!--
_syntax: draw(&vbo, drawMode, first, total)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofVbo &vbo, GLuint drawMode, int first, int total_
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

###void draw(&mesh, renderType)

<!--
_syntax: draw(&mesh, renderType)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofVboMesh &mesh, ofPolyRenderMode renderType_
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

###void drawCircle(x, y, z, radius)

<!--
_syntax: drawCircle(x, y, z, radius)_
_name: drawCircle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
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

###void drawElements(&vbo, drawMode, amt, offsetelements = 0)

<!--
_syntax: drawElements(&vbo, drawMode, amt, offsetelements = 0)_
_name: drawElements_
_returns: void_
_returns_description: _
_parameters: const ofVbo &vbo, GLuint drawMode, int amt, int offsetelements=0_
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

###void drawElementsInstanced(&vbo, drawMode, amt, primCount)

<!--
_syntax: drawElementsInstanced(&vbo, drawMode, amt, primCount)_
_name: drawElementsInstanced_
_returns: void_
_returns_description: _
_parameters: const ofVbo &vbo, GLuint drawMode, int amt, int primCount_
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

###void drawEllipse(x, y, z, width, height)

<!--
_syntax: drawEllipse(x, y, z, width, height)_
_name: drawEllipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height_
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

###void drawInstanced(&vbo, drawMode, first, total, primCount)

<!--
_syntax: drawInstanced(&vbo, drawMode, first, total, primCount)_
_name: drawInstanced_
_returns: void_
_returns_description: _
_parameters: const ofVbo &vbo, GLuint drawMode, int first, int total, int primCount_
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

###void drawInstanced(&mesh, renderType, primCount)

<!--
_syntax: drawInstanced(&mesh, renderType, primCount)_
_name: drawInstanced_
_returns: void_
_returns_description: _
_parameters: const ofVboMesh &mesh, ofPolyRenderMode renderType, int primCount_
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

###void drawLine(x1, y1, z1, x2, y2, z2)

<!--
_syntax: drawLine(x1, y1, z1, x2, y2, z2)_
_name: drawLine_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2_
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

###void drawRectangle(x, y, z, w, h)

<!--
_syntax: drawRectangle(x, y, z, w, h)_
_name: drawRectangle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h_
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

###void drawString(text, x, y, z)

<!--
_syntax: drawString(text, x, y, z)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: string text, float x, float y, float z_
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

###void drawString(&font, text, x, y)

<!--
_syntax: drawString(&font, text, x, y)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: const ofTrueTypeFont &font, string text, float x, float y_
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

###void drawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: drawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: drawTriangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
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

###void enableAntiAliasing()

<!--
_syntax: enableAntiAliasing()_
_name: enableAntiAliasing_
_returns: void_
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

###void enableLight(lightIndex)

<!--
_syntax: enableLight(lightIndex)_
_name: enableLight_
_returns: void_
_returns_description: _
_parameters: int lightIndex_
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

###void enableLighting()

<!--
_syntax: enableLighting()_
_name: enableLighting_
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

###void enablePointSprites()

<!--
_syntax: enablePointSprites()_
_name: enablePointSprites_
_returns: void_
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

###void enableSeparateSpecularLight()

<!--
_syntax: enableSeparateSpecularLight()_
_name: enableSeparateSpecularLight_
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

###void enableTextureTarget(&tex, textureLocation)

<!--
_syntax: enableTextureTarget(&tex, textureLocation)_
_name: enableTextureTarget_
_returns: void_
_returns_description: _
_parameters: const ofTexture &tex, int textureLocation_
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

###void end(&fbo)

<!--
_syntax: end(&fbo)_
_name: end_
_returns: void_
_returns_description: _
_parameters: const ofFbo &fbo_
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

###void endSmoothing()

<!--
_syntax: endSmoothing()_
_name: endSmoothing_
_returns: void_
_returns_description: _
_parameters: _
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

###void finishRender()

<!--
_syntax: finishRender()_
_name: finishRender_
_returns: void_
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

###const of3dGraphics & get3dGraphics()

<!--
_syntax: get3dGraphics()_
_name: get3dGraphics_
_returns: const of3dGraphics &_
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

###of3dGraphics & get3dGraphics()

<!--
_syntax: get3dGraphics()_
_name: get3dGraphics_
_returns: of3dGraphics &_
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

###bool getBackgroundAuto()

<!--
_syntax: getBackgroundAuto()_
_name: getBackgroundAuto_
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

###ofColor getBackgroundColor()

<!--
_syntax: getBackgroundColor()_
_name: getBackgroundColor_
_returns: ofColor_
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

###ofHandednessType getCoordHandedness()

<!--
_syntax: getCoordHandedness()_
_name: getCoordHandedness_
_returns: ofHandednessType_
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

###ofMatrix4x4 getCurrentMatrix(matrixMode_)

<!--
_syntax: getCurrentMatrix(matrixMode_)_
_name: getCurrentMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: ofMatrixMode matrixMode__
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

Queries the current OpenGL matrix state

Returns the specified matrix as held by the renderer's current matrix
stack.

You can query one of the following:

[OF_MATRIX_MODELVIEW | OF_MATRIX_PROJECTION | OF_MATRIX_TEXTURE]

Each query will return the state of the matrix as it was uploaded to
the shader currently bound.

\param	matrixMode_ Which matrix mode to query
\note   If an invalid matrixMode is queried, this method will return the
        identity matrix, and print an error message.





_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 getCurrentNormalMatrix()

<!--
_syntax: getCurrentNormalMatrix()_
_name: getCurrentNormalMatrix_
_returns: ofMatrix4x4_
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

###ofMatrix4x4 getCurrentOrientationMatrix()

<!--
_syntax: getCurrentOrientationMatrix()_
_name: getCurrentOrientationMatrix_
_returns: ofMatrix4x4_
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

###const ofShader & getCurrentShader()

<!--
_syntax: getCurrentShader()_
_name: getCurrentShader_
_returns: const ofShader &_
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

###GLenum getCurrentTextureTarget()

<!--
_syntax: getCurrentTextureTarget()_
_name: getCurrentTextureTarget_
_returns: GLenum_
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

###ofMatrix4x4 getCurrentViewMatrix()

<!--
_syntax: getCurrentViewMatrix()_
_name: getCurrentViewMatrix_
_returns: ofMatrix4x4_
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

###ofRectangle getCurrentViewport()

<!--
_syntax: getCurrentViewport()_
_name: getCurrentViewport_
_returns: ofRectangle_
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

###ofFillFlag getFillMode()

<!--
_syntax: getFillMode()_
_name: getFillMode_
_returns: ofFillFlag_
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

###int getGLVersionMajor()

<!--
_syntax: getGLVersionMajor()_
_name: getGLVersionMajor_
_returns: int_
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

###int getGLVersionMinor()

<!--
_syntax: getGLVersionMinor()_
_name: getGLVersionMinor_
_returns: int_
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

###bool getLightingEnabled()

<!--
_syntax: getLightingEnabled()_
_name: getLightingEnabled_
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

###ofRectangle getNativeViewport()

<!--
_syntax: getNativeViewport()_
_name: getNativeViewport_
_returns: ofRectangle_
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

###ofPath & getPath()

<!--
_syntax: getPath()_
_name: getPath_
_returns: ofPath &_
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

###ofRectMode getRectMode()

<!--
_syntax: getRectMode()_
_name: getRectMode_
_returns: ofRectMode_
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

###ofStyle getStyle()

<!--
_syntax: getStyle()_
_name: getStyle_
_returns: ofStyle_
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

###const string & getType()

<!--
_syntax: getType()_
_name: getType_
_returns: const string &_
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

###const ofShader * getVideoShader(&video)

<!--
_syntax: getVideoShader(&video)_
_name: getVideoShader_
_returns: const ofShader *_
_returns_description: _
_parameters: const ofBaseVideoDraws &video_
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

###int getViewportHeight()

<!--
_syntax: getViewportHeight()_
_name: getViewportHeight_
_returns: int_
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

###int getViewportWidth()

<!--
_syntax: getViewportWidth()_
_name: getViewportWidth_
_returns: int_
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

###bool isVFlipped()

<!--
_syntax: isVFlipped()_
_name: isVFlipped_
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

###void loadIdentityMatrix()

<!--
_syntax: loadIdentityMatrix()_
_name: loadIdentityMatrix_
_returns: void_
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

###void loadMatrix(&m)

<!--
_syntax: loadMatrix(&m)_
_name: loadMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
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

###void loadMatrix(*m)

<!--
_syntax: loadMatrix(*m)_
_name: loadMatrix_
_returns: void_
_returns_description: _
_parameters: const float *m_
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

###void loadViewMatrix(&m)

<!--
_syntax: loadViewMatrix(&m)_
_name: loadViewMatrix_
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







_description: _







<!----------------------------------------------------------------------------->

###void matrixMode(mode)

<!--
_syntax: matrixMode(mode)_
_name: matrixMode_
_returns: void_
_returns_description: _
_parameters: ofMatrixMode mode_
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

###void multMatrix(&m)

<!--
_syntax: multMatrix(&m)_
_name: multMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
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

###void multMatrix(*m)

<!--
_syntax: multMatrix(*m)_
_name: multMatrix_
_returns: void_
_returns_description: _
_parameters: const float *m_
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

###void multViewMatrix(&m)

<!--
_syntax: multViewMatrix(&m)_
_name: multViewMatrix_
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







_description: _







<!----------------------------------------------------------------------------->

### ofGLProgrammableRenderer(*window)

<!--
_syntax: ofGLProgrammableRenderer(*window)_
_name: ofGLProgrammableRenderer_
_returns: _
_returns_description: _
_parameters: const ofAppBaseWindow *window_
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

###void popMatrix()

<!--
_syntax: popMatrix()_
_name: popMatrix_
_returns: void_
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

###void popStyle()

<!--
_syntax: popStyle()_
_name: popStyle_
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

###void popView()

<!--
_syntax: popView()_
_name: popView_
_returns: void_
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

###void pushMatrix()

<!--
_syntax: pushMatrix()_
_name: pushMatrix_
_returns: void_
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

###void pushStyle()

<!--
_syntax: pushStyle()_
_name: pushStyle_
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

###void pushView()

<!--
_syntax: pushView()_
_name: pushView_
_returns: void_
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

###void rotate(degrees, vecX, vecY, vecZ)

<!--
_syntax: rotate(degrees, vecX, vecY, vecZ)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float degrees, float vecX, float vecY, float vecZ_
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

###void rotate(degrees)

<!--
_syntax: rotate(degrees)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float degrees_
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

###void rotateX(degrees)

<!--
_syntax: rotateX(degrees)_
_name: rotateX_
_returns: void_
_returns_description: _
_parameters: float degrees_
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

###void rotateY(degrees)

<!--
_syntax: rotateY(degrees)_
_name: rotateY_
_returns: void_
_returns_description: _
_parameters: float degrees_
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

###void rotateZ(degrees)

<!--
_syntax: rotateZ(degrees)_
_name: rotateZ_
_returns: void_
_returns_description: _
_parameters: float degrees_
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

###void saveFullViewport(&pixels)

<!--
_syntax: saveFullViewport(&pixels)_
_name: saveFullViewport_
_returns: void_
_returns_description: _
_parameters: ofPixels &pixels_
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

###void saveScreen(x, y, w, h, &pixels)

<!--
_syntax: saveScreen(x, y, w, h, &pixels)_
_name: saveScreen_
_returns: void_
_returns_description: _
_parameters: int x, int y, int w, int h, ofPixels &pixels_
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

###void scale(xAmnt, yAmnt, zAmnt)

<!--
_syntax: scale(xAmnt, yAmnt, zAmnt)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float xAmnt, float yAmnt, float zAmnt_
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

###void setAlphaBitmapText(bitmapText)

<!--
_syntax: setAlphaBitmapText(bitmapText)_
_name: setAlphaBitmapText_
_returns: void_
_returns_description: _
_parameters: bool bitmapText_
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

###void setAlphaMaskTex(&tex)

<!--
_syntax: setAlphaMaskTex(&tex)_
_name: setAlphaMaskTex_
_returns: void_
_returns_description: _
_parameters: const ofTexture &tex_
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

###void setAttributes(vertices, color, tex, normals)

<!--
_syntax: setAttributes(vertices, color, tex, normals)_
_name: setAttributes_
_returns: void_
_returns_description: _
_parameters: bool vertices, bool color, bool tex, bool normals_
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

###void setBackgroundAuto(bManual)

<!--
_syntax: setBackgroundAuto(bManual)_
_name: setBackgroundAuto_
_returns: void_
_returns_description: _
_parameters: bool bManual_
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

###void setBackgroundColor(&c)

<!--
_syntax: setBackgroundColor(&c)_
_name: setBackgroundColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &c_
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

###void setBitmapTextMode(mode)

<!--
_syntax: setBitmapTextMode(mode)_
_name: setBitmapTextMode_
_returns: void_
_returns_description: _
_parameters: ofDrawBitmapMode mode_
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

###void setBlendMode(blendMode)

<!--
_syntax: setBlendMode(blendMode)_
_name: setBlendMode_
_returns: void_
_returns_description: _
_parameters: ofBlendMode blendMode_
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

###void setCircleResolution(res)

<!--
_syntax: setCircleResolution(res)_
_name: setCircleResolution_
_returns: void_
_returns_description: _
_parameters: int res_
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

###void setColor(r, g, b)

<!--
_syntax: setColor(r, g, b)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b_
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

###void setColor(r, g, b, a)

<!--
_syntax: setColor(r, g, b, a)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a_
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

###void setColor(&color)

<!--
_syntax: setColor(&color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color_
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

###void setColor(&color, _a)

<!--
_syntax: setColor(&color, _a)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color, int _a_
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

###void setColor(gray)

<!--
_syntax: setColor(gray)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int gray_
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

###void setCoordHandedness(handedness)

<!--
_syntax: setCoordHandedness(handedness)_
_name: setCoordHandedness_
_returns: void_
_returns_description: _
_parameters: ofHandednessType handedness_
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

###void setCurveResolution(resolution)

<!--
_syntax: setCurveResolution(resolution)_
_name: setCurveResolution_
_returns: void_
_returns_description: _
_parameters: int resolution_
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

###void setDefaultUniforms()

<!--
_syntax: setDefaultUniforms()_
_name: setDefaultUniforms_
_returns: void_
_returns_description: _
_parameters: _
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

###void setDepthTest(depthTest)

<!--
_syntax: setDepthTest(depthTest)_
_name: setDepthTest_
_returns: void_
_returns_description: _
_parameters: bool depthTest_
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

###void setFillMode(fill)

<!--
_syntax: setFillMode(fill)_
_name: setFillMode_
_returns: void_
_returns_description: _
_parameters: ofFillFlag fill_
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

###void setGlobalAmbientColor(&c)

<!--
_syntax: setGlobalAmbientColor(&c)_
_name: setGlobalAmbientColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &c_
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

###void setHexColor(hexColor)

<!--
_syntax: setHexColor(hexColor)_
_name: setHexColor_
_returns: void_
_returns_description: _
_parameters: int hexColor_
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

###void setLightAmbientColor(lightIndex, &c)

<!--
_syntax: setLightAmbientColor(lightIndex, &c)_
_name: setLightAmbientColor_
_returns: void_
_returns_description: _
_parameters: int lightIndex, const ofFloatColor &c_
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

###void setLightAttenuation(lightIndex, constant, linear, quadratic)

<!--
_syntax: setLightAttenuation(lightIndex, constant, linear, quadratic)_
_name: setLightAttenuation_
_returns: void_
_returns_description: _
_parameters: int lightIndex, float constant, float linear, float quadratic_
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

###void setLightDiffuseColor(lightIndex, &c)

<!--
_syntax: setLightDiffuseColor(lightIndex, &c)_
_name: setLightDiffuseColor_
_returns: void_
_returns_description: _
_parameters: int lightIndex, const ofFloatColor &c_
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

###void setLightPosition(lightIndex, &position)

<!--
_syntax: setLightPosition(lightIndex, &position)_
_name: setLightPosition_
_returns: void_
_returns_description: _
_parameters: int lightIndex, const ofVec4f &position_
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

###void setLightSpecularColor(lightIndex, &c)

<!--
_syntax: setLightSpecularColor(lightIndex, &c)_
_name: setLightSpecularColor_
_returns: void_
_returns_description: _
_parameters: int lightIndex, const ofFloatColor &c_
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

###void setLightSpotConcentration(lightIndex, exponent)

<!--
_syntax: setLightSpotConcentration(lightIndex, exponent)_
_name: setLightSpotConcentration_
_returns: void_
_returns_description: _
_parameters: int lightIndex, float exponent_
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

###void setLightSpotDirection(lightIndex, &direction)

<!--
_syntax: setLightSpotDirection(lightIndex, &direction)_
_name: setLightSpotDirection_
_returns: void_
_returns_description: _
_parameters: int lightIndex, const ofVec4f &direction_
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

###void setLightSpotlightCutOff(lightIndex, spotCutOff)

<!--
_syntax: setLightSpotlightCutOff(lightIndex, spotCutOff)_
_name: setLightSpotlightCutOff_
_returns: void_
_returns_description: _
_parameters: int lightIndex, float spotCutOff_
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

###void setLineSmoothing(smooth)

<!--
_syntax: setLineSmoothing(smooth)_
_name: setLineSmoothing_
_returns: void_
_returns_description: _
_parameters: bool smooth_
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

###void setLineWidth(lineWidth)

<!--
_syntax: setLineWidth(lineWidth)_
_name: setLineWidth_
_returns: void_
_returns_description: _
_parameters: float lineWidth_
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

###void setOrientation(orientation, vFlip)

<!--
_syntax: setOrientation(orientation, vFlip)_
_name: setOrientation_
_returns: void_
_returns_description: _
_parameters: ofOrientation orientation, bool vFlip_
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

###void setPolyMode(mode)

<!--
_syntax: setPolyMode(mode)_
_name: setPolyMode_
_returns: void_
_returns_description: _
_parameters: ofPolyWindingMode mode_
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

###void setRectMode(mode)

<!--
_syntax: setRectMode(mode)_
_name: setRectMode_
_returns: void_
_returns_description: _
_parameters: ofRectMode mode_
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

###void setSmoothLighting(b)

<!--
_syntax: setSmoothLighting(b)_
_name: setSmoothLighting_
_returns: void_
_returns_description: _
_parameters: bool b_
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

###void setStyle(&style)

<!--
_syntax: setStyle(&style)_
_name: setStyle_
_returns: void_
_returns_description: _
_parameters: const ofStyle &style_
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

###void setVideoShaderUniforms(&video, &shader)

<!--
_syntax: setVideoShaderUniforms(&video, &shader)_
_name: setVideoShaderUniforms_
_returns: void_
_returns_description: _
_parameters: const ofBaseVideoDraws &video, const ofShader &shader_
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

###void setup(glVersionMajor, glVersionMinor)

<!--
_syntax: setup(glVersionMajor, glVersionMinor)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: int glVersionMajor, int glVersionMinor_
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

###void setupGraphicDefaults()

<!--
_syntax: setupGraphicDefaults()_
_name: setupGraphicDefaults_
_returns: void_
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

###void setupScreen()

<!--
_syntax: setupScreen()_
_name: setupScreen_
_returns: void_
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

###void setupScreenOrtho(width, height, nearDist, farDist)

<!--
_syntax: setupScreenOrtho(width, height, nearDist, farDist)_
_name: setupScreenOrtho_
_returns: void_
_returns_description: _
_parameters: float width, float height, float nearDist, float farDist_
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

###void setupScreenPerspective(width, height, fov, nearDist, farDist)

<!--
_syntax: setupScreenPerspective(width, height, fov, nearDist, farDist)_
_name: setupScreenPerspective_
_returns: void_
_returns_description: _
_parameters: float width, float height, float fov, float nearDist, float farDist_
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

###void startRender()

<!--
_syntax: startRender()_
_name: startRender_
_returns: void_
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

###void startSmoothing()

<!--
_syntax: startSmoothing()_
_name: startSmoothing_
_returns: void_
_returns_description: _
_parameters: _
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

###void translate(x, y, z)

<!--
_syntax: translate(x, y, z)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###void translate(&p)

<!--
_syntax: translate(&p)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &p_
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

###void unbind(&material)

<!--
_syntax: unbind(&material)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: const ofBaseMaterial &material_
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

###void unbind(&shader)

<!--
_syntax: unbind(&shader)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: const ofShader &shader_
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

###void unbind(&texture, location)

<!--
_syntax: unbind(&texture, location)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: const ofTexture &texture, int location_
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

###void unbind(&video)

<!--
_syntax: unbind(&video)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: const ofBaseVideoDraws &video_
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

###void unbind(&camera)

<!--
_syntax: unbind(&camera)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: const ofCamera &camera_
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

###void unbind(&fbo)

<!--
_syntax: unbind(&fbo)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: const ofFbo &fbo_
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

###void uploadCurrentMatrix()

<!--
_syntax: uploadCurrentMatrix()_
_name: uploadCurrentMatrix_
_returns: void_
_returns_description: _
_parameters: _
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

###void uploadMatrices()

<!--
_syntax: uploadMatrices()_
_name: uploadMatrices_
_returns: void_
_returns_description: _
_parameters: _
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

###void viewport(viewport)

<!--
_syntax: viewport(viewport)_
_name: viewport_
_returns: void_
_returns_description: _
_parameters: ofRectangle viewport_
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

###void viewport(x, y, width, height, vflip = true)

<!--
_syntax: viewport(x, y, width, height, vflip = true)_
_name: viewport_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height, bool vflip=true_
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

##Variables



###const string TYPE

<!--
_name: TYPE_
_type: const string_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofShader alphaMask2DShader

<!--
_name: alphaMask2DShader_
_type: ofShader_
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

###ofShader alphaMaskRectShader

<!--
_name: alphaMaskRectShader_
_type: ofShader_
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

###int alphaMaskTextureTarget

<!--
_name: alphaMaskTextureTarget_
_type: int_
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

###bool bBackgroundAuto

<!--
_name: bBackgroundAuto_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofBitmapFont bitmapFont

<!--
_name: bitmapFont_
_type: ofBitmapFont_
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

###bool bitmapStringEnabled

<!--
_name: bitmapStringEnabled_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofShader bitmapStringShader

<!--
_name: bitmapStringShader_
_type: ofShader_
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

###ofVboMesh circleMesh

<!--
_name: circleMesh_
_type: ofVboMesh_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPolyline circlePolyline

<!--
_name: circlePolyline_
_type: ofPolyline_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool colorsEnabled

<!--
_name: colorsEnabled_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###GLuint currentFramebufferId

<!--
_name: currentFramebufferId_
_type: GLuint_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< the framebuffer id currently bound to the GL_FRAMEBUFFER target





_description: _







<!----------------------------------------------------------------------------->

###const ofBaseMaterial * currentMaterial

<!--
_name: currentMaterial_
_type: const ofBaseMaterial *_
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

###ofShader currentShader

<!--
_name: currentShader_
_type: ofShader_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofStyle currentStyle

<!--
_name: currentStyle_
_type: ofStyle_
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

###int currentTextureTarget

<!--
_name: currentTextureTarget_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###GLuint defaultFramebufferId

<!--
_name: defaultFramebufferId_
_type: GLuint_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< default GL_FRAMEBUFFER_BINDING, windowing frameworks might want to set this to their MSAA framebuffer, defaults to 0





_description: _







<!----------------------------------------------------------------------------->

###ofShader defaultNoTexColor

<!--
_name: defaultNoTexColor_
_type: ofShader_
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

###ofShader defaultNoTexNoColor

<!--
_name: defaultNoTexNoColor_
_type: ofShader_
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

###ofShader defaultTex2DColor

<!--
_name: defaultTex2DColor_
_type: ofShader_
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

###ofShader defaultTex2DNoColor

<!--
_name: defaultTex2DNoColor_
_type: ofShader_
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

###ofShader defaultTexRectColor

<!--
_name: defaultTexRectColor_
_type: ofShader_
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

###ofShader defaultTexRectNoColor

<!--
_name: defaultTexRectNoColor_
_type: ofShader_
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

###ofShader defaultUniqueShader

<!--
_name: defaultUniqueShader_
_type: ofShader_
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

###deque< GLuint > framebufferIdStack

<!--
_name: framebufferIdStack_
_type: deque< GLuint >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< keeps track of currently bound framebuffers





_description: _







<!----------------------------------------------------------------------------->

###of3dGraphics graphics3d

<!--
_name: graphics3d_
_type: of3dGraphics_
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

###ofVboMesh lineMesh

<!--
_name: lineMesh_
_type: ofVboMesh_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int major

<!--
_name: major_
_type: int_
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

###ofMatrixStack matrixStack

<!--
_name: matrixStack_
_type: ofMatrixStack_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofVbo meshVbo

<!--
_name: meshVbo_
_type: ofVbo_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int minor

<!--
_name: minor_
_type: int_
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

###bool normalsEnabled

<!--
_name: normalsEnabled_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPath path

<!--
_name: path_
_type: ofPath_
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

###ofVboMesh rectMesh

<!--
_name: rectMesh_
_type: ofVboMesh_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool settingDefaultShader

<!--
_name: settingDefaultShader_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofShader shaderNV12

<!--
_name: shaderNV12_
_type: ofShader_
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

###ofShader shaderNV12Rect

<!--
_name: shaderNV12Rect_
_type: ofShader_
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

###ofShader shaderNV21

<!--
_name: shaderNV21_
_type: ofShader_
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

###ofShader shaderNV21Rect

<!--
_name: shaderNV21Rect_
_type: ofShader_
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

###ofShader shaderPlanarYUV

<!--
_name: shaderPlanarYUV_
_type: ofShader_
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

###ofShader shaderPlanarYUVRect

<!--
_name: shaderPlanarYUVRect_
_type: ofShader_
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

###ofShader shaderPlanarYUY2

<!--
_name: shaderPlanarYUY2_
_type: ofShader_
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

###ofShader shaderPlanarYUY2Rect

<!--
_name: shaderPlanarYUY2Rect_
_type: ofShader_
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

###deque< ofStyle > styleHistory

<!--
_name: styleHistory_
_type: deque< ofStyle >_
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

###bool texCoordsEnabled

<!--
_name: texCoordsEnabled_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofVboMesh triangleMesh

<!--
_name: triangleMesh_
_type: ofVboMesh_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool uniqueShader

<!--
_name: uniqueShader_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool usingCustomShader

<!--
_name: usingCustomShader_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool usingVideoShader

<!--
_name: usingVideoShader_
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







_description: _







<!----------------------------------------------------------------------------->

###bool verticesEnabled

<!--
_name: verticesEnabled_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###const ofAppBaseWindow * window

<!--
_name: window_
_type: const ofAppBaseWindow *_
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

###bool wrongUseLoggedOnce

<!--
_name: wrongUseLoggedOnce_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

