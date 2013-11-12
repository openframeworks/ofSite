#class model3DS


<!--
_visible: False_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



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

###std::string getFilename()

<!--
_syntax: getFilename()_
_name: getFilename_
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

###const material3DS & getMaterial(&matName)

<!--
_syntax: getMaterial(&matName)_
_name: getMaterial_
_returns: const material3DS &_
_returns_description: _
_parameters: const std::string &matName_
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

###void loadModel(*filename, scale = 1)

<!--
_syntax: loadModel(*filename, scale = 1)_
_name: loadModel_
_returns: void_
_returns_description: _
_parameters: const char *filename, float scale=1_
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

###void loadModel(filename, scale)

<!--
_syntax: loadModel(filename, scale)_
_name: loadModel_
_returns: void_
_returns_description: _
_parameters: string filename, float scale_
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

### model3DS(&model)

<!--
_syntax: model3DS(&model)_
_name: model3DS_
_returns: _
_returns_description: _
_parameters: const model3DS &model_
_access: private_
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

### model3DS()

<!--
_syntax: model3DS()_
_name: model3DS_
_returns: _
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

###model3DS & operator=(&model)

<!--
_syntax: operator=(&model)_
_name: operator=_
_returns: model3DS &_
_returns_description: _
_parameters: const model3DS &model_
_access: private_
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

###void readChunk(*modelFile, objectStart, objectLength)

<!--
_syntax: readChunk(*modelFile, objectStart, objectLength)_
_name: readChunk_
_returns: void_
_returns_description: _
_parameters: std::ifstream *modelFile, const int objectStart, const int objectLength_
_access: private_
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



###boundingBox3DS m_boundingBox

<!--
_name: m_boundingBox_
_type: boundingBox3DS_
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

###float  m_centerX

<!--
_name: m_centerX_
_type: float _
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

###float  m_centerY

<!--
_name: m_centerY_
_type: float _
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

###float  m_centerZ

<!--
_name: m_centerZ_
_type: float _
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

###float  m_currentColor

<!--
_name: m_currentColor_
_type: float _
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

###material3DS *  m_currentMaterial

<!--
_name: m_currentMaterial_
_type: material3DS * _
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

###std::vector<  material3DS > *  m_currentMaterialFaces

<!--
_name: m_currentMaterialFaces_
_type: std::vector<  material3DS > * _
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

###mesh3DS *  m_currentMesh

<!--
_name: m_currentMesh_
_type: mesh3DS * _
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

###std::string  m_filename

<!--
_name: m_filename_
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

###std::string  m_filepath

<!--
_name: m_filepath_
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

###std::map< std::string,  material3DS >  m_materials

<!--
_name: m_materials_
_type: std::map< std::string,  material3DS > _
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

###std::vector<  mesh3DS >  m_meshes

<!--
_name: m_meshes_
_type: std::vector<  mesh3DS > _
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

###float  m_scale

<!--
_name: m_scale_
_type: float _
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

###float  m_tempFloat

<!--
_name: m_tempFloat_
_type: float _
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

###std::string  m_tempString

<!--
_name: m_tempString_
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

###ushort m_tempUshort

<!--
_name: m_tempUshort_
_type: ushort_
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

