#functions

##Description





<!----------------------------------------------------------------------------->

###void ofBackground(r,g,b)

<!--
_syntax: ofBackground(r,g,b)_
_name: ofBackground_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the background color. It takes as input r,g,b (0-255). The background is cleared automatically, just before the draw() command, so if the background color is not changing, you could call this inside of setup() (once, at the start of the application). If the background color is changing, you can call this inside of update().






<!----------------------------------------------------------------------------->

###float * ofBgColorPtr()

<!--
_syntax: ofBgColorPtr()_
_name: ofBgColorPtr_
_returns: float *_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Gets the background color.
eg:
<pre class="brush: cpp">

float * bgColor = ofBgColorPtr();
//lets get the individual values!
float r = bgColor[0];
float g = bgColor[1];
float b = bgColor[2];
float a = bgColor[3];
</pre>






<!----------------------------------------------------------------------------->

###void ofSetBackgroundAuto(bAuto)

<!--
_syntax: ofSetBackgroundAuto(bAuto)_
_name: ofSetBackgroundAuto_
_returns: void_
_returns_description: _
_parameters: bool bAuto_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the background clearing function to be auto (default) or not. If non-auto, then background clearing will not occur per frame (at the start of draw) but rather, whenever ofBackground is called.






<!----------------------------------------------------------------------------->

###bool ofbClearBg()

<!--
_syntax: ofbClearBg()_
_name: ofbClearBg_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Tells you if background clearing is set to be automatic or manual






<!----------------------------------------------------------------------------->

###void ofSetCircleResolution(res)

<!--
_syntax: ofSetCircleResolution(res)_
_name: ofSetCircleResolution_
_returns: void_
_returns_description: _
_parameters: int res_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the resolution for the ofCircle command. By default, the circle is 22 points, but if you need to draw larger circles, you can adjust the resolution using this command. all circles are cached in opengl using a display list for optimization purposes.






<!----------------------------------------------------------------------------->

###void ofSetRectMode(mode)

<!--
_syntax: ofSetRectMode(mode)_
_name: ofSetRectMode_
_returns: void_
_returns_description: _
_parameters: int mode_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the mode for drawing rectangles, if they are corner aligned, or drawn so that the x,y position is the center of the rectangle. possible options are OF_RECTMODE_CENTER and OF_RECTMODE_CORNER.






<!----------------------------------------------------------------------------->

###ofRectMode ofGetRectMode()

<!--
_syntax: ofGetRectMode()_
_name: ofGetRectMode_
_returns: ofRectMode_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Tells you if rect drawing mode is set to drawn from the center or drawn from the top left corner.






<!----------------------------------------------------------------------------->

###void ofRect(x1,y1,w,h)

<!--
_syntax: ofRect(x1,y1,w,h)_
_name: ofRect_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float w, float h_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draws an rectangle from point x,y with a given width and height. 






<!----------------------------------------------------------------------------->

###void ofTriangle(x1,y1,x2,y2,x3,y3)

<!--
_syntax: ofTriangle(x1,y1,x2,y2,x3,y3)_
_name: ofTriangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2, float x3, float y3_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draws a triangle, with the three points: (x1,y1),(x2, y2),(x3, y3). 






<!----------------------------------------------------------------------------->

###void ofCircle(x,y,radius)

<!--
_syntax: ofCircle(x,y,radius)_
_name: ofCircle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draws a circle, centered at x,y, with a given radius.






<!----------------------------------------------------------------------------->

###void ofEllipse(x,y,w,h)

<!--
_syntax: ofEllipse(x,y,w,h)_
_name: ofEllipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draws an ellipse from point (x,y) with a given width (w) and height (h).






<!----------------------------------------------------------------------------->

###void ofLine(x1,y1,x2,y2)

<!--
_syntax: ofLine(x1,y1,x2,y2)_
_name: ofLine_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draws a line between two points: (x1,y1),(x2,y2). 






<!----------------------------------------------------------------------------->

###void ofCurve(x0,y0,x1,y1,x2,y2,x3,y3)

<!--
_syntax: ofCurve(x0,y0,x1,y1,x2,y2,x3,y3)_
_name: ofCurve_
_returns: void_
_returns_description: _
_parameters: float x0, float y0, float x1, float y1, float x2, float y2, float x3, float y3_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draws a curve from point (x1, y1) to point (x2, y2). The curve is shaped by the two control points (x0,y0) and (x3,y3).






