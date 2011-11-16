<%inherit file="_templates/docs.mako" />
___ofCairoRenderer___
$$code(lang=c++)
deque<  curvePoints
$$/code



$$code(lang=c++)
cairo_t * cr
$$/code



$$code(lang=c++)
cairo_surface_t * surface
$$/code



$$code(lang=c++)
bool bBackgroundAuto
$$/code



$$code(lang=c++)
None bgColor
$$/code



$$code(lang=c++)
stack< cairo_matrix_t > matrixStack
$$/code



$$code(lang=c++)
cairo_matrix_t tmpMatrix
$$/code



$$code(lang=c++)
None type
$$/code



$$code(lang=c++)
int page
$$/code



$$code(lang=c++)
bool multiPage
$$/code



$$code(lang=c++)
bool b3D
$$/code



$$code(lang=c++)
None projection
$$/code



$$code(lang=c++)
None modelView
$$/code



$$code(lang=c++)
None viewportRect
$$/code



$$code(lang=c++)
stack<  projectionStack
$$/code



$$code(lang=c++)
stack<  modelViewStack
$$/code



$$code(lang=c++)
stack<  viewportStack
$$/code



$$code(lang=c++)
None bFilled
$$/code



$$code(lang=c++)
bool bSmoothHinted
$$/code



$$code(lang=c++)
None rectMode
$$/code



$$code(lang=c++)
None ofCairoRenderer()
$$/code



$$code(lang=c++)
None ~ofCairoRenderer()
$$/code



$$code(lang=c++)
string getType()
$$/code



$$code(lang=c++)
void setup(string filename, Type type=ofCairoRenderer::PDF, bool multiPage=true, bool b3D=false, ofRectangle viewport=ofRectangle(0, 0, 0, 0))
$$/code



$$code(lang=c++)
void close()
$$/code



$$code(lang=c++)
void update()
$$/code



$$code(lang=c++)
void draw(ofPath &shape)
$$/code



$$code(lang=c++)
void draw(ofSubPath &path)
$$/code



$$code(lang=c++)
void draw(ofPolyline &poly)
$$/code



$$code(lang=c++)
void draw(ofMesh &vertexData)
$$/code



$$code(lang=c++)
void draw(ofMesh &vertexData, ofPolyRenderMode mode)
$$/code



$$code(lang=c++)
void draw(vector< ofPoint > &vertexData, ofPrimitiveMode drawMode)
$$/code



$$code(lang=c++)
void draw(ofImage &img, float x, float y, float z, float w, float h)
$$/code



$$code(lang=c++)
void draw(ofFloatImage &image, float x, float y, float z, float w, float h)
$$/code



$$code(lang=c++)
void draw(ofShortImage &image, float x, float y, float z, float w, float h)
$$/code



$$code(lang=c++)
bool rendersPathPrimitives()
$$/code



$$code(lang=c++)
void pushView()
$$/code



$$code(lang=c++)
void popView()
$$/code



$$code(lang=c++)
void viewport(ofRectangle viewport)
$$/code



$$code(lang=c++)
void viewport(float x=0, float y=0, float width=0, float height=0, bool invertY=true)
$$/code



$$code(lang=c++)
void setupScreenPerspective(float width=0, float height=0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip=true, float fov=60, float nearDist=0, float farDist=0)
$$/code



$$code(lang=c++)
void setupScreenOrtho(float width=0, float height=0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip=true, float nearDist=-1, float farDist=1)
$$/code



$$code(lang=c++)
None getCurrentViewport()
$$/code



$$code(lang=c++)
int getViewportWidth()
$$/code



$$code(lang=c++)
int getViewportHeight()
$$/code



$$code(lang=c++)
void setCoordHandedness(ofHandednessType handedness)
$$/code



$$code(lang=c++)
None getCoordHandedness()
$$/code



$$code(lang=c++)
void setRectMode(ofRectMode mode)
$$/code



$$code(lang=c++)
None getRectMode()
$$/code



$$code(lang=c++)
void setFillMode(ofFillFlag fill)
$$/code



$$code(lang=c++)
None getFillMode()
$$/code



$$code(lang=c++)
void setLineWidth(float lineWidth)
$$/code



$$code(lang=c++)
void setBlendMode(ofBlendMode blendMode)
$$/code



$$code(lang=c++)
void setLineSmoothing(bool smooth)
$$/code



$$code(lang=c++)
void pushMatrix()
$$/code



$$code(lang=c++)
void popMatrix()
$$/code



$$code(lang=c++)
void translate(float x, float y, float z=0)
$$/code



$$code(lang=c++)
void translate(const ofPoint &p)
$$/code



$$code(lang=c++)
void scale(float xAmnt, float yAmnt, float zAmnt=1)
$$/code



$$code(lang=c++)
void rotate(float degrees, float vecX, float vecY, float vecZ)
$$/code



$$code(lang=c++)
void rotateX(float degrees)
$$/code



$$code(lang=c++)
void rotateY(float degrees)
$$/code



$$code(lang=c++)
void rotateZ(float degrees)
$$/code



$$code(lang=c++)
void rotate(float degrees)
$$/code



$$code(lang=c++)
void setupGraphicDefaults()
$$/code



$$code(lang=c++)
void setupScreen()
$$/code



$$code(lang=c++)
void setColor(int r, int g, int b)
$$/code



$$code(lang=c++)
void setColor(int r, int g, int b, int a)
$$/code



$$code(lang=c++)
void setColor(const ofColor &color)
$$/code



$$code(lang=c++)
void setColor(const ofColor &color, int _a)
$$/code



$$code(lang=c++)
void setColor(int gray)
$$/code



$$code(lang=c++)
void setHexColor(int hexColor)
$$/code



$$code(lang=c++)
None getBgColor()
$$/code



$$code(lang=c++)
bool bClearBg()
$$/code



$$code(lang=c++)
void background(const ofColor &c)
$$/code



$$code(lang=c++)
void background(float brightness)
$$/code



$$code(lang=c++)
void background(int hexColor, float _a=255.0f)
$$/code



$$code(lang=c++)
void background(int r, int g, int b, int a=255)
$$/code



$$code(lang=c++)
void setBackgroundAuto(bool bManual)
$$/code



$$code(lang=c++)
void clear(float r, float g, float b, float a=0)
$$/code



$$code(lang=c++)
void clear(float brightness, float a=0)
$$/code



$$code(lang=c++)
void clearAlpha()
$$/code



$$code(lang=c++)
void drawLine(float x1, float y1, float z1, float x2, float y2, float z2)
$$/code



$$code(lang=c++)
void drawRectangle(float x, float y, float z, float w, float h)
$$/code



$$code(lang=c++)
void drawTriangle(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3)
$$/code



$$code(lang=c++)
void drawCircle(float x, float y, float z, float radius)
$$/code



$$code(lang=c++)
void drawEllipse(float x, float y, float z, float width, float height)
$$/code



$$code(lang=c++)
void drawString(string text, float x, float y, float z, ofDrawBitmapMode mode)
$$/code



$$code(lang=c++)
cairo_t * getCairoContext()
$$/code



$$code(lang=c++)
cairo_surface_t * getCairoSurface()
$$/code



$$code(lang=c++)
cairo_matrix_t * getCairoMatrix()
$$/code



$$code(lang=c++)
void setCairoMatrix()
$$/code



$$code(lang=c++)
None transform(ofVec3f vec)
$$/code



