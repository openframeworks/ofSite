#class of3dGraphics


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description





##Methods



###void drawArrow(&start, &end, headSize)

<!--
_syntax: drawArrow(&start, &end, headSize)_
_name: drawArrow_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &start, const ofVec3f &end, float headSize_
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

###void drawAxis(size)

<!--
_syntax: drawAxis(size)_
_name: drawAxis_
_returns: void_
_returns_description: _
_parameters: float size_
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

###void drawBox(x, y, z, width, height, depth)

<!--
_syntax: drawBox(x, y, z, width, height, depth)_
_name: drawBox_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height, float depth_
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







<!----------------------------------------------------------------------------->

###void drawBox(x, y, z, size)

<!--
_syntax: drawBox(x, y, z, size)_
_name: drawBox_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float size_
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







<!----------------------------------------------------------------------------->

###void drawBox(&position, width, height, depth)

<!--
_syntax: drawBox(&position, width, height, depth)_
_name: drawBox_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float width, float height, float depth_
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







<!----------------------------------------------------------------------------->

###void drawBox(&position, size)

<!--
_syntax: drawBox(&position, size)_
_name: drawBox_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float size_
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

Draws a cube with the specified size, starting from the specified position.

A cube is drawn starting from a 3D reference position, with the specified size.
The cube is drawn with the current color, e.g. set with ofSetColor().
The cube is drawn filled by default; change this with ofFill();


Parameters:
position an ofPoint which contains the (x,y,z) coordinates for the cube's reference corner.
size The size of the cube.





_description: _







<!----------------------------------------------------------------------------->

###void drawBox(size)

<!--
_syntax: drawBox(size)_
_name: drawBox_
_returns: void_
_returns_description: _
_parameters: float size_
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

Draws a cube with the specified size, starting from the origin.

The cube is drawn with the current color, e.g. set with ofSetColor().
The cube is drawn filled by default; change this with ofFill();


Parameters:
size The size of the cube.





_description: _







<!----------------------------------------------------------------------------->

###void drawBox(width, height, depth)

<!--
_syntax: drawBox(width, height, depth)_
_name: drawBox_
_returns: void_
_returns_description: _
_parameters: float width, float height, float depth_
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







<!----------------------------------------------------------------------------->

###void drawCone(x, y, z, radius, height)

<!--
_syntax: drawCone(x, y, z, radius, height)_
_name: drawCone_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius, float height_
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

###void drawCone(x, y, radius, height)

<!--
_syntax: drawCone(x, y, radius, height)_
_name: drawCone_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius, float height_
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

###void drawCone(&position, radius, height)

<!--
_syntax: drawCone(&position, radius, height)_
_name: drawCone_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float radius, float height_
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

###void drawCone(radius, height)

<!--
_syntax: drawCone(radius, height)_
_name: drawCone_
_returns: void_
_returns_description: _
_parameters: float radius, float height_
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

###void drawCylinder(x, y, radius, height)

<!--
_syntax: drawCylinder(x, y, radius, height)_
_name: drawCylinder_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius, float height_
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

###void drawCylinder(x, y, z, radius, height)

<!--
_syntax: drawCylinder(x, y, z, radius, height)_
_name: drawCylinder_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius, float height_
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

###void drawCylinder(&position, radius, height)

<!--
_syntax: drawCylinder(&position, radius, height)_
_name: drawCylinder_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float radius, float height_
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

###void drawCylinder(radius, height)

<!--
_syntax: drawCylinder(radius, height)_
_name: drawCylinder_
_returns: void_
_returns_description: _
_parameters: float radius, float height_
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

###void drawGrid(stepSize, numberOfSteps, labels, x, y, z)

<!--
_syntax: drawGrid(stepSize, numberOfSteps, labels, x, y, z)_
_name: drawGrid_
_returns: void_
_returns_description: _
_parameters: float stepSize, size_t numberOfSteps, bool labels, bool x, bool y, bool z_
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

###void drawGridPlane(stepSize, numberOfSteps, labels)

