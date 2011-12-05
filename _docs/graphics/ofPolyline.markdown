#class ofPolyline


##Description







ofPolyLine allows you to combine multiple ofPath instance into a single vector data object that can be drawn to the screen, manipulated point by point, and combined with other ofPolyline instances. 


$$code(lang=c++)
void testApp::setup(){
	float i = 0;
	while (i < TWO_PI) { // make a heart
		float r = (2-2*sin(i) + sin(i)*sqrt(abs(cos(i))) / (sin(i)+1.4)) * -80;
		float x = ofGetWidth()/2 + cos(i) * r;
		float y = ofGetHeight()/2 + sin(i) * r;
		line.addVertex(ofVec2f(x,y));
		i+=0.005*HALF_PI*0.5;
	}
	line.close(); // close the shape
	ofSetLineWidth(2);
}

void testApp::update(){
	int i = 0;
	while( i < line.size() ) { // give it some movement
		line[i].x += sin(line[i].y) * sin(ofGetElapsedTimef() * 2.f);
		i++;
	}
}

void testApp::draw(){
	//ofTranslate(ofGetWidth()/2 - 180, ofGetHeight()/2 - 60);
	ofSetColor(255, 0, 0);
	line.draw(); // draw the lines
	int i = 0;
	while( i < line.size() ) { // draw each point
		
		ofCircle(line[i].x, line[i].y, 3);
		i++;
	}
	
	ofSetColor(0, 0, 255);
	ofCircle(line.getClosestPoint(ofPoint(mouseX, mouseY)), 10); // find the closest point to the mouse
}
$$/code










##Methods



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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _





Creates an ofPolyline.








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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _






Creates an ofPolyline from a vector of ofVec2f or ofPoint objects.


$$code(lang=c++)
vector<ofPoint> pts;
	float j = 0;
	while(j < TWO_PI+0.1) {
		pts.push_back( ofPoint(cos(j) * 100, sin(j) * 100));
		j+=0.1;
	}
	ofPolyline cp(pts);
$$/code

There is an easier way to draw circles though, using the arc() method.


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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _


Removes all the points from the ofPolyline.











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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _






Adds a point using an ofPoint at the end of the ofPolyline.







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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _




Adds a point using floats instead of an ofPoint at the end of the ofPolyline.









###void addVertexes(&verts)

<!--

_syntax: addVertexes(&verts)_

_name: addVertexes_

_returns: void_

_returns_description: _

_parameters: const vector< ofPoint > &verts_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _




Adds multiple points at the end of the ofPolyline using a vector of ofPoint objects, which can be declared like so:

$$code(lang=c++)
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

$$/code




###void addVertexes(*verts, numverts)

<!--

_syntax: addVertexes(*verts, numverts)_

_name: addVertexes_

_returns: void_

_returns_description: _

_parameters: const ofPoint *verts, int numverts_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _





$$code(lang=c++)
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

$$/code








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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _




Add a line from the last point added, or from 0,0 if no point is set, to the point indicated by the ofPoint passesd in.









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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _




Add a line from the last point added, or from 0,0 if no point is set, to the point indicated by the floats x,y,z passesd in.









###void arc(&center, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--

