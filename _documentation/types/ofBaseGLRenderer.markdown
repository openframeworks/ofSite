#class ofBaseGLRenderer


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: ofBaseRenderer_
-->

##InlineDescription






##Description





##Methods



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

###void bindForBlitting(&fboSrc, &fboDst, attachmentPoint = 0)

<!--
_syntax: bindForBlitting(&fboSrc, &fboDst, attachmentPoint = 0)_
_name: bindForBlitting_
_returns: void_
_returns_description: _
_parameters: const ofFbo &fboSrc, ofFbo &fboDst, int attachmentPoint=0_
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

###void drawElements(&vbo, drawMode, amt, offsetelements)

<!--
_syntax: drawElements(&vbo, drawMode, amt, offsetelements)_
_name: drawElements_
_returns: void_
_returns_description: _
_parameters: const ofVbo &vbo, GLuint drawMode, int amt, int offsetelements_
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

##Variables



