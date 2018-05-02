#class ofMaterial


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseMaterial_
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

###void end()

<!--
_syntax: end()_
_name: end_
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

###ofFloatColor getAmbientColor()

<!--
_syntax: getAmbientColor()_
_name: getAmbientColor_
_returns: ofFloatColor_
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

###ofFloatColor getDiffuseColor()

<!--
_syntax: getDiffuseColor()_
_name: getDiffuseColor_
_returns: ofFloatColor_
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

###ofFloatColor getEmissiveColor()

<!--
_syntax: getEmissiveColor()_
_name: getEmissiveColor_
_returns: ofFloatColor_
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

###ofMaterialSettings getSettings()

<!--
_syntax: getSettings()_
_name: getSettings_
_returns: ofMaterialSettings_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###const ofShader & getShader(textureTarget, geometryHasColor, &renderer)

<!--
_syntax: getShader(textureTarget, geometryHasColor, &renderer)_
_name: getShader_
_returns: const ofShader &_
_returns_description: _
_parameters: int textureTarget, bool geometryHasColor, ofGLProgrammableRenderer &renderer_
_access: private_
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

###float getShininess()

<!--
_syntax: getShininess()_
_name: getShininess_
_returns: float_
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

###ofFloatColor getSpecularColor()

<!--
_syntax: getSpecularColor()_
_name: getSpecularColor_
_returns: ofFloatColor_
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

###void initShaders(&renderer)

<!--
_syntax: initShaders(&renderer)_
_name: initShaders_
_returns: void_
_returns_description: _
_parameters: ofGLProgrammableRenderer &renderer_
_access: private_
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

### ofMaterial()

<!--
_syntax: ofMaterial()_
_name: ofMaterial_
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

###void setAmbientColor(oAmbient)

<!--
_syntax: setAmbientColor(oAmbient)_
_name: setAmbientColor_
_returns: void_
_returns_description: _
_parameters: ofFloatColor oAmbient_
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

set the ambient reflectance

Parameters:
oAmbient the ambient reflectance





_description: _







<!----------------------------------------------------------------------------->

###void setColors(oDiffuse, oAmbient, oSpecular, emissive)

<!--
_syntax: setColors(oDiffuse, oAmbient, oSpecular, emissive)_
_name: setColors_
_returns: void_
_returns_description: _
_parameters: ofFloatColor oDiffuse, ofFloatColor oAmbient, ofFloatColor oSpecular, ofFloatColor emissive_
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

set all material colors: reflectance type & light intensity

Parameters:
oDiffuse the diffuse reflectance
oAmbient the ambient reflectance
oSpecular the specular reflectance
oEmmissive the emitted light intensity





_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniform1f(&name, value)

<!--
_syntax: setCustomUniform1f(&name, value)_
_name: setCustomUniform1f_
_returns: void_
_returns_description: _
_parameters: const string &name, float value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniform1i(&name, value)

<!--
_syntax: setCustomUniform1i(&name, value)_
_name: setCustomUniform1i_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniform2f(&name, value)

<!--
_syntax: setCustomUniform2f(&name, value)_
_name: setCustomUniform2f_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniform2i(&name, value)

<!--
_syntax: setCustomUniform2i(&name, value)_
_name: setCustomUniform2i_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniform3f(&name, value)

<!--
_syntax: setCustomUniform3f(&name, value)_
_name: setCustomUniform3f_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniform3i(&name, value)

<!--
_syntax: setCustomUniform3i(&name, value)_
_name: setCustomUniform3i_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniform4f(&name, value)

<!--
_syntax: setCustomUniform4f(&name, value)_
_name: setCustomUniform4f_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniform4i(&name, value)

<!--
_syntax: setCustomUniform4i(&name, value)_
_name: setCustomUniform4i_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniformMatrix3f(&name, value)

<!--
_syntax: setCustomUniformMatrix3f(&name, value)_
_name: setCustomUniformMatrix3f_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniformMatrix4f(&name, value)

