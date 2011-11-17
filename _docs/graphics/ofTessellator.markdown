#class ofTessellator

Example



Reference



Methods



//----------------------

##void tessellateToMesh(const vector< ofPolyline > &src, int polyWindingMode, vector< ofMesh > &dstmesh, bool bIs2D=false)

_syntax: tessellateToMesh(const vector< ofPolyline > &src, int polyWindingMode, vector< ofMesh > &dstmesh, bool bIs2D=false)_

_name: tessellateToMesh_

_returns: void_

_parameters: const vector< , int, vector< , bool = False_



_description: _















//----------------------

##void tessellateToMesh(const ofPolyline &src, int polyWindingMode, vector< ofMesh > &dstmesh, bool bIs2D=false)

_syntax: tessellateToMesh(const ofPolyline &src, int polyWindingMode, vector< ofMesh > &dstmesh, bool bIs2D=false)_

_name: tessellateToMesh_

_returns: void_

_parameters: const , int, vector< , bool = False_



_description: _















//----------------------

##void tessellateToOutline(const vector< ofPolyline > &src, int polyWindingMode, vector< ofPolyline > &dst, bool bIs2D=false)

_syntax: tessellateToOutline(const vector< ofPolyline > &src, int polyWindingMode, vector< ofPolyline > &dst, bool bIs2D=false)_

_name: tessellateToOutline_

_returns: void_

_parameters: const vector< , int, vector< , bool = False_



_description: _















//----------------------

##void tessellateToOutline(const ofPolyline &src, int polyWindingMode, vector< ofPolyline > &dst, bool bIs2D=false)

_syntax: tessellateToOutline(const ofPolyline &src, int polyWindingMode, vector< ofPolyline > &dst, bool bIs2D=false)_

_name: tessellateToOutline_

_returns: void_

_parameters: const , int, vector< , bool = False_



_description: _















//----------------------

##void tessellateToCache(const vector< ofPolyline > &src, int polyWindingMode, ofPath::tessCache &cache, bool bIs2D=false)

_syntax: tessellateToCache(const vector< ofPolyline > &src, int polyWindingMode, ofPath::tessCache &cache, bool bIs2D=false)_

_name: tessellateToCache_

_returns: void_

_parameters: const vector< , int, ofPath::tessCache &, bool = False_



_description: _















//----------------------

##void performTessellation(const vector< ofPolyline > &polylines, int polyWindingMode, bool bFilled, bool bIs2D)

_syntax: performTessellation(const vector< ofPolyline > &polylines, int polyWindingMode, bool bFilled, bool bIs2D)_

_name: performTessellation_

_returns: void_

_parameters: const vector< , int, bool, bool_



_description: _















//----------------------

##void init()

_syntax: init()_

_name: init_

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

##void CALLBACK error(GLenum)

_syntax: error(GLenum)_

_name: error_

_returns: void CALLBACK_

_parameters: GLenum_



_description: _















//----------------------

##void CALLBACK vertex(void *data)

_syntax: vertex(void *data)_

_name: vertex_

_returns: void CALLBACK_

_parameters: void *_



_description: _















//----------------------

##void CALLBACK combine(GLdouble coords[3], void *vertex_data[4], GLfloat weight[4], void **outData)

_syntax: combine(GLdouble coords[3], void *vertex_data[4], GLfloat weight[4], void **outData)_

_name: combine_

_returns: void CALLBACK_

_parameters: GLdouble, void *, GLfloat, void **_



_description: _















//----------------------

##void CALLBACK begin(GLint type)

_syntax: begin(GLint type)_

_name: begin_

_returns: void CALLBACK_

_parameters: GLint_



_description: _















//----------------------

##void CALLBACK end()

_syntax: end()_

_name: end_

_returns: void CALLBACK_

_parameters: _



_description: _