_syntax: arc(&center, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_

_name: arc_

_returns: void_

_returns_description: _

_parameters: const ofPoint &center, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _






Draw an arc around the ofPoint p with the width of radiusX and the height of radiusY. The angleBegin and angleEnd indicate how far around you want the arc to extend. For instance, to draw a circle:

$$code(lang=c++)
ofPoint p(0, 0);
polyline.arc(p,100,100,0,360,40); // circle with a diameter of 100
$$/code

$$code(lang=c++)
ofPoint p(100, 0);
polyline.arc(p,100,100,0,180,40); // semi-circle with a diameter of 100
$$/code




###void arc(x, y, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--

_syntax: arc(x, y, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_

_name: arc_

_returns: void_

_returns_description: _

_parameters: float x, float y, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _




Draw an arc around the point x,y with the width of radiusX and the height of radiusY. The angleBegin and angleEnd indicate how far around you want the arc to extend. For instance, to draw a circle:

$$code(lang=c++)
polyline.arc(0,0,100,100,0,360,40); // circle with a diameter of 100
$$/code

$$code(lang=c++)
polyline.arc(0,0,100,100,0,180,40); // semi-circle with a diameter of 100
$$/code









###void arc(x, y, z, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

<!--

_syntax: arc(x, y, z, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)_

_name: arc_

_returns: void_

_returns_description: _

_parameters: float x, float y, float z, float radiusX, float radiusY, float angleBegin, float angleEnd, int curveResolution=20_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _




Draw an arc around the point x,y,z with the width of radiusX and the height of radiusY. The angleBegin and angleEnd indicate how far around you want the arc to extend. For instance, to draw a circle:

$$code(lang=c++)
// at middle and -100 back
polyline.arc(ofGetWidth()/2,ofGetHeight()/2,100,100,100,0,360,40); // circle with a diameter of 100
$$/code

$$code(lang=c++)
// at middle and -100 back
polyline.arc(ofGetWidth()/2,ofGetHeight()/2,100,100,100,0,180,40); // semi-circle with a diameter of 100
$$/code









###void curveTo(&to, curveResolution = 16)

<!--

_syntax: curveTo(&to, curveResolution = 16)_

_name: curveTo_

_returns: void_

_returns_description: _

_parameters: const ofPoint &to, int curveResolution=16_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###void curveTo(x, y, z = 0, curveResolution = 16)

<!--

_syntax: curveTo(x, y, z = 0, curveResolution = 16)_

_name: curveTo_

_returns: void_

_returns_description: _

_parameters: float x, float y, float z=0, int curveResolution=16_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###void bezierTo(&cp1, &cp2, &to, curveResolution = 16)

<!--

_syntax: bezierTo(&cp1, &cp2, &to, curveResolution = 16)_

_name: bezierTo_

_returns: void_

_returns_description: _

_parameters: const ofPoint &cp1, const ofPoint &cp2, const ofPoint &to, int curveResolution=16_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###void bezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)

<!--

_syntax: bezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)_

_name: bezierTo_

_returns: void_

_returns_description: _

_parameters: float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=16_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###void bezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)

<!--

_syntax: bezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)_

_name: bezierTo_

_returns: void_

_returns_description: _

_parameters: float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=16_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###void quadBezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)

<!--

_syntax: quadBezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)_

_name: quadBezierTo_

_returns: void_

_returns_description: _

_parameters: float cx1, float cy1, float cz1, float cx2, float cy2, float cz2, float x, float y, float z, int curveResolution=16_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###void quadBezierTo(&p1, &p2, &p3, curveResolution = 16)

<!--

_syntax: quadBezierTo(&p1, &p2, &p3, curveResolution = 16)_

_name: quadBezierTo_

_returns: void_

_returns_description: _

_parameters: const ofPoint &p1, const ofPoint &p2, const ofPoint &p3, int curveResolution=16_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###void quadBezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)

<!--

_syntax: quadBezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)_

_name: quadBezierTo_

_returns: void_

_returns_description: _

_parameters: float cx1, float cy1, float cx2, float cy2, float x, float y, int curveResolution=16_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###void simplify(tolerance = 0.3)

<!--

_syntax: simplify(tolerance = 0.3)_

_name: simplify_

_returns: void_

_returns_description: _

_parameters: float tolerance=0.3_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###ofPoint operator[](index)

<!--

_syntax: operator[](index)_

_name: operator[]_

_returns: ofPoint_

_returns_description: _

_parameters: int index_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














###ofPoint getVertices()

<!--

_syntax: getVertices()_

_name: getVertices_

_returns: ofPoint_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: yes_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: yes_

_visible: True_

_advanced: False_



-->

_description: _














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

_static: no_

_visible: True_

_advanced: False_



-->

_description: _














##Variables



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














