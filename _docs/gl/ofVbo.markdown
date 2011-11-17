#class ofVbo

Example



Reference



Methods



//----------------------

##void setIndexData(const ofIndexType *indices, int total, int usage)

_syntax: setIndexData(const ofIndexType *indices, int total, int usage)_

_name: setIndexData_

_returns: void_

_parameters: const , int, int_



_description: _















//----------------------

##void setVertexData(const float *vert0x, int numCoords, int total, int usage, int stride=0)

_syntax: setVertexData(const float *vert0x, int numCoords, int total, int usage, int stride=0)_

_name: setVertexData_

_returns: void_

_parameters: const float *, int, int, int, int = 0_



_description: _















//----------------------

##void setColorData(const float *color0r, int total, int usage, int stride=0)

_syntax: setColorData(const float *color0r, int total, int usage, int stride=0)_

_name: setColorData_

_returns: void_

_parameters: const float *, int, int, int = 0_



_description: _















//----------------------

##void setNormalData(const float *normal0x, int total, int usage, int stride=0)

_syntax: setNormalData(const float *normal0x, int total, int usage, int stride=0)_

_name: setNormalData_

_returns: void_

_parameters: const float *, int, int, int = 0_



_description: _















//----------------------

##void setTexCoordData(const float *texCoord0x, int total, int usage, int stride=0)

_syntax: setTexCoordData(const float *texCoord0x, int total, int usage, int stride=0)_

_name: setTexCoordData_

_returns: void_

_parameters: const float *, int, int, int = 0_



_description: _















//----------------------

##void updateMesh(const ofMesh &mesh)

_syntax: updateMesh(const ofMesh &mesh)_

_name: updateMesh_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void updateVertexData(const ofVec3f *verts, int total)

_syntax: updateVertexData(const ofVec3f *verts, int total)_

_name: updateVertexData_

_returns: void_

_parameters: const , int_



_description: _















//----------------------

##void updateColorData(const ofColor *colors, int total)

_syntax: updateColorData(const ofColor *colors, int total)_

_name: updateColorData_

_returns: void_

_parameters: const , int_



_description: _















//----------------------

##void updateNormalData(const ofVec3f *normals, int total)

_syntax: updateNormalData(const ofVec3f *normals, int total)_

_name: updateNormalData_

_returns: void_

_parameters: const , int_



_description: _















//----------------------

##void updateTexCoordData(const ofVec2f *texCoords, int total)

_syntax: updateTexCoordData(const ofVec2f *texCoords, int total)_

_name: updateTexCoordData_

_returns: void_

_parameters: const , int_



_description: _















//----------------------

##void updateIndexData(const ofIndexType *indices, int total)

_syntax: updateIndexData(const ofIndexType *indices, int total)_

_name: updateIndexData_

_returns: void_

_parameters: const , int_



_description: _















//----------------------

##void updateVertexData(const float *ver0x, int total)

_syntax: updateVertexData(const float *ver0x, int total)_

_name: updateVertexData_

_returns: void_

_parameters: const float *, int_



_description: _















//----------------------

##void updateColorData(const float *color0r, int total)

_syntax: updateColorData(const float *color0r, int total)_

_name: updateColorData_

_returns: void_

_parameters: const float *, int_



_description: _















//----------------------

##void updateNormalData(const float *normal0x, int total)

_syntax: updateNormalData(const float *normal0x, int total)_

_name: updateNormalData_

_returns: void_

_parameters: const float *, int_



_description: _















//----------------------

##void updateTexCoordData(const float *texCoord0x, int total)

_syntax: updateTexCoordData(const float *texCoord0x, int total)_

_name: updateTexCoordData_

_returns: void_

_parameters: const float *, int_



_description: _















//----------------------

##GLuint getVertId()

_syntax: getVertId()_

_name: getVertId_

_returns: GLuint_

_parameters: _



_description: _















//----------------------

##GLuint getColorId()

_syntax: getColorId()_

_name: getColorId_

_returns: GLuint_

_parameters: _



_description: _















//----------------------

##GLuint getNormalId()

_syntax: getNormalId()_

_name: getNormalId_

_returns: GLuint_

_parameters: _



_description: _















//----------------------

##GLuint getTexCoordId()

_syntax: getTexCoordId()_

_name: getTexCoordId_

_returns: GLuint_

_parameters: _



_description: _















//----------------------

##GLuint getIndexId()

_syntax: getIndexId()_

_name: getIndexId_

_returns: GLuint_

_parameters: _



_description: _















//----------------------

##bool getIsAllocated()

_syntax: getIsAllocated()_

_name: getIsAllocated_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool getUsingVerts()

_syntax: getUsingVerts()_

_name: getUsingVerts_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool getUsingColors()

_syntax: getUsingColors()_

_name: getUsingColors_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool getUsingNormals()

_syntax: getUsingNormals()_

_name: getUsingNormals_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool getUsingTexCoords()

_syntax: getUsingTexCoords()_

_name: getUsingTexCoords_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool getUsingIndices()

_syntax: getUsingIndices()_

_name: getUsingIndices_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void draw(int drawMode, int first, int total)

_syntax: draw(int drawMode, int first, int total)_

_name: draw_

_returns: void_

_parameters: int, int, int_



_description: _















//----------------------

##void drawElements(int drawMode, int amt)

_syntax: drawElements(int drawMode, int amt)_

_name: drawElements_

_returns: void_

_parameters: int, int_



_description: _















//----------------------

##void bind()

_syntax: bind()_

_name: bind_

_returns: void_

_parameters: _



_description: _















//----------------------

##void unbind()

_syntax: unbind()_

_name: unbind_

_returns: void_

_parameters: _



_description: _















//----------------------

##void clear()

_syntax: clear()_

_name: clear_

_returns: void_

_parameters: _



_description: _















//----------------------

##None ofVbo()

_syntax: ofVbo()_

_name: ofVbo_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ofVbo(const ofVbo &mom)

_syntax: ofVbo(const ofVbo &mom)_

_name: ofVbo_

_returns: None_

_parameters: const _



_description: _















//----------------------

##ofVbo operator=(const ofVbo &mom)

_syntax: operator=(const ofVbo &mom)_

_name: operator=_

_returns: ofVbo_

_parameters: const _



_description: _















//----------------------

##None ~ofVbo()

_syntax: ~ofVbo()_

_name: ~ofVbo_

_returns: None_

_parameters: _



_description: _















//----------------------

##void setMesh(const ofMesh &mesh, int usage)

_syntax: setMesh(const ofMesh &mesh, int usage)_

_name: setMesh_

_returns: void_

_parameters: const , int_



_description: _















//----------------------

##void setVertexData(const ofVec3f *verts, int total, int usage)

_syntax: setVertexData(const ofVec3f *verts, int total, int usage)_

_name: setVertexData_

_returns: void_

_parameters: const , int, int_



_description: _















//----------------------

##void setColorData(const ofColor *colors, int total, int usage)

_syntax: setColorData(const ofColor *colors, int total, int usage)_

_name: setColorData_

_returns: void_

_parameters: const , int, int_



_description: _















//----------------------

##void setNormalData(const ofVec3f *normals, int total, int usage)

_syntax: setNormalData(const ofVec3f *normals, int total, int usage)_

_name: setNormalData_

_returns: void_

_parameters: const , int, int_



_description: _















//----------------------

##void setTexCoordData(const ofVec2f *texCoords, int total, int usage)

_syntax: setTexCoordData(const ofVec2f *texCoords, int total, int usage)_

_name: setTexCoordData_

_returns: void_

_parameters: const , int, int_



_description: _















