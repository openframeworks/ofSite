#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###vecType< T, P > glm::fmod(T, &v = P)

<!--
_syntax: glm::fmod(T, &v = P)_
_name: glm::fmod_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Similar to 'mod' but with a different rounding and integer support.
Returns 'x - y * trunc(x/y)' instead of 'x - y * floor(x/y)'


**See also**: <a href="http://stackoverflow.com/questions/7610631/glsl-mod-vs-hlsl-fmod">GLSL mod vs HLSL fmod</a>

**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/mod.xml">GLSL mod man page</a>





_description: _







<!----------------------------------------------------------------------------->

###typename genType::bool_type glm::isdenormal(&x)

<!--
_syntax: glm::isdenormal(&x)_
_name: glm::isdenormal_
_returns: typename genType::bool_type_
_returns_description: _
_parameters: const genType &x_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns true if x is a denormalized number
Numbers whose absolute value is too small to be represented in the normal format are represented in an alternate, denormalized format.
This format is less precise but can represent values closer to zero.


**Type parameters:**

genType Floating-point scalar or vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/isnan.xml">GLSL isnan man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.3 Common Functions</a>





_description: _







<!----------------------------------------------------------------------------->

