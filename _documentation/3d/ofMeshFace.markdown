#class ofMeshFace


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






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

###const ofFloatColor & getColor(index)

<!--
_syntax: getColor(index)_
_name: getColor_
_returns: const ofFloatColor &_
_returns_description: _
_parameters: int index_
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

###const ofVec3f & getFaceNormal()

<!--
_syntax: getFaceNormal()_
_name: getFaceNormal_
_returns: const ofVec3f &_
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

###const ofVec3f & getNormal(index)

<!--
_syntax: getNormal(index)_
_name: getNormal_
_returns: const ofVec3f &_
_returns_description: _
_parameters: int index_
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

###const ofVec2f & getTexCoord(index)

<!--
_syntax: getTexCoord(index)_
_name: getTexCoord_
_returns: const ofVec2f &_
_returns_description: _
_parameters: int index_
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

###const ofVec3f & getVertex(index)

<!--
_syntax: getVertex(index)_
_name: getVertex_
_returns: const ofVec3f &_
_returns_description: _
_parameters: int index_
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

### ofMeshFace()

<!--
_syntax: ofMeshFace()_
_name: ofMeshFace_
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
_parameters: int index, const ofFloatColor &color_
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
_parameters: int index, const ofVec3f &n_
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
_parameters: int index, const ofVec2f &tCoord_
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
_parameters: int index, const ofVec3f &v_
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
_constant: True_
_advanced: False_
-->

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
_constant: True_
_advanced: False_
-->

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
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofFloatColor colors

<!--
_name: colors_
_type: ofFloatColor_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f faceNormal

<!--
_name: faceNormal_
_type: ofVec3f_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f normals

<!--
_name: normals_
_type: ofVec3f_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec2f texCoords

<!--
_name: texCoords_
_type: ofVec2f_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f vertices

<!--
_name: vertices_
_type: ofVec3f_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

