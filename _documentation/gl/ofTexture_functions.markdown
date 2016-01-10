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

Use GL_TEXTURE_2D textures.

GL_TEXTURE_2D is OpenGL's default way of handling textures and supports a
wider range of core OpenGL features such as mipmaps.


See also: ofEnableArbTex()





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

Use pixel-based texture coordinates.

See also: ofEnableNormalizedTexCoords()





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

Disable global texture "edge hack".

See also: ofEnableTextureEdgeHack()





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

Use GL_TEXTURE_RECTANGLE textures.

GL_TEXTURE_RECTANGLE textures are more intuitive since they allow pixel
based coordinates and are enabled by default.

GL_TEXTURE_2D textures use normalised texture coordinates (a float value
between 0 and 1 is used to express texture coordinates along width and
height).

GL_TEXTURE_2D textures are more widely supported and allow advanced features
such as mipmaps and texture compression.


See also: ofDisableArbTex()

Warning: GL_TEXTURE_RECTANGLE is not available in OpenGL ES.

Warning: GL_TEXTURE_RECTANGLE does not support mipmaps.





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

By default, textures in OF work with pixel-based coordinates based on given
content dimensions (images size, fbo size, etc). Normalized (0 - 1)
coordinates are the traditional OpenGL default as they allow working with
internal texture data without having to worry about specific dimensions of
the content.

This overrides individual ofTexture wrap settings.


See also: http://www.opengl.org/sdk/docs/man4/html/glTexParameter.xhtml





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

Enable the global texture "edge hack" to compensate for edge artifacts.

Adds a 2 pixel offset to avoid possible edge artifacts (typically a black or
white border). This *very slightly* alters the image by scaling.  This is
enabled by default.





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

Check whether OF is using GL_TEXTURE_RECTANGLE rectangular or GL_TEXTURE_2D textures.

See also: ofEnableArbTex()

Returns: true if using GL_TEXTURE_RECTANGLE textures, false if using GL_TEXTURE_2D textures.





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

See also: ofEnableNormalizedTexCoords()

Returns: true if using normalized (0 - 1) texture coordinates.





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

Check whether OF is using the texture "edge hack".

See also: ofEnableTextureEdgeHack()

Returns: true if OF is currently using the texture "edge hack".





_description: _







<!----------------------------------------------------------------------------->

