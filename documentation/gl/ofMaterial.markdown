#class ofMaterial


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: ofBaseMaterial_
-->

##InlineDescription

/**
* Material concept: "Anything graphical applied to the polygons"
*
* @author	Diederick Huijbers <diederick[at]apollomedia[dot]nl>
*
* @link	Wavefront material file spec:
*			http://people.sc.fsu.edu/~jburkardt/data/mtl/mtl.html
* @link	Ogre3D
*			http://www.ogre3d.org/docs/manual/manual_11.html#SEC14
* @link	assim material
*			http://assimp.sourceforge.net/lib_html/ai_material_8h.html#7dd415ff703a2cc53d1c22ddbbd7dde0
*/





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

###ofMaterial::Data getData()

<!--
_syntax: getData()_
_name: getData_
_returns: ofMaterial::Data_
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

###const ofShader & getShader(textureTarget, &renderer)

<!--
_syntax: getShader(textureTarget, &renderer)_
_name: getShader_
_returns: const ofShader &_
_returns_description: _
_parameters: int textureTarget, ofGLProgrammableRenderer &renderer_
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







_description: _







<!----------------------------------------------------------------------------->

###void setData(&data)

<!--
_syntax: setData(&data)_
_name: setData_
_returns: void_
_returns_description: _
_parameters: const ofMaterial::Data &data_
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

###size_t shaderLights

<!--
_name: shaderLights_
_type: size_t_
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

###ofShader shaderNoTexture

<!--
_name: shaderNoTexture_
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

###ofShader shaderTexture2D

<!--
_name: shaderTexture2D_
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

###ofShader shaderTextureRect

<!--
_name: shaderTextureRect_
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

###bool shadersInitialized

<!--
_name: shadersInitialized_
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

