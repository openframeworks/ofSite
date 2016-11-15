#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###void ofDrawBox(x, y, z, width, height, depth)

<!--
_syntax: ofDrawBox(x, y, z, width, height, depth)_
_name: ofDrawBox_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height, float depth_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rectangular box with the specified dimensions, starting from the specified coordinates.

A box is a rectangular solid: an extruded rectangle.
It is drawn starting from a 3D reference coordinate.
It has a width (in x), a height (in y), and a depth (in z).
The box is drawn with the current color, e.g. set with ofSetColor().
The box is drawn filled by default; change this with ofFill();


Parameters:
x The x-coordinate of the box's origin.
y The y-coordinate of the box's origin.
z The z-coordinate of the box's origin.
width The width of the box.
height The height of the box.
depth The depth of the box.





_description: _

Draws a rectangular box with the specified dimensions, starting from the specified coordinates. 
A box is a rectangular solid: an extruded rectangle. It is drawn starting from a 3D reference coordinate. It has a width (in x), a height (in y), and a depth (in z). The box is drawn with the current color, e.g. set with ofSetColor(). The box is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cuboid slightly off the center of the canvas so to see the 3d shape.

    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawBox(ofGetWidth() * .5, ofGetHeight() * .7, 0, 200, 100, 200);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawBox(x, y, z, size)

<!--
_syntax: ofDrawBox(x, y, z, size)_
_name: ofDrawBox_
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

_inlined_description: _

Draws a cube with the specified size, starting from the specified coordinates.

A cube is a rectangular solid bounded by six square faces of equal size.
It is also known as a regular hexahedron, a square parallelepiped, an equilateral cuboid
and a right rhombohedron. It is a regular square prism in three orientations.

It is drawn starting from a 3D reference coordinate, with the specified size.
The cube is drawn with the current color, e.g. set with ofSetColor().
The cube is drawn filled by default; change this with ofFill();


Parameters:
x The x-coordinate of the cube's origin.
y The y-coordinate of the cube's origin.
z The z-coordinate of the cube's origin.
size The size of the cube.





_description: _

Draws a cube with the specified size, starting from the specified coordinates. 

A cube is a rectangular solid bounded by six square faces of equal size. It is also known as a regular hexahedron, a square parallelepiped, an equilateral cuboid and a right rhombohedron. It is a regular square prism in three orientations.

It is drawn starting from a 3D reference coordinate, with the specified size. The cube is drawn with the current color, e.g. set with ofSetColor(). The cube is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a blue cube slightly off the center of the canvas so to see the 3d shape.
    //(note that you cannot draw a rectangular cuboid with this function ... only a cube)
    ofSetColor(0, 0, 255);
    ofFill();
    ofDrawBox(ofGetWidth() * .5, ofGetHeight() * .7, 0, 200);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawBox(&position, width, height, depth)

<!--
_syntax: ofDrawBox(&position, width, height, depth)_
_name: ofDrawBox_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float width, float height, float depth_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rectangular box with the specified dimensions, starting from the specified position.

A box is a rectangular solid: an extruded rectangle.
It is drawn starting from a 3D reference coordinate.
It has a width (in x), a height (in y), and a depth (in z).
The box is drawn with the current color, e.g. set with ofSetColor().
The box is drawn filled by default; change this with ofFill();


Parameters:
position an ofPoint which contains the (x,y,z) coordinates for the box's reference corner.
width The width of the box.
height The height of the box.
depth The depth of the box.





_description: _

Draws a rectangular box with the specified dimensions, starting from the specified position. 

A box is a rectangular solid: an extruded rectangle. It is drawn starting from a 3D reference coordinate. It has a width (in x), a height (in y), and a depth (in z). The box is drawn with the current color, e.g. set with ofSetColor(). The box is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green rectangular cuboid slightly off the center of the canvas so to see the 3d shape.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawBox(ofPoint(ofGetWidth() * .5, ofGetHeight() * .7, 0), 100, 200,300);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}
~~~~





<!----------------------------------------------------------------------------->

###void ofDrawBox(&position, size)

<!--
_syntax: ofDrawBox(&position, size)_
_name: ofDrawBox_
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

_inlined_description: _

Draws a cube with the specified size, starting from the specified position.

A cube is drawn starting from a 3D reference position, with the specified size.
The cube is drawn with the current color, e.g. set with ofSetColor().
The cube is drawn filled by default; change this with ofFill();


