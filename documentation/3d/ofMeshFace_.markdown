#class ofMeshFace_


<!--
_visible: True_
_advanced: False_
_istemplated: True_
_extends: _
-->

##InlineDescription

An ofMeshFace_ is a face on one of the ofPrimitive instances.
In the ofPrimitive a face consists of 3 points connected together.

You can get a vector of ofMeshFace_ instances from any ofPrimitive like so:

~~~~{.cpp}

vector<ofMeshFace_> triangles = box.getMesh().getUniqueFaces();

~~~~

They're very handy for manipulating individual vertices or doing strange/fun
things with intersection and boundary testing, among many many other things.

this is always a triangle





##Description

An ofMeshFace is a face on one of the ofPrimitive instances. In the ofPrimitive a face consists of 3 points connected together, like in the following image:

You can get a vector of ofMeshFace instances from any ofPrimitive like so:

~~~~{.cpp}

vector<ofMeshFace> triangles = box.getMesh().getUniqueFaces();

~~~~

They're very handy for manipulating individual vertices or doing strange/fun things with intersection and boundary testing, among many many other things.





##Methods



###void calculateFaceNormal()

<!--
_syntax: calculateFaceNormal()_
_name: calculateFaceNormal_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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

###const C & getColor(index)

<!--
_syntax: getColor(index)_
_name: getColor_
_returns: const C &_
_returns_description: _
_parameters: ofIndexType index_
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

###const N & getFaceNormal()

<!--
_syntax: getFaceNormal()_
_name: getFaceNormal_
_returns: const N &_
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

###const N & getNormal(index)

<!--
_syntax: getNormal(index)_
_name: getNormal_
_returns: const N &_
_returns_description: _
_parameters: ofIndexType index_
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

###const T & getTexCoord(index)

<!--
_syntax: getTexCoord(index)_
_name: getTexCoord_
_returns: const T &_
_returns_description: _
_parameters: ofIndexType index_
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

###const V & getVertex(index)

<!--
_syntax: getVertex(index)_
_name: getVertex_
_returns: const V &_
_returns_description: _
_parameters: ofIndexType index_
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

###bool hasColors()

<!--
_syntax: hasColors()_
_name: hasColors_
_returns: bool_
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

###bool hasNormals()

<!--
_syntax: hasNormals()_
_name: hasNormals_
_returns: bool_
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

###bool hasTexcoords()

<!--
_syntax: hasTexcoords()_
_name: hasTexcoords_
_returns: bool_
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

### ofMeshFace_()

<!--
_syntax: ofMeshFace_()_
_name: ofMeshFace__
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

###void setColor(index, &color)

<!--
_syntax: setColor(index, &color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, const C &color_
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

###void setHasColors(bColors)

<!--
_syntax: setHasColors(bColors)_
_name: setHasColors_
_returns: void_
_returns_description: _
_parameters: bool bColors_
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

###void setHasNormals(bNormals)

<!--
_syntax: setHasNormals(bNormals)_
_name: setHasNormals_
_returns: void_
_returns_description: _
_parameters: bool bNormals_
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

###void setHasTexcoords(bTexcoords)

<!--
_syntax: setHasTexcoords(bTexcoords)_
_name: setHasTexcoords_
_returns: void_
_returns_description: _
_parameters: bool bTexcoords_
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

###void setNormal(index, &n)

<!--
_syntax: setNormal(index, &n)_
_name: setNormal_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, const N &n_
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

###void setTexCoord(index, &tCoord)

<!--
_syntax: setTexCoord(index, &tCoord)_
_name: setTexCoord_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, const T &tCoord_
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

###void setVertex(index, &v)

<!--
_syntax: setVertex(index, &v)_
_name: setVertex_
_returns: void_
_returns_description: _
_parameters: ofIndexType index, const V &v_
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



###bool bFaceNormalDirty

<!--
_name: bFaceNormalDirty_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bHasColors

<!--
_name: bHasColors_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bHasNormals

<!--
_name: bHasNormals_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bHasTexcoords

<!--
_name: bHasTexcoords_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###C [3] colors

<!--
_name: colors_
_type: C [3]_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###N faceNormal

<!--
_name: faceNormal_
_type: N_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###N [3] normals

<!--
_name: normals_
_type: N [3]_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###T [3] texCoords

<!--
_name: texCoords_
_type: T [3]_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###V [3] vertices

<!--
_name: vertices_
_type: V [3]_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

