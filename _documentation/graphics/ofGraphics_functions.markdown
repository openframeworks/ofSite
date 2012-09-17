#functions

##Description





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
~~~~{.cpp}
void testApp::draw(){
	ofCircle(10, 10, 5);	// draw a circle
	ofPushMatrix();			// push the current coordinate position
	ofRotateX(90);			// change the coordinate system
	ofRect(10,10,40,40);	// draw a rect
	ofPopMatrix()			// recall the pushed coordinate position
}
~~~~






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

ofPopMatrix() restores the prior coordinate system. 
~~~~{.cpp}
void testApp::draw(){
	ofCircle(10, 10, 5);	// draw a circle
	ofPushMatrix();			// push the current coordinate position
	ofRotateX(90);			// change the coordinate system
	ofRect(10,10,40,40);	// draw a rect
	ofPopMatrix();			// recall the pushed coordinate position
}
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofTranslate(100, 100, 0);	// move the coordinate system to position x 100 and y 100 and make that zero.
	ofRect(0, 0, 10, 10);		// draw a rect at that position
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

_description: _
ofTranslate produces a translation by (x,y,z) vector of our coordinate system. The call of ofTranslate modifies graphics positions.
Use ofPushMatrix and ofPopMatrix to save and restore the untranslated coordinate system.
~~~~{.cpp}
void testApp::draw(){
	ofPoint point;
	point.x = 100;
	point.y = 100;
	
	ofTranslate(point);		// move the coordinate system to position of point and make that zero.
	ofRect(0, 0, 10, 10);	// draw a rect at that position
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

_description: _

ofScale produces a nonuniform scaling along the x, y, and z axes. The three parameters xAmnt, yAmnt and zAmnt indicate the desired scale factor along each of the three axes.
e.g:
~~~~{.cpp}
void testApp::draw(){
	ofScale(0.5,1,1);		// scale 0.5 in height
	ofRect(10,10,40,40);	// draw a square rectangle	
}
~~~~
Rectangle width will be now 20px heigh!






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
"degrees"specifies the angle of rotation, in degrees. vecX, vecY, vecZ specify the x, y, and z coordinates of a vector, respectively.
All graphics drawn after ofRotate is called are rotated. Use ofPushMatrix and ofPopMatrix to save and restore the unrotated coordinate system.
~~~~{.cpp}
void testApp::draw(){
	ofRotate(50, 1, 0.5, 0); //rotates the coordinate system 50 degrees along the x-axis and 25 degrees on the y-axis
	ofRect(20,20,100,100);		
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

_description: _

ofRotateX produces a rotation of angle "degrees" around the X-axis of our coordinate system represented by the vector (1,0,0)."degrees"specifies the angle of rotation, in degrees.
~~~~{.cpp}
void testApp::draw(){
	ofRotateX(45); //rotates the coordinate system 45 degrees around the x-axis
	ofRect(20,20,100,100);		
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

_description: _

ofRotateY produces a rotation of angle "degrees" around the Y-axis of our coordinate system represented by the vector (0,1,0).
"degrees"specifies the angle of rotation, in degrees.
~~~~{.cpp}
void testApp::draw(){
	ofRotateY(45); //rotates the coordinate system 45 degrees around the x-axis
	ofRect(20,20,100,100);		
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

_description: _

ofRotateZ produces a rotation of angle "degrees" around the Z-axis of our coordinate system represented by the vector (0,0,1).
"degrees"specifies the angle of rotation, in degrees.
~~~~{.cpp}
void testApp::draw(){
	ofRotateZ(45); //rotates the coordinate system 45 degrees around the x-axis
	ofRect(20,20,100,100);		
}
~~~~





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

Tells you if rect drawing mode is set to drawn from the center or drawn from the top left corner, as set with the ofSetRectMode() function.
~~~~{.cpp}
void testApp::draw(){
	if(ofGetRectMode() == OF_RECTMODE_CORNER){
		ofRect(10,10,80,80);	
	}
	else {
		ofRect(50,50,80,80);
	}
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

_description: _

Sets the resolution for the ofCircle command. By default, the circle is 22 points, but if you need to draw larger circles, you can adjust the resolution using this command. all circles are cached in opengl using a display list for optimization purposes.
~~~~{.cpp}
void testApp::draw(){
	ofSetCircleResolution(10);		
	ofCircle(150,150,100);			//draws a rough circle
	ofSetCircleResolution(100);
	ofCircle(450,150,100);			//draws a fine circle
}    
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofSetColor(0,0,255);
	ofNoFill();
	ofRect(10,10,100,100); 	//draws only the outline in blue
}    
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofSetColor(0,0,255);
	ofFill();
	ofRect(10,10,100,100); 	//draws the rectangle filled in blue
}    
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofSetLineWidth(1);		// set line width to 1
	ofLine(10,10,100,100);	// draw thin line
	ofSetLineWidth(10);		// set line width to 10
	ofLine(10,100,100,10);	// draw fat line
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

_description: _

Sets the draw color with r,g,b, 0-255. For example, red (0xff0000) would be: ofSetColor(255,0,0). This affects not only the color of shapes drawn with ofRect(...), ofCircle(...), etc, but also the tint of images and textures.
~~~~{.cpp}
void testApp::draw(){
	ofSetColor(0,0,255); 	//set te color to blue
	ofRect(10,10,100,100); 
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

_description: _

sets the draw color with r,g,b,a 0-255. For alpha (transparency), you must first enable transparent blending (turned off by default for performance reasons), and draw in the proper z-order (objects in the back drawn first). For example, to draw a transparent red rectangle: 
~~~~{.cpp}
void testApp::draw(){
	ofEnableAlphaBlending();	// turn on alpha blending
	ofSetColor(255,0,0,127);	// red, 50% transparent
	ofRect(20,20,100,100);
	ofDisableAlphaBlending();	// turn it back off, if you don't need it
}
~~~~






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
~~~~{.cpp}
void testApp::draw(){
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
~~~~{.cpp}
void testApp::draw(){
	ofEnableAlphaBlending();	// turn on alpha blending
	ofSetColor(255,0,0,127);	// red, 50% transparent
	ofRect(20,20,100,100);		// draws the rect with alpha
	ofDisableAlphaBlending();	// turn off alpha
	ofRect(120,20,100,100);	// draws the rect without alpha
}
~~~~




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
~~~~{.cpp}
void testApp::draw(){
	ofEnableAlphaBlending();	// turn on alpha blending
	ofSetColor(255,0,0,127);	// red, 50% transparent
	ofRect(20,20,100,100);		// draws the rect with alpha
	ofDisableAlphaBlending();	// turn off alpha
	ofRect(120,20,100,100);	// draws the rect without alpha
}
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofCircle(10,10,5);
	ofPushStyle();	// push the current style for use later
	ofFill();
	ofSetColor(255,0,0);
	ofEllipse(30,10,40,40);
	ofPopStyle();	// recall the pushed style
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

_description: _

ofPopStyle() restores the prior style settings. It needs to be called after ofPushStyle. 
~~~~{.cpp}
void testApp::draw(){
	ofCircle(10,10,5);
	ofPushStyle();	// push the current style for use later
	ofFill();
	ofsetColor(255,0,0);
	ofEllipse(30,10,40,40);
	ofPopStyle();	// recall the pushed style
}    
~~~~





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

Sets the mode for drawing rectangles and other rectangular objects, if they are corner aligned, or drawn so that the x,y position is the center of the rectangle. possible options are OF_RECTMODE_CENTER and OF_RECTMODE_CORNER. This afects not only how ofRect() objects are drawn, but also ofTexture (and threfore ofImage) objects. 
~~~~{.cpp}
void testApp::draw(){
	ofSetRectMode(OF_RECTMODE_CORNER); //set rectangle mode to the corner
	ofRect(10,10,80,80);	
	ofSetRectMode(OF_RECTMODE_CENTER); //set rectangle mode to the center
	ofRect(50,50,80,80);
	// both rectangles are drawn at the same place
}    
~~~~





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

Gets the current background color that is set by ofBackground() or default.
eg:
~~~~{.cpp}
float * bgColor = ofBgColorPtr();
//lets get the individual values!
float r = bgColor[0];	//red
float g = bgColor[1];	//green
float b = bgColor[2];	//blue
float a = bgColor[3];	//alpha
~~~~






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
~~~~{.cpp}
void testApp::setup(){
	ofBackground(255,0,0); 	// Sets the background color to red
}    
~~~~




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

###void ofBackgroundGradient()

<!--
_syntax: ofBackgroundGradient()_
_name: ofBackgroundGradient_
_returns: void_
_returns_description: _
_parameters: 
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _


undocumented!!




<!----------------------------------------------------------------------------->

notfound:ofBackgroundGradient


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
~~~~{.cpp}
void testApp::setup(){
	ofSetBackgroundAuto(false); //disable automatic background redraw
}    
void testApp::draw(){
	if(ofGetFrameNum() % 10 == 0){
		// draws a black background every 10 frames
		ofBackground(0,0,0);
	}
}
~~~~


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

Tells you if background clearing is set to be automatic or manual by the ofSetBackgroundAuto() function.
~~~~{.cpp}
void testApp::draw(){
	if(!ofbClearBg()){
		// draws a black background if the background is not drawn automaticly
		ofBackground(0,0,0);
	}
}
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofTriangle(50,10,10,40,90,40);
}    
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofCircle(150,150,100);			
}    
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofEllipse(10,10,50,30);
}    
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofLine(10,10,100,100);
}    
~~~~





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
~~~~{.cpp}
void testApp::draw(){
	ofRect(10,10,100,100);
}    
~~~~





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

Draws an rectangle from the given rectangle.
~~~~{.cpp}
void testApp::draw(){
	ofRectangle rect;
	rect.x = 10;
	rect.y = 10;
	rect.width = 100;
	rect.height = 100;
	
	ofRect(rect);
}    
~~~~





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


Draws an rectangle from point p, with a given width and height.

~~~~{.cpp}
void testApp::draw(){
	ofPoint p;		// create a point P
	p.x = 10;		// set the x of the point
	p.y = 10;		// set the y of the point
	
	ofRect(p, 80, 80); // Draw the rectangle
}    
~~~~



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


Draws an rectangle from point X, Y at depth Z with a given width and height.

~~~~{.cpp}
void testApp::draw(){
	ofRect(10,10,-100, 80, 80); // Draw a rectangle at 100 pixels in depth
}    
~~~~


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


Draws a 3-dimensional curve from point (x1, y1, z1) to point (x2, y2, z2). The curve is shaped by the two control points (x0, y0, z0) and (x3, y3, z3).




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



Draws a 3-dimensional sphere at X, Y and Z with the given radius.

~~~~{.cpp}
void testApp::draw(){
	ofSphere(50,50,-10,40);
}    
~~~~


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



Draws a 3-dimensional sphere at X and Y at the current depth with the given radius.
~~~~{.cpp}
void testApp::draw(){
	ofSphere(50,50,40);
}    
~~~~


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



Draws a 3-dimensional sphere at position by point with the given radius.
~~~~{.cpp}
void testApp::draw(){
	ofPoint p;
	p.x = 50;
	p.y = 50;
	ofSphere(p, 40);
}    
~~~~


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



Draws a 3-dimensional sphere with the given radius.
~~~~{.cpp}
void testApp::draw(){
	ofTranslate(50,50,0);
	ofSphere(40);
}    
~~~~



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



Draws a 3-dimensional box with equal sides (size) at the position of X and Y and Z.
~~~~{.cpp}
void testApp::draw(){
	ofBox(50,50,-10,40);
}    
~~~~



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



Draws a 3-dimensional box with equal sides (size) at the position of X and Y, at the current depth.
~~~~{.cpp}
void testApp::draw(){
	ofBox(50,50,40);
}    
~~~~


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


Draws a 3-dimensional box with equal sides (size) at the position of point.
~~~~{.cpp}
void testApp::draw(){
	ofPoint p;
	p.x = 50;
	p.y = 50;
	ofBox(p,40);
}    
~~~~



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


Draws a 3-dimensional box with equal sides at the current coordinate point.
~~~~{.cpp}
void testApp::draw(){
	ofTranslate(50,50);
	ofBox(40);
}    
~~~~



<!----------------------------------------------------------------------------->
###void ofCone(size)

<!--
_syntax: ofCone(size)_
_name: ofCone_
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


undocumented!



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


takes OF_BITMAPMODE_SIMPLE, OF_BITMAPMODE_SCREEN, OF_BITMAPMODE_VIEWPORT, OF_BITMAPMODE_MODEL and OF_BITMAPMODE_MODEL_BILLBOARD



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
~~~~{.cpp}
void testApp::draw(){
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
Please note, ofDrawBitmapString wraps a glut function that uses glDrawPixels. On some graphics cards, you may discover that glDrawPixels is slow (or even, very slow). If so, you might want to invsetigate using ofTrueTypeFont with a small typeface, non-anti-aliased, as a suitable alternative.






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

###void ofDrawBitmapStringHighlight()

<!--
_syntax: ofDrawBitmapStringHighlight()_
_name: ofDrawBitmapStringHighlight_
_returns: void_
_returns_description: _
_parameters: 
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

undocumented!





<!----------------------------------------------------------------------------->

