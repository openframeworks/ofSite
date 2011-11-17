#class ofRendererCollection

Example



Reference



Methods



//----------------------

##None ~ofRendererCollection()

_syntax: ~ofRendererCollection()_

_name: ~ofRendererCollection_

_returns: None_

_parameters: _



_description: _















//----------------------

##bool rendersPathPrimitives()

_syntax: rendersPathPrimitives()_

_name: rendersPathPrimitives_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void draw(ofPolyline &poly)

_syntax: draw(ofPolyline &poly)_

_name: draw_

_returns: void_

_parameters: _



_description: _















//----------------------

##void draw(vector< ofPoint > &vertexData, ofPrimitiveMode drawMode)

_syntax: draw(vector< ofPoint > &vertexData, ofPrimitiveMode drawMode)_

_name: draw_

_returns: void_

_parameters: vector< , _



_description: _















//----------------------

##void draw(ofImage &img, float x, float y, float z, float w, float h)

_syntax: draw(ofImage &img, float x, float y, float z, float w, float h)_

_name: draw_

_returns: void_

_parameters: float, float, float, float, float_



_description: _















//----------------------

##void pushView()

_syntax: pushView()_

_name: pushView_

_returns: void_

_parameters: _



_description: _















//----------------------

##void popView()

_syntax: popView()_

_name: popView_

_returns: void_

_parameters: _



_description: _















//----------------------

##void viewport(ofRectangle viewport)

_syntax: viewport(ofRectangle viewport)_

_name: viewport_

_returns: void_

_parameters: _



_description: _















//----------------------

##void viewport(float x=0, float y=0, float width=0, float height=0, bool invertY=true)

_syntax: viewport(float x=0, float y=0, float width=0, float height=0, bool invertY=true)_

_name: viewport_

_returns: void_

_parameters: float = 0, float = 0, float = 0, float = 0, bool = True_



_description: _















//----------------------

##void setupScreenPerspective(float width=0, float height=0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip=true, float fov=60, float nearDist=0, float farDist=0)

_syntax: setupScreenPerspective(float width=0, float height=0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip=true, float fov=60, float nearDist=0, float farDist=0)_

_name: setupScreenPerspective_

_returns: void_

_parameters: float = 0, float = 0,  = OF_ORIENTATION_UNKNOWN, bool = True, float = 60, float = 0, float = 0_



_description: _















//----------------------

##void setupScreenOrtho(float width=0, float height=0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip=true, float nearDist=-1, float farDist=1)

_syntax: setupScreenOrtho(float width=0, float height=0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip=true, float nearDist=-1, float farDist=1)_

_name: setupScreenOrtho_

_returns: void_

_parameters: float = 0, float = 0,  = OF_ORIENTATION_UNKNOWN, bool = True, float = -1, float = 1_



_description: _















//----------------------

##ofRectangle getCurrentViewport()

_syntax: getCurrentViewport()_

_name: getCurrentViewport_

_returns: ofRectangle_

_parameters: _



_description: _















//----------------------

##int getViewportWidth()

_syntax: getViewportWidth()_

_name: getViewportWidth_

_returns: int_

_parameters: _



_description: _















//----------------------

##int getViewportHeight()

_syntax: getViewportHeight()_

_name: getViewportHeight_

_returns: int_

_parameters: _



_description: _















//----------------------

##void setCoordHandedness(ofHandednessType handedness)

_syntax: setCoordHandedness(ofHandednessType handedness)_

_name: setCoordHandedness_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofHandednessType getCoordHandedness()

_syntax: getCoordHandedness()_

_name: getCoordHandedness_

_returns: ofHandednessType_

_parameters: _



_description: _















//----------------------

##void pushMatrix()

_syntax: pushMatrix()_

_name: pushMatrix_

_returns: void_

_parameters: _



_description: _















//----------------------

##void popMatrix()

_syntax: popMatrix()_

_name: popMatrix_

_returns: void_

_parameters: _



_description: _















//----------------------

##void translate(float x, float y, float z=0)

_syntax: translate(float x, float y, float z=0)_

_name: translate_

_returns: void_

_parameters: float, float, float = 0_



_description: _















//----------------------

##void translate(const ofPoint &p)

_syntax: translate(const ofPoint &p)_

_name: translate_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void scale(float xAmnt, float yAmnt, float zAmnt=1)

_syntax: scale(float xAmnt, float yAmnt, float zAmnt=1)_

_name: scale_

_returns: void_

_parameters: float, float, float = 1_



_description: _















//----------------------

##void rotate(float degrees, float vecX, float vecY, float vecZ)

_syntax: rotate(float degrees, float vecX, float vecY, float vecZ)_

_name: rotate_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void rotateX(float degrees)

_syntax: rotateX(float degrees)_

_name: rotateX_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void rotateY(float degrees)

_syntax: rotateY(float degrees)_

_name: rotateY_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void rotateZ(float degrees)

_syntax: rotateZ(float degrees)_

_name: rotateZ_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void rotate(float degrees)

_syntax: rotate(float degrees)_

_name: rotate_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setupGraphicDefaults()

_syntax: setupGraphicDefaults()_

_name: setupGraphicDefaults_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setupScreen()

_syntax: setupScreen()_

_name: setupScreen_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setColor(int r, int g, int b)

_syntax: setColor(int r, int g, int b)_

