#class ofGLRenderer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofGLRenderer is a renderer for OF that supports OpenGL 2 and lower. It's the more classic, "direct mode" version of OpenGL that you may be familiar with but that also uses vertex arrays underneath to store all of the vertices that you create for the basic OF drawing operations. This is the default renderer that is created when you create your OF app:

~~~~{.cpp}
ofSetupOpenGL(1024,768, OF_WINDOW);			// by default this makes a ofGLRenderer

// this kicks off the running of my app
// can be OF_WINDOW or OF_FULLSCREEN
// pass in width and height too:
ofRunApp( new testApp());

~~~~

This renderer does not work so well with mobile devices (more specifically with GLES) or on ARM6/7 Linux devices (Raspberry Pi, for instance) but it is the classic version that will be supported on all laptops and desktop machines. Most of the calls to this renderer are handled by other functions, so most of this documenation will simply link to the end user functions that you should call, since you probably don't want to call the renderer directly. 





##Methods



###bool bClearBg()

<!--
_syntax: bClearBg()_
_name: bClearBg_
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


Whether you want to clear the background or not.







<!----------------------------------------------------------------------------->

###void background(&c)

<!--
_syntax: background(&c)_
_name: background_
_returns: void_
_returns_description: _
_parameters: const ofColor &c_
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


