#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###bool glm::all(bool, &v = P)

<!--
_syntax: glm::all(bool, &v = P)_
_name: glm::all_
_returns: bool_
_returns_description: _
_parameters: const vecType< bool, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns true if all components of x are true.


**Type parameters:**

vecType Boolean vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/all.xml">GLSL all man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###bool glm::any(bool, &v = P)

<!--
_syntax: glm::any(bool, &v = P)_
_name: glm::any_
_returns: bool_
_returns_description: _
_parameters: const vecType< bool, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns true if any component of x is true.


**Type parameters:**

vecType Boolean vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/any.xml">GLSL any man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::equal(T, &x = P, T, &y = P)

<!--
_syntax: glm::equal(T, &x = P, T, &y = P)_
_name: glm::equal_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x == y.


**Type parameters:**

vecType Floating-point, integer or boolean vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/equal.xml">GLSL equal man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::greaterThan(T, &x = P, T, &y = P)

<!--
_syntax: glm::greaterThan(T, &x = P, T, &y = P)_
_name: glm::greaterThan_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x > y.


**Type parameters:**

vecType Floating-point or integer vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/greaterThan.xml">GLSL greaterThan man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::greaterThanEqual(T, &x = P, T, &y = P)

<!--
_syntax: glm::greaterThanEqual(T, &x = P, T, &y = P)_
_name: glm::greaterThanEqual_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x >= y.


**Type parameters:**

vecType Floating-point or integer vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/greaterThanEqual.xml">GLSL greaterThanEqual man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::lessThan(T, &x = P, T, &y = P)

<!--
_syntax: glm::lessThan(T, &x = P, T, &y = P)_
_name: glm::lessThan_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison result of x < y.


**Type parameters:**

vecType Floating-point or integer vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/lessThan.xml">GLSL lessThan man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::lessThanEqual(T, &x = P, T, &y = P)

<!--
_syntax: glm::lessThanEqual(T, &x = P, T, &y = P)_
_name: glm::lessThanEqual_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x <= y.


**Type parameters:**

vecType Floating-point or integer vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/lessThanEqual.xml">GLSL lessThanEqual man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::notEqual(T, &x = P, T, &y = P)

<!--
_syntax: glm::notEqual(T, &x = P, T, &y = P)_
_name: glm::notEqual_
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P, const vecType< T, P > &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise comparison of result x != y.


**Type parameters:**

vecType Floating-point, integer or boolean vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/notEqual.xml">GLSL notEqual man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< bool, P > glm::not_(bool, &v = P)

<!--
_syntax: glm::not_(bool, &v = P)_
_name: glm::not__
_returns: vecType< bool, P >_
_returns_description: _
_parameters: const vecType< bool, P > &v=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the component-wise logical complement of x.
/!\ Because of language incompatibilities between C++ and GLSL, GLM defines the function not but not_ instead.


**Type parameters:**

vecType Boolean vector types.


See also: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/not.xml">GLSL not man page</a>

See also: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.7 Vector Relational Functions</a>





_description: _







<!----------------------------------------------------------------------------->

