#class ofPolyline


##Description
















##Methods



### ofPolyline()

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



_description: _







### ofPolyline(&verts)

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



_description: _







###void clear()

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



_description: _







###void addVertex(&p)

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



_description: _







###void addVertex(x, y, z = 0)

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



_description: _







###void addVertexes(&verts)

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



_description: _







###void addVertexes(*verts, numverts)

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



_description: _







###void lineTo(&to)

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



_description: _







###void lineTo(x, y, z = 0)

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



_description: _







###void arc(&center, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

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



_description: _







###void arc(x, y, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

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



_description: _







###void arc(x, y, z, radiusX, radiusY, angleBegin, angleEnd, curveResolution = 20)

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



_description: _







###void curveTo(&to, curveResolution = 16)

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



_description: _







###void curveTo(x, y, z = 0, curveResolution = 16)

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



_description: _







###void bezierTo(&cp1, &cp2, &to, curveResolution = 16)

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



_description: _







###void bezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)

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



_description: _







###void bezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)

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



_description: _







###void quadBezierTo(cx1, cy1, cz1, cx2, cy2, cz2, x, y, z, curveResolution = 16)

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



_description: _







###void quadBezierTo(&p1, &p2, &p3, curveResolution = 16)

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



_description: _







###void quadBezierTo(cx1, cy1, cx2, cy2, x, y, curveResolution = 16)

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



_description: _







###ofPolyline getSmoothed(smoothingSize, smoothingShape = 0)

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



_description: _







###ofPolyline getResampledBySpacing(spacing)

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



_description: _







###ofPolyline getResampledByCount(count)

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



_description: _







###ofRectangle getBoundingBox()

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



_description: _







###ofPoint getClosestPoint(&target, *nearestIndex = NULL)

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



_description: _







###bool inside(x, y)

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



_description: _







###bool inside(&p)

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



_description: _







###void simplify(tolerance = 0.3)

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



_description: _







###size_t size()

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



_description: _







###ofPoint operator[](index)

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



_description: _







###void resize(size)

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



_description: _







###void setClosed(tf)

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



_description: _







###bool isClosed()

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



_description: _







###void close()

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



_description: _







###bool hasChanged()

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



_description: _







###ofPoint getVertices()

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



_description: _







###float getPerimeter()

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



_description: _







###float getArea()

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



_description: _







###ofPoint getCentroid2D()

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



_description: _







###void draw()

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



_description: _







###bool inside(x, y, &polyline)

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



_description: _







###bool inside(&p, &polyline)

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



_description: _







###void setCircleResolution(res)

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



_description: _







##Variables



###ofPoint points

_name: points_

_type: ofPoint_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###ofPoint curveVertices

_name: curveVertices_

_type: ofPoint_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###ofPoint circlePoints

_name: circlePoints_

_type: ofPoint_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###bool bClosed

_name: bClosed_

_type: bool_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







###bool bHasChanged

_name: bHasChanged_

_type: bool_

_access: private_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



_description: _







