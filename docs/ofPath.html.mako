<%inherit file="_templates/docs.mako" />
___ofPath___
$$code(lang=c++)
vector<  paths
$$/code



$$code(lang=c++)
None windingMode
$$/code



$$code(lang=c++)
None fillColor
$$/code



$$code(lang=c++)
None strokeColor
$$/code



$$code(lang=c++)
float strokeWidth
$$/code



$$code(lang=c++)
bool bFill
$$/code



$$code(lang=c++)
bool bUseShapeColor
$$/code



$$code(lang=c++)
vector<  polylines
$$/code



$$code(lang=c++)
vector<  tessellatedContour
$$/code



$$code(lang=c++)
None cachedTessellation
$$/code



$$code(lang=c++)
bool cachedTessellationValid
$$/code



$$code(lang=c++)
bool hasChanged
$$/code



$$code(lang=c++)
int prevCurveRes
$$/code



$$code(lang=c++)
int curveResolution
$$/code



$$code(lang=c++)
int arcResolution
$$/code



$$code(lang=c++)
bool bNeedsTessellation
$$/code



$$code(lang=c++)
None mode
$$/code



$$code(lang=c++)
None tessellator
$$/code



$$code(lang=c++)
None ofPath()
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
void newSubPath()
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
void lineTo(const ofPoint &p)
$$/code



$$code(lang=c++)
void lineTo(float x, float y)
$$/code



$$code(lang=c++)
void lineTo(float x, float y, float z)
$$/code



$$code(lang=c++)
void moveTo(const ofPoint &p)
$$/code



$$code(lang=c++)
void moveTo(float x, float y, float z=0)
$$/code



$$code(lang=c++)
void curveTo(const ofPoint &p)
$$/code



$$code(lang=c++)
void curveTo(float x, float y)
$$/code



$$code(lang=c++)
void curveTo(float x, float y, float z)
$$/code



$$code(lang=c++)
void bezierTo(const ofPoint &cp1, const ofPoint &cp2, const ofPoint &p)
$$/code



$$code(lang=c++)
void bezierTo(float cx1, float cy1, float cx2, float cy2, float x, float y)
$$/code



$$code(lang=c++)
void bezierTo(float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z)
$$/code



$$code(lang=c++)
void quadBezierTo(const ofPoint &cp1, const ofPoint &cp2, const ofPoint &p)
$$/code



$$code(lang=c++)
void quadBezierTo(float cx1, float cy1, float cx2, float cy2, float x, float y)
$$/code



$$code(lang=c++)
void quadBezierTo(float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z)
$$/code



$$code(lang=c++)
void arc(const ofPoint &centre, float radiusX, float radiusY, float angleBegin, float angleEnd)
$$/code



$$code(lang=c++)
void arc(float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd)
$$/code



$$code(lang=c++)
void arc(float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd)
$$/code



$$code(lang=c++)
void setPolyWindingMode(ofPolyWindingMode mode)
$$/code



$$code(lang=c++)
void setFilled(bool hasFill)
$$/code



$$code(lang=c++)
void setStrokeWidth(float width)
$$/code



$$code(lang=c++)
void setColor(const ofColor &color)
$$/code



$$code(lang=c++)
void setHexColor(int hex)
$$/code



$$code(lang=c++)
void setFillColor(const ofColor &color)
$$/code



$$code(lang=c++)
void setFillHexColor(int hex)
$$/code



$$code(lang=c++)
void setStrokeColor(const ofColor &color)
$$/code



$$code(lang=c++)
void setStrokeHexColor(int hex)
$$/code



$$code(lang=c++)
None getWindingMode() const 
$$/code



$$code(lang=c++)
bool isFilled() const 
$$/code



$$code(lang=c++)
None getFillColor() const 
$$/code



$$code(lang=c++)
None getStrokeColor() const 
$$/code



$$code(lang=c++)
float getStrokeWidth() const 
$$/code



$$code(lang=c++)
bool hasOutline() const 
$$/code



$$code(lang=c++)
void draw(float x, float y)
$$/code



$$code(lang=c++)
void draw()
$$/code



$$code(lang=c++)
vector<  getSubPaths()
$$/code



$$code(lang=c++)
const vector<  getSubPaths() const 
$$/code



$$code(lang=c++)
vector<  getOutline()
$$/code



$$code(lang=c++)
None getTessellation()
$$/code



$$code(lang=c++)
void simplify(float tolerance=0.3)
$$/code



$$code(lang=c++)
void flagShapeChanged()
$$/code



$$code(lang=c++)
void setMode(Mode mode)
$$/code



$$code(lang=c++)
void setCurveResolution(int curveResolution)
$$/code



$$code(lang=c++)
int getCurveResolution()
$$/code



$$code(lang=c++)
void setArcResolution(int res)
$$/code



$$code(lang=c++)
int getArcResolution()
$$/code



$$code(lang=c++)
void setUseShapeColor(bool useColor)
$$/code



$$code(lang=c++)
bool getUseShapeColor()
$$/code



$$code(lang=c++)
void tessellate()
$$/code



$$code(lang=c++)
void translate(const ofPoint &p)
$$/code



$$code(lang=c++)
void rotate(float az, const ofVec3f &axis)
$$/code



$$code(lang=c++)
void scale(float x, float y)
$$/code



$$code(lang=c++)
None lastPath()
$$/code



$$code(lang=c++)
None lastPolyline()
$$/code



$$code(lang=c++)
void generatePolylinesFromPaths()
$$/code



