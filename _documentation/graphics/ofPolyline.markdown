#class ofPolyline


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

ofPolyLine allows you to combine multiple points into a single vector data object that can be drawn to the screen, manipulated point by point, and combined with other ofPolyline instances. It is less complex than the [ofPath](ofPath.html) and generally represents a single line or vector shape rather than multiple lines or shapes.

You can add points to an ofPolyline by adding vertices:
~~~~{.cpp}
float i = 0;
while (i < TWO_PI) { // make a heart
	float r = (2-2*sin(i) + sin(i)*sqrt(abs(cos(i))) / (sin(i)+1.4)) * -80;
	float x = ofGetWidth()/2 + cos(i) * r;
	float y = ofGetHeight()/2 + sin(i) * r;
	line.addVertex(ofVec2f(x,y));
	i+=0.005*HALF_PI*0.5;
}
line.close(); // close the shape
~~~~
or you can draw lines or curves:
~~~~{.cpp}
float angle = 0;
while (angle < TWO_PI ) {
	b.curveTo(100*cos(angle), 0, 100*sin(angle));
	b.curveTo(300*cos(angle), 300, 300*sin(angle));
	angle += TWO_PI / 30;
}
~~~~
ofPolyline also includes methods to get the closest point, determine whether a point is inside shape, and resample shapes. Along with the ofPath class, it's the best way to draw and manipulate 2D and 3D vector graphics that you'll need to update and manipulate frequently.

If you use the lineTo or curveTo or bezierTo functions, you move the drawing point, so that drawing a line to 100,100 means a line from 0,0 to 100, 100. The next line would be a line from 100,100 to wherever you go next. Storing this position means that you can easily create continuous drawings without difficulty.





##Methods



###void addVertex(&p)

<!--
_syntax: addVertex(&p)_
_name: addVertex_
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

add a vertex 








_description: _


Adds a point using an ofPoint at the end of the ofPolyline.







<!----------------------------------------------------------------------------->

###void addVertex(x, y, z = 0)

<!--
_syntax: addVertex(x, y, z = 0)_
_name: addVertex_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z=0_
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


Adds a point using floats instead of an ofPoint at the end of the ofPolyline.







<!----------------------------------------------------------------------------->

###void addVertices(&verts)

<!--
_syntax: addVertices(&verts)_
_name: addVertices_
_returns: void_
_returns_description: _
_parameters: const vector< ofPoint > &verts_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Adds multiple points at the end of the ofPolyline using a vector of ofPoint objects, which can be declared like so:
~~~~{.cpp}
vector<ofPoint> verts;
// make a pentagon
float size = 80.f;
float X1 = 0.125*sqrt(10 + 2*sqrt(5)) * size;
float X2 = 0.125*sqrt(10 - 2*sqrt(5)) * size;
float Y1 = 0.125*(sqrt(5) - 1) * size;
float Y2 = 0.125*(sqrt(5) + 1) * size;
verts.push_back(ofPoint(0, -0.5 * size));
verts.push_back(ofPoint(-X1, -Y1));
verts.push_back(ofPoint(-X2, Y2));
verts.push_back(ofPoint(X2, Y2));
verts.push_back(ofPoint(X1, -Y1));
ofPolyline p;
p.addVertexes(verts);
~~~~







<!----------------------------------------------------------------------------->

###void addVertices(*verts, numverts)

<!--
_syntax: addVertices(*verts, numverts)_
_name: addVertices_
_returns: void_
_returns_description: _
_parameters: const ofPoint *verts, int numverts_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Adds multiple points at the end of the ofPolyline using a pointer to an array of ofPoint objects.
~~~~{.cpp}
ofPoint* verts = new ofPoint[5];
// make a pentagon
float size = 80.f;
float X1 = 0.125*sqrt(10 + 2*sqrt(5)) * size;
float X2 = 0.125*sqrt(10 - 2*sqrt(5)) * size;
float Y1 = 0.125*(sqrt(5) - 1) * size;
float Y2 = 0.125*(sqrt(5) + 1) * size;
verts[0] = ofPoint(0, -0.5 * size);
verts[1] = ofPoint(-X1, -Y1);
verts[2] = ofPoint(-X2, Y2);
verts[3] = ofPoint(X2, Y2);
verts[4] = ofPoint(X1, -Y1);
ofPolyline p;
p.addVertexes(verts, 5);
~~~~







