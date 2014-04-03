#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






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

_inlined_description: _

Use square GL_TEXTURE_2D textures. 







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

_inlined_description: _

Use pixel based texture coordinates. 







_description: _








<!----------------------------------------------------------------------------->

###void ofDisableTextureEdgeHack()

<!--
_syntax: ofDisableTextureEdgeHack()_
_name: ofDisableTextureEdgeHack_
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

_inlined_description: _

Disable global texture "edge hacking". 







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

_inlined_description: _

Use GL ARB rectangular textures. 

Rectangular textures are generally more useful and are enabled by default. Traditional GL_TEXTURE_2D square textures are faster on older hardware and in certain cases.







_description: _


ofEnableArbText enables the use of ARB textures. ARB textures enable the creation of non power of 2 sized textures.







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

_inlined_description: _

Use normalized (0 - 1) texture coordinates. 

By default, textures in OF work with pixel based coordinates based on given content dimensions (images size, fbo size, etc). Normalized (0 - 1) coordinates are the traditional GL default as they allow working with internal texture data without having to worry about specific dimensions of the content.

This overrides individual 







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

_inlined_description: _

Enable global texture "edge hacking" to compensate for edge artifacts. 

Adds a 2 pixel offset to avoid possible edge artifacts (typically a black or white border). This 







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

_inlined_description: _

Check whether OF is using ARB rectangular or square textures. 







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

_inlined_description: _

Check whether OF is using custom global texture scaling filters. 







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

_inlined_description: _

Check whether OF is using custom global texture wrapping. 







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

_inlined_description: _

Check whether OF is using normalized or pixel texture coordinates. 







_description: _








<!----------------------------------------------------------------------------->

###bool ofIsTextureEdgeHackEnabled()

<!--
_syntax: ofIsTextureEdgeHackEnabled()_
_name: ofIsTextureEdgeHackEnabled_
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

_inlined_description: _

Check whether OF is using the "texture edge hack". 







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

_inlined_description: _

Removes global custom texture wrapping. 

Restores individual 







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

_inlined_description: _

Removes global custom texture wrapping. 

Restores individual 







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

_inlined_description: _

Set custom global texture minification/magnification scaling filters. 

This setting allows global control over how OpenGL scales textures. It overrides individual 







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

_inlined_description: _

Set custom global texture wrapping. 

By default, textures are clamped to their edges with GL_CLAMP_TO_EDGE. Setting a repeat mode like GL_REPEAT allows you to create tiled backgrounds with small textures.

See 

This overrides individual 







_description: _








<!----------------------------------------------------------------------------->