Parameters:
position an ofPoint which contains the (x,y,z) coordinates for the cube's reference corner.
size The size of the cube.





_description: _

Draws a cube with the specified size, starting from the specified position. 

A cube is drawn starting from a 3D reference position, with the specified size. The box is drawn with the current color, e.g. set with ofSetColor(). The box is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a yellow cube slightly off the center of the canvas so to see the 3d shape.
    //(note that you cannot draw a rectangular cuboid with this function ... only a cube)
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawBox(ofPoint(ofGetWidth() * .5, ofGetHeight() * .5, 0), 200);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawBox(size)

<!--
_syntax: ofDrawBox(size)_
_name: ofDrawBox_
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

_inlined_description: _

Draws a cube with the specified size, starting from the origin.

The cube is drawn with the current color, e.g. set with ofSetColor().
The cube is drawn filled by default; change this with ofFill();


Parameters:
size The size of the cube.





_description: _

Draws a cube with the specified size, starting from the origin. The box is drawn with the current color, e.g. set with ofSetColor(). The box is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cube
    //(note that you cannot draw a rectangular cuboid with this function ... only a cube)
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawBox(500);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawBox(width, height, depth)

<!--
_syntax: ofDrawBox(width, height, depth)_
_name: ofDrawBox_
_returns: void_
_returns_description: _
_parameters: float width, float height, float depth_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a rectangular box with the specified dimensions, starting from the origin.

A box is a rectangular solid: an extruded rectangle.
It is drawn starting from the origin of the current reference frame.
It has a width (in x), a height (in y), and a depth (in z).
The box is drawn with the current color, e.g. set with ofSetColor().
The box is drawn filled by default; change this with ofFill();


Parameters:
width The width of the box.
height The height of the box.
depth The depth of the box.





_description: _

Draws a rectangular box with the specified dimensions, starting from the origin. 

A box is a rectangular solid: an extruded rectangle. It is drawn starting from the origin of the current reference frame. It has a width (in x), a height (in y), and a depth (in z). The box is drawn with the current color, e.g. set with ofSetColor(). The box is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cuboid
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawBox(500, 400, 300);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawCone(x, y, z, radius, height)

<!--
_syntax: ofDrawCone(x, y, z, radius, height)_
_name: ofDrawCone_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius, float height_
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

Draws a cone with specified radius and height starting from the specified position (x, y and z coordinates). The cone is drawn with the current color, e.g. set with ofSetColor(). The cone is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cone at the center of the canvas.
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCone(ofGetWidth() * .5, ofGetHeight()* .5, 0, 200, 300);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawCone(x, y, radius, height)

<!--
_syntax: ofDrawCone(x, y, radius, height)_
_name: ofDrawCone_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius, float height_
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

Draws a cone with specified radius and height starting from the specified position (x and y coordinates). The cone is drawn with the current color, e.g. set with ofSetColor(). The cone is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cone at the center of the canvas.
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCone(ofGetWidth() * .5, ofGetHeight()* .5, 200, 300);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawCone(&position, radius, height)

<!--
_syntax: ofDrawCone(&position, radius, height)_
_name: ofDrawCone_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float radius, float height_
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

Draws a cone with specified radius and height starting from the specified position ( ofPoint(x,y,z) or ofPoint(x,y) ). The cone is drawn with the current color, e.g. set with ofSetColor(). The cone is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cone at the center of the canvas.
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCone(ofPoint(ofGetWidth() * .5, ofGetHeight()* .5), 200, 300);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawCone(radius, height)

<!--
_syntax: ofDrawCone(radius, height)_
_name: ofDrawCone_
_returns: void_
_returns_description: _
_parameters: float radius, float height_
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

Draws a cone with specified radius and height starting from the origin. The cone is drawn with the current color, e.g. set with ofSetColor(). The cone is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cone
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCone(200, 300);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawCylinder(x, y, radius, height)

<!--
_syntax: ofDrawCylinder(x, y, radius, height)_
_name: ofDrawCylinder_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius, float height_
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

Draws a cylinder with specified radius and height starting from the specified position (x and y coordinates). The cylinder is drawn with the current color, e.g. set with ofSetColor(). The cylinder is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cylinder at the center of the canvas.
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCylinder(ofGetWidth() * .5, ofGetHeight()* .5, 50, 200);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawCylinder(x, y, z, radius, height)

