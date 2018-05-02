#class ofFboSettings


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

ofFbo internal settings





##Description





##Methods



### ofFboSettings(renderer)

<!--
_syntax: ofFboSettings(renderer)_
_name: ofFboSettings_
_returns: _
_returns_description: _
_parameters: shared_ptr< ofBaseGLRenderer > renderer_
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

###bool operator!=(&other)

<!--
_syntax: operator!=(&other)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofFboSettings &other_
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

##Variables



###int colorFormats

<!--
_name: colorFormats_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< format of the color attachments for MRT.





_description: _







<!----------------------------------------------------------------------------->

###bool depthStencilAsTexture

<!--
_name: depthStencilAsTexture_
_type: bool_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< use a texture instead of a renderbuffer for depth (useful to draw it or use it in a shader later)





_description: _







<!----------------------------------------------------------------------------->

###GLint depthStencilInternalFormat

<!--
_name: depthStencilInternalFormat_
_type: GLint_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< GL_DEPTH_COMPONENT(16/24/32)





_description: _







<!----------------------------------------------------------------------------->

###int height

<!--
_name: height_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< height of images attached to fbo





_description: _







<!----------------------------------------------------------------------------->

###GLint internalformat

<!--
_name: internalformat_
_type: GLint_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< GL_RGBA, GL_RGBA16F_ARB, GL_RGBA32F_ARB, GL_LUMINANCE32F_ARB etc.





_description: _







<!----------------------------------------------------------------------------->

###int maxFilter

<!--
_name: maxFilter_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< GL_NEAREST, GL_LINEAR etc.





_description: _







<!----------------------------------------------------------------------------->

###int minFilter

<!--
_name: minFilter_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< GL_NEAREST, GL_LINEAR etc.





_description: _







<!----------------------------------------------------------------------------->

###int numColorbuffers

<!--
_name: numColorbuffers_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< how many color buffers to create





_description: _







<!----------------------------------------------------------------------------->

###int numSamples

<!--
_name: numSamples_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< number of samples for multisampling (set 0 to disable)





_description: _







<!----------------------------------------------------------------------------->

###weak_ptr< ofBaseGLRenderer > renderer

<!--
_name: renderer_
_type: weak_ptr< ofBaseGLRenderer >_
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

###GLenum textureTarget

<!--
_name: textureTarget_
_type: GLenum_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< GL_TEXTURE_2D or GL_TEXTURE_RECTANGLE_ARB





_description: _







<!----------------------------------------------------------------------------->

###bool useDepth

<!--
_name: useDepth_
_type: bool_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< whether to use depth buffer or not





_description: _







<!----------------------------------------------------------------------------->

###bool useStencil

<!--
_name: useStencil_
_type: bool_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< whether to use stencil buffer or not





_description: _







<!----------------------------------------------------------------------------->

###int width

<!--
_name: width_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< width of images attached to fbo





_description: _







<!----------------------------------------------------------------------------->

###int wrapModeHorizontal

<!--
_name: wrapModeHorizontal_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< GL_REPEAT, GL_MIRRORED_REPEAT, GL_CLAMP_TO_EDGE, GL_CLAMP_TO_BORDER etc.





_description: _







<!----------------------------------------------------------------------------->

###int wrapModeVertical

<!--
_name: wrapModeVertical_
_type: int_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< GL_REPEAT, GL_MIRRORED_REPEAT, GL_CLAMP_TO_EDGE, GL_CLAMP_TO_BORDER etc.





_description: _







<!----------------------------------------------------------------------------->

