#class ofTextureData


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


Internal texture data structure.

Used by ofTexture internally. You won't need to work with this in most cases.





##Description





##Methods



### ofTextureData()

<!--
_syntax: ofTextureData()_
_name: ofTextureData_
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



###shared_ptr< ofTexture > alphaMask

<!--
_name: alphaMask_
_type: shared_ptr< ofTexture >_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< Optional alpha mask to bind





_description: _







<!----------------------------------------------------------------------------->

###bool bAllocated

<!--
_name: bAllocated_
_type: bool_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Has the texture been allocated?





_description: _







<!----------------------------------------------------------------------------->

###bool bFlipTexture

<!--
_name: bFlipTexture_
_type: bool_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Should the texture be flipped vertically?





_description: _







<!----------------------------------------------------------------------------->

###bool bUseExternalTextureID

<!--
_name: bUseExternalTextureID_
_type: bool_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Are we using an external texture ID?





_description: _







<!----------------------------------------------------------------------------->

###unsigned int bufferId

<!--
_name: bufferId_
_type: unsigned int_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< Optionally if the texture is backed by a buffer so we can bind it





_description: _







<!----------------------------------------------------------------------------->

###ofTexCompression compressionType

<!--
_name: compressionType_
_type: ofTexCompression_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Texture compression type.





_description: _







<!----------------------------------------------------------------------------->

###int glInternalFormat

<!--
_name: glInternalFormat_
_type: int_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< GL internal format, e.g. GL_RGB8.
<
See also: http://www.opengl.org/wiki/Image_Format





_description: _







<!----------------------------------------------------------------------------->

###bool hasMipmap

<!--
_name: hasMipmap_
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

< True if mipmap has been generated for this texture, false by default.





_description: _







<!----------------------------------------------------------------------------->

###float height

<!--
_name: height_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Texture display size.





_description: _







<!----------------------------------------------------------------------------->

###GLint magFilter

<!--
_name: magFilter_
_type: GLint_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< Filter to use for magnification (enlargement).





_description: _







<!----------------------------------------------------------------------------->

###GLint minFilter

<!--
_name: minFilter_
_type: GLint_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< Filter to use for minification (reduction).





_description: _







<!----------------------------------------------------------------------------->

###float tex_h

<!--
_name: tex_h_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Texture height (in pixels).





_description: _







<!----------------------------------------------------------------------------->

###float tex_t

<!--
_name: tex_t_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Texture horizontal coordinate, ratio of width to display width.





_description: _







<!----------------------------------------------------------------------------->

###float tex_u

<!--
_name: tex_u_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Texture vertical coordinate, ratio of height to display height.





_description: _







<!----------------------------------------------------------------------------->

###float tex_w

<!--
_name: tex_w_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Texture width (in pixels).





_description: _







<!----------------------------------------------------------------------------->

###unsigned int textureID

<!--
_name: textureID_
_type: unsigned int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< GL internal texture ID.





_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 textureMatrix

<!--
_name: textureMatrix_
_type: ofMatrix4x4_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< For required transformations.





_description: _







<!----------------------------------------------------------------------------->

###int textureTarget

<!--
_name: textureTarget_
_type: int_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< GL texture type, either GL_TEXTURE_2D or
< GL_TEXTURE_RECTANGLE_ARB.





_description: _







<!----------------------------------------------------------------------------->

###bool useTextureMatrix

<!--
_name: useTextureMatrix_
_type: bool_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Apply the transformation matrix?





_description: _







<!----------------------------------------------------------------------------->

###float width

<!--
_name: width_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

< Texture display size.





_description: _







<!----------------------------------------------------------------------------->

###GLint wrapModeHorizontal

<!--
_name: wrapModeHorizontal_
_type: GLint_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< How will the texture wrap around horizontally?





_description: _







<!----------------------------------------------------------------------------->

###GLint wrapModeVertical

<!--
_name: wrapModeVertical_
_type: GLint_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< How will the texture wrap around vertically?





_description: _







<!----------------------------------------------------------------------------->

