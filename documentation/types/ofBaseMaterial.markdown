#class ofBaseMaterial


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


material parameter properties that can be applied to vertices in the OpenGL lighting model
used in determining both the intensity and color of reflected light based on the lighting model in use
and if the vertices are on a front or back sided face





##Description





##Methods



###void begin()

<!--
_syntax: begin()_
_name: begin_
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

begin using this material's properties





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
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

end using this material's properties





_description: _







<!----------------------------------------------------------------------------->

###ofFloatColor getAmbientColor()

<!--
_syntax: getAmbientColor()_
_name: getAmbientColor_
_returns: ofFloatColor_
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

\return the ambient reflectance





_description: _







<!----------------------------------------------------------------------------->

###ofFloatColor getDiffuseColor()

<!--
_syntax: getDiffuseColor()_
_name: getDiffuseColor_
_returns: ofFloatColor_
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

\return the diffuse reflectance





_description: _







<!----------------------------------------------------------------------------->

###ofFloatColor getEmissiveColor()

<!--
_syntax: getEmissiveColor()_
_name: getEmissiveColor_
_returns: ofFloatColor_
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

\return the emitted light intensity





_description: _







<!----------------------------------------------------------------------------->

###const ofShader & getShader(textureTarget, geometryHasColor, &renderer)

<!--
_syntax: getShader(textureTarget, geometryHasColor, &renderer)_
_name: getShader_
_returns: const ofShader &_
_returns_description: _
_parameters: int textureTarget, bool geometryHasColor, ofGLProgrammableRenderer &renderer_
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

create and return a shader used to implement the materials effect for a given renderer

Parameters:
textureTarget an implementation-specific value to specify the type of shader to use
renderer programmable renderer instance to create the material shader for





_description: _







<!----------------------------------------------------------------------------->

###float getShininess()

<!--
_syntax: getShininess()_
_name: getShininess_
_returns: float_
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

\return the specular exponent





_description: _







<!----------------------------------------------------------------------------->

###ofFloatColor getSpecularColor()

<!--
_syntax: getSpecularColor()_
_name: getSpecularColor_
_returns: ofFloatColor_
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

\return the specular reflectance





_description: _







<!----------------------------------------------------------------------------->

###void updateLights(&shader, &renderer)

<!--
_syntax: updateLights(&shader, &renderer)_
_name: updateLights_
_returns: void_
_returns_description: _
_parameters: const ofShader &shader, ofGLProgrammableRenderer &renderer_
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

update the given renderer's lights to the material shader

Parameters:
shader the material shader, created by getShader()
renderer programmable renderer instance that uses the material shader





_description: _







<!----------------------------------------------------------------------------->

###void updateMaterial(&shader, &renderer)

<!--
_syntax: updateMaterial(&shader, &renderer)_
_name: updateMaterial_
_returns: void_
_returns_description: _
_parameters: const ofShader &shader, ofGLProgrammableRenderer &renderer_
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

update the material properties to the material shader

Parameters:
shader the material shader, created by getShader()
renderer programmable renderer instance that uses the material shader





_description: _







<!----------------------------------------------------------------------------->

###void uploadMatrices(&shader, &renderer)

<!--
_syntax: uploadMatrices(&shader, &renderer)_
_name: uploadMatrices_
_returns: void_
_returns_description: _
_parameters: const ofShader &shader, ofGLProgrammableRenderer &renderer_
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

upload the given renderer's normal matrix to the material shader

Parameters:
shader the material shader, created by getShader()
renderer programmable renderer instance that uses the material shader





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseMaterial()

<!--
_syntax: ~ofBaseMaterial()_
_name: ~ofBaseMaterial_
_returns: _
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

##Variables



