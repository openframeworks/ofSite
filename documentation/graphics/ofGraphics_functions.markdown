#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






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

_inlined_description: _

Sets the background color.

It takes as input r,g,b (0-255). The background is
cleared automatically, just before the draw() command, so if the background
color is not changing, you could call this inside of setup() (once, at the
start of the application). If the background color is changing, you can call
this inside of update().

~~~~{.cpp}
void ofApp::setup(){
    ofBackground(255,0,0);  // Sets the background color to red
}
~~~~





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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void ofBackgroundGradient(&start, &end, mode = OF_GRADIENT_CIRCULAR)

<!--
_syntax: ofBackgroundGradient(&start, &end, mode = OF_GRADIENT_CIRCULAR)_
_name: ofBackgroundGradient_
_returns: void_
_returns_description: _
_parameters: const ofColor &start, const ofColor &end, ofGradientMode mode=OF_GRADIENT_CIRCULAR_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets the background color to a gradient.

It takes as input 2 ofColor() objects and a Gradient Mode.
Must be called in the draw() function.

Accepted modes are:

- Circular: `OF_GRADIENT_CIRCULAR`
- Linear: `OF_GRADIENT_LINEAR`
- Bar: `OF_GRADIENT_BAR`

**Background Gradient: Circular:**
![Background Gradient Circular](bkgGradient_circular.png)
~~~~{.cpp}
void ofApp::draw(){

    ofColor colorOne(255, 0, 0);
    ofColor colorTwo(0, 0, 0);

    ofBackgroundGradient(colorOne, colorTwo, OF_GRADIENT_CIRCULAR);
    // Sets the background to a circular gradient
}
~~~~

**Background Gradient: Linear:**
![Background Gradient Linear](bkgGradient_linear.png)
~~~~{.cpp}
void ofApp::draw(){

    ofColor colorOne(255, 0, 0);
    ofColor colorTwo(0, 0, 0);

    ofBackgroundGradient(colorOne, colorTwo, OF_GRADIENT_LINEAR);
      // Sets the background to a linear gradient
}
~~~~

**Background Gradient: Bar:**
![Background Gradient Bar](bkgGradient_bar.png)
~~~~{.cpp}
void ofApp::draw(){

    ofColor colorOne(255, 0, 0);
    ofColor colorTwo(0, 0, 0);

    ofBackgroundGradient(colorOne, colorTwo, OF_GRADIENT_BAR);
      // Sets the background to a bar gradient
}
~~~~





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

_inlined_description: _

Sets the background color using a hex color value.
~~~~{.cpp}
void ofApp::setup(){
    ofBackgroundHex(0xff0000);  // Sets the background color to red
}
~~~~





_description: _

Sets the background color using a hex color value.
~~~~{.cpp}
void ofApp::setup(){
    ofBackgroundHex(0xff0000);  // Sets the background color to red
}
~~~~





<!----------------------------------------------------------------------------->

###void ofBeginSaveScreenAsPDF(filename, bMultipage = false, b3D = false, outputsize)

<!--
_syntax: ofBeginSaveScreenAsPDF(filename, bMultipage = false, b3D = false, outputsize)_
_name: ofBeginSaveScreenAsPDF_
_returns: void_
_returns_description: _
_parameters: string filename, bool bMultipage=false, bool b3D=false, ofRectangle outputsize_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Begin rendering to a PDF file.

openFrameworks allows rendering of 2D graphics to pdf via the
ofCairoRenderer. ofBeginSaveScreenAsPDF() is called before drawing. When
done drawing call ofEndSaveScreenAsPDF() to output the file.

~~~~{.cpp}
void ofApp::setup(){
    ofBeginSaveScreenAsPDF("screenshot.pdf", false);
    ofSetColor(54,54,54);
    ofDrawEllipse(100,100,200,200);
    ofEndSaveScreenAsPDF();
}
~~~~

See also: End drawing with ofEndSaveScreenAsPDF()





_description: _

Begins render to pdf. OpenFrameworks allows rendering of 2D graphics to pdf via the ofCairoRenderer. ofBeginSaveScreenAsPDF is called before drawing. When done drawing call ofEndSaveScreenAsPDF() to output the file.
~~~~{.cpp}
void ofApp::setup(){
    if( oneShot ){
        ofBeginSaveScreenAsPDF("screenshot-"+ofGetTimestampString()+".pdf", false);
    }

    ofSetColor(54,54,54);
    ofDrawEllipse(100,100,200,200);
    if( oneShot ){
        ofEndSaveScreenAsPDF();
        oneShot = false;
    }
}
~~~~





<!----------------------------------------------------------------------------->

###void ofBeginSaveScreenAsSVG(filename, bMultipage = false, b3D = false, outputsize)

<!--
_syntax: ofBeginSaveScreenAsSVG(filename, bMultipage = false, b3D = false, outputsize)_
_name: ofBeginSaveScreenAsSVG_
_returns: void_
_returns_description: _
_parameters: string filename, bool bMultipage=false, bool b3D=false, ofRectangle outputsize_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Begin rendering to a SVG file.

See also: ofEndSaveScreenAsSVG(), ofBeginSaveScreenAsPDF()





_description: _







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

_inlined_description: _

Start drawing a new shape. Needs to be followed by a list of
vertex points and lastly a call to ofEndShape().

~~~~{.cpp}
//draws a star
ofSetPolyMode(OF_POLY_WINDING_NONZERO);
ofBeginShape();
  ofVertex(400,135);
  ofVertex(215,135);
  ofVertex(365,25);
  ofVertex(305,200);
  ofVertex(250,25);
ofEndShape();
~~~~


See also: ofEndShape()





_description: _

Call this to start drawing a new shape. Needs to be followed by a list of vertex points and lastly a call to ofEndShape().
~~~~{.cpp}
//draws a star
ofSetPolyMode(OF_POLY_WINDING_NONZERO);
ofBeginShape();
  ofVertex(400,135);
  ofVertex(215,135);
  ofVertex(365,25);
  ofVertex(305,200);
  ofVertex(250,25);
ofEndShape();
~~~~





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

_inlined_description: _

Describes a bezier curve through three points of a shape. To be called
between ofBeginShape() and ofEndShape().





_description: _

Describes a bezier curve through three points of a shape. To be called between ofBeginShape() and ofEndShape().





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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void ofClear(r, g, b, a = 0)

<!--
_syntax: ofClear(r, g, b, a = 0)_
_name: ofClear_
_returns: void_
_returns_description: _
_parameters: float r, float g, float b, float a_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clears the color and depth bits of current renderer and replaces it with
an RGB color.

When drawing to the screen, ofClear() will clear the screen entirely.

~~~~{.cpp}
void ofApp::draw() {
    ofClear(255, 0, 0);
    // Clears current screen and replaces it with red.
    // Screen will render as a flat color.
}
~~~~

When using the openGL renderer and drawing into an
[FBO][1], ofClear() will clear that buffer rather than the main
screen.

~~~~{.cpp}
void ofApp::draw() {
    ofFbo myFbo;
    myFbo.allocate(300, 300);

    myFbo.begin();
        ofClear(255, 0, 0);
        // Clears FBO buffer and replaces it with red.
        // No effect in current drawing screen.
    myFbo.end();
}
~~~~

ofClear() is based on [glClear][2].

[1]: http://www.openframeworks.cc/documentation/gl/ofFbo.html
[2]: http://www.opengl.org/sdk/docs/man/xhtml/glClear.xml





_description: _

Clears the color and depth bits of current renderer and replaces it with an RGB color.

When drawing to the screen, ofClear(…) will clear the screen entirely.