<!--
_syntax: ofDrawCylinder(x, y, z, radius, height)_
_name: ofDrawCylinder_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius, float height_
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

Draws a cylinder with specified radius and height starting from the specified position (x, y and z coordinates). The cylinder is drawn with the current color, e.g. set with ofSetColor(). The cylinder is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cylinder at the center of the canvas.
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCylinder(ofGetWidth() * .5, ofGetHeight()* .5, 100, 50, 200);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawCylinder(&position, radius, height)

<!--
_syntax: ofDrawCylinder(&position, radius, height)_
_name: ofDrawCylinder_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float radius, float height_
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

Draws a cylinder with specified radius and height starting from the specified position ( ofPoint(x,y,z) or ofPoint(x,y,) ). The cylinder is drawn with the current color, e.g. set with ofSetColor(). The cylinder is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green cylinder at the center of the canvas.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawCylinder(ofPoint(ofGetWidth() * .5, ofGetHeight()* .5), 50, 200);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawCylinder(radius, height)

<!--
_syntax: ofDrawCylinder(radius, height)_
_name: ofDrawCylinder_
_returns: void_
_returns_description: _
_parameters: float radius, float height_
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

Draws a cylinder with specified radius and height starting from the origin. The cylinder is drawn with the current color, e.g. set with ofSetColor(). The cylinder is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cylinder
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCylinder(50, 300);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawIcoSphere(x, y, z, radius)

<!--
_syntax: ofDrawIcoSphere(x, y, z, radius)_
_name: ofDrawIcoSphere_
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

_inlined_description: _







_description: _

