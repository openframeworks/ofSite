#functions

##Description





<!----------------------------------------------------------------------------->

###int ofGetGlInternalFormat(&pix)

<!--
_syntax: ofGetGlInternalFormat(&pix)_
_name: ofGetGlInternalFormat_
_returns: int_
_returns_description: _
_parameters: const ofPixels &pix_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofGetGlFormatAndType(glInternalFormat, &glFormat, &glType)

<!--
_syntax: ofGetGlFormatAndType(glInternalFormat, &glFormat, &glType)_
_name: ofGetGlFormatAndType_
_returns: void_
_returns_description: _
_parameters: int glInternalFormat, int &glFormat, int &glType_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofImageType ofGetImageTypeFromGLType(glType)

<!--
_syntax: ofGetImageTypeFromGLType(glType)_
_name: ofGetImageTypeFromGLType_
_returns: ofImageType_
_returns_description: _
_parameters: int glType_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofGetUsingArbTex()

<!--
_syntax: ofGetUsingArbTex()_
_name: ofGetUsingArbTex_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEnableArbTex()

<!--
_syntax: ofEnableArbTex()_
_name: ofEnableArbTex_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofEnableArbText enables the use of ARB textures. ARB textures enable the creation of non power of 2 sized textures.






<!----------------------------------------------------------------------------->

###void ofDisableArbTex()

<!--
_syntax: ofDisableArbTex()_
_name: ofDisableArbTex_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofGetUsingNormalizedTexCoords()

<!--
_syntax: ofGetUsingNormalizedTexCoords()_
_name: ofGetUsingNormalizedTexCoords_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEnableNormalizedTexCoords()

<!--
_syntax: ofEnableNormalizedTexCoords()_
_name: ofEnableNormalizedTexCoords_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofDisableNormalizedTexCoords()

<!--
_syntax: ofDisableNormalizedTexCoords()_
_name: ofDisableNormalizedTexCoords_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetTextureWrap(wrapS = GL_CLAMP_TO_EDGE, wrapT = GL_CLAMP_TO_EDGE)

<!--
_syntax: ofSetTextureWrap(wrapS = GL_CLAMP_TO_EDGE, wrapT = GL_CLAMP_TO_EDGE)_
_name: ofSetTextureWrap_
_returns: void_
_returns_description: _
_parameters: GLfloat wrapS=GL_CLAMP_TO_EDGE, GLfloat wrapT=GL_CLAMP_TO_EDGE_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofGetUsingCustomTextureWrap()

<!--
_syntax: ofGetUsingCustomTextureWrap()_
_name: ofGetUsingCustomTextureWrap_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRestoreTextureWrap()

<!--
_syntax: ofRestoreTextureWrap()_
_name: ofRestoreTextureWrap_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetMinMagFilters(minFilter = GL_LINEAR, maxFilter = GL_LINEAR)

<!--
_syntax: ofSetMinMagFilters(minFilter = GL_LINEAR, maxFilter = GL_LINEAR)_
_name: ofSetMinMagFilters_
_returns: void_
_returns_description: _
_parameters: GLfloat minFilter=GL_LINEAR, GLfloat maxFilter=GL_LINEAR_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofGetUsingCustomMinMagFilters()

<!--
_syntax: ofGetUsingCustomMinMagFilters()_
_name: ofGetUsingCustomMinMagFilters_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRestoreMinMagFilters()

<!--
_syntax: ofRestoreMinMagFilters()_
_name: ofRestoreMinMagFilters_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEnableTextureEdgeHack()

<!--
_syntax: ofEnableTextureEdgeHack()_
_name: ofEnableTextureEdgeHack_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