~~~~{.cpp}
void ofApp::draw() {
    ofClear ( 255, 0, 0 );
    // Clears current screen and replaces it with red.
    // Screen will render as a flat color.
}
~~~~

When using the opengl renderer and drawing into an [FBO](http://www.openframeworks.cc/documentation/gl/ofFbo.html), ofClear(...) will clear that buffer rather than the main screen.

~~~~{.cpp}
void ofApp::draw() {
    ofFbo myFbo;
    myFbo.allocate ( 300, 300 );

    myFbo.begin();
        ofClear ( 255, 0, 0 );
        // Clears FBO buffer and replaces it with red.
        // No effect in current drawing screen.
    myFbo.end();
}
~~~~

ofClear(…) is based on glClear (http://www.opengl.org/sdk/docs/man/xhtml/glClear.xml).





<!----------------------------------------------------------------------------->

###void ofClear(brightness, a = 0)

<!--
_syntax: ofClear(brightness, a = 0)_
_name: ofClear_
_returns: void_
_returns_description: _
_parameters: float brightness, float a_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clears the color and depth bits of current renderer and replaces it with a
grayscale value.

~~~~{.cpp}
void ofApp::draw(){
    ofClear(128);
    // Clears current screen and replaces it with a grayscale value.
}
~~~~





_description: _

Clears the color and depth bits of current renderer and replaces it with a grayscale value.

~~~~{.cpp}
void ofApp::draw(){
    ofColor myColor;
    myColor.set ( 128 );
    ofClear ( myColor );
    // Clears current screen and replaces it with a grayscale value.
}
~~~~





<!----------------------------------------------------------------------------->

###void ofClear(&c)

<!--
_syntax: ofClear(&c)_
_name: ofClear_
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

_inlined_description: _

Clears the color and depth bits of current renderer and replaces it with
an ofColor.

~~~~{.cpp}
void ofApp::draw(){
    ofColor myColor(0, 0, 255);
    ofClear(myColor);
    // Clears current screen and replaces it with myColor.
}
~~~~





_description: _

Clears the color and depth bits of current renderer and replaces it with an ofColor.

~~~~{.cpp}
void ofApp::draw(){
    ofColor myColor;
    myColor.set ( 0, 0, 255 );
    ofClear ( myColor );
    // Clears current screen and replaces it with myColor.
}
~~~~





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

_inlined_description: _







_description: _







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

_inlined_description: _

Specifies a single point of a shape. The difference from ofVertex is that
the line describing the edge of the shape between two points will be a
curve as opposed to a straight line. The curve is automatically generated
using the catmull from formula.

This function has to be called between ofBeginShape() and ofEndShape().





_description: _

Specifies a single point of a shape. The difference from ofVertex is that the line describing the edge of the shape between two points will be a curve as opposed to a straight line. The curve is automatically generated using the catmull from formula. To be called between ofBeginShape() and ofEndShape().





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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void ofCurveVertex(x, y, z)

<!--
_syntax: ofCurveVertex(x, y, z)_
_name: ofCurveVertex_
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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void ofCurveVertices(&curvePoints)

<!--
_syntax: ofCurveVertices(&curvePoints)_
_name: ofCurveVertices_
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

_inlined_description: _

Draws a curve through a series of vertices stored as a vector of
ofPoints. Should be called between ofBeginShape() and ofEndShape().





_description: _

Draws a curve through a series of vertices stored as a vector of ofPoints. Should be called between ofBeginShape() and ofEndShape().





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

_inlined_description: _

Turn off alpha blending.
~~~~{.cpp}
void ofApp::draw(){
    ofEnableAlphaBlending();    // turn on alpha blending
    ofSetColor(255,0,0,127);    // red, 50% transparent
    ofDrawRectangle(20,20,100,100);      // draws the rect with alpha
    ofDisableAlphaBlending();   // turn off alpha
    ofDrawRectangle(120,20,100,100); // draws the rect without alpha
}
~~~~


See also: ofEnableAlphaBlending()





_description: _

Turns off alpha blending.
~~~~{.cpp}
void ofApp::draw(){
    ofEnableAlphaBlending();    // turn on alpha blending
    ofSetColor(255,0,0,127);    // red, 50% transparent
    ofDrawRectangle(20,20,100,100);      // draws the rect with alpha
    ofDisableAlphaBlending();   // turn off alpha
    ofDrawRectangle(120,20,100,100); // draws the rect without alpha
}
~~~~





<!----------------------------------------------------------------------------->

###void ofDisableAntiAliasing()

<!--
_syntax: ofDisableAntiAliasing()_
_name: ofDisableAntiAliasing_
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

_inlined_description: _

Turns off anti-aliasing (smoothing).





_description: _

Turns off anti-aliasing (smoothing).





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

_inlined_description: _

Disable the current blend mode.





_description: _

Disables the current blend mode.





<!----------------------------------------------------------------------------->

###void ofDisableDepthTest()

<!--
_syntax: ofDisableDepthTest()_
_name: ofDisableDepthTest_
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

_inlined_description: _

Turn off depth testing so rendering happens in draw order rather than by
z-depth.

Turning off depth test is useful for combining 3d scenes with 2d
overlays such as a control panel.

~~~~{.cpp}
void ofApp::draw(){

    ofPushMatrix();

        ofTranslate( ofGetWidth()/2, ofGetHeight()/2, 0 );

        ofEnableDepthTest();
        ofSetColor(255);
        ofDrawSphere(0,0,100,60);
        ofSetColor(255,0,255);
        ofDrawSphere(50,0,50,100);
        ofDisableDepthTest();

        ofSetColor(0);
        ofDrawRectangle(75,75,120,30);
        ofSetColor(255);
        ofDrawBitmapString("Some bubbles.",85,90);

    ofPopMatrix();
}
~~~~


See also: ofEnableDepthTest()





_description: _

Turns off depth testing so rendering happens in draw order rather than by z-depth. Turning off depth test is useful for combining 3d scenes with 2d overlays such as a control panel.
~~~~{.cpp}
void ofApp::draw(){

    ofPushMatrix();

        ofTranslate( ofGetWidth()/2, ofGetHeight()/2, 0 );

        ofEnableDepthTest();
        ofSetColor(255);
        ofDrawSphere(0,0,100,60);
        ofSetColor(255,0,255);
        ofDrawSphere(50,0,50,100);
        ofDisableDepthTest();

        ofSetColor(0);
        ofDrawRectangle(75,75,120,30);
        ofSetColor(255);
        ofDrawBitmapString("Some bubbles.",85,90);

    ofPopMatrix();
}
~~~~





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

_inlined_description: _

Turn off point sprites





_description: _

Turns off point sprite.





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

_inlined_description: _

Turn off smoothing. Currently, this only works for lines. You can draw a
filled object, and then draw the outline with smoothing enabled to get
smoothing effects on filled shapes.





_description: _

Turns off smoothing. Currently, this only works for lines. You can draw a filled object, and then draw the outline with smoothing enabled to get smoothing effects on filled shapes.





<!----------------------------------------------------------------------------->

###void ofDrawBezier(x0, y0, x1, y1, x2, y2, x3, y3)

<!--
_syntax: ofDrawBezier(x0, y0, x1, y1, x2, y2, x3, y3)_
_name: ofDrawBezier_
_returns: void_
_returns_description: _
_parameters: float x0, float y0, float x1, float y1, float x2, float y2, float x3, float y3_
_version_started: 0.9.0_
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

###void ofDrawBezier(x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: ofDrawBezier(x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: ofDrawBezier_
_returns: void_
_returns_description: _
_parameters: float x0, float y0, float z0, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
_version_started: 0.9.0_
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

###void ofDrawBitmapString(&textString, x, y, z)

<!--
_syntax: ofDrawBitmapString(&textString, x, y, z)_
_name: ofDrawBitmapString_
_returns: void_
_returns_description: _
_parameters: const T &textString, float x, float y, float z_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Draws a bitmapped string, on screen, at point (x,y). For example, you can write some text on screen like this:
~~~~{.cpp}
void ofApp::draw(){
    ofDrawBitmapString("hi!!", 100,100);
}
~~~~
Your strings can even be multiline:
~~~~{.cpp}
ofDrawBitmapString("a test
of multiline
text", 100,100);
~~~~
you can also using dynamically generated strings. For example, to print the frame rate:
~~~~{.cpp}
string fpsStr = "frame rate: "+ofToString(ofGetFrameRate(), 2);
ofDrawBitmapString(fpsStr, 100,100);
~~~~
Please note, ofDrawBitmapString wraps a glut function that uses glDrawPixels. On some graphics cards, you may discover that glDrawPixels is slow (or even, very slow). If so, you might want to investigate using ofTrueTypeFont with a small typeface, non-anti-aliased, as a suitable alternative.





<!----------------------------------------------------------------------------->

###void ofDrawBitmapString(&textString, &p)

<!--
_syntax: ofDrawBitmapString(&textString, &p)_
_name: ofDrawBitmapString_
_returns: void_
_returns_description: _
_parameters: const T &textString, const ofPoint &p_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\}





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawBitmapString(&textString, x, y)

<!--
_syntax: ofDrawBitmapString(&textString, x, y)_
_name: ofDrawBitmapString_
_returns: void_
_returns_description: _
_parameters: const T &textString, float x, float y_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a bitmapped string, on screen, at point (x,y).

For example, you can write some text on screen like this:
~~~~{.cpp}
void ofApp::draw(){
    ofDrawBitmapString("hi!!", 100,100);
}
~~~~

Your strings can even be multiline:
~~~~{.cpp}
ofDrawBitmapString("a test
of multiline
text", 100,100);
~~~~

you can also using dynamically generated strings. For example, to print
the frame rate:
~~~~{.cpp}
string fpsStr = "frame rate: "+ofToString(ofGetFrameRate(), 2);
ofDrawBitmapString(fpsStr, 100,100);
~~~~

\note ofDrawBitmapString wraps a glut function that uses glDrawPixels. On
some graphics cards, you may discover that glDrawPixels is slow (or even,
very slow). If so, you might want to investigate using ofTrueTypeFont
with a small typeface, non-anti-aliased, as a suitable alternative.


See also: ofTrueTypeFont





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawBitmapString(&textString, x, y, z)

<!--
_syntax: ofDrawBitmapString(&textString, x, y, z)_
_name: ofDrawBitmapString_
_returns: void_
_returns_description: _
_parameters: const string &textString, float x, float y, float z_
_version_started: 0.9.0_
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

###void ofDrawBitmapStringHighlight(text, &position, &background = ofColor::black, &foreground = ofColor::white)

<!--
_syntax: ofDrawBitmapStringHighlight(text, &position, &background = ofColor::black, &foreground = ofColor::white)_
_name: ofDrawBitmapStringHighlight_
_returns: void_
_returns_description: _
_parameters: string text, const ofPoint &position, const ofColor &background=black, const ofColor &foreground=white_
_version_started: _
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

###void ofDrawBitmapStringHighlight(text, x, y, &background = ofColor::black, &foreground = ofColor::white)

<!--
_syntax: ofDrawBitmapStringHighlight(text, x, y, &background = ofColor::black, &foreground = ofColor::white)_
_name: ofDrawBitmapStringHighlight_
_returns: void_
_returns_description: _
_parameters: string text, int x, int y, const ofColor &background=black, const ofColor &foreground=white_
_version_started: _
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

###void ofDrawCircle(x, y, radius)

<!--
_syntax: ofDrawCircle(x, y, radius)_
_name: ofDrawCircle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a circle, centered at x,y, with a given radius.

~~~~{.cpp}
void ofApp::draw(){
    ofDrawCircle(150,150,100);
}
~~~~
Please keep in mind that drawing circle with different outline color and
fill requires calling ofNoFill and ofSetColor for drawing stroke and
ofFill and again ofSetColor for filled solid color circle.





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawCircle(x, y, z, radius)

<!--
_syntax: ofDrawCircle(x, y, z, radius)_
_name: ofDrawCircle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
_version_started: 0.9.0_
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

###void ofDrawCircle(&p, radius)

<!--
_syntax: ofDrawCircle(&p, radius)_
_name: ofDrawCircle_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float radius_
_version_started: 0.9.0_
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

###void ofDrawCurve(x0, y0, x1, y1, x2, y2, x3, y3)

<!--
_syntax: ofDrawCurve(x0, y0, x1, y1, x2, y2, x3, y3)_
_name: ofDrawCurve_
_returns: void_
_returns_description: _
_parameters: float x0, float y0, float x1, float y1, float x2, float y2, float x3, float y3_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a curve from point (x1, y1) to point (x2, y2). The curve is shaped by
the two control points (x0,y0) and (x3,y3).





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawCurve(x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: ofDrawCurve(x0, y0, z0, x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: ofDrawCurve_
_returns: void_
_returns_description: _
_parameters: float x0, float y0, float z0, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a 3-dimensional curve from point (x1, y1, z1) to point (x2, y2, z2).
The curve is shaped by the two control points (x0, y0, z0) and (x3, y3, z3).





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawEllipse(x, y, width, height)

<!--
_syntax: ofDrawEllipse(x, y, width, height)_
_name: ofDrawEllipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws an ellipse from point (x,y) with a given width (w) and height (h).
~~~~{.cpp}
void ofApp::draw(){
    ofDrawEllipse(10,10,50,30);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawEllipse(x, y, z, width, height)

<!--
_syntax: ofDrawEllipse(x, y, z, width, height)_
_name: ofDrawEllipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height_
_version_started: 0.9.0_
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

###void ofDrawEllipse(&p, width, height)

<!--
_syntax: ofDrawEllipse(&p, width, height)_
_name: ofDrawEllipse_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float width, float height_
_version_started: 0.9.0_
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

###void ofDrawLine(x1, y1, x2, y2)

<!--
_syntax: ofDrawLine(x1, y1, x2, y2)_
_name: ofDrawLine_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a line between two points: (x1,y1),(x2,y2).
~~~~{.cpp}
void ofApp::draw(){
    ofDrawLine(10,10,100,100);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawLine(x1, y1, z1, x2, y2, z2)

<!--
_syntax: ofDrawLine(x1, y1, z1, x2, y2, z2)_
_name: ofDrawLine_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2_
_version_started: 0.9.0_
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

###void ofDrawLine(&p1, &p2)

<!--
_syntax: ofDrawLine(&p1, &p2)_
_name: ofDrawLine_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2_
_version_started: 0.9.0_
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

###void ofDrawRectRounded(&b, r)

<!--
_syntax: ofDrawRectRounded(&b, r)_
_name: ofDrawRectRounded_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &b, float r_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rounded rectangle from the given rectangle using given
radius.

~~~~{.cpp}
void ofApp::draw(){
    ofRectangle myRect;
    myRect.x = 10;
    myRect.y = 10;
    myRect.width = 100;
    myRect.height = 100;

    ofDrawRectRounded(myRect, 10);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectRounded(&p, w, h, r)

<!--
_syntax: ofDrawRectRounded(&p, w, h, r)_
_name: ofDrawRectRounded_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h, float r_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rectangle from point p with a given width, height and radius of
rounded corners.

~~~~{.cpp}
void ofApp::draw(){
    ofPoint p;
    p.set ( 10, 10 );
    ofDrawRectRounded( p, 100, 100, 10 );
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectRounded(x, y, w, h, r)

<!--
_syntax: ofDrawRectRounded(x, y, w, h, r)_
_name: ofDrawRectRounded_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h, float r_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rectangle from point X, Y with a given width, height and radius of
rounded corners.

~~~~{.cpp}
void ofApp::draw(){
    ofDrawRectRounded(10, 10, 100, 100, 10);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectRounded(x, y, z, w, h, r)

<!--
_syntax: ofDrawRectRounded(x, y, z, w, h, r)_
_name: ofDrawRectRounded_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h, float r_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rectangle from point X, Y, at depth Z with a given width, height and
radius of rounded corners.

~~~~{.cpp}
void ofApp::draw(){
    ofDrawRectRounded(10, 10, 10, 100, 100, 10);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectRounded(&p, w, h, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)

<!--
_syntax: ofDrawRectRounded(&p, w, h, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)_
_name: ofDrawRectRounded_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h, float topLeftRadius, float topRightRadius, float bottomRightRadius, float bottomLeftRadius_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rounded rectangle from point X, Y, at depth Z with a given width,
height and radius of rounded corners.

~~~~{.cpp}
void ofApp::draw(){
    ofDrawRectRounded(10, 10, 10, 100, 100, 10);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectRounded(&b, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)

<!--
_syntax: ofDrawRectRounded(&b, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)_
_name: ofDrawRectRounded_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &b, float topLeftRadius, float topRightRadius, float bottomRightRadius, float bottomLeftRadius_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rounded rectangle from the given rectangle using different given
radius for each of the corners.

~~~~{.cpp}
void ofApp::draw(){
    ofRectangle myRect;
    myRect.x = 10;
    myRect.y = 10;
    myRect.width = 100;
    myRect.height = 100;

    ofDrawRectRounded( myRect, 10, 20, 30, 40 );
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectRounded(x, y, z, w, h, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)

<!--
_syntax: ofDrawRectRounded(x, y, z, w, h, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)_
_name: ofDrawRectRounded_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h, float topLeftRadius, float topRightRadius, float bottomRightRadius, float bottomLeftRadius_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rounded rectangle from point X, Y, at depth Z with a given width,
height and different radius for each rounded corner.

~~~~{.cpp}
void ofApp::draw(){
    ofDrawRectRounded(10, 10, 10, 100, 100, 10, 20, 30, 40);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectangle(x1, y1, w, h)

<!--
_syntax: ofDrawRectangle(x1, y1, w, h)_
_name: ofDrawRectangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float w, float h_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rectangle from point x,y with a given width and height.
~~~~{.cpp}
void ofApp::draw(){
    ofDrawRect(10,10,100,100);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectangle(&r)

<!--
_syntax: ofDrawRectangle(&r)_
_name: ofDrawRectangle_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &r_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws an rectangle from the given rectangle.
~~~~{.cpp}
void ofApp::draw(){
    ofRectangle rect;
    rect.x = 10;
    rect.y = 10;
    rect.width = 100;
    rect.height = 100;

    ofDrawRectangle(rect);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectangle(&p, w, h)

<!--
_syntax: ofDrawRectangle(&p, w, h)_
_name: ofDrawRectangle_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws an rectangle from point p, with a given width and height.
~~~~{.cpp}
void ofApp::draw(){
    ofPoint p;      // create a point P
    p.x = 10;       // set the x of the point
    p.y = 10;       // set the y of the point

    ofDrawRectangle(p, 80, 80); // Draw the rectangle
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawRectangle(x, y, z, w, h)

<!--
_syntax: ofDrawRectangle(x, y, z, w, h)_
_name: ofDrawRectangle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws an rectangle from point X, Y at depth Z with a given width and height.
~~~~{.cpp}
void ofApp::draw(){
    ofDrawRectangle(10,10,-100, 80, 80); // Draw a rectangle at 100 pixels in depth
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawTriangle(x1, y1, x2, y2, x3, y3)

<!--
_syntax: ofDrawTriangle(x1, y1, x2, y2, x3, y3)_
_name: ofDrawTriangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2, float x3, float y3_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a triangle, with the three points: (x1,y1),(x2, y2),(x3, y3).
~~~~{.cpp}
void ofApp::draw(){
    ofDrawTriangle(50,10,10,40,90,40);
}
~~~~





_description: _







<!----------------------------------------------------------------------------->

###void ofDrawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: ofDrawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: ofDrawTriangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
_version_started: 0.9.0_
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

###void ofDrawTriangle(&p1, &p2, &p3)

<!--
_syntax: ofDrawTriangle(&p1, &p2, &p3)_
_name: ofDrawTriangle_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2, const ofPoint &p3_
_version_started: 0.9.0_
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

_inlined_description: _

Turns on alpha blending (which is on by default since OF version 0.8.0).
It simply wraps opengl commands that enable blending, and turn on a common
blend mode.

~~~~{.cpp}
void ofApp::draw(){
    ofEnableAlphaBlending();    // turn on alpha blending
    ofSetColor(255,0,0,127);    // red, 50% transparent
    ofDrawRectangle(20,20,100,100);      // draws the rect with alpha
    ofDisableAlphaBlending();   // turn off alpha
    ofDrawRectangle(120,20,100,100);     // draws the rect without alpha
}
~~~~





_description: _

Turns on alpha blending (which is on by default since OF version 0.8.0). It simply wraps opengl commands that enable blending, and turn on a common blend mode.
~~~~{.cpp}
void ofApp::draw(){
    ofEnableAlphaBlending();    // turn on alpha blending
    ofSetColor(255,0,0,127);    // red, 50% transparent
    ofDrawRectangle(20,20,100,100);      // draws the rect with alpha
    ofDisableAlphaBlending();   // turn off alpha
    ofDrawRectangle(120,20,100,100); // draws the rect without alpha
}
~~~~





<!----------------------------------------------------------------------------->

###void ofEnableAntiAliasing()

<!--
_syntax: ofEnableAntiAliasing()_
_name: ofEnableAntiAliasing_
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

_inlined_description: _

Enables anti-aliasing (smoothing) for lines.





_description: _

Enables anti-aliasing (smoothing) for lines.





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

_inlined_description: _

Sets and enables the blend mode for drawing. The options are:

    OF_BLENDMODE_DISABLED
    OF_BLENDMODE_ALPHA
    OF_BLENDMODE_ADD
    OF_BLENDMODE_SUBTRACT
    OF_BLENDMODE_MULTIPLY
    OF_BLENDMODE_SCREEN

There is a blendingExample in the openFrameworks examples > graphics





_description: _

Sets and enables the blend mode for drawing. The options are:

    OF_BLENDMODE_DISABLED
    OF_BLENDMODE_ALPHA
    OF_BLENDMODE_ADD
    OF_BLENDMODE_SUBTRACT
    OF_BLENDMODE_MULTIPLY
    OF_BLENDMODE_SCREEN
There is a blendingExample in the openFrameworks examples > graphics





<!----------------------------------------------------------------------------->

###void ofEnableDepthTest()

<!--
_syntax: ofEnableDepthTest()_
_name: ofEnableDepthTest_
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

_inlined_description: _

Turns on depth testing so rendering happens according to z-depth rather
than draw order.


See also: ofDisableDepthTest()





_description: _

Turns on depth testing so rendering happens according to z-depth rather than draw order.
~~~~{.cpp}
void ofApp::draw(){

    ofPushMatrix();

        ofTranslate( ofGetWidth()/2, ofGetHeight()/2, 0 );

        ofEnableDepthTest(); // enable depth test
        ofSetColor(255);
        ofDrawSphere(0,0,100,60); // draw 3d sphere
        ofSetColor(255,0,255);
        ofDrawSphere(50,0,50,100);
        ofDisableDepthTest(); // disable depth test

        // draw 2d overlay
        ofSetColor(0);
        ofDrawRectangle(75,75,120,30);
        ofSetColor(255);
        ofDrawBitmapString("Some bubbles.",85,90);

    ofPopMatrix();
}
~~~~





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

_inlined_description: _

Turn on point sprite.

Textures can be mapped onto points. By default, point size is 1pt. So
texture is not shown correctly. You can change point size by
`glPointSize(GLfloat size).





_description: _

Turns on point sprite. Textures can be mapped onto points. By default, point size is 1pt. So texture is not shown correctly. You can change point size by glPointSize(GLfloat size).





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

_inlined_description: _







_description: _

Turns on smoothing. Currently, this only works for lines. You can draw a filled object, and then draw the outline with smoothing enabled to get smoothing effects on filled shapes.





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

_inlined_description: _

Terminates draw to PDF through ofCairoRenderer and outputs the file.

See also: ofBeginSaveScreenAsPDF()





_description: _

Terminates draw to pdf through ofCairoRenderer and outputs the pdf file.
~~~~{.cpp}
void ofApp::setup(){
    if( oneShot ){
        ofBeginSaveScreenAsPDF("screenshot-"+ofGetTimestampString()+".pdf", false);
    }

    ofSetColor(54,54,54);
    ofDrawEllipse(100,100,200,200);
    if( oneShot ){
        ofEndSaveScreenAsPDF();
        oneShot = false;
    }
}
~~~~





<!----------------------------------------------------------------------------->

###void ofEndSaveScreenAsSVG()

<!--
_syntax: ofEndSaveScreenAsSVG()_
_name: ofEndSaveScreenAsSVG_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Terminates draw to SVG and outputs the file.

See also: ofBeginSaveScreenAsSVG()





_description: _







<!----------------------------------------------------------------------------->

###void ofEndShape(bClose)

<!--
_syntax: ofEndShape(bClose)_
_name: ofEndShape_
_returns: void_
_returns_description: _
_parameters: bool bClose=false_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

This tells the program that your shape is finished and that it should now
draw it to the screen.

This function must be called otherwise you will not see your shape.


Parameters:
bClose If you set it to true it will automatically close your
shape for you. Default false.





_description: _

This tells the program that your shape is finished and that it should now draw it to the screen. If you set the optional 'bClose' argument to true it will automatically close your shape for you.'bClose' is set to false by default. This function must be called otherwise you will not see your shape.





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

_inlined_description: _

Draw shapes filled with the current draw color.
~~~~{.cpp}
void ofApp::draw(){
    ofSetColor(0,0,255);
    ofFill();
    ofDrawRect(10,10,100,100);  //draws the rectangle filled in blue
}
~~~~





_description: _

Draw shapes filled with the current draw color.
~~~~{.cpp}
void ofApp::draw(){
    ofSetColor(0,0,255);
    ofFill();
    ofDrawRectangle(10,10,100,100);  //draws the rectangle filled in blue
}
~~~~





<!----------------------------------------------------------------------------->

###bool ofGetBackgroundAuto()

<!--
_syntax: ofGetBackgroundAuto()_
_name: ofGetBackgroundAuto_
_returns: bool_
_returns_description: _
_parameters: _
_version_started: 0.9.0_
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

###ofColor ofGetBackgroundColor()

<!--
_syntax: ofGetBackgroundColor()_
_name: ofGetBackgroundColor_
_returns: ofColor_
_returns_description: _
_parameters: _
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the current background color as an ofColor.





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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 ofGetCurrentMatrix(matrixMode_)

<!--
_syntax: ofGetCurrentMatrix(matrixMode_)_
_name: ofGetCurrentMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: ofMatrixMode matrixMode_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Query the current (oF internal) Transformation Matrix state.





_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 ofGetCurrentNormalMatrix()

<!--
_syntax: ofGetCurrentNormalMatrix()_
_name: ofGetCurrentNormalMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: _
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Query the current (oF internal) Normal Matrix state.
\note  The matrix returned is the transposed of the inverse of the
       view matrix

       Currently, only GL Programmable Renderer and GL Renderer
       implement ofGetCurrentNormalMatrix.





_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 ofGetCurrentOrientationMatrix()

<!--
_syntax: ofGetCurrentOrientationMatrix()_
_name: ofGetCurrentOrientationMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: _
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Query the current (oF internal) Orientation Matrix state.
\note  The matrix returned is the matrix openFrameworks uses internally
       to calculate the (final, oriented) projection matrix as it is
       passed on to the GPU.

       Currently, only GL Programmable Renderer and GL Renderer
       implement ofGetCurrentOrientationMatrix.





_description: _







<!----------------------------------------------------------------------------->

###ofMatrix4x4 ofGetCurrentViewMatrix()

<!--
_syntax: ofGetCurrentViewMatrix()_
_name: ofGetCurrentViewMatrix_
_returns: ofMatrix4x4_
_returns_description: _
_parameters: _
_version_started: 0.9.0_
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

_inlined_description: _

Get the position and size of the current viewport

Returns: A rectangle describing the viewport





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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofRectangle ofGetNativeViewport()

<!--
_syntax: ofGetNativeViewport()_
_name: ofGetNativeViewport_
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

_inlined_description: _

Get the position and size of the native viewport

Returns: A rectangle describing the viewport





_description: _







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

_inlined_description: _

Tells you if rectangle drawing mode is set to drawn from the center or drawn
from the top left corner, as set with the ofSetRectMode() function.

Default is `OF_RECTMODE_CORNER`

~~~~{.cpp}
void ofApp::draw(){
    if(ofGetRectMode() == OF_RECTMODE_CORNER){
        ofDrawRea10,10,80,80);
    }
    else {
        ofDrawRectangle(50,50,80,80);
    }
}
~~~~

See also: ofSetRectMode()





_description: _

Tells you if rect drawing mode is set to drawn from the center or drawn from the top left corner, as set with the ofSetRectMode() function.
~~~~{.cpp}
void ofApp::draw(){
    if(ofGetRectMode() == OF_RECTMODE_CORNER){
        ofDrawRectangle(10,10,80,80);
    }
    else {
        ofDrawRectangle(50,50,80,80);
    }
}
~~~~





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

_inlined_description: _







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

_inlined_description: _

Get the height of the current viewport

Returns: A height in pixels





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

_inlined_description: _

Get the width of the current viewport

Returns: A width in pixels





_description: _







<!----------------------------------------------------------------------------->

###bool ofIsVFlipped()

<!--
_syntax: ofIsVFlipped()_
_name: ofIsVFlipped_
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

_inlined_description: _

Get if view is flipped vertically





_description: _







<!----------------------------------------------------------------------------->

###void ofLoadIdentityMatrix()

<!--
_syntax: ofLoadIdentityMatrix()_
_name: ofLoadIdentityMatrix_
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

_inlined_description: _

\}
\name Matrix Transformation
\{





_description: _







<!----------------------------------------------------------------------------->

###void ofLoadMatrix(&m)

<!--
_syntax: ofLoadMatrix(&m)_
_name: ofLoadMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
_version_started: _
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

###void ofLoadMatrix(*m)

<!--
_syntax: ofLoadMatrix(*m)_
_name: ofLoadMatrix_
_returns: void_
_returns_description: _
_parameters: const float *m_
_version_started: _
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

###void ofLoadViewMatrix(&m)

<!--
_syntax: ofLoadViewMatrix(&m)_
_name: ofLoadViewMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
_version_started: 0.9.0_
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

###void ofMultMatrix(&m)

<!--
_syntax: ofMultMatrix(&m)_
_name: ofMultMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
_version_started: _
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

###void ofMultMatrix(*m)

<!--
_syntax: ofMultMatrix(*m)_
_name: ofMultMatrix_
_returns: void_
_returns_description: _
_parameters: const float *m_
_version_started: _
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

###void ofMultViewMatrix(&m)

<!--
_syntax: ofMultViewMatrix(&m)_
_name: ofMultViewMatrix_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &m_
_version_started: 0.9.0_
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

###void ofNextContour(bClose)

<!--
_syntax: ofNextContour(bClose)_
_name: ofNextContour_
_returns: void_
_returns_description: _
_parameters: bool bClose=false_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Allows you to draw multiple contours within one shape. Call this
between ofBeginShape() and ofEndShape() to create a new contour for your
shape.


Parameters:
bClose If set to true then the previous contour will be
automatically closed. Default false





_description: _

Allows you to draw multiple contours within one shape. Call this between ofBeginShape() and ofEndShape() to create a new contour for your shape. If you set the optional argument 'bClose' to true then the previous contour will be automatically closed. 'bClose' is set to false by default.





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

_inlined_description: _

Draw shapes as outlines with the current draw color.
~~~~{.cpp}
void ofApp::draw(){
    ofSetColor(0,0,255);
    ofNoFill();
    ofDrawRectangle(10,10,100,100);  //draws only the outline in blue
}
~~~~





_description: _

Draw shapes as outlines with the current draw color.
~~~~{.cpp}
void ofApp::draw(){
    ofSetColor(0,0,255);
    ofNoFill();
    ofDrawRectangle(10,10,100,100);  //draws only the outline in blue
}
~~~~





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

_inlined_description: _







_description: _







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

_inlined_description: _

Restores the prior coordinate system.


See also: ofPushMatrix()





_description: _

ofPopMatrix() restores the prior coordinate system.
~~~~{.cpp}
void ofApp::draw(){
    ofDrawCircle(10, 10, 5);      // draw a circle
    ofPushMatrix();               // push the current coordinate position
    ofRotateX(90);                // change the coordinate system
    ofDrawRectangle(10,10,40,40); // draw a rect
    ofPopMatrix();                // recall the pushed coordinate position
}
~~~~





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

_inlined_description: _

Restores the prior style settings. It needs to be called after ofPushStyle.


See also: ofPushStyle()





_description: _

ofPopStyle() restores the prior style settings. It needs to be called after ofPushStyle.
~~~~{.cpp}
void ofApp::draw(){
    ofDrawCircle(10,10,5);
    ofPushStyle();           // push the current style for use later
    ofFill();
    ofsetColor(255,0,0);
    ofDrawEllipse(30,10,40,40);
    ofPopStyle();   // recall the pushed style
}
~~~~





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

_inlined_description: _







_description: _







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

_inlined_description: _

Saves the current coordinate system allowing users to develop specific
movements in some graphic objects. ofPopMatrix needs to be called after.

In the following example we only rotate the square.
~~~~{.cpp}
void ofApp::draw(){
    ofPushMatrix();             // push the current coordinate position
    ofRotateX(90);              // change the coordinate system
    ofDrawRea10,10,40,40);      // draw a rect
    ofPopMatrix()               // recall the pushed coordinate position
    ofDrawCircle(10, 10, 5);    // draw a circle
}
~~~~





_description: _

ofPushMatrix saves the current coordinate system allowing users to develop specific movements in some graphic objects. ofPopMatrix needs to be called after.
In the following example we only rotate the square.
~~~~{.cpp}
void ofApp::draw(){
    ofDrawCircle(10,10,5); // draw a circle
    ofPushMatrix();        // push the current coordinate position
    ofRotateX(90);         // change the coordinate system
    ofDrawRectangle(10,10,40,40);    // draw a rect
    ofPopMatrix()          // recall the pushed coordinate position
}
~~~~





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

_inlined_description: _

Saves the current style settings for the ofGraphics after its call.
Usage of ofPushStyle and ofPopStyle allow users to have more control of
certain graphics elements. All the style that applies to certain elements
is controled using ofStyle class. See ofStyle type.

In the following example the properties of being red and filled only applies to the ellipse:
~~~~{.cpp}
void ofApp::draw(){
    ofPushStyle();  // push the current style for use later
    ofFill();
    ofSetColor(255,0,0);
    ofDrawEllipse(30,10,40,40);
    ofPopStyle();   // recall the pushed style

    ofDrawCircle(10,10,5);
}
~~~~
sa ofPopStyle()





_description: _

ofPushStyle saves the current style settings for the ofGraphics after its call. Usage of ofPushStyle and ofPopStyle allow users to have more control of certain graphics elements. All the style that applies to certain elements is controled using ofStyle class. See ofStyle type.
In the following example the properties of being red and filled only applies to the ellipse:
~~~~{.cpp}
void ofApp::draw(){
    ofDrawCircle(10,10,5);
    ofPushStyle();  // push the current style for use later
    ofFill();
    ofSetColor(255,0,0);
    ofDrawEllipse(30,10,40,40);
    ofPopStyle();   // recall the pushed style
}
~~~~





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

_inlined_description: _

\}
\name View Setup
\{





_description: _







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

_inlined_description: _

Produces a rotation around the vector (vecX,vecY,vecZ).

All graphics drawn after ofRotate is called are rotated. Use ofPushMatrix()
and ofPopMatrix() to save and restore the unrotated coordinate system.
~~~~{.cpp}
void ofApp::draw(){
    ofRotate(50, 1, 0.5, 0); //rotates the coordinate system 50 degrees along the x-axis and 25 degrees on the y-axis
    ofDrawRectangle(20,20,100,100);
}
~~~~


Parameters:
degrees Specifies the angle of rotation, in degrees.
vecX specifies the x coordinates of a vector
vecY specifies the y coordinates of a vector
vecZ specifies the z coordinates of a vector





_description: _

ofRotate produces a rotation of angle "degrees" around the vector (vecX,vecY,vecZ).
"degrees"specifies the angle of rotation, in degrees. vecX, vecY, vecZ specify the x, y, and z coordinates of a vector, respectively.
All graphics drawn after ofRotate is called are rotated. Use ofPushMatrix and ofPopMatrix to save and restore the unrotated coordinate system.
~~~~{.cpp}
void ofApp::draw(){
    ofRotate(50, 1, 0.5, 0); //rotates the coordinate system 50 degrees along the x-axis and 25 degrees on the y-axis
    ofDrawRectangle(20,20,100,100);
}
~~~~





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

_inlined_description: _

Rotate around the z-axis





_description: _







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

_inlined_description: _

Produces a rotation around the X-axis of our coordinate
system represented by the vector (1,0,0).
~~~~{.cpp}
void ofApp::draw(){
    ofRotateX(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRea20,20,100,100);
}
~~~~

Parameters:
degrees Specifies the angle of rotation, in degrees.





_description: _

ofRotateX produces a rotation of angle "degrees" around the X-axis of our coordinate system represented by the vector (1,0,0)."degrees"specifies the angle of rotation, in degrees.
~~~~{.cpp}
void ofApp::draw(){
    ofRotateX(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRectangle(20,20,100,100);
}
~~~~





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

_inlined_description: _

Produces a rotation around the Y-axis of our coordinate
system represented by the vector (1,0,0).
~~~~{.cpp}
void ofApp::draw(){
    ofRotateY(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRectangle(20,20,100,100);
}
~~~~

Parameters:
degrees Specifies the angle of rotation, in degrees.





_description: _

ofRotateY produces a rotation of angle "degrees" around the Y-axis of our coordinate system represented by the vector (0,1,0).
"degrees"specifies the angle of rotation, in degrees.
~~~~{.cpp}
void ofApp::draw(){
    ofRotateY(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRectangle(20,20,100,100);
}
~~~~





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

_inlined_description: _

Produces a rotation around the Z-axis of our coordinate
system represented by the vector (1,0,0).
~~~~{.cpp}
void ofApp::draw(){
    ofRotateZ(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRea20,20,100,100);
}
~~~~

Parameters:
degrees Specifies the angle of rotation, in degrees.





_description: _

ofRotateZ produces a rotation of angle "degrees" around the Z-axis of our coordinate system represented by the vector (0,0,1).
"degrees"specifies the angle of rotation, in degrees.
~~~~{.cpp}
void ofApp::draw(){
    ofRotateZ(45); //rotates the coordinate system 45 degrees around the x-axis
    ofDrawRectangle(20,20,100,100);
}
~~~~





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

_inlined_description: _







_description: _

ofScale produces a nonuniform scaling along the x, y, and z axes. The three parameters xAmnt, yAmnt and zAmnt indicate the desired scale factor along each of the three axes.
e.g:
~~~~{.cpp}
void ofApp::draw(){
    ofScale(0.5,1,1);       // scale 0.5 in height
    ofDrawRectangle(10,10,40,40);    // draw a square rectangle
}
~~~~
Rectangle width will be now 20px heigh!





<!----------------------------------------------------------------------------->

###void ofSetBackgroundAuto(bAuto)

<!--
_syntax: ofSetBackgroundAuto(bAuto)_
_name: ofSetBackgroundAuto_
_returns: void_
_returns_description: _
_parameters: bool bManual_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets the background clearing function to be auto (default) or not. If non-
auto, then background clearing will not occur per frame (at the start of
draw) but rather, whenever ofBackground is called.

~~~~{.cpp}
void ofApp::setup(){
    ofSetBackgroundAuto(false); //disable automatic background redraw
}
void ofApp::draw(){
    if(ofGetFrameNum() % 10 == 0){
        // draws a black background every 10 frames
        ofSetBackground(0,0,0);
    }
}
~~~~





_description: _

Sets the background clearing function to be auto (default) or not. If non-auto, then background clearing will not occur per frame (at the start of draw) but rather, whenever ofBackground is called.
~~~~{.cpp}
void ofApp::setup(){
    ofSetBackgroundAuto(false); //disable automatic background redraw
}
void ofApp::draw(){
    if(ofGetFrameNum() % 10 == 0){
        // draws a black background every 10 frames
        ofSetBackground(0,0,0);
    }
}
~~~~





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

_inlined_description: _

Sets the background color. It takes as input r,g,b (0-255). The
background is cleared automatically, just before the draw() command, so
if the background color is not changing, you could call this inside
setup() (once, at the start of the application). If the background color
is changing, you can call this inside update().

~~~~{.cpp}
void ofApp::setup(){
    ofSetBackgroundColor(255,0,0);  // Sets the background color to red
}
~~~~





_description: _

Sets the background color. It takes as input r,g,b (0-255). The background is cleared automatically, just before the draw() command, so if the background color is not changing, you could call this inside of setup() (once, at the start of the application). If the background color is changing, you can call this inside of update().
~~~~{.cpp}
void ofApp::setup(){
    ofSetBackgroundColor(255,0,0);  // Sets the background color to red
}
~~~~





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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _

Sets the background color using a hex color value.
~~~~{.cpp}
void ofApp::setup(){
    ofSetBackgroundColorHex(0xff0000);  // Sets the background color to red
}
~~~~





_description: _

Sets the background color using a hex color value.
~~~~{.cpp}
void ofApp::setup(){
    ofSetBackgroundColorHex(0xff0000);  // Sets the background color to red
}
~~~~





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

_inlined_description: _

Sets the resolution for the ofDrawCircle command. By default, the circle is 22
points, but if you need to draw larger circles, you can adjust the
resolution using this command. All circles are cached in openGL using a
display list for optimization purposes.

~~~~{.cpp}
void ofApp::draw(){
    ofSetCircleResolution(10);
    ofDrawCircle(150,150,100);          //draws a rough circle
    ofSetCircleResolution(100);
    ofDrawCircle(450,150,100);          //draws a fine circle
}
~~~~





_description: _

Sets the resolution for the ofDrawCircle command. By default, the circle is 22 points, but if you need to draw larger circles, you can adjust the resolution using this command. all circles are cached in opengl using a display list for optimization purposes.
~~~~{.cpp}
void ofApp::draw(){
    ofSetCircleResolution(10);
    ofDrawCircle(150,150,100);          //draws a rough circle
    ofSetCircleResolution(100);
    ofDrawCircle(450,150,100);          //draws a fine circle
}
~~~~





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

_inlined_description: _

Sets the draw color with r,g,b, 0-255. For example, red would
be: ofSetColor(255,0,0). This affects not only the color of shapes drawn
with ofDrawRectangle(), ofDrawCircle(), etc, but also the tint of images and
textures.

~~~~{.cpp}
void ofApp::draw(){
    ofSetColor(0,0,255);    //set the color to blue
    ofDrawRectangle(10,10,100,100);
}
~~~~





_description: _

Sets the draw color with r,g,b, 0-255. For example, red (0xff0000) would be: ofSetColor(255,0,0). This affects not only the color of shapes drawn with ofDrawRectangle(...), ofDrawCircle(...), etc, but also the tint of images and textures.
~~~~{.cpp}
void ofApp::draw(){
    ofSetColor(0,0,255);    //set te color to blue
    ofDrawRectangle(10,10,100,100);
}
~~~~





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

_inlined_description: _

Sets the draw color with r,g,b,a 0-255.

For alpha (transparency), you must first enable transparent blending
(turned off by default for performance reasons) with
ofEnableAlphaBlending()

~~~~{.cpp}
void ofApp::draw(){
    ofEnableAlphaBlending();    // turn on alpha blending
    ofSetColor(255,0,0,127);    // red, 50% transparent
    ofDrawRectangle(20,20,100,100);
    ofDisableAlphaBlending();   // turn it back off, if you don't need it
}
~~~~





_description: _

sets the draw color with r,g,b,a 0-255. For alpha (transparency), you must first enable transparent blending (turned off by default for performance reasons), and draw in the proper z-order (objects in the back drawn first). For example, to draw a transparent red rectangle:
~~~~{.cpp}
void ofApp::draw(){
    ofEnableAlphaBlending();    // turn on alpha blending
    ofSetColor(255,0,0,127);    // red, 50% transparent
    ofDrawRectangle(20,20,100,100);
    ofDisableAlphaBlending();   // turn it back off, if you don't need it
}
~~~~





<!----------------------------------------------------------------------------->

###void ofSetColor(hexColor)

<!--
_syntax: ofSetColor(hexColor)_
_name: ofSetColor_
_returns: void_
_returns_description: _
_parameters: int gray_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _

Sets the draw color with r,g,b, passed in as a hex. Hex is a conventient way to write colors. Some examples:
~~~~{.cpp}
void ofApp::draw(){
    ofSetColor(0xffffff);  // white  (255,255,255)
    ofSetColor(0x000000);  // black  (0,0,0);
    ofSetColor(0x00ff00);  // green  (0,255,0);
}
~~~~





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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void ofSetDepthTest(depthTest)

<!--
_syntax: ofSetDepthTest(depthTest)_
_name: ofSetDepthTest_
_returns: void_
_returns_description: _
_parameters: bool depthTest_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set depth testing on or off to either sort by z-depth (`true`)
or draw order (`false`).





_description: _

Set depth testing on or off to either sort by z-depth (true) or draw order (false).





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

_inlined_description: _

Set the bitmap drawing mode

Valid modes:

    OF_BITMAPMODE_SIMPLE
    OF_BITMAPMODE_SCREEN
    OF_BITMAPMODE_VIEWPORT
    OF_BITMAPMODE_MODEL
    OF_BITMAPMODE_MODEL_BILLBOARD





_description: _

takes OF_BITMAPMODE_SIMPLE, OF_BITMAPMODE_SCREEN, OF_BITMAPMODE_VIEWPORT, OF_BITMAPMODE_MODEL and OF_BITMAPMODE_MODEL_BILLBOARD





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

_inlined_description: _

Sets the draw color with r,g,b, passed in as a hex. Hex is a conventient
way to write colors.

~~~~{.cpp}
void ofApp::draw(){
    ofSetColor(0xffffff);  // white  (255,255,255)
    ofSetColor(0x000000);  // black  (0,0,0);
    ofSetColor(0x00ff00);  // green  (0,255,0);
}
~~~~





_description: _

Sets the draw color with a hex value.
~~~~{.cpp}
void ofApp::draw(){
    ofSetHexColor(0xff0000);    //set te color to red
    ofDrawRectangle(10,10,100,100);
}
~~~~





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

_inlined_description: _

Sets the width of the ofDrawLine() called after.
~~~~{.cpp}
void ofApp::draw(){
    ofSetLineWidth(1);          // set line width to 1
    ofDrawLine(10,10,100,100);  // draw thin line
    ofSetLineWidth(10);         // set line width to 10
    ofDrawLine(10,100,100,10);  // draw fat line
}
~~~~





_description: _

ofSetLineWidth sets the width of the ofDrawLines called after.
~~~~{.cpp}
void ofApp::draw(){
    ofSetLineWidth(1);          // set line width to 1
    ofDrawLine(10,10,100,100);  // draw thin line
    ofSetLineWidth(10);         // set line width to 10
    ofDrawLine(10,100,100,10);  // draw fat line
}
~~~~





<!----------------------------------------------------------------------------->

###void ofSetMatrixMode(matrixMode)

<!--
_syntax: ofSetMatrixMode(matrixMode)_
_name: ofSetMatrixMode_
_returns: void_
_returns_description: _
_parameters: ofMatrixMode matrixMode_
_version_started: _
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

_inlined_description: _

Sets the drawing behavior for overlapping parts of the same polygon.

Possible modes are:

    OF_POLY_WINDING_ODD
    OF_POLY_WINDING_NONZERO
    OF_POLY_WINDING_POSITIVE
    OF_POLY_WINDING_NEGATIVE
    OF_POLY_WINDING_ABS_GEQ_TWO





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

_inlined_description: _

Sets the mode for drawing rectangles and other rectangular objects, if
they are corner aligned, or drawn so that the x,y position is the center
of the rectangle. possible options are `OF_RECTMODE_CENTER` and
`OF_RECTMODE_CORNER`. This affects not only how ofDrawRectangle() objects are drawn,
but also ofTexture (and therefore ofImage) objects.

~~~~{.cpp}
void ofApp::draw(){
    ofSetRectMode(OF_RECTMODE_CORNER); //set rectangle mode to the corner
    ofDrawRectangle(10,10,80,80);
    ofSetRectMode(OF_RECTMODE_CENTER); //set rectangle mode to the center
    ofDrawRectangle(50,50,80,80);
    // both rectangles are drawn at the same place
}
~~~~





_description: _







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

_inlined_description: _

Set the current style of the ofGraphics.

Parameters:
style contains information of the graphics style such as
ofColor, ofFill, polyMode and others.


See also: See ofStyle for more details.





_description: _

We use ofSetStyle to set the current style of the ofGraphics. Parameter style contains information of the graphics style such as ofColor, ofFill, polyMode and others. See ofStyle for more details.





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

_inlined_description: _

Resets openGL screen coordinates and values back to OF defaults.





_description: _

Resets openGL parameters back to OF defaults.





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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void ofSetupScreenOrtho(width = 0, height = 0, nearDist = -1, farDist = 1)

<!--
_syntax: ofSetupScreenOrtho(width = 0, height = 0, nearDist = -1, farDist = 1)_
_name: ofSetupScreenOrtho_
_returns: void_
_returns_description: _
_parameters: float width, float height, float nearDist, float farDist_
_version_started: _
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

###void ofSetupScreenPerspective(width = 0, height = 0, fov = 60, nearDist = 0, farDist = 0)

<!--
_syntax: ofSetupScreenPerspective(width = 0, height = 0, fov = 60, nearDist = 0, farDist = 0)_
_name: ofSetupScreenPerspective_
_returns: void_
_returns_description: _
_parameters: float width, float height, float fov, float nearDist, float farDist_
_version_started: _
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

_inlined_description: _

Translate by (x,y,z) vector of our coordinate system.
The call of ofTranslate() modifies graphics positions.

Use ofPushMatrix() and ofPopMatrix() to save and restore the untranslated
coordinate system.
~~~~{.cpp}
void ofApp::draw(){
    ofTranslate(100, 100, 0);   // move the coordinate system to position x 100 and y 100 and make that zero.
    ofDrawRectangle(0, 0, 10, 10);       // draw a rect at that position
}
~~~~





_description: _

ofTranslate produces a translation by (x,y,z) vector of our coordinate system. The call of ofTranslate modifies graphics positions.
Use ofPushMatrix and ofPopMatrix to save and restore the untranslated coordinate system.
~~~~{.cpp}
void ofApp::draw(){
    ofTranslate(100, 100, 0);   // move the coordinate system to position x 100 and y 100 and make that zero.
    ofDrawRectangle(0, 0, 10, 10);       // draw a rect at that position
}
~~~~





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

_inlined_description: _







_description: _

ofTranslate produces a translation by (x,y,z) vector of our coordinate system. The call of ofTranslate modifies graphics positions.
Use ofPushMatrix and ofPopMatrix to save and restore the untranslated coordinate system.
~~~~{.cpp}
void ofApp::draw(){
    ofPoint point;
    point.x = 100;
    point.y = 100;

    ofTranslate(point);     // move the coordinate system to position of point and make that zero.
    ofDrawRectangle(0, 0, 10, 10);   // draw a rect at that position
}
~~~~





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

_inlined_description: _

Specifies a single point of a shape. To be called between ofBeginShape() and
ofEndShape().





_description: _

Specifies a single point of a shape. To be called between ofBeginShape() and ofEndShape().





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

_inlined_description: _







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

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void ofVertices(&polyPoints)

<!--
_syntax: ofVertices(&polyPoints)_
_name: ofVertices_
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

_inlined_description: _







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

_inlined_description: _

Setup the drawing viewport

Parameters:
viewport A rectangle describing the size and position of the viewport.
If the width or height are set to 0, it will assume the size to be the window
size (ofGetWidth(), ofGetHeight())





_description: _







<!----------------------------------------------------------------------------->

###void ofViewport(x = 0, y = 0, width = 0, height = 0, invertY = true)

<!--
_syntax: ofViewport(x = 0, y = 0, width = 0, height = 0, invertY = true)_
_name: ofViewport_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height, bool vflip_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Setup the drawing viewport

Parameters:
x The x position of the viewport
y The y position of the viewport
width The width of the viewport, defaults to ofGetWidth()
height The height of the viewport, defaults to ofGetHeight()





_description: _







<!----------------------------------------------------------------------------->
