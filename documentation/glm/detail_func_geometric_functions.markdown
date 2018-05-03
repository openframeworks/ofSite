#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###glm::vec3 glm::cross(&x = P, &y = P)

<!--
_syntax: glm::cross(&x = P, &y = P)_
_name: glm::cross_
_returns: glm::vec3_
_returns_description: _
_parameters: const glm::vec3 &x=P, const glm::vec3 &y=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the cross product of x and y.


**Type parameters:**

valType Floating-point scalar types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/cross.xml">GLSL cross man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.5 Geometric Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###T glm::distance(T, &p0 = P, T, &p1 = P)

<!--
_syntax: glm::distance(T, &p0 = P, T, &p1 = P)_
_name: glm::distance_
_returns: T_
_returns_description: _
_parameters: const vecType< T, P > &p0=P, const vecType< T, P > &p1=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the distance betwwen p0 and p1, i.e., length(p0 - p1).


**Type parameters:**

genType Floating-point vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/distance.xml">GLSL distance man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.5 Geometric Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###T glm::dot(T, &x = P, T, &y = P)

<!--
_syntax: glm::dot(T, &x = P, T, &y = P)_
_name: glm::dot_
_returns: T_
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

Returns the dot product of x and y, i.e., result = x * y.


**Type parameters:**

genType Floating-point vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/dot.xml">GLSL dot man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.5 Geometric Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::faceforward(T, &N = P, T, &I = P, T, &Nref = P)

<!--
_syntax: glm::faceforward(T, &N = P, T, &I = P, T, &Nref = P)_
_name: glm::faceforward_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &N=P, const vecType< T, P > &I=P, const vecType< T, P > &Nref=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

If dot(Nref, I) < 0.0, return N, otherwise, return -N.


**Type parameters:**

genType Floating-point vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/faceforward.xml">GLSL faceforward man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.5 Geometric Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###T glm::length(T, &x = P)

<!--
_syntax: glm::length(T, &x = P)_
_name: glm::length_
_returns: T_
_returns_description: _
_parameters: const vecType< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the length of x, i.e., sqrt(x * x).


**Type parameters:**

genType Floating-point vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/length.xml">GLSL length man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.5 Geometric Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::normalize(T, &x = P)

<!--
_syntax: glm::normalize(T, &x = P)_
_name: glm::normalize_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &x=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a vector in the same direction as x but with length of 1.
According to issue 10 GLSL 1.10 specification, if length(x) == 0 then result is undefined and generate an error.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/normalize.xml">GLSL normalize man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.5 Geometric Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###genType glm::reflect(&I, &N)

<!--
_syntax: glm::reflect(&I, &N)_
_name: glm::reflect_
_returns: genType_
_returns_description: _
_parameters: const genType &I, const genType &N_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

For the incident vector I and surface orientation N,
returns the reflection direction : result = I - 2.0 * dot(N, I) * N.


**Type parameters:**

genType Floating-point vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/reflect.xml">GLSL reflect man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.5 Geometric Functions</a>





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::refract(T, &I = P, T, &N = P, eta)

<!--
_syntax: glm::refract(T, &I = P, T, &N = P, eta)_
_name: glm::refract_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &I=P, const vecType< T, P > &N=P, T eta_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

For the incident vector I and surface normal N,
and the ratio of indices of refraction eta,
return the refraction vector.


**Type parameters:**

genType Floating-point vector types.


**See also**: <a href="http://www.opengl.org/sdk/docs/manglsl/xhtml/refract.xml">GLSL refract man page</a>

**See also**: <a href="http://www.opengl.org/registry/doc/GLSLangSpec.4.20.8.pdf">GLSL 4.20.8 specification, section 8.5 Geometric Functions</a>





_description: _







<!----------------------------------------------------------------------------->