<!--
_syntax: setCustomUniformMatrix4f(&name, value)_
_name: setCustomUniformMatrix4f_
_returns: void_
_returns_description: _
_parameters: const string &name, int value_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniformTexture(&name, &value, textureLocation)

<!--
_syntax: setCustomUniformTexture(&name, &value, textureLocation)_
_name: setCustomUniformTexture_
_returns: void_
_returns_description: _
_parameters: const string &name, const ofTexture &value, int textureLocation_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setCustomUniformTexture(&name, textureTarget, textureID, textureLocation)

<!--
_syntax: setCustomUniformTexture(&name, textureTarget, textureID, textureLocation)_
_name: setCustomUniformTexture_
_returns: void_
_returns_description: _
_parameters: const string &name, int textureTarget, GLint textureID, int textureLocation_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setDiffuseColor(oDiffuse)

<!--
_syntax: setDiffuseColor(oDiffuse)_
_name: setDiffuseColor_
_returns: void_
_returns_description: _
_parameters: ofFloatColor oDiffuse_
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

set the diffuse reflectance

Parameters:
oDiffuse the diffuse reflectance





_description: _







<!----------------------------------------------------------------------------->

###void setEmissiveColor(oEmmisive)

<!--
_syntax: setEmissiveColor(oEmmisive)_
_name: setEmissiveColor_
_returns: void_
_returns_description: _
_parameters: ofFloatColor oEmmisive_
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

set the emitted light intensity

Parameters:
oEmmissive the emitted light intensity





_description: _







<!----------------------------------------------------------------------------->

###void setShininess(nShininess)

<!--
_syntax: setShininess(nShininess)_
_name: setShininess_
_returns: void_
_returns_description: _
_parameters: float nShininess_
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

set the specular exponent





_description: _







<!----------------------------------------------------------------------------->

###void setSpecularColor(oSpecular)

<!--
_syntax: setSpecularColor(oSpecular)_
_name: setSpecularColor_
_returns: void_
_returns_description: _
_parameters: ofFloatColor oSpecular_
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

set the specular reflectance

Parameters:
oSpecular the specular reflectance





_description: _







<!----------------------------------------------------------------------------->

###void setup(&settings)

<!--
_syntax: setup(&settings)_
_name: setup_
_returns: void_
_returns_description: _
_parameters: const ofMaterialSettings &settings_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

setup using settings struct

Parameters:
settings color & other properties struct





_description: _







<!----------------------------------------------------------------------------->

###void updateLights(&shader, &renderer)

<!--
_syntax: updateLights(&shader, &renderer)_
_name: updateLights_
_returns: void_
_returns_description: _
_parameters: const ofShader &shader, ofGLProgrammableRenderer &renderer_
_access: private_
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

###void updateMaterial(&shader, &renderer)

<!--
_syntax: updateMaterial(&shader, &renderer)_
_name: updateMaterial_
_returns: void_
_returns_description: _
_parameters: const ofShader &shader, ofGLProgrammableRenderer &renderer_
_access: private_
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

### ~ofMaterial()

<!--
_syntax: ~ofMaterial()_
_name: ~ofMaterial_
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



###ofMaterial::Data data

<!--
_name: data_
_type: ofMaterial::Data_
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

###string fragmentShader

<!--
_name: fragmentShader_
_type: string_
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

###int shaders

<!--
_name: shaders_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int shadersMap

<!--
_name: shadersMap_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int uniforms1f

<!--
_name: uniforms1f_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int uniforms1i

<!--
_name: uniforms1i_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int uniforms2f

<!--
_name: uniforms2f_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int uniforms3f

<!--
_name: uniforms3f_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int uniforms3m

<!--
_name: uniforms3m_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int uniforms4f

<!--
_name: uniforms4f_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int uniforms4m

<!--
_name: uniforms4m_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int uniformstex

<!--
_name: uniformstex_
_type: int_
_access: private_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###string vertexShader

<!--
_name: vertexShader_
_type: string_
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

