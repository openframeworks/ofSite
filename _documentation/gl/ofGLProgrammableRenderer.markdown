#class ofGLProgrammableRenderer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
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



###bool bClearBg()

<!--
_syntax: bClearBg()_
_name: bClearBg_
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

###void beginCustomShader(&shader)

<!--
_syntax: beginCustomShader(&shader)_
_name: beginCustomShader_
_returns: void_
_returns_description: _
_parameters: ofShader &shader_
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

###ofShader & bitmapStringShader()

<!--
_syntax: bitmapStringShader()_
_name: bitmapStringShader_
_returns: ofShader &_
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

###void clear(r, g, b, a = 0)

<!--
_syntax: clear(r, g, b, a = 0)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float r, float g, float b, float a=0_
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

###void clear(brightness, a = 0)

<!--
_syntax: clear(brightness, a = 0)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float brightness, float a=0_
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

###ofShader & defaultNoTexColor()

<!--
_syntax: defaultNoTexColor()_
_name: defaultNoTexColor_
_returns: ofShader &_
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

###ofShader & defaultNoTexNoColor()

<!--
_syntax: defaultNoTexNoColor()_
_name: defaultNoTexNoColor_
_returns: ofShader &_
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

###ofShader & defaultTex2DColor()

<!--
_syntax: defaultTex2DColor()_
_name: defaultTex2DColor_
_returns: ofShader &_
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

###ofShader & defaultTex2DNoColor()

<!--
_syntax: defaultTex2DNoColor()_
_name: defaultTex2DNoColor_
_returns: ofShader &_
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

###ofShader & defaultTexColor()

<!--
_syntax: defaultTexColor()_
_name: defaultTexColor_
_returns: ofShader &_
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

###ofShader & defaultTexNoColor()

<!--
_syntax: defaultTexNoColor()_
_name: defaultTexNoColor_
_returns: ofShader &_
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

###ofShader & defaultUniqueShader()

<!--
_syntax: defaultUniqueShader()_
_name: defaultUniqueShader_
_returns: ofShader &_
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

###void disableTextureTarget(textureTarget)

<!--
_syntax: disableTextureTarget(textureTarget)_
_name: disableTextureTarget_
_returns: void_
_returns_description: _
_parameters: int textureTarget_
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

###void draw(&vertexData, useColors = true, useTextures = true, useNormals = true)

<!--
_syntax: draw(&vertexData, useColors = true, useTextures = true, useNormals = true)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofMesh &vertexData, bool useColors=true, bool useTextures=true, bool useNormals=true_
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

###void draw(&vertexData, renderType, useColors = true, useTextures = true, useNormals = true)

<!--
_syntax: draw(&vertexData, renderType, useColors = true, useTextures = true, useNormals = true)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofMesh &vertexData, ofPolyRenderMode renderType, bool useColors=true, bool useTextures=true, bool useNormals=true_
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
_parameters: of3dPrimitive &model, ofPolyRenderMode renderType_
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
_parameters: ofPolyline &poly_
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
_parameters: ofPath &path_
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
_parameters: ofImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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
_parameters: ofFloatImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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
_parameters: ofShortImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

###void drawString(text, x, y, z, mode)

<!--
_syntax: drawString(text, x, y, z, mode)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: string text, float x, float y, float z, ofDrawBitmapMode mode_
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

###void enableTextureTarget(textureTarget)

<!--
_syntax: enableTextureTarget(textureTarget)_
_name: enableTextureTarget_
_returns: void_
_returns_description: _
_parameters: int textureTarget_
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

###void endCustomShader()

<!--
_syntax: endCustomShader()_
_name: endCustomShader_
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

###ofFloatColor & getBgColor()

<!--
_syntax: getBgColor()_
_name: getBgColor_
_returns: ofFloatColor &_
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

Queries the current OpenGL matrix state  Returns the specified matrix as held by the renderer's current matrix stack. 


    You can query one of the following:

    [OF_MATRIX_MODELVIEW | OF_MATRIX_PROJECTION | OF_MATRIX_TEXTURE]

    Each query will return the state of the matrix
    as it was uploaded to the shader currently bound.