<!----------------------------------------------------------------------------->

###void ofBezier(x0,y0,x1,y1,x2,y2,x3,y3)

<!--
_syntax: ofBezier(x0,y0,x1,y1,x2,y2,x3,y3)_
_name: ofBezier_
_returns: void_
_returns_description: _
_parameters: float x0, float y0, float x1, float y1, float x2, float y2, float x3, float y3_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draws a bezier curve from point (x0, y0) to point (x3, y3). The curve is shaped by the two control points (x1,y1) and (x2,y2) in a way where they are the respective tangents for the line at either ends.






<!----------------------------------------------------------------------------->

###void ofSetPolyMode(mode)

<!--
_syntax: ofSetPolyMode(mode)_
_name: ofSetPolyMode_
_returns: void_
_returns_description: _
_parameters: int mode_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the drawing behavior for ovelapping parts of the same polygon. Possible modes are:
OF_POLY_WINDING_ODD -
OF_POLY_WINDING_NONZERO -
OF_POLY_WINDING_POSITIVE -
OF_POLY_WINDING_NEGATIVE -
OF_POLY_WINDING_ABS_GEQ_TWO -






<!----------------------------------------------------------------------------->

###void ofBeginShape()

<!--
_syntax: ofBeginShape()_
_name: ofBeginShape_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Call this to start drawing a new shape. Needs to be followed by a list of vertex points and lastly a call to ofEndShape().
<pre class="brush: cpp">

//draws a star
ofSetPolyMode(OF_POLY_WINDING_NONZERO);
ofBeginShape();
  ofVertex(400,135);
  ofVertex(215,135);
  ofVertex(365,25);
  ofVertex(305,200);
  ofVertex(250,25);
ofEndShape();
</pre>






<!----------------------------------------------------------------------------->

###void ofVertex(x,y)

<!--
_syntax: ofVertex(x,y)_
_name: ofVertex_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Specifies a single point of a shape. To be called between ofBeginShape() and ofEndShape(). 






<!----------------------------------------------------------------------------->

###void ofCurveVertex(x,y)

<!--
_syntax: ofCurveVertex(x,y)_
_name: ofCurveVertex_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Specifies a single point of a shape. The difference from ofVertex is that the line describing the edge of the shape between two points will be a curve as opposed to a straight line. The curve is automatically generated using the catmull rom forumla. To be called between ofBeginShape() and ofEndShape().






<!----------------------------------------------------------------------------->

###void ofBezierVertex(x1,y1,x2,y2,x3,y3)

<!--
_syntax: ofBezierVertex(x1,y1,x2,y2,x3,y3)_
_name: ofBezierVertex_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2, float x3, float y3_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Describes a bezier curve through three points of a shape. To be called between ofBeginShape() and ofEndShape(). 






<!----------------------------------------------------------------------------->

###void ofNextContour(bClose)

<!--
_syntax: ofNextContour(bClose)_
_name: ofNextContour_
_returns: void_
_returns_description: _
_parameters: bool bClose_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Allows you to draw multiple contours within one shape. Call this between ofBeginShape() and ofEndShape() to create a new contour for your shape. If you set the optional argument 'bClose' to true then the previous contour will be automatically closed. 'bClose' is set to false by default.






<!----------------------------------------------------------------------------->

###void ofEndShape(bClose)

<!--
_syntax: ofEndShape(bClose)_
_name: ofEndShape_
_returns: void_
_returns_description: _
_parameters: bool bClose_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

This tells the program that your shape is finished and that it should now draw it to the screen. If you set the optional 'bClose' argument to true it will automatically close your shape for you.'bClose' is set to false by default. This function must be called otherwise you will not see your shape.






<!----------------------------------------------------------------------------->

###void ofNoFill()

<!--
_syntax: ofNoFill()_
_name: ofNoFill_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draw shapes as outlines with the current draw color. 






<!----------------------------------------------------------------------------->

###void ofFill()

<!--
_syntax: ofFill()_
_name: ofFill_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draw shapes filled with the current draw color. 






<!----------------------------------------------------------------------------->

###void ofSetColor(r,g,b)

