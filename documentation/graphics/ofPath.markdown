#class ofPath


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription

ofPath is a way to create a path or multiple paths consisting of
points. It allows you to combine multiple paths consisting of points into
a single vector data object that can be drawn to the screen, manipulated
point by point, or manipulated with it's child subpaths. It is better at
representing and manipulating complex shapes than the ofPolyline and more
easily represents multiple child lines or shapes as either ofSubPath or
ofPolyline instances. By default ofPath uses ofSubPath instances. Closing
the path automatically creates a new path:

~~~~{.cpp}
for( int i = 0; i < 5; i++) {
    // create a new ofSubPath
    path.arc( i * 50 + 20, i * 50 + 20, i * 40 + 10, i * 40 + 10, 0, 360);
    path.close();
}
~~~~

To use ofPolyline instances, simply set the mode to POLYLINES

~~~~{.cpp}
path.setMode(POLYLINES);
~~~~





##Description

ofPath is a way to create a path or multiple paths consisting of points. It allows you to combine multiple paths consisting of points into a single vector data object that can be drawn to the screen, manipulated point by point, or manipulated with it's child subpaths. It is better at representing and manipulating complex shapes than the [ofPolyline](ofPolyline.html) and more easily represents multiple child lines or shapes as either ofSubPath or ofPolyline instances. By default ofPath uses ofSubPath instances. Closing the path automatically creates a new path:

~~~~{.cpp}
for( int i = 0; i < 5; i++) {
    path.arc( i * 50 + 20, i * 50 + 20, i * 40 + 10, i * 40 + 10, 0, 360); // creates a new ofSubPath
    path.close();
}
~~~~

To use ofPolyline instances, simply set the mode to POLYLINES

~~~~{.cpp}
path.setMode(POLYLINES);
~~~~





##Methods



###void addCommand(&command)

<!--
_syntax: addCommand(&command)_
_name: addCommand_
_returns: void_
_returns_description: _
_parameters: const ofPath::Command &command_
_access: private_
_version_started: 0073_
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

###void append(&path)

<!--
_syntax: append(&path)_
_name: append_
_returns: void_
_returns_description: _
_parameters: const ofPath &path_
_access: public_
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

###void arc(&centre, radiusX, radiusY, angleBegin, angleEnd)

<!--
_syntax: arc(&centre, radiusX, radiusY, angleBegin, angleEnd)_
_name: arc_
_returns: void_
_returns_description: _
_parameters: const ofPoint &centre, float radiusX, float radiusY, float angleBegin, float angleEnd_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create an arc at centre, which has the radiusX, radiusY, and begins at
angleBegin and ends at angleEnd. To draw a circle with a radius of 50 pixels
at 100, 100:

\note angleBegin needs to be larger than angleEnd, i.e. 0,180 is ok,
while 180,0 is not.





_description: _

Creates an arc at centre, which has the radiusX, radiusY, and begins at angleBegin and ends at angleEnd. To draw a circle with a radius of 50 pixels at 100, 100:

~~~~{.cpp}
path.arc( 100, 100, 50, 50, 0, 360);
~~~~

Note that angleBegin needs to be larger than angleEnd, i.e. 0, 180 is ok, while 180,0 is not.





<!----------------------------------------------------------------------------->

###void arc(&centre, radiusX, radiusY, angleBegin, angleEnd, clockwise)

<!--
_syntax: arc(&centre, radiusX, radiusY, angleBegin, angleEnd, clockwise)_
_name: arc_
_returns: void_
_returns_description: _
_parameters: const ofPoint &centre, float radiusX, float radiusY, float angleBegin, float angleEnd, bool clockwise_
_access: public_
_version_started: 0071_
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

###void arc(x, y, radiusX, radiusY, angleBegin, angleEnd)

<!--
_syntax: arc(x, y, radiusX, radiusY, angleBegin, angleEnd)_
_name: arc_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create an arc at x,y, which has the radiusX, radiusY, and begins at
angleBegin and ends at angleEnd. To draws a shape with a radius of 200 pixels
at 300, 300:

