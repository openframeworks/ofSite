#class ofPolyline

Example



Reference



Methods



//----------------------

##None ofPolyline()

_syntax: ofPolyline()_

_name: ofPolyline_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ofPolyline(const vector< ofPoint > &verts)

_syntax: ofPolyline(const vector< ofPoint > &verts)_

_name: ofPolyline_

_returns: None_

_parameters: const vector< _



_description: _















//----------------------

##void clear()

_syntax: clear()_

_name: clear_

_returns: void_

_parameters: _



_description: _















//----------------------

##void addVertex(const ofPoint &p)

_syntax: addVertex(const ofPoint &p)_

_name: addVertex_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void addVertex(float x, float y, float z=0)

_syntax: addVertex(float x, float y, float z=0)_

_name: addVertex_

_returns: void_

_parameters: float, float, float = 0_



_description: _















//----------------------

##void addVertexes(const vector< ofPoint > &verts)

_syntax: addVertexes(const vector< ofPoint > &verts)_

_name: addVertexes_

_returns: void_

_parameters: const vector< _



_description: _















//----------------------

##void lineTo(const ofPoint &to)

_syntax: lineTo(const ofPoint &to)_

_name: lineTo_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void lineTo(float x, float y, float z=0)

_syntax: lineTo(float x, float y, float z=0)_

_name: lineTo_

_returns: void_

_parameters: float, float, float = 0_



_description: _















//----------------------

##void arc(const ofPoint &center, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)

_syntax: arc(const ofPoint &center, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)_

_name: arc_

_returns: void_

_parameters: const , float, float, float, float, int = 20_



_description: _















//----------------------

##void arc(float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)

_syntax: arc(float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)_

_name: arc_

_returns: void_

_parameters: float, float, float, float, float, float, int = 20_



_description: _















//----------------------

##void arc(float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)

_syntax: arc(float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)_

_name: arc_

_returns: void_

_parameters: float, float, float, float, float, float, float, int = 20_



_description: _















//----------------------

##void curveTo(const ofPoint &to, int curveResolution=16)

_syntax: curveTo(const ofPoint &to, int curveResolution=16)_

_name: curveTo_

_returns: void_

_parameters: const , int = 16_



_description: _















//----------------------

##void curveTo(float x, float y, float z=0, int curveResolution=16)

_syntax: curveTo(float x, float y, float z=0, int curveResolution=16)_

_name: curveTo_

_returns: void_

_parameters: float, float, float = 0, int = 16_



_description: _















//----------------------

##void bezierTo(const ofPoint &cp1, const ofPoint &cp2, const ofPoint &to, int curveResolution=16)

_syntax: bezierTo(const ofPoint &cp1, const ofPoint &cp2, const ofPoint &to, int curveResolution=16)_

_name: bezierTo_

_returns: void_

_parameters: const , const , const , int = 16_



_description: _















//----------------------

##void bezierTo(float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=16)

_syntax: bezierTo(float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=16)_

_name: bezierTo_

_returns: void_

_parameters: float, float, float, float, float, float, int = 16_



_description: _















//----------------------

##void bezierTo(float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=16)

_syntax: bezierTo(float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=16)_

_name: bezierTo_

_returns: void_

_parameters: float, float, float, float, float, float, float, float, float, int = 16_



_description: _















//----------------------

##void quadBezierTo(float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=16)

_syntax: quadBezierTo(float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=16)_

_name: quadBezierTo_

_returns: void_

_parameters: float, float, float, float, float, float, float, float, float, int = 16_



_description: _















//----------------------

##void quadBezierTo(const ofPoint &p1, const ofPoint &p2, const ofPoint &p3, int curveResolution=16)

_syntax: quadBezierTo(const ofPoint &p1, const ofPoint &p2, const ofPoint &p3, int curveResolution=16)_

_name: quadBezierTo_

_returns: void_

_parameters: const , const , const , int = 16_



_description: _















//----------------------

##void quadBezierTo(float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=16)

_syntax: quadBezierTo(float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=16)_

_name: quadBezierTo_

_returns: void_

_parameters: float, float, float, float, float, float, int = 16_



_description: _















//----------------------

##void simplify(float tolerance=0.3)

_syntax: simplify(float tolerance=0.3)_

_name: simplify_

_returns: void_

_parameters: float = 0.3_



_description: _















//----------------------

##size_t size() const 

_syntax: size() const _

_name: size_

_returns: size_t_

_parameters: _



_description: _















//----------------------

##ofPoint operator[](int index) const 

_syntax: operator[](int index) const _

_name: operator[]_

_returns: ofPoint_

_parameters: int_



_description: _















//----------------------

##void setClosed(bool tf)

_syntax: setClosed(bool tf)_

_name: setClosed_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##bool isClosed() const 

_syntax: isClosed() const _

_name: isClosed_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool hasChanged()

_syntax: hasChanged()_

_name: hasChanged_

_returns: bool_

_parameters: _



_description: _















//----------------------

##ofPoint getVertices()

_syntax: getVertices()_

_name: getVertices_

_returns: ofPoint_

_parameters: _



_description: _















//----------------------

##float getPerimeter() const 

_syntax: getPerimeter() const _

_name: getPerimeter_

_returns: float_

_parameters: _



_description: _















//----------------------

##void setCircleResolution(int res)

_syntax: setCircleResolution(int res)_

_name: setCircleResolution_

_returns: void_

_parameters: int_



_description: _