<!--
_syntax: drawGridPlane(stepSize, numberOfSteps, labels)_
_name: drawGridPlane_
_returns: void_
_returns_description: _
_parameters: float stepSize, size_t numberOfSteps, bool labels_
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

###void drawIcoSphere(x, y, z, radius)

<!--
_syntax: drawIcoSphere(x, y, z, radius)_
_name: drawIcoSphere_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
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

###void drawIcoSphere(x, y, radius)

<!--
_syntax: drawIcoSphere(x, y, radius)_
_name: drawIcoSphere_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius_
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

###void drawIcoSphere(&position, radius)

<!--
_syntax: drawIcoSphere(&position, radius)_
_name: drawIcoSphere_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float radius_
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

###void drawIcoSphere(radius)

<!--
_syntax: drawIcoSphere(radius)_
_name: drawIcoSphere_
_returns: void_
_returns_description: _
_parameters: float radius_
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

###void drawPlane(x, y, width, height)

<!--
_syntax: drawPlane(x, y, width, height)_
_name: drawPlane_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height_
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

###void drawPlane(x, y, z, width, height)

<!--
_syntax: drawPlane(x, y, z, width, height)_
_name: drawPlane_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height_
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

###void drawPlane(&position, width, height)

<!--
_syntax: drawPlane(&position, width, height)_
_name: drawPlane_
_returns: void_
_returns_description: _
_parameters: ofPoint &position, float width, float height_
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

###void drawPlane(width, height)

<!--
_syntax: drawPlane(width, height)_
_name: drawPlane_
_returns: void_
_returns_description: _
_parameters: float width, float height_
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

###void drawRotationAxes(radius, stripWidth, circleRes)

<!--
_syntax: drawRotationAxes(radius, stripWidth, circleRes)_
_name: drawRotationAxes_
_returns: void_
_returns_description: _
_parameters: float radius, float stripWidth, int circleRes_
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

###void drawSphere(x, y, radius)

<!--
_syntax: drawSphere(x, y, radius)_
_name: drawSphere_
_returns: void_
_returns_description: _
_parameters: float x, float y, float radius_
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

###void drawSphere(x, y, z, radius)

<!--
_syntax: drawSphere(x, y, z, radius)_
_name: drawSphere_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
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

###void drawSphere(&position, radius)

<!--
_syntax: drawSphere(&position, radius)_
_name: drawSphere_
_returns: void_
_returns_description: _
_parameters: const ofPoint &position, float radius_
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

###void drawSphere(radius)

<!--
_syntax: drawSphere(radius)_
_name: drawSphere_
_returns: void_
_returns_description: _
_parameters: float radius_
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

###ofVec3f getBoxResolution()

<!--
_syntax: getBoxResolution()_
_name: getBoxResolution_
_returns: ofVec3f_
_returns_description: _
_parameters: _
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

###ofVec3f getConeResolution()

<!--
_syntax: getConeResolution()_
_name: getConeResolution_
_returns: ofVec3f_
_returns_description: _
_parameters: _
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

Retrieve a data structure describing the resolution with which cones are polygonized.

Allows you to fetch the resolution with which cones are polygonized.
Returns an ofVec3f containing the following data:
Encoded as "x": radiusSegments, the number of facets (subdivisions) around the cone's circular footprint.
Encoded as "y": heightSegments, the number of subdivisions from the cone's top to bottom.
Encoded as "z": capSegments, the number of annular (ring-shaped) subdivisions of the cone's endcap.


Returns: An ofVec3f containing (radiusSegments, heightSegments, capSegments) for cone polygonization.





_description: _







<!----------------------------------------------------------------------------->

###ofVec3f getCylinderResolution()

<!--
_syntax: getCylinderResolution()_
_name: getCylinderResolution_
_returns: ofVec3f_
_returns_description: _
_parameters: _
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

###int getIcoSphereResolution()

<!--
_syntax: getIcoSphereResolution()_
_name: getIcoSphereResolution_
_returns: int_
_returns_description: _
_parameters: _
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

