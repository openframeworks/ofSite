#class mesh3DS


<!--
_visible: False_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



###void addFaceIndex(faceIndex)

<!--
_syntax: addFaceIndex(faceIndex)_
_name: addFaceIndex_
_returns: void_
_returns_description: _
_parameters: const ushort faceIndex_
_access: public_
_version_started: 0.8.0_
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

###void addFaceSmoothing(smoothing)

<!--
_syntax: addFaceSmoothing(smoothing)_
_name: addFaceSmoothing_
_returns: void_
_returns_description: _
_parameters: const unsigned int smoothing_
_access: public_
_version_started: 0.8.0_
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

###void addMaterialFace(&name, faceIndex)

<!--
_syntax: addMaterialFace(&name, faceIndex)_
_name: addMaterialFace_
_returns: void_
_returns_description: _
_parameters: const std::string &name, const ushort faceIndex_
_access: public_
_version_started: 0.8.0_
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

###void addTexcoord(texcoord)

<!--
_syntax: addTexcoord(texcoord)_
_name: addTexcoord_
_returns: void_
_returns_description: _
_parameters: const float texcoord_
_access: public_
_version_started: 0.8.0_
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

###void addVertex(vertex)

<!--
_syntax: addVertex(vertex)_
_name: addVertex_
_returns: void_
_returns_description: _
_parameters: const float vertex_
_access: public_
_version_started: 0.8.0_
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

###void buildMesh()

<!--
_syntax: buildMesh()_
_name: buildMesh_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###void calculateNormals()

<!--
_syntax: calculateNormals()_
_name: calculateNormals_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###void draw()

<!--
_syntax: draw()_
_name: draw_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###std::string getMaterial()

<!--
_syntax: getMaterial()_
_name: getMaterial_
_returns: std::string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###std::string getName()

<!--
_syntax: getName()_
_name: getName_
_returns: std::string_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###int getNumFaces()

<!--
_syntax: getNumFaces()_
_name: getNumFaces_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

### mesh3DS(*parentModel)

<!--
_syntax: mesh3DS(*parentModel)_
_name: mesh3DS_
_returns: _
_returns_description: _
_parameters: model3DS *parentModel_
_access: public_
_version_started: 0.8.0_
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

###void setDrawMode(newDrawMode)

<!--
_syntax: setDrawMode(newDrawMode)_
_name: setDrawMode_
_returns: void_
_returns_description: _
_parameters: const unsigned int newDrawMode_
_access: public_
_version_started: 0.8.0_
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

###void setMaterial(&newMat)

<!--
_syntax: setMaterial(&newMat)_
_name: setMaterial_
_returns: void_
_returns_description: _
_parameters: const std::string &newMat_
_access: public_
_version_started: 0.8.0_
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

###void setName(newName)

<!--
_syntax: setName(newName)_
_name: setName_
_returns: void_
_returns_description: _
_parameters: const std::string newName_
_access: public_
_version_started: 0.8.0_
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

###void sortFacesByMaterial()

<!--
_syntax: sortFacesByMaterial()_
_name: sortFacesByMaterial_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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



###unsigned int  m_drawMode

<!--
_name: m_drawMode_
_type: unsigned int _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::vector< unsigned int >  m_faceSmoothing

<!--
_name: m_faceSmoothing_
_type: std::vector< unsigned int > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::vector<  ushort >  m_faces

<!--
_name: m_faces_
_type: std::vector<  ushort > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::map< std::string, std::vector<  ushort > >  m_materialFaces

<!--
_name: m_materialFaces_
_type: std::map< std::string, std::vector<  ushort > > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::string  m_materialName

<!--
_name: m_materialName_
_type: std::string _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::string  m_name

<!--
_name: m_name_
_type: std::string _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::vector< float >  m_normals

<!--
_name: m_normals_
_type: std::vector< float > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint  m_normalsArrayId

<!--
_name: m_normalsArrayId_
_type: GLuint _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###model3DS *  m_parentModel

<!--
_name: m_parentModel_
_type: model3DS * _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::vector< float >  m_texcoords

<!--
_name: m_texcoords_
_type: std::vector< float > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint  m_texcoordsArrayId

<!--
_name: m_texcoordsArrayId_
_type: GLuint _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###std::vector< float >  m_vertices

<!--
_name: m_vertices_
_type: std::vector< float > _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###GLuint  m_verticesArrayId

<!--
_name: m_verticesArrayId_
_type: GLuint _
_access: private_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