See [ofBackground](ofGraphics.html#show_ofBackground)







<!----------------------------------------------------------------------------->

###void background(brightness)

<!--
_syntax: background(brightness)_
_name: background_
_returns: void_
_returns_description: _
_parameters: float brightness_
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

###void background(hexColor, _a = 255.0f)

<!--
_syntax: background(hexColor, _a = 255.0f)_
_name: background_
_returns: void_
_returns_description: _
_parameters: int hexColor, float _a=255.0f_
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


See [ofBackground](ofGraphics.html#show_ofBackground)







<!----------------------------------------------------------------------------->

###void background(r, g, b, a = 255)

<!--
_syntax: background(r, g, b, a = 255)_
_name: background_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a=255_
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


See [ofBackground](ofGraphics.html#show_ofBackground)







<!----------------------------------------------------------------------------->

###void clear(r, g, b, a = 0)

<!--
_syntax: clear(r, g, b, a = 0)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float r, float g, float b, float a=0_
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


See [ofClear](ofGraphics.html#show_ofClear)







<!----------------------------------------------------------------------------->

###void clear(brightness, a = 0)

<!--
_syntax: clear(brightness, a = 0)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float brightness, float a=0_
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


See [ofClear](ofGraphics.html#show_ofClear)







<!----------------------------------------------------------------------------->

###void clearAlpha()

<!--
_syntax: clearAlpha()_
_name: clearAlpha_
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


See [ofClear](ofGraphics.html#show_ofClear)







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


See [ofDisableAntiAliasing](ofGraphics.html#show_ofDisableAntiAliasing)







<!----------------------------------------------------------------------------->

###void disablePointSprites()

<!--
_syntax: disablePointSprites()_
_name: disablePointSprites_
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


Draws an ofMesh.







<!----------------------------------------------------------------------------->

###void draw(&vertexData, renderType, useColors = true, useTextures = true, useNormals = true)

<!--
_syntax: draw(&vertexData, renderType, useColors = true, useTextures = true, useNormals = true)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofMesh &vertexData, ofPolyRenderMode renderType, bool useColors=true, bool useTextures=true, bool useNormals=true_
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


Draws an ofMesh.







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


Draws a of3dPrimitive. Called internally.







<!----------------------------------------------------------------------------->

###void draw(&poly)

<!--
_syntax: draw(&poly)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofPolyline &poly_
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


Handles drawing ofPolylines. This is called when you call line.draw().







<!----------------------------------------------------------------------------->

###void draw(&path)

<!--
_syntax: draw(&path)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofPath &path_
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


Handles drawing ofPath. This is called when you call ofPath::draw().







<!----------------------------------------------------------------------------->

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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


Draws an texture.







<!----------------------------------------------------------------------------->

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofFloatImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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


Draws an texture.







<!----------------------------------------------------------------------------->

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: ofShortImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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


Draws an texture.







<!----------------------------------------------------------------------------->

###void drawCircle(x, y, z, radius)

<!--
_syntax: drawCircle(x, y, z, radius)_
_name: drawCircle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
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


See [ofCircle](ofGraphics.html#show_ofCircle)







<!----------------------------------------------------------------------------->

###void drawEllipse(x, y, z, width, height)

<!--
_syntax: drawEllipse(x, y, z, width, height)_
_name: drawEllipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height_
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


See [ofEllipse](ofGraphics.html#show_ofEllipse)







<!----------------------------------------------------------------------------->

###void drawLine(x1, y1, z1, x2, y2, z2)

<!--
_syntax: drawLine(x1, y1, z1, x2, y2, z2)_
_name: drawLine_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2_
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


See [ofLine](ofGraphics.html#show_ofLine)







<!----------------------------------------------------------------------------->

###void drawRectangle(x, y, z, w, h)

<!--
_syntax: drawRectangle(x, y, z, w, h)_
_name: drawRectangle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h_
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


See [ofRect](ofGraphics.html#show_ofRect)







<!----------------------------------------------------------------------------->

###void drawString(text, x, y, z, mode)

<!--
_syntax: drawString(text, x, y, z, mode)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: string text, float x, float y, float z, ofDrawBitmapMode mode_
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


Draws a characters to the screen.







<!----------------------------------------------------------------------------->

###void drawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: drawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: drawTriangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
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


Draw a Triangle.







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


See [ofEnableAntiAliasing](ofGraphics.html#show_ofEnableAntiAliasing)







<!----------------------------------------------------------------------------->

###void enablePointSprites()

<!--
_syntax: enablePointSprites()_
_name: enablePointSprites_
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

###void endSmoothing()

<!--
_syntax: endSmoothing()_
_name: endSmoothing_
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

###ofFloatColor & getBgColor()

<!--
_syntax: getBgColor()_
_name: getBgColor_
_returns: ofFloatColor &_
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

###ofHandednessType getCoordHandedness()

<!--
_syntax: getCoordHandedness()_
_name: getCoordHandedness_
_returns: ofHandednessType_
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


See [ofGetCoordHandedness](ofGraphics.html#show_ofGetCoordHandedness)







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

###ofRectangle getCurrentViewport()

<!--
_syntax: getCurrentViewport()_
_name: getCurrentViewport_
_returns: ofRectangle_
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


See [ofGetCurrentViewport](ofGraphics.html#show_ofGetCurrentViewport)







<!----------------------------------------------------------------------------->

###ofFillFlag getFillMode()

<!--
_syntax: getFillMode()_
_name: getFillMode_
_returns: ofFillFlag_
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


See [ofGetFill](ofGraphics.html#show_ofGetFill)







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


See [ofGetNativeViewport](ofGraphics.html#show_ofGetNativeViewport)







<!----------------------------------------------------------------------------->

###ofRectMode getRectMode()

<!--
_syntax: getRectMode()_
_name: getRectMode_
_returns: ofRectMode_
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


See [ofGetRectMode](ofGraphics.html#show_ofGetRectMode)







<!----------------------------------------------------------------------------->

###const string & getType()

<!--
_syntax: getType()_
_name: getType_
_returns: const string &_
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

###int getViewportHeight()

<!--
_syntax: getViewportHeight()_
_name: getViewportHeight_
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


See [ofGetViewportHeight](ofGraphics.html#show_ofGetViewportHeight)







<!----------------------------------------------------------------------------->

###int getViewportWidth()

<!--
_syntax: getViewportWidth()_
_name: getViewportWidth_
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


See [ofGetViewportWidth](ofGraphics.html#show_ofGetViewportWidth)







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


See [ofIsVFlipped](ofGraphics.html#show_ofIsVFlipped)







<!----------------------------------------------------------------------------->

###void loadIdentityMatrix(void)

<!--
_syntax: loadIdentityMatrix(void)_
_name: loadIdentityMatrix_
_returns: void_
_returns_description: _
_parameters: void_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


See [ofLoadIdentityMatrix](ofGraphics.html#show_ofLoadIdentityMatrix)







<!----------------------------------------------------------------------------->

###void loadMatrix(&m)

<!--
_syntax: loadMatrix(&m)_
_name: loadMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


See [ofLoadMatrix](ofGraphics.html#show_ofLoadMatrix)







<!----------------------------------------------------------------------------->

###void loadMatrix(*m)

<!--
_syntax: loadMatrix(*m)_
_name: loadMatrix_
_returns: void_
_returns_description: _
_parameters: const float *m_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


See [ofLoadMatrix](ofGraphics.html#show_ofLoadMatrix)







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
_version_started: 0072_
_version_deprecated: _
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
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

### ofGLRenderer(useShapeColor = true)

<!--
_syntax: ofGLRenderer(useShapeColor = true)_
_name: ofGLRenderer_
_returns: _
_returns_description: _
_parameters: bool useShapeColor=true_
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

###void popMatrix()

<!--
_syntax: popMatrix()_
_name: popMatrix_
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


See [ofPopMatrix](ofGraphics.html#show_ofPopMatrix)







<!----------------------------------------------------------------------------->

###void popView()

<!--
_syntax: popView()_
_name: popView_
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








<!----------------------------------------------------------------------------->

###void pushMatrix()

<!--
_syntax: pushMatrix()_
_name: pushMatrix_
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


See [ofPushMatrix](ofGraphics.html#show_ofPushMatrix)







<!----------------------------------------------------------------------------->

###void pushView()

<!--
_syntax: pushView()_
_name: pushView_
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








<!----------------------------------------------------------------------------->

###bool rendersPathPrimitives()

<!--
_syntax: rendersPathPrimitives()_
_name: rendersPathPrimitives_
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








<!----------------------------------------------------------------------------->

###void rotate(degrees, vecX, vecY, vecZ)

<!--
_syntax: rotate(degrees, vecX, vecY, vecZ)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float degrees, float vecX, float vecY, float vecZ_
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


See [ofRotate](ofGraphics.html#show_ofRotate)







<!----------------------------------------------------------------------------->

###void rotate(degrees)

<!--
_syntax: rotate(degrees)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float degrees_
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


See [ofRotate](ofGraphics.html#show_ofRotate)







<!----------------------------------------------------------------------------->

###void rotateX(degrees)

<!--
_syntax: rotateX(degrees)_
_name: rotateX_
_returns: void_
_returns_description: _
_parameters: float degrees_
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


See [ofRotate](ofGraphics.html#show_ofRotate)







<!----------------------------------------------------------------------------->

###void rotateY(degrees)

<!--
_syntax: rotateY(degrees)_
_name: rotateY_
_returns: void_
_returns_description: _
_parameters: float degrees_
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


See [ofRotate](ofGraphics.html#show_ofRotate)







<!----------------------------------------------------------------------------->

###void rotateZ(degrees)

<!--
_syntax: rotateZ(degrees)_
_name: rotateZ_
_returns: void_
_returns_description: _
_parameters: float degrees_
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


See [ofRotate](ofGraphics.html#show_ofRotate)







<!----------------------------------------------------------------------------->

###void scale(xAmnt, yAmnt, zAmnt = 1)

<!--
_syntax: scale(xAmnt, yAmnt, zAmnt = 1)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float xAmnt, float yAmnt, float zAmnt=1_
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


See [ofScale](ofGraphics.html#show_ofScale)







<!----------------------------------------------------------------------------->

###void setBackgroundAuto(bManual)

<!--
_syntax: setBackgroundAuto(bManual)_
_name: setBackgroundAuto_
_returns: void_
_returns_description: _
_parameters: bool bManual_
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

###void setBlendMode(blendMode)

<!--
_syntax: setBlendMode(blendMode)_
_name: setBlendMode_
_returns: void_
_returns_description: _
_parameters: ofBlendMode blendMode_
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


See [ofEnableBlendMode](ofGraphics.html#show_ofEnableBlendMode)







<!----------------------------------------------------------------------------->

###void setCircleResolution(res)

<!--
_syntax: setCircleResolution(res)_
_name: setCircleResolution_
_returns: void_
_returns_description: _
_parameters: int res_
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


See [ofSetCircleResolution](ofGraphics.html#show_ofSetCircleResolution)







<!----------------------------------------------------------------------------->

###void setColor(r, g, b)

<!--
_syntax: setColor(r, g, b)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b_
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


See [ofSetColor](ofGraphics.html#show_ofSetColor)







<!----------------------------------------------------------------------------->

###void setColor(r, g, b, a)

<!--
_syntax: setColor(r, g, b, a)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a_
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


See [ofSetColor](ofGraphics.html#show_ofSetColor)







<!----------------------------------------------------------------------------->

###void setColor(&color)

<!--
_syntax: setColor(&color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color_
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


See [ofSetColor](ofGraphics.html#show_ofSetColor)







<!----------------------------------------------------------------------------->

###void setColor(&color, _a)

<!--
_syntax: setColor(&color, _a)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color, int _a_
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


See [ofSetColor](ofGraphics.html#show_ofSetColor)







<!----------------------------------------------------------------------------->

###void setColor(gray)

<!--
_syntax: setColor(gray)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int gray_
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


See [ofSetColor](ofGraphics.html#show_ofSetColor)







<!----------------------------------------------------------------------------->

###void setCoordHandedness(handedness)

<!--
_syntax: setCoordHandedness(handedness)_
_name: setCoordHandedness_
_returns: void_
_returns_description: _
_parameters: ofHandednessType handedness_
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


See [ofSetCoordHandedness](ofGraphics.html#show_ofSetCoordHandedness)







<!----------------------------------------------------------------------------->

###void setCurrentFBO(*fbo)

<!--
_syntax: setCurrentFBO(*fbo)_
_name: setCurrentFBO_
_returns: void_
_returns_description: _
_parameters: ofFbo *fbo_
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


See [ofDisableDepthTest](ofGraphics.html#show_ofDisableDepthTest) and [ofEnableDepthTest](ofGraphics.html#show_ofEnableDepthTest)







<!----------------------------------------------------------------------------->

###void setFillMode(fill)

<!--
_syntax: setFillMode(fill)_
_name: setFillMode_
_returns: void_
_returns_description: _
_parameters: ofFillFlag fill_
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

###void setHexColor(hexColor)

<!--
_syntax: setHexColor(hexColor)_
_name: setHexColor_
_returns: void_
_returns_description: _
_parameters: int hexColor_
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


See [ofSetColor](ofGraphics.html#show_ofSetColor)







<!----------------------------------------------------------------------------->

###void setLineSmoothing(smooth)

<!--
_syntax: setLineSmoothing(smooth)_
_name: setLineSmoothing_
_returns: void_
_returns_description: _
_parameters: bool smooth_
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

###void setLineWidth(lineWidth)

<!--
_syntax: setLineWidth(lineWidth)_
_name: setLineWidth_
_returns: void_
_returns_description: _
_parameters: float lineWidth_
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


See [ofSetLineWidth](ofGraphics.html#show_ofSetLineWidth)







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


See [ofSetRectMode](ofGraphics.html#show_ofSetRectMode)







<!----------------------------------------------------------------------------->

###void setupGraphicDefaults()

<!--
_syntax: setupGraphicDefaults()_
_name: setupGraphicDefaults_
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








<!----------------------------------------------------------------------------->

###void setupScreen()

<!--
_syntax: setupScreen()_
_name: setupScreen_
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


See [ofSetupScreen](ofGraphics.html#show_ofSetupScreen)







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


See [ofSetupScreenOrth](ofGraphics.html#show_ofSetupScreenOrtho)







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


See [ofSetupScreenPerspective](ofGraphics.html#show_ofSetupScreenPerspective)







<!----------------------------------------------------------------------------->

###void startSmoothing()

<!--
_syntax: startSmoothing()_
_name: startSmoothing_
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

###bool texturesNeedVFlip()

<!--
_syntax: texturesNeedVFlip()_
_name: texturesNeedVFlip_
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

###void translate(x, y, z = 0)

<!--
_syntax: translate(x, y, z = 0)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z=0_
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


See [ofTranslate](ofGraphics.html#show_ofTranslate)







<!----------------------------------------------------------------------------->

###void translate(&p)

<!--
_syntax: translate(&p)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
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


See [ofTranslate](ofGraphics.html#show_ofTranslate)







<!----------------------------------------------------------------------------->

###void update()

<!--
_syntax: update()_
_name: update_
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








<!----------------------------------------------------------------------------->

###void viewport(viewport)

<!--
_syntax: viewport(viewport)_
_name: viewport_
_returns: void_
_returns_description: _
_parameters: ofRectangle viewport_
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

###void viewport(x = 0, y = 0, width = 0, height = 0, invertY = true)

<!--
_syntax: viewport(x = 0, y = 0, width = 0, height = 0, invertY = true)_
_name: viewport_
_returns: void_
_returns_description: _
_parameters: float x=0, float y=0, float width=0, float height=0, bool vflip=ofIsVFlipped()_
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

### ~ofGLRenderer()

<!--
_syntax: ~ofGLRenderer()_
_name: ~ofGLRenderer_
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
_version_started: 007_
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
_version_started: 007_
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
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint circlePoints

<!--
_name: circlePoints_
_type: ofPoint_
_access: private_
_version_started: 007_
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
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofFillFlag fillFlag

<!--
_name: fillFlag_
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

###ofPoint linePoints

<!--
_name: linePoints_
_type: ofPoint_
_access: private_
_version_started: 007_
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

###ofRectMode rectMode

<!--
_name: rectMode_
_type: ofRectMode_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint rectPoints

<!--
_name: rectPoints_
_type: ofPoint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint triPoints

<!--
_name: triPoints_
_type: ofPoint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