###ofVec2f getPlaneResolution()

<!--
_syntax: getPlaneResolution()_
_name: getPlaneResolution_
_returns: ofVec2f_
_returns_description: _
_parameters: _
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

###int getSphereResolution()

<!--
_syntax: getSphereResolution()_
_name: getSphereResolution_
_returns: int_
_returns_description: _
_parameters: _
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

### of3dGraphics(*renderer)

<!--
_syntax: of3dGraphics(*renderer)_
_name: of3dGraphics_
_returns: _
_returns_description: _
_parameters: ofBaseRenderer *renderer_
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

###void renderCached3dPrimitive(&model)

<!--
_syntax: renderCached3dPrimitive(&model)_
_name: renderCached3dPrimitive_
_returns: void_
_returns_description: _
_parameters: const of3dPrimitive &model_
_access: private_
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

###void setBoxResolution(res)

<!--
_syntax: setBoxResolution(res)_
_name: setBoxResolution_
_returns: void_
_returns_description: _
_parameters: int res_
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

###void setBoxResolution(resWidth, resHeight, resDepth)

<!--
_syntax: setBoxResolution(resWidth, resHeight, resDepth)_
_name: setBoxResolution_
_returns: void_
_returns_description: _
_parameters: int resWidth, int resHeight, int resDepth_
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

###void setConeResolution(radiusSegments, heightSegments, capSegments = 2)

<!--
_syntax: setConeResolution(radiusSegments, heightSegments, capSegments = 2)_
_name: setConeResolution_
_returns: void_
_returns_description: _
_parameters: int radiusSegments, int heightSegments, int capSegments=2_
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

Set the resolution of a polygonized cone.

Allows you to set the polygonization resolution of any cones you subsequently draw with ofDrawCone().


Parameters:
radiusSegments The number of facets (subdivisions) around the cone's circular footprint.
heightSegments The number of subdivisions from the cone's top to bottom.
capSegments The number of annular (ring-shaped) subdivisions of the cone's endcap.





_description: _







<!----------------------------------------------------------------------------->

###void setCylinderResolution(radiusSegments, heightSegments, capSegments = 2)

<!--
_syntax: setCylinderResolution(radiusSegments, heightSegments, capSegments = 2)_
_name: setCylinderResolution_
_returns: void_
_returns_description: _
_parameters: int radiusSegments, int heightSegments, int capSegments=2_
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

###void setIcoSphereResolution(res)

<!--
_syntax: setIcoSphereResolution(res)_
_name: setIcoSphereResolution_
_returns: void_
_returns_description: _
_parameters: int res_
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

###void setPlaneResolution(columns, rows)

<!--
_syntax: setPlaneResolution(columns, rows)_
_name: setPlaneResolution_
_returns: void_
_returns_description: _
_parameters: int columns, int rows_
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

###void setSphereResolution(res)

<!--
_syntax: setSphereResolution(res)_
_name: setSphereResolution_
_returns: void_
_returns_description: _
_parameters: int res_
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

##Variables



###of3dPrimitive axis

<!--
_name: axis_
_type: of3dPrimitive_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofBoxPrimitive box

<!--
_name: box_
_type: ofBoxPrimitive_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofBoxPrimitive boxWireframe

<!--
_name: boxWireframe_
_type: ofBoxPrimitive_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofConePrimitive cone

<!--
_name: cone_
_type: ofConePrimitive_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofCylinderPrimitive cylinder

<!--
_name: cylinder_
_type: ofCylinderPrimitive_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofIcoSpherePrimitive icoSphere

<!--
_name: icoSphere_
_type: ofIcoSpherePrimitive_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofPlanePrimitive plane

<!--
_name: plane_
_type: ofPlanePrimitive_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofBaseRenderer * renderer

<!--
_name: renderer_
_type: ofBaseRenderer *_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofSpherePrimitive sphere

<!--
_name: sphere_
_type: ofSpherePrimitive_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