_description: _








<!----------------------------------------------------------------------------->

###ofShader & getCurrentShader()

<!--
_syntax: getCurrentShader()_
_name: getCurrentShader_
_returns: ofShader &_
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

###void loadIdentityMatrix(void)

<!--
_syntax: loadIdentityMatrix(void)_
_name: loadIdentityMatrix_
_returns: void_
_returns_description: _
_parameters: void_
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

### ofGLProgrammableRenderer(useShapeColor = true)

<!--
_syntax: ofGLProgrammableRenderer(useShapeColor = true)_
_name: ofGLProgrammableRenderer_
_returns: _
_returns_description: _
_parameters: bool useShapeColor=true_
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

###bool rendersPathPrimitives()

<!--
_syntax: rendersPathPrimitives()_
_name: rendersPathPrimitives_
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

###void scale(xAmnt, yAmnt, zAmnt = 1)

<!--
_syntax: scale(xAmnt, yAmnt, zAmnt = 1)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float xAmnt, float yAmnt, float zAmnt=1_
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

###void setAttributes(vertices, color, tex, normals)

<!--
_syntax: setAttributes(vertices, color, tex, normals)_
_name: setAttributes_
_returns: void_
_returns_description: _
_parameters: bool vertices, bool color, bool tex, bool normals_
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

###void setCurrentFBO(*fbo)

<!--
_syntax: setCurrentFBO(*fbo)_
_name: setCurrentFBO_
_returns: void_
_returns_description: _
_parameters: ofFbo *fbo_
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

###void setSphereResolution(res)

<!--
_syntax: setSphereResolution(res)_
_name: setSphereResolution_
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

###void setup()

<!--
_syntax: setup()_
_name: setup_
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

###void setupScreenOrtho(width = 0, height = 0, nearDist = -1, farDist = 1)

<!--
_syntax: setupScreenOrtho(width = 0, height = 0, nearDist = -1, farDist = 1)_
_name: setupScreenOrtho_
_returns: void_
_returns_description: _
_parameters: float width=0, float height=0, float nearDist=-1, float farDist=1_
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

###void setupScreenPerspective(width = 0, height = 0, fov = 60, nearDist = 0, farDist = 0)

<!--
_syntax: setupScreenPerspective(width = 0, height = 0, fov = 60, nearDist = 0, farDist = 0)_
_name: setupScreenPerspective_
_returns: void_
_returns_description: _
_parameters: float width=0, float height=0, float fov=60, float nearDist=0, float farDist=0_
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

###void translate(x, y, z = 0)

<!--
_syntax: translate(x, y, z = 0)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z=0_
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

###void update()

<!--
_syntax: update()_
_name: update_
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

###void viewport(x = 0, y = 0, width = 0, height = 0, vflip = ofIsVFlipped())

<!--
_syntax: viewport(x = 0, y = 0, width = 0, height = 0, vflip = ofIsVFlipped())_
_name: viewport_
_returns: void_
_returns_description: _
_parameters: float x=0, float y=0, float width=0, float height=0, bool vflip=ofIsVFlipped()_
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

### ~ofGLProgrammableRenderer()

<!--
_syntax: ~ofGLProgrammableRenderer()_
_name: ~ofGLProgrammableRenderer_
_returns: _
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

_description: _








<!----------------------------------------------------------------------------->

###ofFillFlag bFilled

<!--
_name: bFilled_
_type: ofFillFlag_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bSmoothHinted

<!--
_name: bSmoothHinted_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofFloatColor bgColor

<!--
_name: bgColor_
_type: ofFloatColor_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

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

_description: _








<!----------------------------------------------------------------------------->

###ofColor currentColor

<!--
_name: currentColor_
_type: ofColor_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

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

_description: _








<!----------------------------------------------------------------------------->

###ofRectMode rectMode

<!--
_name: rectMode_
_type: ofRectMode_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

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

_description: _








<!----------------------------------------------------------------------------->

###ofVbo vertexDataVbo

<!--
_name: vertexDataVbo_
_type: ofVbo_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

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

_description: _








<!----------------------------------------------------------------------------->