~~~~{.cpp}
path.moveTo(300, 300);
path.arc( 300, 300, 200, 200, 0, 271); // note 271, not 270 for precision
~~~~

![ofPath arc](graphics/ofPath_arc.jpg)

\note angleBegin needs to be larger than angleEnd, i.e. 0, 180 is ok,
while 180,0 is not.





_description: _

Creates an arc at x,y, which has the radiusX, radiusY, and begins at angleBegin and ends at angleEnd. To draws a shape with a radius of 200 pixels at 300, 300:

~~~~{.cpp}
path.moveTo(300, 300);
path.arc( 300, 300, 200, 200, 0, 271); // note 271, not 270 for precision
~~~~

![ofPath arc](ofPath_arc.png)

Note that angleBegin needs to be larger than angleEnd, i.e. 0, 180 is ok, while 180,0 is not.





<!----------------------------------------------------------------------------->

###void arc(x, y, z, radiusX, radiusY, angleBegin, angleEnd)

<!--
_syntax: arc(x, y, z, radiusX, radiusY, angleBegin, angleEnd)_
_name: arc_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create an arc at x,y,z, which has the radiusX, radiusY, and begins at
angleBegin and ends at angleEnd.





_description: _

Creates an arc at x,y,z, which has the radiusX, radiusY, and begins at angleBegin and ends at angleEnd.





<!----------------------------------------------------------------------------->

###void arcNegative(&centre, radiusX, radiusY, angleBegin, angleEnd)

<!--
_syntax: arcNegative(&centre, radiusX, radiusY, angleBegin, angleEnd)_
_name: arcNegative_
_returns: void_
_returns_description: _
_parameters: const ofPoint &centre, float radiusX, float radiusY, float angleBegin, float angleEnd_
_access: public_
_version_started: 0071_
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

###void arcNegative(x, y, radiusX, radiusY, angleBegin, angleEnd)

<!--
_syntax: arcNegative(x, y, radiusX, radiusY, angleBegin, angleEnd)_
_name: arcNegative_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd_
_access: public_
_version_started: 0071_
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

###void arcNegative(x, y, z, radiusX, radiusY, angleBegin, angleEnd)

<!--
_syntax: arcNegative(x, y, z, radiusX, radiusY, angleBegin, angleEnd)_
_name: arcNegative_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd_
_access: public_
_version_started: 0071_
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

###void bezierTo(&cp1, &cp2, &p)

<!--
_syntax: bezierTo(&cp1, &cp2, &p)_
_name: bezierTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &cp1, const ofPoint &cp2, const ofPoint &p_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a cubic bezier line from the current drawing point with the 2
control points indicated by ofPoint `cp1` and `cp2`, that ends at ofPoint
to.

~~~~{.cpp}
line.addVertex(ofPoint(200, 400));
line.bezierTo(100, 100, 800, 100, 700, 400);
~~~~
![polyline bezier](graphics/bezier.jpg)
The control points are shown in red.





_description: _

Creates a cubic bezier line from the current drawing point with the 2 control points indicated by ofPoint cp1 and cp2, that ends at ofPoint to. For instance, the following:
~~~~{.cpp}
line.addVertex(ofPoint(200, 400));
line.bezierTo(100, 100, 800, 100, 700, 400);
~~~~
Creates this:
![polyline bezier](bezier.png)
The control points are shown in yellow.





<!----------------------------------------------------------------------------->

###void bezierTo(cx1, cy1, cx2, cy2, x, y)

<!--
_syntax: bezierTo(cx1, cy1, cx2, cy2, x, y)_
_name: bezierTo_
_returns: void_
_returns_description: _
_parameters: float cx1, float cy1, float cx2, float cy2, float x, float y_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a cubic bezier line from the current drawing point with the 2
control points indicated by the coordinates cx1, cy1 and cx2, cy2,
that ends at the coordinates x, y.





_description: _

Creates a cubic bezier line from the current drawing point with the 2 control points indicated by the coordinates cx1, cy1 and cx2, cy2, that ends at the coordinates x, y.





<!----------------------------------------------------------------------------->

###void bezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z)

