<%inherit file="_templates/docs.mako" />
___ofPolyline___
$$code(lang=c++)
vector<  points
$$/code



$$code(lang=c++)
deque<  curveVertices
$$/code



$$code(lang=c++)
vector<  circlePoints
$$/code



$$code(lang=c++)
bool bClosed
$$/code



$$code(lang=c++)
bool bHasChanged
$$/code



$$code(lang=c++)
None ofPolyline()
$$/code



$$code(lang=c++)
None ofPolyline(const vector< ofPoint > &verts)
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
void addVertex(const ofPoint &p)
$$/code



$$code(lang=c++)
void addVertex(float x, float y, float z=0)
$$/code



$$code(lang=c++)
void addVertexes(const vector< ofPoint > &verts)
$$/code



$$code(lang=c++)
void addVertexes(const ofPoint *verts, int numverts)
$$/code



$$code(lang=c++)
void lineTo(const ofPoint &to)
$$/code



$$code(lang=c++)
void lineTo(float x, float y, float z=0)
$$/code



$$code(lang=c++)
void arc(const ofPoint &center, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)
$$/code



$$code(lang=c++)
void arc(float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)
$$/code



$$code(lang=c++)
void arc(float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20)
$$/code



$$code(lang=c++)
void curveTo(const ofPoint &to, int curveResolution=16)
$$/code



$$code(lang=c++)
void curveTo(float x, float y, float z=0, int curveResolution=16)
$$/code



$$code(lang=c++)
void bezierTo(const ofPoint &cp1, const ofPoint &cp2, const ofPoint &to, int curveResolution=16)
$$/code



$$code(lang=c++)
void bezierTo(float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=16)
$$/code



$$code(lang=c++)
void bezierTo(float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=16)
$$/code



$$code(lang=c++)
void quadBezierTo(float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=16)
$$/code



$$code(lang=c++)
void quadBezierTo(const ofPoint &p1, const ofPoint &p2, const ofPoint &p3, int curveResolution=16)
$$/code



$$code(lang=c++)
void quadBezierTo(float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=16)
$$/code



$$code(lang=c++)
None getSmoothed(int smoothingSize, float smoothingShape=0)
$$/code



$$code(lang=c++)
None getResampledBySpacing(float spacing)
$$/code



$$code(lang=c++)
None getResampledByCount(int count)
$$/code



$$code(lang=c++)
None getBoundingBox()
$$/code



$$code(lang=c++)
None getClosestPoint(const ofPoint &target, unsigned int *nearestIndex=NULL)
$$/code



$$code(lang=c++)
bool inside(float x, float y)
$$/code



$$code(lang=c++)
bool inside(const ofPoint &p)
$$/code



$$code(lang=c++)
void simplify(float tolerance=0.3)
$$/code



$$code(lang=c++)
size_t size() const 
$$/code



$$code(lang=c++)
const  operator[](int index) const 
$$/code



$$code(lang=c++)
None operator[](int index)
$$/code



$$code(lang=c++)
void resize(size_t size)
$$/code



$$code(lang=c++)
void setClosed(bool tf)
$$/code



$$code(lang=c++)
bool isClosed() const 
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
bool hasChanged()
$$/code



$$code(lang=c++)
vector<  getVertices()
$$/code



$$code(lang=c++)
float getPerimeter() const 
$$/code



$$code(lang=c++)
float getArea() const 
$$/code



$$code(lang=c++)
None getCentroid2D() const 
$$/code



$$code(lang=c++)
void draw()
$$/code



$$code(lang=c++)
bool inside(float x, float y, const ofPolyline &polyline)
$$/code



$$code(lang=c++)
bool inside(const ofPoint &p, const ofPolyline &polyline)
$$/code



$$code(lang=c++)
void setCircleResolution(int res)
$$/code