Draws an icosphere (i.e. a sphere based on faces as opposed to UV map) with specified radius starting from specified position (x,y and z coordinates). The icosphere is drawn with the current color, e.g. set with ofSetColor(). The icosphere is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a blue icosphere at the center of the canvas.
    ofSetColor(0, 0, 255);
    ofFill();
    ofDrawIcoSphere(ofGetWidth() * .5, ofGetHeight()* .5, 0, 100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawIcoSphere(x, y, radius)

<!--
_syntax: ofDrawIcoSphere(x, y, radius)_
_name: ofDrawIcoSphere_
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

_inlined_description: _







_description: _

Draws an icosphere (i.e. a sphere based on faces as opposed to UV map) with specified radius starting from specified position (x and y coordinates). The icosphere is drawn with the current color, e.g. set with ofSetColor(). The icosphere is drawn filled by default; change this with ofFill(); 

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a blue icosphere at the center of the canvas.
    ofSetColor(0, 0, 255);
    ofFill();
    ofDrawIcoSphere(ofGetWidth() * .5, ofGetHeight()* .5, 100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawIcoSphere(&position, radius)

<!--
_syntax: ofDrawIcoSphere(&position, radius)_
_name: ofDrawIcoSphere_
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

_inlined_description: _







_description: _

Draws an icosphere (i.e. a sphere based on faces as opposed to UV map) with specified radius starting from specified position ( ofPoint(x,y,z) or ofPoint(x,y) ). The icosphere is drawn with the current color, e.g. set with ofSetColor(). The icosphere is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a blue icosphere at the center of the canvas.
    ofSetColor(0, 0, 255);
    ofFill();
    ofDrawIcoSphere(ofPoint(ofGetWidth() * .5, ofGetHeight()* .5), 100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawIcoSphere(radius)

<!--
_syntax: ofDrawIcoSphere(radius)_
_name: ofDrawIcoSphere_
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

_inlined_description: _







_description: _

Draws an icosphere (i.e. a sphere based on faces as opposed to UV map) starting from the origin. The icosphere is drawn with the current color, e.g. set with ofSetColor(). The icosphere is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a blue icosphere 
    ofSetColor(0, 0, 255);
    ofFill();
    ofDrawIcoSphere(100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawPlane(x, y, width, height)

<!--
_syntax: ofDrawPlane(x, y, width, height)_
_name: ofDrawPlane_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height_
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

Draws a plane with specified width and height starting from the specified position (x and y coordinates). The plane is drawn with the current color, e.g. set with ofSetColor(). The plane is drawn filled by default; change this with ofFill(); 

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green plane at the center of the canvas.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawPlane(ofGetWidth() * .5, ofGetHeight()* .5, 100, 200);

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawPlane(x, y, z, width, height)

<!--
_syntax: ofDrawPlane(x, y, z, width, height)_
_name: ofDrawPlane_
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

_inlined_description: _







_description: _

Draws a plane with specified width and height starting from the specified position (x, y and z coordinates). The plane is drawn with the current color, e.g. set with ofSetColor(). The plane is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green plane at the center of the canvas.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawPlane(ofGetWidth() * .5, ofGetHeight()* .5, 0, 100, 200);

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawPlane(&position, width, height)

<!--
_syntax: ofDrawPlane(&position, width, height)_
_name: ofDrawPlane_
_returns: void_
_returns_description: _
_parameters: ofPoint &position, float width, float height_
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

Draws a plane with specified width and height starting from the specified position ( ofPoint(x,y,z) or ofPoint(x,y) ). The plane is drawn with the current color, e.g. set with ofSetColor(). The plane is drawn filled by default; change this with ofFill(); 

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green plane at the center of the canvas. 
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawPlane(ofPoint(ofGetWidth() * .5, ofGetHeight()* .5), 100, 200);

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawPlane(width, height)

<!--
_syntax: ofDrawPlane(width, height)_
_name: ofDrawPlane_
_returns: void_
_returns_description: _
_parameters: float width, float height_
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

Draws a plane with specified width and height starting from the origin. The plane is drawn with the current color, e.g. set with ofSetColor(). The plane is drawn filled by default; change this with ofFill(); 

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green plane  
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawPlane(100, 200);

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawSphere(x, y, radius)

<!--
_syntax: ofDrawSphere(x, y, radius)_
_name: ofDrawSphere_
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

_inlined_description: _







_description: _

Draws a UV sphere with specified radius starting from the specified position (x and y coordinates).The sphere is drawn with the current color, e.g. set with ofSetColor(). The sphere is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green sphere at the center of the canvas.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawSphere(ofGetWidth() * .5, ofGetHeight()* .5, 100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawSphere(x, y, z, radius)

<!--
_syntax: ofDrawSphere(x, y, z, radius)_
_name: ofDrawSphere_
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

_inlined_description: _







_description: _

Draws a UV sphere with specified radius starting from the specified position (x, y and z coordinates). The sphere is drawn with the current color, e.g. set with ofSetColor(). The sphere is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green sphere at the center of the canvas.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawSphere(ofGetWidth() * .5, ofGetHeight()* .5, 0, 100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawSphere(&position, radius)

<!--
_syntax: ofDrawSphere(&position, radius)_
_name: ofDrawSphere_
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

_inlined_description: _







_description: _

Draws a UV sphere with specified radius starting from the specified position (ofPoint(x, y, z) or ofPoint(x,y) ). The sphere is drawn with the current color, e.g. set with ofSetColor(). The sphere is drawn filled by default; change this with ofFill(); 

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green sphere at the center of the canvas.
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawSphere(ofPoint(ofGetWidth() * .5, ofGetHeight()* .5), 100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###void ofDrawSphere(radius)

<!--
_syntax: ofDrawSphere(radius)_
_name: ofDrawSphere_
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

_inlined_description: _







_description: _

Draws a UV sphere with specified radius starting from the origin. The sphere is drawn with the current color, e.g. set with ofSetColor(). The sphere is drawn filled by default; change this with ofFill();

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green sphere
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawSphere(100);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###ofVec3f ofGetBoxResolution()

<!--
_syntax: ofGetBoxResolution()_
_name: ofGetBoxResolution_
_returns: ofVec3f_
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

Gets the resolution of the ofDrawBox object you created. Resolution is given for width, height and depth. Only 0 and 1 values make sense signifying ‘see/not see’ faces.

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a red cuboid
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawBox(400, 350, 10, 200, 100, 200);

    string boxres = ofToString(ofGetBoxResolution());
    ofDrawBitmapString("Box Resolution: " + boxres, 30, 30);

}

~~~~





<!----------------------------------------------------------------------------->

###ofVec3f ofGetConeResolution()

<!--
_syntax: ofGetConeResolution()_
_name: ofGetConeResolution_
_returns: ofVec3f_
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

Retrieve a data structure describing the resolution with which cones are polygonized.

Allows you to fetch the resolution with which cones are polygonized.
Returns an ofVec3f containing the following data:
Encoded as "x": radiusSegments, the number of facets (subdivisions) around the cone's circular footprint.
Encoded as "y": heightSegments, the number of subdivisions from the cone's top to bottom.
Encoded as "z": capSegments, the number of annular (ring-shaped) subdivisions of the cone's endcap.


Returns: An ofVec3f containing (radiusSegments, heightSegments, capSegments) for cone polygonization.





_description: _

Allows you to fetch the resolution with which cones are polygonized.
Returns an ofVec3f containing the following data: 
Encoded as "x": radiusSegments, the number of facets (subdivisions) around the cone's circular footprint. 
Encoded as "y": heightSegments, the number of subdivisions from the cone's top to bottom. 
Encoded as "z": capSegments, the number of annular (ring-shaped) subdivisions of the cone's endcap. 

In short, it returns an ofVec3f containing (radiusSegments, heightSegments, capSegments) for cone polygonization. 
 
~~~~{.cpp}
void ofApp::draw(){
    //  Draw a red cone
    ofSetColor(255, 0, 0);
    ofFill();
    ofDrawCone(ofGetWidth() * .5, ofGetHeight()* .5, 200, 300);

    string coneres = ofToString(ofGetConeResolution());
    ofDrawBitmapString("Cone Resolution: " + coneres, 30, 30);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###ofVec3f ofGetCylinderResolution()

<!--
_syntax: ofGetCylinderResolution()_
_name: ofGetCylinderResolution_
_returns: ofVec3f_
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

Allows you to fetch the resolution with which cylinder are polygonized.
Returns an ofVec3f containing the following data: 
Encoded as "x": radiusSegments, the number of facets (subdivisions) around the cylinder’s circular footprint. 
Encoded as "y": heightSegments, the number of subdivisions from the cylinder’s top to bottom. 
Encoded as "z": capSegments, the number of annular (ring-shaped) subdivisions of the cylinder’s endcap. 

In short, it returns an ofVec3f containing (radiusSegments, heightSegments, capSegments) for cone polygonization. 

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green cylinder
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawCylinder(ofPoint(ofGetWidth() * .5, ofGetHeight()* .5), 50, 200);

    string cylres = ofToString(ofGetCylinderResolution());
    ofDrawBitmapString("Cylinder Resolution: " + cylres, 30, 30);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###int ofGetIcoSphereResolution()

<!--
_syntax: ofGetIcoSphereResolution()_
_name: ofGetIcoSphereResolution_
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







_description: _

Allows you to fetch the resolution with which IcoSphere is drawn (i.e. number of faces). Default value is 2.

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green icosphere
    ofSetColor(0, 255, 0);
    ofFill();
    ofDrawIcoSphere(ofPoint(ofGetWidth() * .5, ofGetHeight() * .5),  200);

    string icores = ofToString(ofGetIcoSphereResolution());
    ofDrawBitmapString("Icosphere Resolution: " + icores, 30, 30);

    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation

}

~~~~





<!----------------------------------------------------------------------------->

###ofVec2f ofGetPlaneResolution()

<!--
_syntax: ofGetPlaneResolution()_
_name: ofGetPlaneResolution_
_returns: ofVec2f_
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

Allows you to fetch the resolution with which Plane is drawn. Returns columns across x axis and rows across y axis to draw the plane. Default is (6,4)

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green plane (no fill)
    ofSetColor(0, 255, 0);
    ofNoFill();
    ofDrawPlane(ofGetWidth() * .5, ofGetHeight() * .5,  400, 200);

    string planeres = ofToString(ofGetPlaneResolution());
    ofDrawBitmapString("Plane Resolution: " + planeres, 30, 30);

}

~~~~





<!----------------------------------------------------------------------------->

###int ofGetSphereResolution()

<!--
_syntax: ofGetSphereResolution()_
_name: ofGetSphereResolution_
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







_description: _

Allows you to fetch the resolution with which a UV sphere is drawn. Default is 20.

~~~~{.cpp}
void ofApp::draw(){

    //  Draw a green UV sphere (no fill)
    ofSetColor(0, 255, 0);
    ofNoFill();
    ofDrawSphere(ofGetWidth() * .5, ofGetHeight() * .5,  200);

    string sphereres = ofToString(ofGetSphereResolution());
    ofDrawBitmapString("Sphere Resolution: " + sphereres, 30, 30);

}

~~~~





<!----------------------------------------------------------------------------->

###void ofSetBoxResolution(res)

<!--
_syntax: ofSetBoxResolution(res)_
_name: ofSetBoxResolution_
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

Sets the resolution of the box. Only values of 0 and 1 seem legitimate and produce visible effect only when ‘ofFill’ is used.

~~~~{.h}

int res;

~~~~

~~~~{.cpp}

void ofApp::setup(){
    res = 1;
}

//--------------------------------------------------------------
void ofApp::draw(){
    
	ofSetColor(0, 255, 0);
    ofFill();
    ofSetBoxResolution(res);
    ofDrawBox(ofGetWidth() * .5, ofGetHeight() * .5, 0, 100, 200, 300);
    
    string boxres = ofToString(ofGetBoxResolution());
    ofDrawBitmapString("Box Resolution: " + boxres, 30, 30);
                       
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            res--;
            break;
        case 'w':
            res++;
            break;
 
        default:
            break;
    }

}

~~~~





<!----------------------------------------------------------------------------->

###void ofSetBoxResolution(resWidth, resHeight, resDepth)

<!--
_syntax: ofSetBoxResolution(resWidth, resHeight, resDepth)_
_name: ofSetBoxResolution_
_returns: void_
_returns_description: _
_parameters: int resWidth, int resHeight, int resDepth_
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

Sets the resolution of the box. Only values of 0 and 1 seem legitimate and produce visible effect only when ‘ofFill’ is used.
However, in this case you can switch faces on/off.

~~~~{.h}

int resw, resh, resd;

~~~~

~~~~{.cpp}

void ofApp::setup(){
    resw = 1;
    resh = 1;
    resd = 1;
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(0, 255, 0);
    ofFill();
    
    
    ofSetBoxResolution(resw, resh, resd);
    ofDrawBox(ofGetWidth() * .5, ofGetHeight() * .5, 0, 100, 200, 300);
    
    string boxres = ofToString(ofGetBoxResolution());
    ofDrawBitmapString("Box Resolution: " + boxres, 30, 30);
                       
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            resw--;
            break;
        case 'w':
            resw++;
            break;
        case 'a':
            resh--;
            break;
        case 's':
            resh++;
            break;
        case 'z':
            resd--;
            break;
        case 'x':
            resd++;
            break;
 
        default:
            break;
    }

}

~~~~





<!----------------------------------------------------------------------------->

###void ofSetConeResolution(radiusSegments, heightSegments, capSegments = 2)

<!--
_syntax: ofSetConeResolution(radiusSegments, heightSegments, capSegments = 2)_
_name: ofSetConeResolution_
_returns: void_
_returns_description: _
_parameters: int radiusSegments, int heightSegments, int capSegments=2_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the resolution of a polygonized cone.

Allows you to set the polygonization resolution of any cones you subsequently draw with ofDrawCone().


Parameters:
radiusSegments The number of facets (subdivisions) around the cone's circular footprint.
heightSegments The number of subdivisions from the cone's top to bottom.
capSegments The number of annular (ring-shaped) subdivisions of the cone's endcap.





_description: _

Set the resolution of a polygonized cone. Allows you to set the polygonization resolution of any cones you subsequently draw with ofDrawCone(). 

radiusSegments: The number of facets (subdivisions) around the cone's circular footprint. 

heightSegments: The number of subdivisions from the cone's top to bottom. 

capSegments The number of annular (ring-shaped) subdivisions of the cone's endcap 

~~~~{.h}

int resr, resh, resc;

~~~~

~~~~{.cpp}

void ofApp::setup(){
    resr = 9;
    resh = 3;
    resc = 2;
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(0, 255, 0);
    ofFill();
    ofSetConeResolution(resr, resh, resc);
    ofDrawCone(ofGetWidth() * .5, ofGetHeight() * .5, 0, 100, 200);
    
    string coneres = ofToString(ofGetConeResolution());
    ofDrawBitmapString("Cone Resolution: " + coneres, 30, 30);
    
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            resr--;
            break;
        case 'w':
            resr++;
            break;
        case 'a':
            resh--;
            break;
        case 's':
            resh++;
            break;
        case 'z':
            resc--;
            break;
        case 'x':
            resc++;
            break;
 
        default:
            break;
    }

}

~~~~





<!----------------------------------------------------------------------------->

###void ofSetCylinderResolution(radiusSegments, heightSegments, capSegments = 2)

<!--
_syntax: ofSetCylinderResolution(radiusSegments, heightSegments, capSegments = 2)_
_name: ofSetCylinderResolution_
_returns: void_
_returns_description: _
_parameters: int radiusSegments, int heightSegments, int capSegments=2_
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

Set the resolution of a polygonized cylinder. Allows you to set the polygonization resolution of any cylinder you subsequently draw with ofDrawCone(). 

radiusSegments: The number of facets (subdivisions) around the cylinder’s circular footprint. 

heightSegments: The number of subdivisions from the cylinder’s top to bottom. 

capSegments The number of annular (ring-shaped) subdivisions of the cylinder’s endcap

~~~~{.h}

int resr, resh, resc;

~~~~

~~~~{.cpp}

void ofApp::setup(){
    resr = 8;
    resh = 2;
    resc = 1;
}

//--------------------------------------------------------------
void ofApp::update(){
    
}

//--------------------------------------------------------------
void ofApp::draw(){

    ofSetColor(0, 255, 0);
    ofFill();  
    ofSetCylinderResolution(resr, resh, resc);
    ofDrawCylinder(ofGetWidth() * .5, ofGetHeight() * .5, 0, 100, 300);
    
    string coneres = ofToString(ofGetCylinderResolution());
    ofDrawBitmapString("Cone Resolution: " + coneres, 30, 30);
    
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    
    
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            resr--;
            break;
        case 'w':
            resr++;
            break;
        case 'a':
            resh--;
            break;
        case 's':
            resh++;
            break;
        case 'z':
            resc--;
            break;
        case 'x':
            resc++;
            break;
            
        default:
            break;
    }
    
}

~~~~





<!----------------------------------------------------------------------------->

###void ofSetIcoSphereResolution(res)

<!--
_syntax: ofSetIcoSphereResolution(res)_
_name: ofSetIcoSphereResolution_
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

Sets the resolution with which IcoSphere is drawn (i.e. number of faces). Default value is 2.

~~~~{.h}

int res;

~~~~

~~~~{.cpp}

void ofApp::setup(){
    res = 1;
}

//--------------------------------------------------------------
void ofApp::draw(){
    
	ofSetColor(0, 255, 0);
    ofFill();
    ofSetIcoSphereResolution(res);
    ofDrawIcoSphere(ofGetWidth() * .5, ofGetHeight() * .5, 100);
    
    string icores = ofToString(ofGetIcoSphereResolution());
    ofDrawBitmapString("IcoSphere Resolution: " + icores, 30, 30);
                       
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            res--;
            break;
        case 'w':
            res++;
            break;
 
        default:
            break;
    }

}