<!--
_syntax: ofSetColor(r,g,b)_
_name: ofSetColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the draw color with r,g,b, 0-255. For example, red (0xff0000) would be: ofSetColor(255,0,0).






<!----------------------------------------------------------------------------->

###void ofSetColor(r,g,b,a)

<!--
_syntax: ofSetColor(r,g,b,a)_
_name: ofSetColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

sets the draw color with r,g,b,a 0-255. For alpha (transparency), you must first enable transparent blending (turned off by default for performance reasons), and draw in the proper z-order (objects in the back drawn first). For example, to draw a transparent red rectangle: 
<pre class="brush: cpp">

ofEnableAlphaBlending();	// turn on alpha blending
ofSetColor(255,0,0,127);	// red, 50% transparent
ofRect(20,20,100,100);
ofDisableAlphaBlending();	// turn it back off, if you don't need it
</pre>






<!----------------------------------------------------------------------------->

###void ofSetColor(hexColor)

<!--
_syntax: ofSetColor(hexColor)_
_name: ofSetColor_
_returns: void_
_returns_description: _
_parameters: int hexColor_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Sets the draw color with r,g,b, passed in as a hex. Hex is a conventient way to write colors. Some examples:
<pre class="brush: cpp">

ofSetColor(0xffffff);  // white  (255,255,255)
ofSetColor(0x000000);  // black  (0,0,0);
ofSetColor(0x00ff00);  // green  (0,255,0);
</pre>






<!----------------------------------------------------------------------------->

###void ofEnableAlphaBlending()

<!--
_syntax: ofEnableAlphaBlending()_
_name: ofEnableAlphaBlending_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Turns on alpha blending, which is off by default for performance purposes. It simply wraps opengl commands that enable blending, and turn on a common blend mode.






<!----------------------------------------------------------------------------->

###void ofDisableAlphaBlending()

<!--
_syntax: ofDisableAlphaBlending()_
_name: ofDisableAlphaBlending_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Turns off alpha blending. 






<!----------------------------------------------------------------------------->

###void ofEnableSmoothing()

<!--
_syntax: ofEnableSmoothing()_
_name: ofEnableSmoothing_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Turns on smoothing. Currently, this only works for lines. You can draw a filled object, and then draw the outline with smoothing enabled to get smoothing effects on filled shapes.






<!----------------------------------------------------------------------------->

###void ofDisableSmoothing()

<!--
_syntax: ofDisableSmoothing()_
_name: ofDisableSmoothing_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Turns off smoothing. Currently, this only works for lines. You can draw a filled object, and then draw the outline with smoothing enabled to get smoothing effects on filled shapes.






<!----------------------------------------------------------------------------->

###void ofDrawBitmapString(str,x,y)

<!--
_syntax: ofDrawBitmapString(str,x,y)_
_name: ofDrawBitmapString_
_returns: void_
_returns_description: _
_parameters: string str, float x, float y_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

Draws a bitmapped string, on screen, at point (x,y). For example, you can write some text on screen like this:
<pre class="brush: cpp">

ofDrawBitmapString("hi!!", 100,100);
</pre>

Your strings can even be multiline:
<pre class="brush: cpp">