<!----------------------------------------------------------------------------->

###void arc(&center, radiusX, radiusY, angleBegin, angleEnd, clockwise, curveResolution = 20)

<!--
_syntax: arc(&center, radiusX, radiusY, angleBegin, angleEnd, clockwise, curveResolution = 20)_
_name: arc_
_returns: void_
_returns_description: _
_parameters: const ofPoint &center, float radiusX, float radiusY, float angleBegin, float angleEnd, bool clockwise, int circleResolution=20_
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


Draws an arc around the ofPoint ``center`` with the width of ``radiusX`` and the height of ``radiusY``.
The ``angleBegin`` and ``angleEnd`` indicate the start and end angles of the arc in degrees measured clockwise from the x-axis.
The ``clockwise`` boolean sets the drawing direction.  Passing 'false' to it will draw the arc counter-clockwise.

Optionally, you can specify ``circleResolution``, which is the number of line segments a circle would be drawn with.







<!----------------------------------------------------------------------------->

###void arc(&center, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--
_syntax: arc(&center, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_
_name: arc_
_returns: void_
_returns_description: _
_parameters: const ofPoint &center, float radiusX, float radiusY, float angleBegin, float angleEnd, int circleResolution=20_
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


Draws an arc around the ofPoint ``center`` with the width of ``radiusX`` and the height of ``radiusY``. 
The ``angleBegin`` and ``angleEnd`` indicate the start and end angles of the arc in degrees measured clockwise from the x-axis.

Optionally, you can specify ``circleResolution``, which is the number of line segments a circle would be drawn with.
A partial arc will be drawn with the same resolution: if circleResolution == 20, a half-circle will be drawn with 10 segments.
	
If there are already vertexes in the ofPolyline the arc will extend them;
a line will be created from the endmost point on the ofPolyline to the beginning point of the arc.

Example:
~~~~{.cpp}
ofPolyline polyline1, polyline2;

// draw an circle with a diameter of 100 in blue
ofPoint point1(150,120);
polyline1.arc(point1,100,100,0,360);
ofSetColor(ofColor::blue);
polyline1.draw();

// draw an line, then an semi-circle in red
polyline2.lineTo(300, 50);
ofPoint point2(450,120);
polyline2.arc(point2,100,100,0,180);
ofSetColor(ofColor::red);
polyline2.draw();
~~~~

![Arc Example](ofpolyline_arc.png)







<!----------------------------------------------------------------------------->

###void arc(x, y, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--
_syntax: arc(x, y, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_
_name: arc_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd, int circleResolution=20_
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


Draws an arc around the coordinates (``x``,``y``) with the width of ``radiusX`` and the height of ``radiusY``.
The ``angleBegin`` and ``angleEnd`` indicate the start and end angles of the arc in degrees measured clockwise from the x-axis.

Optionally, you can specify ``circleResolution``, which is the number of line segments a circle would be drawn with.







<!----------------------------------------------------------------------------->

###void arc(x, y, z, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--
_syntax: arc(x, y, z, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_
_name: arc_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd, int circleResolution=20_
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


Draws an arc around the coordinates (``x``,``y``,``z``) with the width of ``radiusX`` and the height of ``radiusY``.
The ``angleBegin`` and ``angleEnd`` indicate the start and end angles of the arc in degrees measured clockwise from the x-axis.

Optionally, you can specify ``circleResolution``, which is the number of line segments a circle would be drawn with.







<!----------------------------------------------------------------------------->

###void arcNegative(&center, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--
_syntax: arcNegative(&center, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_
_name: arcNegative_
_returns: void_
_returns_description: _
_parameters: const ofPoint &center, float radiusX, float radiusY, float angleBegin, float angleEnd, int circleResolution=20_
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

###void arcNegative(x, y, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--
_syntax: arcNegative(x, y, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_
_name: arcNegative_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd, int circleResolution=20_
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

###void arcNegative(x, y, z, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--
_syntax: arcNegative(x, y, z, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_
_name: arcNegative_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd, int circleResolution=20_
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

###vector< ofVec3f >::iterator begin()

<!--
_syntax: begin()_
_name: begin_
_returns: vector< ofVec3f >::iterator_
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

###void bezierTo(&cp1, &cp2, &to, curveResolution = 16)

<!--
_syntax: bezierTo(&cp1, &cp2, &to, curveResolution = 16)_
_name: bezierTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &cp1, const ofPoint &cp2, const ofPoint &to, int curveResolution=20_
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

cubic bezier 








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

###void bezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)

<!--
_syntax: bezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)_
_name: bezierTo_
_returns: void_
_returns_description: _
_parameters: float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=20_
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


Creates a cubic bezier line from the current drawing point with the 2 control points indicated by the coordinates cx1, cy1 and cx2, cy2, that ends at the coordinates x, y.







<!----------------------------------------------------------------------------->

###void bezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)

<!--
_syntax: bezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)_
_name: bezierTo_
_returns: void_
_returns_description: _
_parameters: float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=20_
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

###void calcData(index, &tangent, &angle, &rotation, &normal)

<!--
_syntax: calcData(index, &tangent, &angle, &rotation, &normal)_
_name: calcData_
_returns: void_
_returns_description: _
_parameters: int index, ofVec3f &tangent, float &angle, ofVec3f &rotation, ofVec3f &normal_
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

remove all the points 








_description: _


Removes all the points from the ofPolyline.







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








_description: _


Closes the ofPolyline, meaning that all the vertices will be linked and can be "walked".







<!----------------------------------------------------------------------------->

###void curveTo(&to, curveResolution = 16)

<!--
_syntax: curveTo(&to, curveResolution = 16)_
_name: curveTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &to, int curveResolution=20_
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


Draws a curve to an ofPoint object passed in:
~~~~{.cpp}
float angle = 0;
while (angle < TWO_PI ) {
	b.curveTo( ofPoint(100*cos(angle), 100*sin(angle)));
	b.curveTo( ofPoint(300*cos(angle), 300*sin(angle)));
	angle += TWO_PI / 30;
}
~~~~

You need at least 4 points to be able to draw with curveTo, here's an explanation of why this happens:

If we have an empty `ofPolyline` `p`, and we do:

    p.lineTo(v0); 
    p.lineTo(v1); 
    p.lineTo(v2); 
    p.lineTo(v3); 

We end up with a line that starts at `v0`, heads to `v1`, then heads to `v2` and finally ends at `v3`.  But if we had instead done:

    p.curveTo(v0); 
    p.curveTo(v1); 
    p.curveTo(v2); 
    p.curveTo(v3); 

We end up with a curve that goes from `v1` to `v2`.  That might seem initially puzzling...

So, we have to dive under the hood.  The `curveTo(...)` method makes Catmull-Rom splines [wiki](http://en.wikipedia.org/wiki/Centripetal_Catmull%E2%80%93Rom_spline).  The relevant bit to understand is that this type of spline is defined by four points:

![](http://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Catmull-Rom_Spline.png/220px-Catmull-Rom_Spline.png)

P1 and P2 are the endpoints of our curve, while P0 and P3 are the control that define the shape of the curve.

When using `curveTo(...)` with `ofPolyline`, there's an internal vector that stores P0, P1, P2 and P3.  When our `ofPolyline` is empty then the internal vector is also empty.  When we call:

    p.curveTo(v0); // Internal vector is [v0], so only P0 is defined 
    p.curveTo(v1); // Internal vector is [v0, v1], so only P0 and P1 are defined
    p.curveTo(v2); // Internal vector is [v0, v1, v2], so only P0, P1 and P2 are defined
    p.curveTo(v3); // Internal vector is [v0, v1, v2, v3], so all points are defined

Only once all of those points (P0 through P4) have been defined, then a spline has been fully defined and vertices can finally be added to our `ofPolyline`.  When `curveTo(v3)` is called above, then the curve between P1 (`v1`) and P2 (`v2`) is sampled (at a resolution defined by the optional parameter `curveResolution`).  That sampling slides along the curve and adds vertices to your `ofPolyline`.  

The curve doesn't start at `v0` and end at `v3` because those points are acting as the control points (i.e. the points connected by dotted lines in the image above).

And now that we have P0 through P4 defined, when we call `curveTo(...)` next:

    curveTo(v4); // Internal vector becomes [v1, v2, v3, v4]

The oldest point, `v0`, was bumped and everything shifted down.  The sampling occurs again, but this time it is between `v2` and `v3`.







<!----------------------------------------------------------------------------->

###void curveTo(x, y, z = 0, curveResolution = 16)

<!--
_syntax: curveTo(x, y, z = 0, curveResolution = 16)_
_name: curveTo_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z=0, int curveResolution=20_
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


Draws a curve to the x,y,z points passed in with the optional resolution.
~~~~{.cpp}
float angle = 0;
while (angle < TWO_PI ) {
	polyline.curveTo(100*cos(angle), 0, 100*sin(angle));
	polyline.curveTo(300*cos(angle), 300, 300*sin(angle));
	angle += TWO_PI / 30;
}
~~~~







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








_description: _


Draw the line using the current renderer.







<!----------------------------------------------------------------------------->

###vector< ofVec3f >::iterator end()

<!--
_syntax: end()_
_name: end_
_returns: vector< ofVec3f >::iterator_
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

###void flagHasChanged()

<!--
_syntax: flagHasChanged()_
_name: flagHasChanged_
_returns: void_
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

###ofPolyline fromRectangle(&rect)

<!--
_syntax: fromRectangle(&rect)_
_name: fromRectangle_
_returns: ofPolyline_
_returns_description: _
_parameters: const ofRectangle &rect_
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###float getAngleAtIndex(index)

<!--
_syntax: getAngleAtIndex(index)_
_name: getAngleAtIndex_
_returns: float_
_returns_description: _
_parameters: int index_
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

###float getAngleAtIndexInterpolated(findex)

<!--
_syntax: getAngleAtIndexInterpolated(findex)_
_name: getAngleAtIndexInterpolated_
_returns: float_
_returns_description: _
_parameters: float findex_
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

###float getArea()

<!--
_syntax: getArea()_
_name: getArea_
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








_description: _


Gets the precise area bounded by the line.







<!----------------------------------------------------------------------------->

###ofRectangle getBoundingBox()

<!--
_syntax: getBoundingBox()_
_name: getBoundingBox_
_returns: ofRectangle_
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


Returns the bounding box of the shape, taking into account all the points to determine the extents of the polyline.







<!----------------------------------------------------------------------------->

###ofPoint getCentroid2D()

<!--
_syntax: getCentroid2D()_
_name: getCentroid2D_
_returns: ofPoint_
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


Get the center of the area bounded by the line.







<!----------------------------------------------------------------------------->

###ofPoint getClosestPoint(&target, *nearestIndex = NULL)

<!--
_syntax: getClosestPoint(&target, *nearestIndex = NULL)_
_name: getClosestPoint_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint &target, unsigned int *nearestIndex=NULL_
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


This returns the point on the line closest to the target. You can also optionally pass a pointer to/address of an unsigned int to get the index of the closest vertex.







<!----------------------------------------------------------------------------->

###float getIndexAtLength(f)

<!--
_syntax: getIndexAtLength(f)_
_name: getIndexAtLength_
_returns: float_
_returns_description: _
_parameters: float f_
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

###float getIndexAtPercent(f)

<!--
_syntax: getIndexAtPercent(f)_
_name: getIndexAtPercent_
_returns: float_
_returns_description: _
_parameters: float f_
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

###void getInterpolationParams(findex, &i1, &i2, &t)

<!--
_syntax: getInterpolationParams(findex, &i1, &i2, &t)_
_name: getInterpolationParams_
_returns: void_
_returns_description: _
_parameters: float findex, int &i1, int &i2, float &t_
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

###float getLengthAtIndex(index)

<!--
_syntax: getLengthAtIndex(index)_
_name: getLengthAtIndex_
_returns: float_
_returns_description: _
_parameters: int index_
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

###float getLengthAtIndexInterpolated(findex)

<!--
_syntax: getLengthAtIndexInterpolated(findex)_
_name: getLengthAtIndexInterpolated_
_returns: float_
_returns_description: _
_parameters: float findex_
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

###ofVec3f getNormalAtIndex(index)

<!--
_syntax: getNormalAtIndex(index)_
_name: getNormalAtIndex_
_returns: ofVec3f_
_returns_description: _
_parameters: int index_
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

###ofVec3f getNormalAtIndexInterpolated(findex)

<!--
_syntax: getNormalAtIndexInterpolated(findex)_
_name: getNormalAtIndexInterpolated_
_returns: ofVec3f_
_returns_description: _
_parameters: float findex_
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

###float getPerimeter()

<!--
_syntax: getPerimeter()_
_name: getPerimeter_
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








_description: _


Returns the size of the perimeter of the polyline, good for determining length of the line, rather than just the bounding box shape.







<!----------------------------------------------------------------------------->

###ofPoint getPointAtIndexInterpolated(findex)

<!--
_syntax: getPointAtIndexInterpolated(findex)_
_name: getPointAtIndexInterpolated_
_returns: ofPoint_
_returns_description: _
_parameters: float findex_
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

###ofPoint getPointAtLength(f)

<!--
_syntax: getPointAtLength(f)_
_name: getPointAtLength_
_returns: ofPoint_
_returns_description: _
_parameters: float f_
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

###ofPoint getPointAtPercent(f)

<!--
_syntax: getPointAtPercent(f)_
_name: getPointAtPercent_
_returns: ofPoint_
_returns_description: _
_parameters: float f_
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

###ofPolyline getResampledByCount(count)

<!--
_syntax: getResampledByCount(count)_
_name: getResampledByCount_
_returns: ofPolyline_
_returns_description: _
_parameters: int count_
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


This resamples the line based on the spacing passed in. The lower the count passed in, the more points will be eliminated. This doesn't add new points to the line though.







<!----------------------------------------------------------------------------->

###ofPolyline getResampledBySpacing(spacing)

<!--
_syntax: getResampledBySpacing(spacing)_
_name: getResampledBySpacing_
_returns: ofPolyline_
_returns_description: _
_parameters: float spacing_
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


This resamples the line based on the spacing passed in. The larger the spacing, the more points will be eliminated.
~~~~{.cpp}
line.draw();
ofTranslate(400, 0);
line.getResampledBySpacing(100).draw();
~~~~
![polyline resample](resample.png)







<!----------------------------------------------------------------------------->

###ofVec3f getRightVector()

<!--
_syntax: getRightVector()_
_name: getRightVector_
_returns: ofVec3f_
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

###ofVec3f getRotationAtIndex(index)

<!--
_syntax: getRotationAtIndex(index)_
_name: getRotationAtIndex_
_returns: ofVec3f_
_returns_description: _
_parameters: int index_
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

###ofVec3f getRotationAtIndexInterpolated(findex)

<!--
_syntax: getRotationAtIndexInterpolated(findex)_
_name: getRotationAtIndexInterpolated_
_returns: ofVec3f_
_returns_description: _
_parameters: float findex_
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

###ofPolyline getSmoothed(smoothingSize, smoothingShape = 0)

<!--
_syntax: getSmoothed(smoothingSize, smoothingShape = 0)_
_name: getSmoothed_
_returns: ofPolyline_
_returns_description: _
_parameters: int smoothingSize, float smoothingShape=0_
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


This returns a smoothed version of the ofPolyline.







<!----------------------------------------------------------------------------->

###ofVec3f getTangentAtIndex(index)

<!--
_syntax: getTangentAtIndex(index)_
_name: getTangentAtIndex_
_returns: ofVec3f_
_returns_description: _
_parameters: int index_
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

###ofVec3f getTangentAtIndexInterpolated(findex)

<!--
_syntax: getTangentAtIndexInterpolated(findex)_
_name: getTangentAtIndexInterpolated_
_returns: ofVec3f_
_returns_description: _
_parameters: float findex_
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

###vector< ofPoint > & getVertices()

<!--
_syntax: getVertices()_
_name: getVertices_
_returns: vector< ofPoint > &_
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

###const vector< ofPoint > & getVertices()

<!--
_syntax: getVertices()_
_name: getVertices_
_returns: const vector< ofPoint > &_
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


Returns the vector of vertices that the line contains, vector<ofPoint> &.







<!----------------------------------------------------------------------------->

###int getWrappedIndex(index)

<!--
_syntax: getWrappedIndex(index)_
_name: getWrappedIndex_
_returns: int_
_returns_description: _
_parameters: int index_
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

###bool hasChanged()

<!--
_syntax: hasChanged()_
_name: hasChanged_
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


Returns whether the vertices within the line have changed.







<!----------------------------------------------------------------------------->

###void insertVertex(&p, index)

<!--
_syntax: insertVertex(&p, index)_
_name: insertVertex_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p, int index_
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

###void insertVertex(x, y, z, index)

<!--
_syntax: insertVertex(x, y, z, index)_
_name: insertVertex_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, int index_
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

###bool inside(x, y)

<!--
_syntax: inside(x, y)_
_name: inside_
_returns: bool_
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








_description: _


Tests whether the x,y coordinates are within a closed ofPolyline.







<!----------------------------------------------------------------------------->

###bool inside(&p)

<!--
_syntax: inside(&p)_
_name: inside_
_returns: bool_
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


Tests whether the ofPoint is within a closed ofPolyline.







<!----------------------------------------------------------------------------->

###bool inside(x, y, &polyline)

<!--
_syntax: inside(x, y, &polyline)_
_name: inside_
_returns: bool_
_returns_description: _
_parameters: float x, float y, const ofPolyline &polyline_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Test whether the x,y point is within anothe polyline, passed in as ofPolyline&







<!----------------------------------------------------------------------------->

###bool inside(&p, &polyline)

<!--
_syntax: inside(&p, &polyline)_
_name: inside_
_returns: bool_
_returns_description: _
_parameters: const ofPoint &p, const ofPolyline &polyline_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Test whether the ofPoint is within anothe polyline, passed in as ofPolyline&







<!----------------------------------------------------------------------------->

###bool isClosed()

<!--
_syntax: isClosed()_
_name: isClosed_
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


Whether the shape is closed or not. Certain operations, like getSmoothed() can only be performed on closed shapes.







<!----------------------------------------------------------------------------->

###void lineTo(&to)

<!--
_syntax: lineTo(&to)_
_name: lineTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &to_
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


Add a line from the last point added, or from 0,0 if no point is set, to the point indicated by the ofPoint passesd in.







<!----------------------------------------------------------------------------->

###void lineTo(x, y, z = 0)

<!--
_syntax: lineTo(x, y, z = 0)_
_name: lineTo_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z=0_
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


Add a line from the last point added, or from 0,0 if no point is set, to the point indicated by the floats x,y,z passesd in.







<!----------------------------------------------------------------------------->

### ofPolyline()

<!--
_syntax: ofPolyline()_
_name: ofPolyline_
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








_description: _


Creates an ofPolyline.







<!----------------------------------------------------------------------------->

### ofPolyline(&verts)

<!--
_syntax: ofPolyline(&verts)_
_name: ofPolyline_
_returns: _
_returns_description: _
_parameters: const vector< ofPoint > &verts_
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


Creates an ofPolyline from a vector of ofVec2f or ofPoint objects.
~~~~{.cpp}
vector<ofPoint> pts;
	float j = 0;
	while(j < TWO_PI+0.1) {
		pts.push_back( ofPoint(cos(j) * 100, sin(j) * 100));
		j+=0.1;
	}
	ofPolyline cp(pts);
~~~~
There is an easier way to draw circles though, using the arc() method.







<!----------------------------------------------------------------------------->

###const ofPoint & operator[](index)

<!--
_syntax: operator[](index)_
_name: operator[]_
_returns: const ofPoint &_
_returns_description: _
_parameters: int index_
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

###ofPoint & operator[](index)

<!--
_syntax: operator[](index)_
_name: operator[]_
_returns: ofPoint &_
_returns_description: _
_parameters: int index_
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


The [] operator allows you to access the points of the ofPolyline just like you would in an array, so to make the points of a line follow the mouse movement, you could do:
~~~~{.cpp}
line[0].set(mouseX, mouseY);
int i = 1;
while ( i<bounds.size()) {
	
	float angle = atan2(line[i-1].y - line[i].y, line[i-1].x - line[i].x);  
	bounds[i].set(bounds[i-1].x - cos(angle) * 20, bounds[i-1].y - sin(angle) * 20);
	
	i++;
}
~~~~







<!----------------------------------------------------------------------------->

###void quadBezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)

<!--
_syntax: quadBezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)_
_name: quadBezierTo_
_returns: void_
_returns_description: _
_parameters: float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=20_
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

quadratic bezier (lower resolution than cubic) 








_description: _


Creates a quadratic bezier line in 3D space from the current drawing point with the beginning indicated by the coordinates cx1, cy1, cz1, the control point at cx2, cy2, cz2, and that ends at the coordinates x, y, z.
![polyline curves](curves.png)







<!----------------------------------------------------------------------------->

###void quadBezierTo(&p1, &p2, &p3, curveResolution = 16)

<!--
_syntax: quadBezierTo(&p1, &p2, &p3, curveResolution = 16)_
_name: quadBezierTo_
_returns: void_
_returns_description: _
_parameters: const ofPoint &p1, const ofPoint &p2, const ofPoint &p3, int curveResolution=20_
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


Creates a quadratic bezier line in 2D space from the current drawing point with the beginning indicated by the point p1, the control point at p2, and that ends at the point p3.







<!----------------------------------------------------------------------------->

###void quadBezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)

<!--
_syntax: quadBezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)_
_name: quadBezierTo_
_returns: void_
_returns_description: _
_parameters: float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=20_
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


Creates a quadratic bezier line in 3D space from the current drawing point with the beginning indicated by the coordinates cx1, cy1, the control point at cx2, cy2, and that ends at the coordinates x, y.







<!----------------------------------------------------------------------------->

###void resize(size)

<!--
_syntax: resize(size)_
_name: resize_
_returns: void_
_returns_description: _
_parameters: size_t size_
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


Resize the number of points in the ofPolyline to the value passed in.







<!----------------------------------------------------------------------------->

###void setCircleResolution(res)

<!--
_syntax: setCircleResolution(res)_
_name: setCircleResolution_
_returns: void_
_returns_description: _
_parameters: int res_
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

###void setClosed(tf)

<!--
_syntax: setClosed(tf)_
_name: setClosed_
_returns: void_
_returns_description: _
_parameters: bool tf_
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

closed 








_description: _


Closes the ofPolyline, meaning that all the vertices will be linked and can be "walked".







<!----------------------------------------------------------------------------->

###void setRightVector(v = ofVec3f(0, 0, -1))

<!--
_syntax: setRightVector(v = ofVec3f(0, 0, -1))_
_name: setRightVector_
_returns: void_
_returns_description: _
_parameters: ofVec3f v=ofVec3f(0, 0,-1)_
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

###void simplify(tolerance = 0.3)

<!--
_syntax: simplify(tolerance = 0.3)_
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


Simplifies the polyline, removing un-necessary vertices. The tolerance determines how dis-similar points need to be to stay in the line. Higher tolerance means more points removed, lower tolerance means less points removed.







<!----------------------------------------------------------------------------->

###size_t size()

<!--
_syntax: size()_
_name: size_
_returns: size_t_
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

points vector access 








_description: _


The number of points in the ofPolyline.







<!----------------------------------------------------------------------------->

###void updateCache(bForceUpdate = false)

<!--
_syntax: updateCache(bForceUpdate = false)_
_name: updateCache_
_returns: void_
_returns_description: _
_parameters: bool bForceUpdate=false_
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

###float wrapAngle(angleRad)

<!--
_syntax: wrapAngle(angleRad)_
_name: wrapAngle_
_returns: float_
_returns_description: _
_parameters: float angleRad_
_access: private_
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

##Variables



###vector< float > angles

<!--
_name: angles_
_type: vector< float >_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float area

<!--
_name: area_
_type: float_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bCacheIsDirty

<!--
_name: bCacheIsDirty_
_type: bool_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bClosed

<!--
_name: bClosed_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool bHasChanged

<!--
_name: bHasChanged_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint centroid2D

<!--
_name: centroid2D_
_type: ofPoint_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint circlePoints

<!--
_name: circlePoints_
_type: ofPoint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint curveVertices

<!--
_name: curveVertices_
_type: ofPoint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###vector< float > lengths

<!--
_name: lengths_
_type: vector< float >_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f normals

<!--
_name: normals_
_type: ofVec3f_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofPoint points

<!--
_name: points_
_type: ofPoint_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f rightVector

<!--
_name: rightVector_
_type: ofVec3f_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f rotations

<!--
_name: rotations_
_type: ofVec3f_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofVec3f tangents

<!--
_name: tangents_
_type: ofVec3f_
_access: private_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