_name: setColor_

_returns: void_

_parameters: int, int, int_



_description: _















//----------------------

##void setColor(int r, int g, int b, int a)

_syntax: setColor(int r, int g, int b, int a)_

_name: setColor_

_returns: void_

_parameters: int, int, int, int_



_description: _















//----------------------

##void setColor(const ofColor &color)

_syntax: setColor(const ofColor &color)_

_name: setColor_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void setColor(const ofColor &color, int _a)

_syntax: setColor(const ofColor &color, int _a)_

_name: setColor_

_returns: void_

_parameters: const , int_



_description: _















//----------------------

##void setColor(int gray)

_syntax: setColor(int gray)_

_name: setColor_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void setHexColor(int hexColor)

_syntax: setHexColor(int hexColor)_

_name: setHexColor_

_returns: void_

_parameters: int_



_description: _















//----------------------

##ofColor getBgColor()

_syntax: getBgColor()_

_name: getBgColor_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##bool bClearBg()

_syntax: bClearBg()_

_name: bClearBg_

_returns: bool_

_parameters: _



_description: _















//----------------------

##void background(const ofColor &c)

_syntax: background(const ofColor &c)_

_name: background_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void background(float brightness)

_syntax: background(float brightness)_

_name: background_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void background(int hexColor, float _a=255.0f)

_syntax: background(int hexColor, float _a=255.0f)_

_name: background_

_returns: void_

_parameters: int, float = 255.0f_



_description: _















//----------------------

##void background(int r, int g, int b, int a=255)

_syntax: background(int r, int g, int b, int a=255)_

_name: background_

_returns: void_

_parameters: int, int, int, int = 255_



_description: _















//----------------------

##void setBackgroundAuto(bool bManual)

_syntax: setBackgroundAuto(bool bManual)_

_name: setBackgroundAuto_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void clear(float r, float g, float b, float a=0)

_syntax: clear(float r, float g, float b, float a=0)_

_name: clear_

_returns: void_

_parameters: float, float, float, float = 0_



_description: _















//----------------------

##void clear(float brightness, float a=0)

_syntax: clear(float brightness, float a=0)_

_name: clear_

_returns: void_

_parameters: float, float = 0_



_description: _















//----------------------

##void clearAlpha()

_syntax: clearAlpha()_

_name: clearAlpha_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setRectMode(ofRectMode mode)

_syntax: setRectMode(ofRectMode mode)_

_name: setRectMode_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofRectMode getRectMode()

_syntax: getRectMode()_

_name: getRectMode_

_returns: ofRectMode_

_parameters: _



_description: _















//----------------------

##void setFillMode(ofFillFlag fill)

_syntax: setFillMode(ofFillFlag fill)_

_name: setFillMode_

_returns: void_

_parameters: _



_description: _















//----------------------

##ofFillFlag getFillMode()

_syntax: getFillMode()_

_name: getFillMode_

_returns: ofFillFlag_

_parameters: _



_description: _















//----------------------

##void setLineWidth(float lineWidth)

_syntax: setLineWidth(float lineWidth)_

_name: setLineWidth_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setBlendMode(ofBlendMode blendMode)

_syntax: setBlendMode(ofBlendMode blendMode)_

_name: setBlendMode_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setLineSmoothing(bool smooth)

_syntax: setLineSmoothing(bool smooth)_

_name: setLineSmoothing_

_returns: void_

_parameters: bool_



_description: _















//----------------------

##void setCircleResolution(int res)

_syntax: setCircleResolution(int res)_

_name: setCircleResolution_

_returns: void_

_parameters: int_



_description: _















//----------------------

##void enablePointSprites()

_syntax: enablePointSprites()_

_name: enablePointSprites_

_returns: void_

_parameters: _



_description: _















//----------------------

##void disablePointSprites()

_syntax: disablePointSprites()_

_name: disablePointSprites_

_returns: void_

_parameters: _



_description: _















//----------------------

##void drawLine(float x1, float y1, float z1, float x2, float y2, float z2)

_syntax: drawLine(float x1, float y1, float z1, float x2, float y2, float z2)_

_name: drawLine_

_returns: void_

_parameters: float, float, float, float, float, float_



_description: _















//----------------------

##void drawRectangle(float x, float y, float z, float w, float h)

_syntax: drawRectangle(float x, float y, float z, float w, float h)_

_name: drawRectangle_

_returns: void_

_parameters: float, float, float, float, float_



_description: _















//----------------------

##void drawTriangle(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3)

_syntax: drawTriangle(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3)_

_name: drawTriangle_

_returns: void_

_parameters: float, float, float, float, float, float, float, float, float_



_description: _















//----------------------

##void drawCircle(float x, float y, float z, float radius)

_syntax: drawCircle(float x, float y, float z, float radius)_

_name: drawCircle_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void drawEllipse(float x, float y, float z, float width, float height)

_syntax: drawEllipse(float x, float y, float z, float width, float height)_

_name: drawEllipse_

_returns: void_

_parameters: float, float, float, float, float_



_description: _















//----------------------

##void drawString(string text, float x, float y, float z, ofDrawBitmapMode mode)

_syntax: drawString(string text, float x, float y, float z, ofDrawBitmapMode mode)_

_name: drawString_

_returns: void_

_parameters: string, float, float, float, _



_description: _