ofDrawBitmapString("a test
of multiline
text", 100,100);
</pre>

you can also using dynamically generated strings. For example, to print the frame rate:
<pre class="brush: cpp">

string fpsStr = "frame rate: "+ofToString(ofGetFrameRate(), 2);
ofDrawBitmapString(fpsStr, 100,100);
</pre>

Please note, ofDrawBitmapString wraps a glut function that uses glDrawPixels. On some graphics cards, you may discover that glDrawPixels is slow (or even, very slow). If so, you might want to invsetigate using ofTrueTypeFont with a small typeface, non-anti-aliased, as a suitable alternative.






<!----------------------------------------------------------------------------->

###void ofRotate(degrees,vecX,vecY,vecZ)

<!--
_syntax: ofRotate(degrees,vecX,vecY,vecZ)_
_name: ofRotate_
_returns: void_
_returns_description: _
_parameters: float degrees, float vecX, float vecY, float vecZ_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofRotate produces a rotation of angle "degrees"	around the vector (vecX,vecY,vecZ).
"degrees"specifies the angle of rotation, in degrees. vecX, vecY, vecZ specify the x,	y, and z coordinates of	a vector, respectively.
All graphics drawn after ofRotate is called are rotated.  Use ofPushMatrix and ofPopMatrix to save and restore the unrotated coordinate system.






<!----------------------------------------------------------------------------->

###void ofRotateX(degrees)

<!--
_syntax: ofRotateX(degrees)_
_name: ofRotateX_
_returns: void_
_returns_description: _
_parameters: float degrees_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofRotateX produces a rotation of angle "degrees" around the X-axis of our coordinate system represented by the vector (1,0,0)."degrees"specifies the angle of rotation, in degrees.






<!----------------------------------------------------------------------------->

###void ofRotateY(degrees)

<!--
_syntax: ofRotateY(degrees)_
_name: ofRotateY_
_returns: void_
_returns_description: _
_parameters: float degrees_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofRotateY produces a rotation of angle "degrees" around the Y-axis of our coordinate system represented by the vector (0,1,0).
"degrees"specifies the angle of rotation, in degrees.






<!----------------------------------------------------------------------------->

###void ofRotateZ(degrees)

<!--
_syntax: ofRotateZ(degrees)_
_name: ofRotateZ_
_returns: void_
_returns_description: _
_parameters: float degrees_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofRotateZ produces a rotation of angle "degrees" around the Z-axis of our coordinate system represented by the vector (0,0,1).
"degrees"specifies the angle of rotation, in degrees.






<!----------------------------------------------------------------------------->

###void ofPushStyle()

<!--
_syntax: ofPushStyle()_
_name: ofPushStyle_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofPushStyle saves the current style settings for the ofGraphics after its call. Usage of ofPushStyle and ofPopStyle allow users to have more control of certain graphics elements. All the style that applies to certain elements is controled using ofStyle class. See ofStyle type.

In the following example the properties of being red and filled only applies to the ellipse:

<pre class="brush: cpp">


void testApp::draw(){

ofCircle(10,10,5);

ofPushStyle();
ofFill();
ofsetColor(255,0,0);
ofEllipse(30,10,40,40);
ofPopStyle();
}    
</pre>







<!----------------------------------------------------------------------------->

###void ofPopStyle()

<!--
_syntax: ofPopStyle()_
_name: ofPopStyle_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofPopStyle() restores the prior style settings. It needs to be called after ofPushStyle. See ofPushStyle for more info.






<!----------------------------------------------------------------------------->

###void ofSetStyle(style)

<!--
_syntax: ofSetStyle(style)_
_name: ofSetStyle_
_returns: void_
_returns_description: _
_parameters: ofStyle style_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

We use ofSetStyle to set the current style of the ofGraphics. Parameter style contains information of the graphics style such as ofColor, ofFill, polyMode and others. See ofStyle for more details. 






<!----------------------------------------------------------------------------->

###ofStyle ofGetStyle()

<!--
_syntax: ofGetStyle()_
_name: ofGetStyle_
_returns: ofStyle_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetLineWidth(lineWidth)

<!--
_syntax: ofSetLineWidth(lineWidth)_
_name: ofSetLineWidth_
_returns: void_
_returns_description: _
_parameters: float lineWidth_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofSetLineWidth sets the width of the ofLines called after.






<!----------------------------------------------------------------------------->

###void ofPushMatrix()

<!--
_syntax: ofPushMatrix()_
_name: ofPushMatrix_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofPushMatrix saves the current coordinate system allowing users to develop specific movements in some graphic objects. ofPopMatrix needs to be called after.
In the following example we only rotate the square.

<pre class="brush: cpp">

void testApp::draw(){
	
	ofCircle(10, 10, 5);
	ofPushMatrix();
	ofRotateX(90);
	ofRect(10,10,40,40);
	ofPopMatrix()
}
</pre>






<!----------------------------------------------------------------------------->

###void ofPopMatrix()

<!--
_syntax: ofPopMatrix()_
_name: ofPopMatrix_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofPopMatrix() restores the prior coordinate system. See ofPushMatrix for more info.






<!----------------------------------------------------------------------------->

###void ofTranslate(x,y,z)

<!--
_syntax: ofTranslate(x,y,z)_
_name: ofTranslate_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofTranslate produces a translation by (x,y,z) vector of our coordinate system. The call of ofTranslate modifies graphics positions.
Use ofPushMatrix and ofPopMatrix to save and restore the untranslated coordinate system.







<!----------------------------------------------------------------------------->

###void ofScale(xAmnt,yAmnt,zAmnt)

<!--
_syntax: ofScale(xAmnt,yAmnt,zAmnt)_
_name: ofScale_
_returns: void_
_returns_description: _
_parameters: float xAmnt, float yAmnt, float zAmnt_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

ofScale produces a nonuniform scaling along the x, y, and z axes. The three parameters xAmnt, yAmnt and zAmnt indicate the desired scale factor along each of the three axes.
e.g:
<pre class="brush: cpp">

void testApp::draw(){

	ofScale(0.5,1,1);
	ofRect(10,10,40,40);	
}
</pre>


Rectangle width will be now 20px!






<!----------------------------------------------------------------------------->

###void ofSetupGraphicDefaults()

<!--
_syntax: ofSetupGraphicDefaults()_
_name: ofSetupGraphicDefaults_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _

Resets openGL parameters back to OF defaults.






<!----------------------------------------------------------------------------->

###void ofEnableArbTex()

<!--
_syntax: ofEnableArbTex()_
_name: ofEnableArbTex_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_description: _

ofEnableArbText enables the use of ARB textures. ARB textures enable the creation of non power of 2 sized textures.






<!----------------------------------------------------------------------------->

###void ofSetCurrentRenderer(renderer)

<!--
_syntax: ofSetCurrentRenderer(renderer)_
_name: ofSetCurrentRenderer_
_returns: void_
_returns_description: _
_parameters: ofPtr< ofBaseRenderer > renderer_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofPtr ofGetCurrentRenderer()

<!--
_syntax: ofGetCurrentRenderer()_
_name: ofGetCurrentRenderer_
_returns: ofPtr_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofPtr ofGetGLRenderer()

<!--
_syntax: ofGetGLRenderer()_
_name: ofGetGLRenderer_
_returns: ofPtr_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBeginSaveScreenAsPDF(filename, bMultipage = false, b3D = false, viewport = ofRectangle(0, 0, 0, 0))

<!--
_syntax: ofBeginSaveScreenAsPDF(filename, bMultipage = false, b3D = false, viewport = ofRectangle(0, 0, 0, 0))_
_name: ofBeginSaveScreenAsPDF_
_returns: void_
_returns_description: _
_parameters: string filename, bool bMultipage=false, bool b3D=false, ofRectangle viewport=ofRectangle(0, 0, 0, 0)_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEndSaveScreenAsPDF()

<!--
_syntax: ofEndSaveScreenAsPDF()_
_name: ofEndSaveScreenAsPDF_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofGetUsingArbTex()

<!--
_syntax: ofGetUsingArbTex()_
_name: ofGetUsingArbTex_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofDisableArbTex()

<!--
_syntax: ofDisableArbTex()_
_name: ofDisableArbTex_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofGetUsingNormalizedTexCoords()

<!--
_syntax: ofGetUsingNormalizedTexCoords()_
_name: ofGetUsingNormalizedTexCoords_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEnableNormalizedTexCoords()

<!--
_syntax: ofEnableNormalizedTexCoords()_
_name: ofEnableNormalizedTexCoords_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofDisableNormalizedTexCoords()

<!--
_syntax: ofDisableNormalizedTexCoords()_
_name: ofDisableNormalizedTexCoords_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetTextureWrap(wrapS = GL_CLAMP_TO_EDGE, wrapT = GL_CLAMP_TO_EDGE)

<!--
_syntax: ofSetTextureWrap(wrapS = GL_CLAMP_TO_EDGE, wrapT = GL_CLAMP_TO_EDGE)_
_name: ofSetTextureWrap_
_returns: void_
_returns_description: _
_parameters: GLfloat wrapS=GL_CLAMP_TO_EDGE, GLfloat wrapT=GL_CLAMP_TO_EDGE_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofGetUsingCustomTextureWrap()

<!--
_syntax: ofGetUsingCustomTextureWrap()_
_name: ofGetUsingCustomTextureWrap_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRestoreTextureWrap()

<!--
_syntax: ofRestoreTextureWrap()_
_name: ofRestoreTextureWrap_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetMinMagFilters(minFilter = GL_LINEAR, maxFilter = GL_LINEAR)

<!--
_syntax: ofSetMinMagFilters(minFilter = GL_LINEAR, maxFilter = GL_LINEAR)_
_name: ofSetMinMagFilters_
_returns: void_
_returns_description: _
_parameters: GLfloat minFilter=GL_LINEAR, GLfloat maxFilter=GL_LINEAR_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###bool ofGetUsingCustomMinMagFilters()

<!--
_syntax: ofGetUsingCustomMinMagFilters()_
_name: ofGetUsingCustomMinMagFilters_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRestoreMinMagFilters()

<!--
_syntax: ofRestoreMinMagFilters()_
_name: ofRestoreMinMagFilters_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofPushView()

<!--
_syntax: ofPushView()_
_name: ofPushView_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofPopView()

<!--
_syntax: ofPopView()_
_name: ofPopView_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofViewport(viewport)

<!--
_syntax: ofViewport(viewport)_
_name: ofViewport_
_returns: void_
_returns_description: _
_parameters: ofRectangle viewport_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofViewport(x = 0, y = 0, width = 0, height = 0, invertY = true)

<!--
_syntax: ofViewport(x = 0, y = 0, width = 0, height = 0, invertY = true)_
_name: ofViewport_
_returns: void_
_returns_description: _
_parameters: float x=0, float y=0, float width=0, float height=0, bool invertY=true_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetupScreenPerspective(width = 0, height = 0, orientation = OF_ORIENTATION_UNKNOWN, vFlip = true, fov = 60, nearDist = 0, farDist = 0)

<!--
_syntax: ofSetupScreenPerspective(width = 0, height = 0, orientation = OF_ORIENTATION_UNKNOWN, vFlip = true, fov = 60, nearDist = 0, farDist = 0)_
_name: ofSetupScreenPerspective_
_returns: void_
_returns_description: _
_parameters: float width=0, float height=0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip=true, float fov=60, float nearDist=0, float farDist=0_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetupScreenOrtho(width = 0, height = 0, orientation = OF_ORIENTATION_UNKNOWN, vFlip = true, nearDist = -1, farDist = 1)

<!--
_syntax: ofSetupScreenOrtho(width = 0, height = 0, orientation = OF_ORIENTATION_UNKNOWN, vFlip = true, nearDist = -1, farDist = 1)_
_name: ofSetupScreenOrtho_
_returns: void_
_returns_description: _
_parameters: float width=0, float height=0, ofOrientation orientation=OF_ORIENTATION_UNKNOWN, bool vFlip=true, float nearDist=-1, float farDist=1_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofRectangle ofGetCurrentViewport()

<!--
_syntax: ofGetCurrentViewport()_
_name: ofGetCurrentViewport_
_returns: ofRectangle_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetViewportWidth()

<!--
_syntax: ofGetViewportWidth()_
_name: ofGetViewportWidth_
_returns: int_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofGetViewportHeight()

<!--
_syntax: ofGetViewportHeight()_
_name: ofGetViewportHeight_
_returns: int_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int ofOrientationToDegrees(orientation)

<!--
_syntax: ofOrientationToDegrees(orientation)_
_name: ofOrientationToDegrees_
_returns: int_
_returns_description: _
_parameters: ofOrientation orientation_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetCoordHandedness(handedness)

<!--
_syntax: ofSetCoordHandedness(handedness)_
_name: ofSetCoordHandedness_
_returns: void_
_returns_description: _
_parameters: ofHandednessType handedness_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofHandednessType ofGetCoordHandedness()

<!--
_syntax: ofGetCoordHandedness()_
_name: ofGetCoordHandedness_
_returns: ofHandednessType_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofTranslate(&p)

<!--
_syntax: ofTranslate(&p)_
_name: ofTranslate_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRotate(degrees)

<!--
_syntax: ofRotate(degrees)_
_name: ofRotate_
_returns: void_
_returns_description: _
_parameters: float degrees_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetupScreen()

<!--
_syntax: ofSetupScreen()_
_name: ofSetupScreen_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetCurveResolution(res)

<!--
_syntax: ofSetCurveResolution(res)_
_name: ofSetCurveResolution_
_returns: void_
_returns_description: _
_parameters: int res_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetSphereResolution(res)

<!--
_syntax: ofSetSphereResolution(res)_
_name: ofSetSphereResolution_
_returns: void_
_returns_description: _
_parameters: int res_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofFillFlag ofGetFill()

<!--
_syntax: ofGetFill()_
_name: ofGetFill_
_returns: ofFillFlag_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetColor(&color)

<!--
_syntax: ofSetColor(&color)_
_name: ofSetColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetColor(&color, _a)

<!--
_syntax: ofSetColor(&color, _a)_
_name: ofSetColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color, int _a_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetHexColor(hexColor)

<!--
_syntax: ofSetHexColor(hexColor)_
_name: ofSetHexColor_
_returns: void_
_returns_description: _
_parameters: int hexColor_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEnableBlendMode(blendMode)

<!--
_syntax: ofEnableBlendMode(blendMode)_
_name: ofEnableBlendMode_
_returns: void_
_returns_description: _
_parameters: ofBlendMode blendMode_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofDisableBlendMode()

<!--
_syntax: ofDisableBlendMode()_
_name: ofDisableBlendMode_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEnablePointSprites()

<!--
_syntax: ofEnablePointSprites()_
_name: ofEnablePointSprites_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofDisablePointSprites()

<!--
_syntax: ofDisablePointSprites()_
_name: ofDisablePointSprites_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetPolyMode(mode)

<!--
_syntax: ofSetPolyMode(mode)_
_name: ofSetPolyMode_
_returns: void_
_returns_description: _
_parameters: ofPolyWindingMode mode_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetRectMode(mode)

<!--
_syntax: ofSetRectMode(mode)_
_name: ofSetRectMode_
_returns: void_
_returns_description: _
_parameters: ofRectMode mode_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBackground(r, g, b, a = 255)

<!--
_syntax: ofBackground(r, g, b, a = 255)_
_name: ofBackground_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a=255_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBackground(brightness, alpha = 255)

<!--
_syntax: ofBackground(brightness, alpha = 255)_
_name: ofBackground_
_returns: void_
_returns_description: _
_parameters: int brightness, int alpha=255_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBackground(&c)

<!--
_syntax: ofBackground(&c)_
_name: ofBackground_
_returns: void_
_returns_description: _
_parameters: const ofColor &c_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBackgroundHex(hexColor, alpha = 255)

<!--
_syntax: ofBackgroundHex(hexColor, alpha = 255)_
_name: ofBackgroundHex_
_returns: void_
_returns_description: _
_parameters: int hexColor, int alpha=255_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetBackgroundColor(r, g, b, a = 255)

<!--
_syntax: ofSetBackgroundColor(r, g, b, a = 255)_
_name: ofSetBackgroundColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a=255_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetBackgroundColor(brightness, alpha = 255)

<!--
_syntax: ofSetBackgroundColor(brightness, alpha = 255)_
_name: ofSetBackgroundColor_
_returns: void_
_returns_description: _
_parameters: int brightness, int alpha=255_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetBackgroundColor(&c)

<!--
_syntax: ofSetBackgroundColor(&c)_
_name: ofSetBackgroundColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &c_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetBackgroundColorHex(hexColor, alpha = 255)

<!--
_syntax: ofSetBackgroundColorHex(hexColor, alpha = 255)_
_name: ofSetBackgroundColorHex_
_returns: void_
_returns_description: _
_parameters: int hexColor, int alpha=255_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofClear(r, g, b, a = 0)

<!--
_syntax: ofClear(r, g, b, a = 0)_
_name: ofClear_
_returns: void_
_returns_description: _
_parameters: float r, float g, float b, float a=0_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofClear(brightness, a = 0)

<!--
_syntax: ofClear(brightness, a = 0)_
_name: ofClear_
_returns: void_
_returns_description: _
_parameters: float brightness, float a=0_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofClearAlpha()

<!--
_syntax: ofClearAlpha()_
_name: ofClearAlpha_
_returns: void_
_returns_description: _
_parameters: _
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: ofTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: ofTriangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofTriangle(&p1, &p2, &p3)

<!--
_syntax: ofTriangle(&p1, &p2, &p3)_
_name: ofTriangle_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2, const ofPoint &p3_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofCircle(x, y, z, radius)

<!--
_syntax: ofCircle(x, y, z, radius)_
_name: ofCircle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofCircle(&p, radius)

<!--
_syntax: ofCircle(&p, radius)_
_name: ofCircle_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float radius_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEllipse(x, y, z, width, height)

<!--
_syntax: ofEllipse(x, y, z, width, height)_
_name: ofEllipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofEllipse(&p, width, height)

<!--
_syntax: ofEllipse(&p, width, height)_
_name: ofEllipse_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float width, float height_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofLine(x1, y1, z1, x2, y2, z2)

<!--
_syntax: ofLine(x1, y1, z1, x2, y2, z2)_
_name: ofLine_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofLine(&p1, &p2)

<!--
_syntax: ofLine(&p1, &p2)_
_name: ofLine_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRect(&r)

<!--
_syntax: ofRect(&r)_
_name: ofRect_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &r_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRect(&p, w, h)

<!--
_syntax: ofRect(&p, w, h)_
_name: ofRect_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofRect(x, y, z, w, h)

<!--
_syntax: ofRect(x, y, z, w, h)_
_name: ofRect_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofCurve(x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: ofCurve(x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: ofCurve_
_returns: void_
_returns_description: _
_parameters: float x0, float y0, float z0, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBezier(x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: ofBezier(x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: ofBezier_
_returns: void_
_returns_description: _
_parameters: float x0, float y0, float z0, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofVertex(x, y, z)

<!--
_syntax: ofVertex(x, y, z)_
_name: ofVertex_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofVertex(&p)

<!--
_syntax: ofVertex(&p)_
_name: ofVertex_
_returns: void_
_returns_description: _
_parameters: ofPoint &p_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofVertexes(&polyPoints)

<!--
_syntax: ofVertexes(&polyPoints)_
_name: ofVertexes_
_returns: void_
_returns_description: _
_parameters: const vector< ofPoint > &polyPoints_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofCurveVertex(&p)

<!--
_syntax: ofCurveVertex(&p)_
_name: ofCurveVertex_
_returns: void_
_returns_description: _
_parameters: ofPoint &p_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofCurveVertexes(&curvePoints)

<!--
_syntax: ofCurveVertexes(&curvePoints)_
_name: ofCurveVertexes_
_returns: void_
_returns_description: _
_parameters: const vector< ofPoint > &curvePoints_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBezierVertex(&p1, &p2, &p3)

<!--
_syntax: ofBezierVertex(&p1, &p2, &p3)_
_name: ofBezierVertex_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2, const ofPoint &p3_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBezierVertex(x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: ofBezierVertex(x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: ofBezierVertex_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSphere(x, y, z, radius)

<!--
_syntax: ofSphere(x, y, z, radius)_
_name: ofSphere_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSphere(x, y, radius)

<!--
_syntax: ofSphere(x, y, radius)_
_name: ofSphere_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSphere(&position, radius)

<!--
_syntax: ofSphere(&position, radius)_
_name: ofSphere_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float radius_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSphere(radius)

<!--
_syntax: ofSphere(radius)_
_name: ofSphere_
_returns: void_
_returns_description: _
_parameters: float radius_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBox(x, y, z, size)

<!--
_syntax: ofBox(x, y, z, size)_
_name: ofBox_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float size_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBox(x, y, size)

<!--
_syntax: ofBox(x, y, size)_
_name: ofBox_
_returns: void_
_returns_description: _
_parameters: float x, float y, float size_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBox(&position, size)

<!--
_syntax: ofBox(&position, size)_
_name: ofBox_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float size_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofBox(size)

<!--
_syntax: ofBox(size)_
_name: ofBox_
_returns: void_
_returns_description: _
_parameters: float size_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofSetDrawBitmapMode(mode)

<!--
_syntax: ofSetDrawBitmapMode(mode)_
_name: ofSetDrawBitmapMode_
_returns: void_
_returns_description: _
_parameters: ofDrawBitmapMode mode_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void ofDrawBitmapString(textString, &p)

<!--
_syntax: ofDrawBitmapString(textString, &p)_
_name: ofDrawBitmapString_
_returns: void_
_returns_description: _
_parameters: string textString, const ofPoint &p_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