~~~~





<!----------------------------------------------------------------------------->

###void ofSetPlaneResolution(columns, rows)

<!--
_syntax: ofSetPlaneResolution(columns, rows)_
_name: ofSetPlaneResolution_
_returns: void_
_returns_description: _
_parameters: int columns, int rows_
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

Sets the resolution with which Plane is drawn. Sets columns across x axis and rows across y axis to draw the plane. Default is (6,4)

~~~~{.h}

int resx, resy;

~~~~

~~~~{.cpp}

void ofApp::setup(){
    resx = 3;
	resy = 2;
}

//--------------------------------------------------------------
void ofApp::draw(){
    
	ofSetColor(0, 255, 0);
    ofFill();
    ofSetPlaneResolution(resx, resy);
    ofDrawPlane(ofGetWidth() * .5, ofGetHeight() * .5, 100, 200);
    
    string planeres = ofToString(ofGetPlaneResolution());
    ofDrawBitmapString("Plane Resolution: " + planeres, 30, 30);
                       
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            resx--;
            break;
        case 'w':
            resx++;
            break;
        case 'a':
            resy--;
            break;
        case 's':
            resy++;
            break;
            
        default:
            break;
    }

}

~~~~





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

_inlined_description: _







_description: _

Sets the resolution with which a UV sphere is drawn. Default is 20. 

~~~~{.h}

int res;

~~~~

~~~~{.cpp}

void ofApp::setup(){
    res = 5;
}

//--------------------------------------------------------------
void ofApp::draw(){
    
	ofSetColor(0, 255, 0);
    ofFill();
    ofSetSphereResolution(res);
    ofDrawSphere(ofGetWidth() * .5, ofGetHeight() * .5, 100);
    
    string sphereres = ofToString(ofGetSphereResolution());
    ofDrawBitmapString("Sphere Resolution: " + sphereres, 30, 30);
                       
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            res--;
            break;
        case 'w':
            res++;
            break;
 
        default:
            break;
    }

}

~~~~





<!----------------------------------------------------------------------------->

