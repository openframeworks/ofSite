#class ofGLRenderer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseGLRenderer_
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

This renderer does not work so well with mobile devices (more specifically with GLES) or on ARM6/7 Linux devices (Raspberry Pi, for instance) but it is the classic version that will be supported on all laptops and desktop machines. Most of the calls to this renderer are handled by other functions, so most of this documentation will simply link to the end user functions that you should call, since you probably don't want to call the renderer directly.





##Methods



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

###void clear(brightness, a)

<!--
_syntax: clear(brightness, a)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float brightness, float a_
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

See [ofDisableAntiAliasing](ofGraphics.html#show_ofDisableAntiAliasing)





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

Draws a of3dPrimitive. Called internally.





<!----------------------------------------------------------------------------->

###void draw(&model)

<!--
_syntax: draw(&model)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofNode &model_
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

###void draw(&poly)

<!--
_syntax: draw(&poly)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPolyline &poly_
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
_parameters: const ofPath &path_
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
_parameters: const ofImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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
_parameters: const ofFloatImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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
_parameters: const ofShortImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

See [ofDrawCircle](ofGraphics.html#show_ofDrawCircle)





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

See [ofDrawEllipse](ofGraphics.html#show_ofDrawEllipse)





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

###void drawString(text, x, y, z)

<!--
_syntax: drawString(text, x, y, z)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: string text, float x, float y, float z_
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

###void finishRender()

<!--
_syntax: finishRender()_
_name: finishRender_
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

See [ofGetNativeViewport](ofGraphics.html#show_ofGetNativeViewport)





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

###void loadIdentityMatrix()

<!--
_syntax: loadIdentityMatrix()_
_name: loadIdentityMatrix_
_returns: void_
_returns_description: _
_parameters: _
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

### ofGLRenderer(*window)

<!--
_syntax: ofGLRenderer(*window)_
_name: ofGLRenderer_
_returns: _
_returns_description: _
_parameters: const ofAppBaseWindow *window_
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

See [ofScale](../graphics/ofGraphics.html#show_ofScale)





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

###void setup()

<!--
_syntax: setup()_
_name: setup_
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

See [ofSetupScreenOrth](ofGraphics.html#show_ofSetupScreenOrtho)





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

See [ofSetupScreenPerspective](ofGraphics.html#show_ofSetupScreenPerspective)





<!----------------------------------------------------------------------------->

###void startRender()

<!--
_syntax: startRender()_
_name: startRender_
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

###void translate(x, y, z)

<!--
_syntax: translate(x, y, z)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
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

###void viewport(x, y, width, height, vflip = true)

<!--
_syntax: viewport(x, y, width, height, vflip = true)_
_name: viewport_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height, bool vflip=true_
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

_inlined_description: _







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

###bool lightingEnabled

<!--
_name: lightingEnabled_
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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool materialBound

<!--
_name: materialBound_
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

###bool normalsEnabled

<!--
_name: normalsEnabled_
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

###set< int > textureLocationsEnabled

<!--
_name: textureLocationsEnabled_
_type: set< int >_
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