<!--
_syntax: bezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z)_
_name: bezierTo_
_returns: void_
_returns_description: _
_parameters: float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a cubic bezier line in 3D space from the current drawing point
with the 2 control points indicated by the coordinates cx1, cy1, cz1
and cx2, cy2, cz2, that ends at the coordinates x, y, z.





_description: _

Creates a cubic bezier line in 3D space from the current drawing point with the 2 control points indicated by the coordinates cx1, cy1, cz1 and cx2, cy2, cz2, that ends at the coordinates x, y, z.
~~~~{.cpp}
float cx = ofGetWidth()/2;
float cy = 200;
float step = TWO_PI / 60;
for (float i = 0.0; i < TWO_PI; i+=step) {

    if(i == 0.0) {
        line.addVertex(cx + (400*cos(i)), cy+400, 400 * sin(i));
    } else {
        line.bezierTo( cx - (200*cos(i)), cy-100, 400 * sin(i),
                       cx + (200*cos(i)), cy+600, 400 * sin(i),
                       cx + (400*cos(i)), cy+400, 400 * sin(i));
    }
}
~~~~





<!----------------------------------------------------------------------------->

###void circle(x, y, radius)

<!--
_syntax: circle(x, y, radius)_
_name: circle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius_
_access: public_
_version_started: 0073_
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

###void circle(x, y, z, radius)

<!--
_syntax: circle(x, y, z, radius)_
_name: circle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
_access: public_
_version_started: 0073_
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

###void circle(&p, radius)

<!--
_syntax: circle(&p, radius)_
_name: circle_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float radius_
_access: public_
_version_started: 0073_
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

###void clear()

<!--
_syntax: clear()_
_name: clear_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Remove all subpaths from the ofPath instance





_description: _

Removes all subpaths from the ofPath instance.





<!----------------------------------------------------------------------------->

###void close()

<!--
_syntax: close()_
_name: close_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Close the current subpath and create a new subpath, either an
ofPolyline or ofSubPath by calling newSubPath(), ensuring that the
closed path doesn't have new points added to it.





_description: _

Closes the current subpath and creates a new subpath, either an ofPolyline or ofSubPath by calling newSubPath(), ensuring that the closed path doesn't have new points added to it.





<!----------------------------------------------------------------------------->

###void curveTo(&p)

<!--
_syntax: curveTo(&p)_
_name: curveTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a curve to p from the current drawing position





_description: _

Draws a curve to p from the current drawing position.





<!----------------------------------------------------------------------------->

###void curveTo(x, y)

<!--
_syntax: curveTo(x, y)_
_name: curveTo_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a curve to x,y from the current drawing position





_description: _

Draws a curve to x,y from the current drawing position. To draw a small rose curves at the mouse position:

~~~~{.cpp}
float scale = ofDist(mouseX, mouseY, px, py);

for( float theta = 0; theta < TWO_PI; theta += 0.1)
{
    float r =  cos(theta * (scale/6)) * scale;
    path.curveTo(mouseX + r * cos(theta), mouseY + r * sin(theta));
}

px = mouseX;
py = mouseY;
~~~~





<!----------------------------------------------------------------------------->

###void curveTo(x, y, z)

<!--
_syntax: curveTo(x, y, z)_
_name: curveTo_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws a curve to x,y,z from the current drawing position





_description: _

Draws a curve to x,y,z from the current drawing position.





<!----------------------------------------------------------------------------->

###void draw()

<!--
_syntax: draw()_
_name: draw_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws the path at 0,0. Calling draw() also calls tessellate()





_description: _

Draws the path at 0,0. Calling draw() also calls tessllate().





<!----------------------------------------------------------------------------->

###void draw(x, y)

<!--
_syntax: draw(x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draws the path at x,y. Calling draw() also calls tessellate()





_description: _

Draws the path at x,y. Calling draw() also calls tessllate().





<!----------------------------------------------------------------------------->

###void ellipse(x, y, width, height)

<!--
_syntax: ellipse(x, y, width, height)_
_name: ellipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height_
_access: public_
_version_started: 0073_
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

###void ellipse(x, y, z, width, height)

<!--
_syntax: ellipse(x, y, z, width, height)_
_name: ellipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height_
_access: public_
_version_started: 0073_
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

###void ellipse(&p, width, height)

<!--
_syntax: ellipse(&p, width, height)_
_name: ellipse_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float width, float height_
_access: public_
_version_started: 0073_
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

###void flagShapeChanged()

<!--
_syntax: flagShapeChanged()_
_name: flagShapeChanged_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
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

###void generatePolylinesFromCommands()

<!--
_syntax: generatePolylinesFromCommands()_
_name: generatePolylinesFromCommands_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0073_
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

###int getCircleResolution()

<!--
_syntax: getCircleResolution()_
_name: getCircleResolution_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###vector< ofPath::Command > & getCommands()

<!--
_syntax: getCommands()_
_name: getCommands_
_returns: vector< ofPath::Command > &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###const vector< ofPath::Command > & getCommands()

<!--
_syntax: getCommands()_
_name: getCommands_
_returns: const vector< ofPath::Command > &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
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

###int getCurveResolution()

<!--
_syntax: getCurveResolution()_
_name: getCurveResolution_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###ofColor getFillColor()

<!--
_syntax: getFillColor()_
_name: getFillColor_
_returns: ofColor_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the ofColor fill of the ofPath





_description: _

Returns the ofColor that the ofPath is using.





<!----------------------------------------------------------------------------->

###ofPath::Mode getMode()

<!--
_syntax: getMode()_
_name: getMode_
_returns: ofPath::Mode_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
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

###const vector< ofPolyline > & getOutline()

<!--
_syntax: getOutline()_
_name: getOutline_
_returns: const vector< ofPolyline > &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get an ofPolyline representing the outline of the ofPath.





_description: _

This returns an ofPolyline representing the outline of an ofPath.





<!----------------------------------------------------------------------------->

###ofColor getStrokeColor()

<!--
_syntax: getStrokeColor()_
_name: getStrokeColor_
_returns: ofColor_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the stroke color of the ofPath





_description: _

Returns the stroke color that the ofPath is using.





<!----------------------------------------------------------------------------->

###float getStrokeWidth()

<!--
_syntax: getStrokeWidth()_
_name: getStrokeWidth_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the stroke width of the ofPath

The default value is `0





_description: _

Returns the stroke width.





<!----------------------------------------------------------------------------->

###const ofMesh & getTessellation()

<!--
_syntax: getTessellation()_
_name: getTessellation_
_returns: const ofMesh &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###bool getUseShapeColor()

<!--
_syntax: getUseShapeColor()_
_name: getUseShapeColor_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###ofPolyWindingMode getWindingMode()

<!--
_syntax: getWindingMode()_
_name: getWindingMode_
_returns: ofPolyWindingMode_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the poly winding mode currently in use.





_description: _

Returns the poly winding mode currently in use.





<!----------------------------------------------------------------------------->

###bool hasChanged()

<!--
_syntax: hasChanged()_
_name: hasChanged_
_returns: bool_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0073_
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

###bool hasOutline()

<!--
_syntax: hasOutline()_
_name: hasOutline_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###bool isFilled()

<!--
_syntax: isFilled()_
_name: isFilled_
_returns: bool_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get whether the path is using a fill or not.

The default value is `true`





_description: _

Whether the path is using a fill or not.





<!----------------------------------------------------------------------------->

###ofPolyline & lastPolyline()

<!--
_syntax: lastPolyline()_
_name: lastPolyline_
_returns: ofPolyline &_
_returns_description: _
_parameters: _
_access: private_
_version_started: 007_
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

###void lineTo(&p)

<!--
_syntax: lineTo(&p)_
_name: lineTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw a straight line from the current drawing position to the
location indicated by p.





_description: _

Draws a straight line from the current drawing position to the location indicated by p.





<!----------------------------------------------------------------------------->

###void lineTo(x, y)

<!--
_syntax: lineTo(x, y)_
_name: lineTo_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw a straight line from the current drawing position to the
location indicated by x,y.





_description: _

Draws a straight line from the current drawing position to the location indicated by x,y.





<!----------------------------------------------------------------------------->

###void lineTo(x, y, z)

<!--
_syntax: lineTo(x, y, z)_
_name: lineTo_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Draw a straight line from the current drawing position to the
location indicated by x,y,z.





_description: _

Draws a straight line from the current drawing position to the location indicated by x,y,z.





<!----------------------------------------------------------------------------->

###void moveTo(&p)

<!--
_syntax: moveTo(&p)_
_name: moveTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Move the drawing position to p. This means that a subsequent calls to,
for instance, lineTo() or curveTo() will connect the location p to the new
location.





_description: _

Moves the drawing position to p. This means that a subsequent calls to, for instance, lineTo() or curveTo() will connect the location p to the new location.





<!----------------------------------------------------------------------------->

###void moveTo(x, y, z)

<!--
_syntax: moveTo(x, y, z)_
_name: moveTo_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Move the drawing position to x,y.z. This means that a subsequent
calls to, for instance, lineTo() or curveTo() will connect the
location x,y,z to the new location.





_description: _

Moves the drawing position to x,y.z. This means that a subsequent calls to, for instance, lineTo() or curveTo() will connect the location x,y,z to the new location.





<!----------------------------------------------------------------------------->

###void newSubPath()

<!--
_syntax: newSubPath()_
_name: newSubPath_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a new subpath, either an ofPolyline instance or an ofSubPath
instance. All points added after a call to ofSubPath will be done in
the newly created subpath. Calling close() automatically calls create
newSubPath(), ensuring that the closed path doesn't have new points
added to it.





_description: _

Creates a new subpath, either an ofPolyline instance or an ofSubPath instance. All points added after a call to ofSubPath will be done in the newly created subpath. Calling close() automatically calls create newSubPath(), ensuring that the closed path doesn't have new points added to it.





<!----------------------------------------------------------------------------->

### ofPath()

<!--
_syntax: ofPath()_
_name: ofPath_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a new ofPath instance.





_description: _

Creates a new ofPath instance.





<!----------------------------------------------------------------------------->

###void quadBezierTo(&cp1, &cp2, &p)

<!--
_syntax: quadBezierTo(&cp1, &cp2, &p)_
_name: quadBezierTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &cp1, const ofPoint &cp2, const ofPoint &p_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Create a quadratic bezier line in 3D space from the current drawing
point with the beginning indicated by the coordinates cx1, cy1, cz1,
the control point at cx2, cy2, cz2, and that ends at the coordinates
x, y, z.
![Curves](graphics/curves.jpg)





_description: _

Creates a quadratic bezier line in 3D space from the current drawing point with the beginning indicated by the coordinates cx1, cy1, cz1, the control point at cx2, cy2, cz2, and that ends at the coordinates x, y, z.
![polyline curves](curves.png)





<!----------------------------------------------------------------------------->

###void quadBezierTo(cx1, cy1, cx2, cy2, x, y)

<!--
_syntax: quadBezierTo(cx1, cy1, cx2, cy2, x, y)_
_name: quadBezierTo_
_returns: void_
_returns_description: _
_parameters: float cx1, float cy1, float cx2, float cy2, float x, float y_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a quadratic bezier line in 2D space from the current drawing
point with the beginning indicated by the point p1, the control point
at p2, and that ends at the point p3.





_description: _

Creates a quadratic bezier line in 2D space from the current drawing point with the beginning indicated by the point p1, the control point at p2, and that ends at the point p3.





<!----------------------------------------------------------------------------->

###void quadBezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z)

<!--
_syntax: quadBezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z)_
_name: quadBezierTo_
_returns: void_
_returns_description: _
_parameters: float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Creates a quadratic bezier line in 3D space from the current drawing
point with the beginning indicated by the coordinates cx1, cy1, the
control point at cx2, cy2, and that ends at the coordinates x, y.





_description: _

Creates a quadratic bezier line in 3D space from the current drawing point with the beginning indicated by the coordinates cx1, cy1, the control point at cx2, cy2, and that ends at the coordinates x, y.





<!----------------------------------------------------------------------------->

###void rectRounded(&b, r)

<!--
_syntax: rectRounded(&b, r)_
_name: rectRounded_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &b, float r_
_access: public_
_version_started: 0073_
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

###void rectRounded(&p, w, h, r)

<!--
_syntax: rectRounded(&p, w, h, r)_
_name: rectRounded_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h, float r_
_access: public_
_version_started: 0073_
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

###void rectRounded(x, y, w, h, r)

<!--
_syntax: rectRounded(x, y, w, h, r)_
_name: rectRounded_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h, float r_
_access: public_
_version_started: 0073_
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

###void rectRounded(&p, w, h, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)

<!--
_syntax: rectRounded(&p, w, h, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)_
_name: rectRounded_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h, float topLeftRadius, float topRightRadius, float bottomRightRadius, float bottomLeftRadius_
_access: public_
_version_started: 0073_
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

###void rectRounded(&b, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)

<!--
_syntax: rectRounded(&b, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)_
_name: rectRounded_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &b, float topLeftRadius, float topRightRadius, float bottomRightRadius, float bottomLeftRadius_
_access: public_
_version_started: 0073_
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

###void rectRounded(x, y, z, w, h, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)

<!--
_syntax: rectRounded(x, y, z, w, h, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius)_
_name: rectRounded_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h, float topLeftRadius, float topRightRadius, float bottomRightRadius, float bottomLeftRadius_
_access: public_
_version_started: 0073_
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

###void rectangle(&r)

<!--
_syntax: rectangle(&r)_
_name: rectangle_
_returns: void_
_returns_description: _
_parameters: const ofRectangle &r_
_access: public_
_version_started: 0073_
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

###void rectangle(&p, w, h)

<!--
_syntax: rectangle(&p, w, h)_
_name: rectangle_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, float w, float h_
_access: public_
_version_started: 0073_
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

###void rectangle(x, y, w, h)

<!--
_syntax: rectangle(x, y, w, h)_
_name: rectangle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float w, float h_
_access: public_
_version_started: 0073_
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

###void rectangle(x, y, z, w, h)

<!--
_syntax: rectangle(x, y, z, w, h)_
_name: rectangle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h_
_access: public_
_version_started: 0073_
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

###void rotate(az, &axis)

<!--
_syntax: rotate(az, &axis)_
_name: rotate_
_returns: void_
_returns_description: _
_parameters: float az, const ofVec3f &axis_
_access: public_
_version_started: 007_
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

###void scale(x, y)

<!--
_syntax: scale(x, y)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float x, float y_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Change the size of either the ofPolyline or ofSubPath instances that
the ofPath contains. These changes are non-reversible, so for instance
scaling by 0,0 zeros out all data.





_description: _

Changes the size of either the ofPolyline or ofSubPath instances that the ofPath contains. These changes are non-reversible, so for instance scaling by 0,0 zeroes out all data.





<!----------------------------------------------------------------------------->

###void setCircleResolution(circleResolution)

<!--
_syntax: setCircleResolution(circleResolution)_
_name: setCircleResolution_
_returns: void_
_returns_description: _
_parameters: int circleResolution_
_access: public_
_version_started: 0073_
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

###void setColor(&color)

<!--
_syntax: setColor(&color)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the color of the path. This affects both the line if the
path is drawn as wireframe and the fill if the path is drawn with
fill. All subpaths are affected.





_description: _

This sets the color of the path. This affects both the line if the path is drawn as wireframe and the fill if the path is drawn with fill. All subpaths are affected.





<!----------------------------------------------------------------------------->

###void setCurveResolution(curveResolution)

<!--
_syntax: setCurveResolution(curveResolution)_
_name: setCurveResolution_
_returns: void_
_returns_description: _
_parameters: int curveResolution_
_access: public_
_version_started: 007_
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

###void setFillColor(&color)

<!--
_syntax: setFillColor(&color)_
_name: setFillColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the fill color of the path. This has no affect if the path is
drawn as wireframe.





_description: _

This sets the fill color of the path. This has no affect if the path is drawn as wireframe.





<!----------------------------------------------------------------------------->

###void setFillHexColor(hex)

<!--
_syntax: setFillHexColor(hex)_
_name: setFillHexColor_
_returns: void_
_returns_description: _
_parameters: int hex_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the fill color of the path. This has no affect if the path is
drawn as wireframe.





_description: _

This sets the fill color of the path. This has no affect if the path is drawn as wireframe.





<!----------------------------------------------------------------------------->

###void setFilled(hasFill)

<!--
_syntax: setFilled(hasFill)_
_name: setFilled_
_returns: void_
_returns_description: _
_parameters: bool hasFill_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set whether the path should be drawn as wireframes or filled.





_description: _

Sets whether the path should be drawn as wireframes or filled.





<!----------------------------------------------------------------------------->

###void setHexColor(hex)

<!--
_syntax: setHexColor(hex)_
_name: setHexColor_
_returns: void_
_returns_description: _
_parameters: int hex_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the color of the path. This affects both the line if the path is
drawn as wireframe and the fill if the path is drawn with fill. All
subpaths are affected.





_description: _

This sets the color of the path. This affects both the line if the path is drawn as wireframe and the fill if the path is drawn with fill. All subpaths are affected.





<!----------------------------------------------------------------------------->

###void setMode(mode)

<!--
_syntax: setMode(mode)_
_name: setMode_
_returns: void_
_returns_description: _
_parameters: ofPath::Mode mode_
_access: public_
_version_started: 007_
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

###void setPolyWindingMode(mode)

<!--
_syntax: setPolyWindingMode(mode)_
_name: setPolyWindingMode_
_returns: void_
_returns_description: _
_parameters: ofPolyWindingMode mode_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the way that the points in the sub paths are connected.

OpenGL can only render convex polygons which means that any shape that
isn't convex, i.e. that has points which are concave, going inwards,
need to be tessellated into triangles so that OpenGL can render them.
If you're using filled shapes with your ofPath this is done
automatically for you.

The possible options you can pass in are:

    OF_POLY_WINDING_ODD
    OF_POLY_WINDING_NONZERO
    OF_POLY_WINDING_POSITIVE
    OF_POLY_WINDING_NEGATIVE
    OF_POLY_WINDING_ABS_GEQ_TWO





_description: _

This sets the way that the points in the sub paths are connected. OpenGL can only render convex polygons which means that any shape that isn't convex, i.e. that has points which are concave, going inwards, need to be tessellated into triangles so that OpenGL can render them. If you're using filled shapes with your ofPath this is done automatically for you. The possible options you can pass in are:

OF_POLY_WINDING_ODD
OF_POLY_WINDING_NONZERO
OF_POLY_WINDING_POSITIVE
OF_POLY_WINDING_NEGATIVE
OF_POLY_WINDING_ABS_GEQ_TWO

![ofPath winding modes](winding_modes.gif)

So adding the following points:

~~~~{.cpp}
void ofApp::setup(){

    path.lineTo(0, 400);
    path.lineTo(400, 400);
    path.lineTo(400, 0);
    path.lineTo(0, 0); // outer
    path.close();
    path.moveTo(100, 100);
    path.lineTo(100, 300);
    path.lineTo(300, 300);
    path.lineTo(300, 100);
    path.lineTo(100, 100); // inner 1
    path.close();
    path.moveTo(250, 150);
    path.lineTo(150, 150);
    path.lineTo(150, 250);
    path.lineTo(250, 250);
    path.lineTo(250, 150); // inner 2 (backwards)

    path2.lineTo(0, 400);
    path2.lineTo(400, 400);
    path2.lineTo(400, 0);
    path2.lineTo(0, 0); // outer
    path2.close();
    path2.moveTo(100, 100);
    path2.lineTo(300, 100);
    path2.lineTo(300, 300);
    path2.lineTo(100, 300);
    path2.lineTo(100, 100); // inner 1
    path2.close();
    path2.moveTo(150, 150);
    path2.lineTo(250, 150);
    path2.lineTo(250, 250);
    path2.lineTo(150, 250);
    path2.lineTo(150, 150); // inner 2 (fwds)

}

void ofApp::draw(){

    ofTranslate(40,40);
    path.draw();
    ofTranslate(410, 0);
    path2.draw();

}

void ofApp::keyPressed(int key){

    mode++;
    if( mode > 4 ) mode = 0;

    path.setPolyWindingMode((ofPolyWindingMode) mode);
    path2.setPolyWindingMode((ofPolyWindingMode) mode);

}
~~~~

we can see non zero and positive handle the winding differently:

![ofPath winding](path_winding.png)





<!----------------------------------------------------------------------------->

###void setStrokeColor(&color)

<!--
_syntax: setStrokeColor(&color)_
_name: setStrokeColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the stroke color of the path. This has no affect if the path
is drawn filled.





_description: _

This sets the stroke color of the path. This has no affect if the path is drawn filled.





<!----------------------------------------------------------------------------->

###void setStrokeHexColor(hex)

<!--
_syntax: setStrokeHexColor(hex)_
_name: setStrokeHexColor_
_returns: void_
_returns_description: _
_parameters: int hex_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the stroke color of the path. This has no affect if the path
is drawn filled.





_description: _

This sets the stroke color of the path. This has no affect if the path is drawn filled.





<!----------------------------------------------------------------------------->

###void setStrokeWidth(width)

<!--
_syntax: setStrokeWidth(width)_
_name: setStrokeWidth_
_returns: void_
_returns_description: _
_parameters: float width_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the stroke width of the line if the ofPath is to be drawn
not in wireframe.





_description: _

Sets the stroke width of the line if the ofPath is to be drawn not in wireframe.





<!----------------------------------------------------------------------------->

###void setUseShapeColor(useColor)

<!--
_syntax: setUseShapeColor(useColor)_
_name: setUseShapeColor_
_returns: void_
_returns_description: _
_parameters: bool useColor_
_access: public_
_version_started: 007_
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

###void simplify(tolerance = 0.3f)

<!--
_syntax: simplify(tolerance = 0.3f)_
_name: simplify_
_returns: void_
_returns_description: _
_parameters: float tolerance=0.3f_
_access: public_
_version_started: 007_
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

###void tessellate()

<!--
_syntax: tessellate()_
_name: tessellate_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###void translate(&p)

<!--
_syntax: translate(&p)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p_
_access: public_
_version_started: 007_
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

###void triangle(x1, y1, x2, y2, x3, y3)

<!--
_syntax: triangle(x1, y1, x2, y2, x3, y3)_
_name: triangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2, float x3, float y3_
_access: public_
_version_started: 0073_
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

###void triangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: triangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: triangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
_access: public_
_version_started: 0073_
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

###void triangle(&p1, &p2, &p3)

<!--
_syntax: triangle(&p1, &p2, &p3)_
_name: triangle_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2, const ofPoint &p3_
_access: public_
_version_started: 0073_
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

##Variables



###bool bFill

<!--
_name: bFill_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bHasChanged

<!--
_name: bHasChanged_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bNeedsPolylinesGeneration

<!--
_name: bNeedsPolylinesGeneration_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bNeedsTessellation

<!--
_name: bNeedsTessellation_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool bUseShapeColor

<!--
_name: bUseShapeColor_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofMesh cachedTessellation

<!--
_name: cachedTessellation_
_type: ofMesh_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool cachedTessellationValid

<!--
_name: cachedTessellationValid_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int circleResolution

<!--
_name: circleResolution_
_type: int_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###Command commands

<!--
_name: commands_
_type: Command_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int curveResolution

<!--
_name: curveResolution_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofColor fillColor

<!--
_name: fillColor_
_type: ofColor_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###Mode mode

<!--
_name: mode_
_type: Mode_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPolyline polylines

<!--
_name: polylines_
_type: ofPolyline_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###int prevCurveRes

<!--
_name: prevCurveRes_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofColor strokeColor

<!--
_name: strokeColor_
_type: ofColor_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###float strokeWidth

<!--
_name: strokeWidth_
_type: float_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPolyline tessellatedContour

<!--
_name: tessellatedContour_
_type: ofPolyline_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofTessellator tessellator

<!--
_name: tessellator_
_type: ofTessellator_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPolyWindingMode windingMode

<!--
_name: windingMode_
_type: ofPolyWindingMode_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

