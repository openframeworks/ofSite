#class ofBaseRenderer


<!--
_visible: True_
_advanced: True_
_istemplated: False_
_extends: _
-->

##InlineDescription

The base renderer interface.





##Description





##Methods



###void background(&c)

<!--
_syntax: background(&c)_
_name: background_
_returns: void_
_returns_description: _
_parameters: const ofColor &c_
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

Immediately paint a background color to the screen.

If automatic background drawing is enabled (which it is by default) this
method called from ofApp::setup() will also repaint the background with
this color each frame.


Parameters:
c The color to paint the background with.





_description: _







<!----------------------------------------------------------------------------->

###void background(brightness)

<!--
_syntax: background(brightness)_
_name: background_
_returns: void_
_returns_description: _
_parameters: float brightness_
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

Immediately paint a grayscale background color to the screen.

If automatic background drawing is enabled (which it is by default) this
method called from ofApp::setup() will also repaint the background with
this color each frame.


Parameters:
brightness The grayscale value between 0 and 255 to paint the
background with.





_description: _







<!----------------------------------------------------------------------------->

###void background(hexColor, _a = 255.0f)

<!--
_syntax: background(hexColor, _a = 255.0f)_
_name: background_
_returns: void_
_returns_description: _
_parameters: int hexColor, float _a=255.0f_
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

Immediately paint a grayscale background color to the screen.

If automatic background drawing is enabled (which it is by default) this
method called from ofApp::setup() will also repaint the background with
this color each frame.


Parameters:
hexColor The 24-bit hex representation of the color to paint the
background with.
_a The alpha value between 0 and 255 to apply to \p hexColor when
when painting the background.





_description: _







<!----------------------------------------------------------------------------->

###void background(r, g, b, a = 255)

<!--
_syntax: background(r, g, b, a = 255)_
_name: background_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a=255_
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

Immediately paint a background color to the screen.


Parameters:
r The red value between 0 and 255 to use for the background.
g The green value between 0 and 255 to use for the background.
b The blue value between 0 and 255 to use for the background.
a The alpha value between 0 and 255 to use for the background.





_description: _







<!----------------------------------------------------------------------------->

###void bind(&camera, &viewport)

<!--
_syntax: bind(&camera, &viewport)_
_name: bind_
_returns: void_
_returns_description: _
_parameters: const ofCamera &camera, const ofRectangle &viewport_
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

Bind \p camera's matrices to this renderer's matrix stack.

Bind's the \p camera's modelview and projection matrices to this
renderer's matrix stack using \p viewport. Should be followed with a
call to unbind().


Parameters:
camera The camera to bind to this renderer.
viewport The viewport to use when binding \p camera to this
renderer.





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
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clear this renderer's current color and bit depths.

clear() will clear the screen entirely.





_description: _







<!----------------------------------------------------------------------------->

###void clear(r, g, b, a)

<!--
_syntax: clear(r, g, b, a)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float r, float g, float b, float a_
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

Clear this renderer's color and bit depths and replace them.

clear() will clear the screen entirely.


Parameters:
r The red value between 0 and 255 to use when clearing the
screen.
g The green value between 0 and 255 to use when clearing the
screen.
b The blue value between 0 and 255 use when clearing the screen.
a The alpha value between 0 and 255 use when clearing the screen.
Defaults to 0.





_description: _







<!----------------------------------------------------------------------------->

###void clear(brightness, a)

<!--
_syntax: clear(brightness, a)_
_name: clear_
_returns: void_
_returns_description: _
_parameters: float brightness, float a_
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

Clear this renderer's color and bit depths replacing them.

clear() will clear the screen entirely.


Parameters:
brightness The grayscale value between 0 and 255 to use when
clearing the screen.
a The alpha value between 0 and 255 to use when clearing the
screen. Defaults to 0.





_description: _







<!----------------------------------------------------------------------------->

###void clearAlpha()

<!--
_syntax: clearAlpha()_
_name: clearAlpha_
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

Restore the alpha color to its full opacity value.





_description: _







<!----------------------------------------------------------------------------->

###void disableAntiAliasing()

<!--
_syntax: disableAntiAliasing()_
_name: disableAntiAliasing_
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

Disable this renderer from using anti-aliasing.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&shape)

<!--
_syntax: draw(&shape)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPath &shape_
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

Draw a path with this renderer.

Parameters:
shape The path to draw with this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&shape, x, y)

<!--
_syntax: draw(&shape, x, y)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPath &shape, float x, float y_
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

Draw a path with this renderer at \p x and \p y.

Parameters:
shape The path to draw with this renderer.
x The x coordinate to use to draw \p shape.
y The y coordinate to use to draw \p shape.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&model, renderType)

<!--
_syntax: draw(&model, renderType)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const of3dPrimitive &model, ofPolyRenderMode renderType_
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

Draw a \p model with this renderer using the \p renderType.

\p renderType defines how the \p model will be rendered and may be:
	OF_MESH_POINTS,
		OF_MESH_WIREFRAME,
		OF_MESH_FILL


Parameters:
model The model to draw with this renderer.
renderType The render mode to use when drawing the \p model
with this renderer.

See also: ofPolyRenderMode





_description: _







<!----------------------------------------------------------------------------->

###void draw(&model)

<!--
_syntax: draw(&model)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofNode &model_
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

Draw a node with this renderer using ofNode::customDraw().

Parameters:
model The node to draw with this renderer.

See also: ofNode::customDraw()





_description: _







<!----------------------------------------------------------------------------->

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

Draw an \p image with this renderer.

Parameters:
image The image to draw with this renderer.
x The x coordinate to use when drawing \p image with this
renderer.
y The y coordinate to use to draw \p image with this renderer.
z The z coordinate to use to drawing \p image with this renderer.
w The width to use to draw the \p image with this renderer.
h The height to use to draw the \p image with this renderer.
sx The subsection x axis offset within the image texture.
sy The subsection y axis offset within the image texture.
sw The subsection width offset within the image texture.
sh The subsection height offset within the image texture.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofFloatImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

Draw an \p image with this renderer.

Parameters:
image The image to draw with this renderer.
x The x coordinate to use to draw \p image with this renderer.
y The y coordinate to use to draw \p image with this renderer.
z The z coordinate to use to draw \p image with this renderer.
w The width to use to draw \p image with this renderer.
h The height to use to draw \p image with this renderer.
sx The subsection x axis offset within the image texture.
sy The subsection y axis offset within the image texture.
sw The subsection width offset within the image texture.
sh The subsection height offset within the image texture.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&image, x, y, z, w, h, sx, sy, sw, sh)

<!--
_syntax: draw(&image, x, y, z, w, h, sx, sy, sw, sh)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofShortImage &image, float x, float y, float z, float w, float h, float sx, float sy, float sw, float sh_
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

Draw an \p image with this renderer.

Parameters:
image The image to draw with this renderer.
x The x coordinate to use to draw \p image with this renderer.
y The y coordinate to use to draw \p image with this renderer.
z The z coordinate to use to draw \p image with this renderer.
w The width to use when drawing the image with this renderer.
h The height to use when drawing the image with this renderer.
sx The subsection x axis offset within the image texture.
sy The subsection y axis offset within the image texture.
sw The subsection width offset within the image texture.
sh The subsection height offset within the image texture.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&video, x, y, w, h)

<!--
_syntax: draw(&video, x, y, w, h)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofBaseVideoDraws &video, float x, float y, float w, float h_
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

Draw a \p video with this renderer.

Parameters:
video The video with draw with this renderer.
x The x coordinate to use to draw \p video with this renderer.
y The y coordinate to use to draw \p video with this renderer.
w The width to use to draw the video with this renderer.
h The height to use to draw the video with this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&poly)

<!--
_syntax: draw(&poly)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofPolyline &poly_
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

Draw a polyline with this renderer.

Parameters:
poly The polyline to draw with this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void draw(&mesh, renderType)

<!--
_syntax: draw(&mesh, renderType)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofMesh &mesh, ofPolyRenderMode renderType_
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

Draw a \p mesh with this renderer using the \p renderType.

\p renderType defines how the \p mesh will be rendered and may be:
	OF_MESH_POINTS,
		OF_MESH_WIREFRAME,
		OF_MESH_FILL


Parameters:
mesh The mesh to draw with this renderer.
renderType The render mode to use to draw \p mesh with this
renderer.

See also: ofPolyRenderMode





_description: _







<!----------------------------------------------------------------------------->

###void draw(&vertexData, renderType, useColors, useTextures, useNormals)

<!--
_syntax: draw(&vertexData, renderType, useColors, useTextures, useNormals)_
_name: draw_
_returns: void_
_returns_description: _
_parameters: const ofMesh &vertexData, ofPolyRenderMode renderType, bool useColors, bool useTextures, bool useNormals_
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

Draw a mesh with this renderer.

\p renderType defines how the \p mesh will be rendered and may be:
	OF_MESH_POINTS,
		OF_MESH_WIREFRAME,
		OF_MESH_FILL


Parameters:
vertexData The mesh to draw with this renderer.
renderType The render mode to use to draw \p vertexData to
this renderer.
useColors True to use per-vertex coloring to draw the
\p vertexData.
useTextures True to use texture coordinates to draw the \p
vertexData.
useNormals True to use normals to draw the \p vertexData.

See also: ofPolyRenderMode





_description: _







<!----------------------------------------------------------------------------->

###void drawArrow(&start, &end, headSize)

<!--
_syntax: drawArrow(&start, &end, headSize)_
_name: drawArrow_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &start, const glm::vec3 &end, float headSize_
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

Draw an arrow between two 3D points.
start The 3D vector to use as the first point.
end The 3D vector to use as the second point.
\float headSize The size of the arrowhead.





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

Draw the coordinate system's axes with the renderer.

This draws a red, green, and blue lines for the x, y, and z axes
respectively. This can be helpful when trying to orient other objects
in respect to the coordinate system.


Parameters:
size The length to draw each axis line.





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

Draws a rectangular box using x, y, z, width, height, and depth.

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

Draws a cube using x, y, z, and size.
coordinates.

A cube is a rectangular solid bounded by six square faces of equal size.
It is also known as a regular hexahedron, a square parallelepiped, an
equilateral cuboid and a right rhombohedron. It is a regular square
prism in three orientations.

It is drawn starting from a 3D reference coordinate, with the specified
size. The cube is drawn with the current color, e.g. set with
ofSetColor(). The cube is drawn filled by default; change this with
ofFill().


Parameters:
x The x-coordinate of the cube's origin.
y The y-coordinate of the cube's origin.
z The z-coordinate of the cube's origin.
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

Draws a cube with the specified size at the origin.

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

###void drawBox(&position, width, height, depth)

<!--
_syntax: drawBox(&position, width, height, depth)_
_name: drawBox_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &position, float width, float height, float depth_
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

Draws a rectangular box using position, width, height and depth.

A box is a rectangular solid: an extruded rectangle.
It is drawn starting from a 3D reference coordinate.
It has a width (in x), a height (in y), and a depth (in z).
The box is drawn with the current color, e.g. set with ofSetColor().
The box is drawn filled by default; change this with ofFill();


Parameters:
position an glm::vec3 which contains the (x,y,z) coordinates for the box's reference corner.
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
_parameters: const glm::vec3 &position, float size_
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

Draws a cube with the specified size, starting from the specified
position.

A cube is drawn starting from a 3D reference position, with the
specified size. The cube is drawn with the current color, e.g. set with
ofSetColor(). The cube is drawn filled by default; change this with
ofFill().


Parameters:
position an glm::vec3 which contains the (x,y,z) coordinates for
the cube's reference corner.
size The size of the cube.





_description: _







<!----------------------------------------------------------------------------->

###void drawCircle(x, y, z, radius)

<!--
_syntax: drawCircle(x, y, z, radius)_
_name: drawCircle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float radius_
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

Draw a circle using a 3D point and a radius.

Parameters:
x The x coordinate of the center of the circle.
y The y coordinate of the center of the circle.
z The z coordinate of the center of the circle.
radius The length of the radius of the circle.





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

Draw a cone with this renderer using x, y, z, radius, and
height.

Cones are drawn with x, y, and z coordinates representing the centroid
of the cone. Radius is the radius of the cone's circular
footprint and height representing the height of the cone.


Parameters:
x The x coordinate to use when drawing this cone.
y The y coordinate to use when drawing this cone.
z The z coordinate to use when drawing this cone.
radius The radius to use when drawing this cone's circular
footprint.
height The height to use when drawing this cone.





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

Draw a cone with this renderer using x, y, z, radius, and
height.

Cones are drawn with x, y, and z coordinates representing the centroid
of the cylinder. Radius is the radius of the cone's circular
footprint and height representing the height of the cone's.


Parameters:
x The x coordinate to use when drawing this cone.
y The y coordinate to use when drawing this cone.
radius The radius to use when drawing this cone's circular
footprint.
height The height to use when drawing this cone.





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

Draw a cone at the origin using radius and height.

This cone will be drawn with its position at the coordinate system's
origin. \p Radius is the radius of the cone's circular footprint and
\p height representing the height of the cone.


Parameters:
radius The radius to use when drawing this cone's circular
footprint.
height The height to use when drawing this cone.





_description: _







<!----------------------------------------------------------------------------->

###void drawCone(&position, radius, height)

<!--
_syntax: drawCone(&position, radius, height)_
_name: drawCone_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &position, float radius, float height_
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

Draw a cone with this renderer using x, y, z, radius, and
height.

Cones are drawn with x, y, and z coordinates representing the centroid
of the cone. \p Radius is the radius of the cone's circular
footprint and \p height representing the height of the cone's.


Parameters:
position The 3D point representing this cone's position.
radius The radius to use when drawing this cone's circular
footprint.
height The height to use when drawing this cone.





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

Draw a cylinder with this renderer using x, y, radius, and
height.

Cyliners are drawn with x, y, and z coordinates representing the
centroid of the cylinder. Radius is the radius of the cylinder's
circular footprint and height representing the height of the cylinder.


Parameters:
x The x coordinate to use when drawing this cylinder.
y The y coordinate to use when drawing this cylinder.
radius The radius to use when drawing this cylinder's circular
footprint.
height The height to use when drawing this cylinder.





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

Draw a cylinder with this renderer using x, y, z, radius, and
height.

Cyliners are drawn with x, y, and z coordinates representing the
centroid of the cylinder. Radius is the radius of the cylinder's
circular footprint and height representing the height of the cylinder.


Parameters:
x The x coordinate to use when drawing this cylinder.
y The y coordinate to use when drawing this cylinder.
z The z coordinate to use when drawing this cylinder.
radius The radius to use when drawing this cylinder's circular
footprint.
height The height to use when drawing this cylinder.





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

Draw a cylinder at the origin using radius and height.

A cylinder drawn in this way will be positioned at the origin. Radius is
the radius of the cylinder's circular footprint and height representing
the height of the cylinder.


Parameters:
radius The radius to use when drawing this cylinder's circular
footprint.
height The height to use when drawing this cylinder.





_description: _







<!----------------------------------------------------------------------------->

###void drawCylinder(&position, radius, height)

<!--
_syntax: drawCylinder(&position, radius, height)_
_name: drawCylinder_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &position, float radius, float height_
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

Draw a cylinder with this renderer using position, radius, and
height.

Cyliners are drawn with x, y, and z coordinates representing the
centroid of the cylinder. Radius is the radius of the cylinder's
circular footprint and height representing the height of the cylinder.


Parameters:
position The 3D point to use as a position coordinate when
drawing this cylinder.

radius The radius to use when drawing this cylinder's circular
footprint.
height The height to use when drawing this cylinder.





_description: _







<!----------------------------------------------------------------------------->

###void drawEllipse(x, y, z, width, height)

<!--
_syntax: drawEllipse(x, y, z, width, height)_
_name: drawEllipse_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float width, float height_
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

Draw an ellipse using a 3D point, width, and height.

Parameters:
x The x coordinate of the center of the circle.
y The y coordinate of the center of the circle.
z The z coordinate of the center of the circle.
width The width of the circle.
height The height of the circle.





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

Draw the coordinate system's axes as a grid with the renderer.

Parameters:
stepSize The size of each row/column in each axis grid.
numberOfSteps The number of rows/columns in each axis grid.
labels True to draw the name and values of the axis as a bitmap
string.
x True to draw the x axis.
y True to draw the y axis.
z True to draw the z axis.





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

Draw a coordinate system plane using the y and z axes.

Parameters:
stepSize The size of each row/column on the axis grid.
numberOfSteps The number of rows/columns on the axis grid.
labels True to draw the names and values of the axes.





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

Draw an icosphere with this renderer using x, y, and radius.

Spheres are drawn with x, y, and z coordinates representing the center
of the icosphere.


Parameters:
x The x coordinate to use when drawing this icosphere.
y The y coordinate to use when drawing this icosphere.
z The z coordinate to use when drawing this icosphere.
radius The radius to use when drawing this icosphere.





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

Draw an icosphere with this renderer using x, y, and radius.

Spheres are drawn with x, y, and z coordinates representing the center
of the icosphere.


Parameters:
x The x coordinate to use when drawing this icosphere.
y The y coordinate to use when drawing this icosphere.
radius The radius to use when drawing this icosphere.





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

Draw an icosphere with the renderer at the origin using radius.

Parameters:
radius The radius to use when drawing the icosphere with this
renderer.





_description: _







<!----------------------------------------------------------------------------->

###void drawIcoSphere(&position, radius)

<!--
_syntax: drawIcoSphere(&position, radius)_
_name: drawIcoSphere_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &position, float radius_
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

Draw an icosphere with this renderer using x, y, and radius.

Icospheres are drawn with x, y, and z coordinates representing the
center of the icosphere.


Parameters:
position The 3D position point to use when drawing the icosphere.
radius The radius to use when drawing this icosphere.





_description: _







<!----------------------------------------------------------------------------->

###void drawLine(x1, y1, z1, x2, y2, z2)

<!--
_syntax: drawLine(x1, y1, z1, x2, y2, z2)_
_name: drawLine_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2_
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

Draw a line between two 3D points.

Parameters:
x1 The x coordinate of the first point.
y1 The y coordinate of the first point.
z1 The z coordinate of the first point.
x2 The x coordinate of the second point.
y2 The y coordinate of the second point.
z2 The z coordinate of the second point.





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

Draw a plane with the renderer using x, y, width, and height.

The number of rows and columns this plane will have is dependent on this
renderer's current plane resolution set with setPlaneResolution().


Parameters:
x The x coordinate to use when drawing the plane with this
renderer.
y The y coordinate to use when drawing the plane with this
renderer.
width The width to use when drawing the plane with this renderer.
height The height to use when drawing the plane with this
renderer.





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

Draw a plane with the renderer using x, y, z, width, and height.

The number of rows and columns this plane will have is dependent on this
renderer's current plane resolution set with setPlaneResolution().


Parameters:
x The x coordinate to use when drawing the plane with this
renderer.
y The y coordinate to use when drawing the plane with this
renderer.
z The z coordinate to use when drawing the plane with this
renderer.
width The width to use when drawing the plane with this renderer.
height The height to use when drawing the plane with this
renderer.





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

Draw a plane with the renderer at the origin.

The number of rows and columns this plane will have is dependent on this
renderer's current plane resolution set with setPlaneResolution().


Parameters:
width The width of the plane to use when drawing the plane with
this renderer.
height The height to use when drawing the plane with this
renderer.





_description: _







<!----------------------------------------------------------------------------->

###void drawPlane(&position, width, height)

<!--
_syntax: drawPlane(&position, width, height)_
_name: drawPlane_
_returns: void_
_returns_description: _
_parameters: glm::vec3 &position, float width, float height_
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

Draw a plane with the renderer using a 3D point, width, and height.

The number of rows and columns this plane will have is dependent on this
renderer's current plane resolution set with setPlaneResolution().


Parameters:
position A 3D point to use as the position to draw the plane with
this renderer.
width The width to use when drawing the plane with this renderer.
height The height to use when drawing the plane with this
renderer.





_description: _







<!----------------------------------------------------------------------------->

###void drawRectangle(x, y, z, w, h)

<!--
_syntax: drawRectangle(x, y, z, w, h)_
_name: drawRectangle_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w, float h_
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

Draw a rectangle using a 3D point and a width and height.

Parameters:
x The x coordinate of the rectangle.
y The y coordinate of the rectangle.
z The z coordinate of the rectangle.
w The width of the rectangle.
h The height of the rectangle.

See also: ofRectMode





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

Draw the coordinate system's axes with the renderer.

This draws red, green, and blue lines for the x, y, and z rotation
axes respectively. This can be helpful when trying to orient other
object's rotation in respect to the coordinate system.


Parameters:
radius The radius to draw the rotation axes with.
stripWidth The width of each axis line.
circleRes The circle resolution to use when drawing the axes.





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

Draw a sphere with this renderer using x, y, and radius.

Spheres are drawn with x, y, and z coordinates representing the center
of the sphere.


Parameters:
x The x coordinate to use when drawing this sphere.
y The y coordinate to use when drawing this sphere.
radius The radius to use when drawing this sphere.





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

Draw a sphere with this renderer using x, y, z, and radius.

Spheres are drawn with x, y, and z coordinates representing the center
of the sphere.


Parameters:
x The x coordinate to use when drawing this sphere.
y The y coordinate to use when drawing this sphere.
z The z coordinate to use when drawing this sphere.
radius The radius to use when drawing this sphere.





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

Draw a sphere with the renderer at the defualt origin using
radius.

Parameters:
radius The radius to use when drawing the sphere with this
renderer.





_description: _







<!----------------------------------------------------------------------------->

###void drawSphere(&position, radius)

<!--
_syntax: drawSphere(&position, radius)_
_name: drawSphere_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &position, float radius_
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

Draw a sphere with this renderer using a position point and
radius.

Spheres are drawn with x, y, and z coordinates representing the center
of the sphere.


Parameters:
position The 3D position point to use when drawing the sphere.
radius The radius to use when drawing this sphere.





_description: _







<!----------------------------------------------------------------------------->

###void drawString(text, x, y, z)

<!--
_syntax: drawString(text, x, y, z)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: string text, float x, float y, float z_
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

Draw text with this renderer using the current bitmap text mode.

When using the OF_BITMAPMODE_SIMPLE bitmap text strings are drawn with
their origin at the bottom left corner of the text. However,
setBitmapTextMode() can transform this default behavior with modes like:
		OF_BITMAPMODE_SIMPLE
		OF_BITMAPMODE_SCREEN
		OF_BITMAPMODE_VIEWPORT
		OF_BITMAPMODE_MODEL
		OF_BITMAPMODE_MODEL_BILLBOARD


Parameters:
text The text to draw with the renderer.
x The x position for the bottom of \p text.
y The y position for the left alignment of \p text.
z The z position of the text.





_description: _







<!----------------------------------------------------------------------------->

###void drawString(&font, text, x, y)

<!--
_syntax: drawString(&font, text, x, y)_
_name: drawString_
_returns: void_
_returns_description: _
_parameters: const ofTrueTypeFont &font, string text, float x, float y_
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

Draw text with this renderer using an ofTrueType font.

Parameters:
font The font to use when drawing \p text.
text The text to draw with the renderer.
x The x position for the bottom of \p text.
y The y position for the left alignment of \p text.





_description: _







<!----------------------------------------------------------------------------->

###void drawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)

<!--
_syntax: drawTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3)_
_name: drawTriangle_
_returns: void_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3_
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

Draw a triangle using three 3D points.

Parameters:
x1 The x coordinate of the first point.
y1 The y coordinate of the first point.
z1 The z coordinate of the first point.
x2 The x coordinate of the second point.
y2 The y coordinate of the second point.
z2 The z coordinate of the second point.
x3 The x coordinate of the third point.
y3 The y coordinate of the third point.
z3 The z coordinate of the third point.





_description: _







<!----------------------------------------------------------------------------->

###void enableAntiAliasing()

<!--
_syntax: enableAntiAliasing()_
_name: enableAntiAliasing_
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

Enable this renderer to use anti-aliasing if it is supported.





_description: _







<!----------------------------------------------------------------------------->

###void finishRender()

<!--
_syntax: finishRender()_
_name: finishRender_
_returns: void_
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

Stop using this renderer as the rendering surface.





_description: _







<!----------------------------------------------------------------------------->

###const of3dGraphics & get3dGraphics()

<!--
_syntax: get3dGraphics()_
_name: get3dGraphics_
_returns: const of3dGraphics &_
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

Get a const reference of this renderer's 3D graphics object.

Returns: The 3D graphics object currently being used by this renderer.





_description: _







<!----------------------------------------------------------------------------->

###of3dGraphics & get3dGraphics()

<!--
_syntax: get3dGraphics()_
_name: get3dGraphics_
_returns: of3dGraphics &_
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

Get a reference with this renderer's 3D graphics object.

Returns: the 3D graphics object currently being used by this renderer.





_description: _







<!----------------------------------------------------------------------------->

###bool getBackgroundAuto()

<!--
_syntax: getBackgroundAuto()_
_name: getBackgroundAuto_
_returns: bool_
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

Get the current auto redraw background setting for this renderer.

Returns: True if this renderer is set to redraw the background each
frame.





_description: _







<!----------------------------------------------------------------------------->

###ofColor getBackgroundColor()

<!--
_syntax: getBackgroundColor()_
_name: getBackgroundColor_
_returns: ofColor_
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

Get this renderer's current background color.

Returns: This renderer's current background color.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getBoxResolution()

<!--
_syntax: getBoxResolution()_
_name: getBoxResolution_
_returns: glm::vec3_
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

Get this renderer's current box resolution as a 3D vector.

The returned vector's x, y, and z properties represent this renderer's
current resolution width, resolution height, and resolution depth
respectively.


Returns: This renderer's current box resolution as a 3D vector.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getConeResolution()

<!--
_syntax: getConeResolution()_
_name: getConeResolution_
_returns: glm::vec3_
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

Get this renderer's cone resolution as a 3D vector.

The resulting vector's x, y, and z properties correspond to the radius
segments, height segments, and cap segments of this renderer's cone
resolution respectively.


Returns: A 3D vector representing this renderer's current cone
resolution.





_description: _







<!----------------------------------------------------------------------------->

###ofHandednessType getCoordHandedness()

<!--
_syntax: getCoordHandedness()_
_name: getCoordHandedness_
_returns: ofHandednessType_
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

Get the coordinate handidness of this renderer.

Possible handednesses include OF_LEFT_HANDED and OF_RIGHT_HANDED.
In a left handed coordinate system positive x, y and z axes point right,
up and forward, respectively and positive rotation is clockwise about
the axis of rotation. In a right handed coordinate system the positive x
and y axes point right and up, and the negative z axis points forward
and positive rotation is counterclockwise about the axis of rotation.


Returns: The handedness this renderer is using.

See also: http://seanmiddleditch.com/matrices-handedness-pre-and-post-multiplication-row-vs-column-major-and-notations/

See also: https://www.evl.uic.edu/ralph/508S98/coordinates.html





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 getCurrentMatrix(matrixMode_)

<!--
_syntax: getCurrentMatrix(matrixMode_)_
_name: getCurrentMatrix_
_returns: glm::mat4_
_returns_description: _
_parameters: ofMatrixMode matrixMode__
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

Get this renderer's current matrix for particular a matrix mode.

Possible matrix modes include:
		OF_MATRIX_MODELVIEW
		OF_MATRIX_PROJECTION
		OF_MATRIX_TEXTURE


Parameters:
matrixMode_ The matrix mode to get the current matrix of.

Returns: The current matrix specified by \p matrixMode_

See also: ofMatrixMode





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 getCurrentNormalMatrix()

<!--
_syntax: getCurrentNormalMatrix()_
_name: getCurrentNormalMatrix_
_returns: glm::mat4_
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

Get this renderer's current normal matrix.

Returns: This renderer's current normal matrix.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 getCurrentOrientationMatrix()

<!--
_syntax: getCurrentOrientationMatrix()_
_name: getCurrentOrientationMatrix_
_returns: glm::mat4_
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

Get this renderer's current orientation matrix.

Returns: This renderer's current orientation matrix.





_description: _







<!----------------------------------------------------------------------------->

###glm::mat4 getCurrentViewMatrix()

<!--
_syntax: getCurrentViewMatrix()_
_name: getCurrentViewMatrix_
_returns: glm::mat4_
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

Get this renderer's current view matrix.

Returns: This renderer's current view matrix.





_description: _







<!----------------------------------------------------------------------------->

###ofRectangle getCurrentViewport()

<!--
_syntax: getCurrentViewport()_
_name: getCurrentViewport_
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

Get this renderer's current viewport.

Unlike getNativeViewport(), this method gets this renderer's current
viewport with orientation and vertical flipping applied.


Returns: This renderer's viewport as a rectangle.

See also: getNativeViewport()





_description: _







<!----------------------------------------------------------------------------->

###glm::vec3 getCylinderResolution()

<!--
_syntax: getCylinderResolution()_
_name: getCylinderResolution_
_returns: glm::vec3_
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

Get this renderer's cylinder resolution as a 3D vector.

The resulting vector's x, y, and z properties correspond to the radius
segments, height segments, and cap segments of this renderer's cylinder
resolution respectively.


Returns: A 3D vector representing this renderer's current cylinder
resolution.





_description: _







<!----------------------------------------------------------------------------->

###ofFillFlag getFillMode()

<!--
_syntax: getFillMode()_
_name: getFillMode_
_returns: ofFillFlag_
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

Get this renderer's current fill flag.

Possible fill flags include OF_OUTLINE and OF_FILLED.


Returns: The fill flag this render is currently using.

See also: ofFillFlag





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

Get this renderer's current icosphere resolution.

Returns: This renderer's current icosphere resolution.





_description: _







<!----------------------------------------------------------------------------->

###ofRectangle getNativeViewport()

<!--
_syntax: getNativeViewport()_
_name: getNativeViewport_
_returns: ofRectangle_
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

Get this renderer's current native viewport.

Unlike getViewport(), this method gets this renderer's current viewport
without orientation and vertical flipping applied.


Returns: This renderer's native viewport as a rectangle.

See also: getViewport()





_description: _







<!----------------------------------------------------------------------------->

###ofPath & getPath()

<!--
_syntax: getPath()_
_name: getPath_
_returns: ofPath &_
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

Get a reference to the path used internally by this renderer.

Returns: A reference to the path used internally by this renderer.





_description: _







<!----------------------------------------------------------------------------->

###glm::vec2 getPlaneResolution()

<!--
_syntax: getPlaneResolution()_
_name: getPlaneResolution_
_returns: glm::vec2_
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

Get this renderer's current plane resolution as a 2D vector.

The resulting vector's x and y values corresponds to the current column
and row resolutions of this renderer's plane resolution respectively.


Returns: A 2D vector representing this renderer's plane resolution in
columns and rows.





_description: _







<!----------------------------------------------------------------------------->

###ofRectMode getRectMode()

<!--
_syntax: getRectMode()_
_name: getRectMode_
_returns: ofRectMode_
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

Get this renderer's current rect mode.

Possible rect modes include OF_RECTMODE_CORNER and OF_RECTMODE_CENTER.


Returns: The renderer's current rect mode.

See also: ofRectMode





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

Get this renderer's current sphere resolution.

Returns: This renderer's current sphere resolution.





_description: _







<!----------------------------------------------------------------------------->

###ofStyle getStyle()

<!--
_syntax: getStyle()_
_name: getStyle_
_returns: ofStyle_
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

Get this renderer's current style object.

Returns: This renderer's current style object.





_description: _







<!----------------------------------------------------------------------------->

###const string & getType()

<!--
_syntax: getType()_
_name: getType_
_returns: const string &_
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

Get the string representation of the renderer type.

For example, this method may return "GL", "ProgrammableGL", or another
type depending on the renderer being used.


Returns: The string representation of the renderer type.





_description: _







<!----------------------------------------------------------------------------->

###int getViewportHeight()

<!--
_syntax: getViewportHeight()_
_name: getViewportHeight_
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

Get the renderer's current viewport width.

Returns: The renderer's current viewport width.





_description: _







<!----------------------------------------------------------------------------->

###int getViewportWidth()

<!--
_syntax: getViewportWidth()_
_name: getViewportWidth_
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

Get the renderer's current viewport width.

Returns: The renderer's current viewport width.





_description: _







<!----------------------------------------------------------------------------->

###bool isVFlipped()

<!--
_syntax: isVFlipped()_
_name: isVFlipped_
_returns: bool_
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

Returns true if the renderer's current viewport is vertically
flipped.

Returns: True if the renderer's current viewport is vertically flipped.





_description: _







<!----------------------------------------------------------------------------->

###void loadIdentityMatrix()

<!--
_syntax: loadIdentityMatrix()_
_name: loadIdentityMatrix_
_returns: void_
_returns_description: _
_parameters: _
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

Load this renderer's identity matrix.

This identity matrix is an mat4 matrix with 1s on the main
diagonal and 0s elsewhere.
[
		[1, 0, 0, 0],
		[0, 1, 0, 0],
		[0, 0, 1, 0],
		[0, 0, 0, 1]
	]

Matrix multiplications using this matrix as the multiplier will yield no
change in the multiplicand matrix.





_description: _







<!----------------------------------------------------------------------------->

###void loadMatrix(*m)

<!--
_syntax: loadMatrix(*m)_
_name: loadMatrix_
_returns: void_
_returns_description: _
_parameters: const float *m_
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

Load m as this renderer's current matrix.

\p m can be passed to loadMatrix() in this way from raw data


Parameters:
m Float pointer to an 4x4 matrix.





_description: _







<!----------------------------------------------------------------------------->

###void loadMatrix(&m)

<!--
_syntax: loadMatrix(&m)_
_name: loadMatrix_
_returns: void_
_returns_description: _
_parameters: const glm::mat4 &m_
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

Load a matrix as this renderer's current matrix.

Parameters:
m The matrix to load into this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void loadViewMatrix(&m)

<!--
_syntax: loadViewMatrix(&m)_
_name: loadViewMatrix_
_returns: void_
_returns_description: _
_parameters: const glm::mat4 &m_
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

Load \p m into this renderer's matrix stack as a view matrix.

Parameters:
m The view matrix to load into this renderer's matrix stack.





_description: _







<!----------------------------------------------------------------------------->

###void matrixMode(mode)

<!--
_syntax: matrixMode(mode)_
_name: matrixMode_
_returns: void_
_returns_description: _
_parameters: ofMatrixMode mode_
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

Sets this renderer's current matrix mode.

The possible matrix modes include:
		OF_MATRIX_MODELVIEW
		OF_MATRIX_PROJECTION
		OF_MATRIX_TEXTURE


Parameters:
mode The matrix mode this renderer's matrix should use.





_description: _







<!----------------------------------------------------------------------------->

###void multMatrix(*m)

<!--
_syntax: multMatrix(*m)_
_name: multMatrix_
_returns: void_
_returns_description: _
_parameters: const float *m_
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

Multiply this renderer's current matrix by \p m.

\p m can be passed to loadMatrix() in this way with raw data


Parameters:
m Float pointer to an mat4 to multiply this renderer's
current matrix by.





_description: _







<!----------------------------------------------------------------------------->

###void multMatrix(&m)

<!--
_syntax: multMatrix(&m)_
_name: multMatrix_
_returns: void_
_returns_description: _
_parameters: const glm::mat4 &m_
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

Multiply this renderer's current matrix by \p m.

Parameters:
m The matrix to multiply this renderer's current matrix by.





_description: _







<!----------------------------------------------------------------------------->

###void multViewMatrix(&m)

<!--
_syntax: multViewMatrix(&m)_
_name: multViewMatrix_
_returns: void_
_returns_description: _
_parameters: const glm::mat4 &m_
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

Multiply this renderer's view matrix by \p m.

Parameters:
m The matrix to multiply this renderer's view matrix by.





_description: _







<!----------------------------------------------------------------------------->

###void popMatrix()

<!--
_syntax: popMatrix()_
_name: popMatrix_
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

Pops this renderer's current matrix stack.

popMatrix() restores the renderer's matrix to the state it was last
saved with with a call to pushMatrix().





_description: _







<!----------------------------------------------------------------------------->

###void popStyle()

<!--
_syntax: popStyle()_
_name: popStyle_
_returns: void_
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

Pop this renderer's current style from its internal style stack.

This restores the style that was last saved with pushStyle().





_description: _







<!----------------------------------------------------------------------------->

###void popView()

<!--
_syntax: popView()_
_name: popView_
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

Pop the current viewport from the renderer's view stack.

popView() restores the renderer's viewport to the state it was last
saved with with a call to pushView().


See also: viewport()





_description: _







<!----------------------------------------------------------------------------->

###void pushMatrix()

<!--
_syntax: pushMatrix()_
_name: pushMatrix_
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

Pushes this renderer's matrix stack down by one.

pushMatrix() saves the renderer's current matrix allowing new
transformations and scales to effect only the new matrix created by
this method. Should be paired with a call to popMatrix().





_description: _







<!----------------------------------------------------------------------------->

###void pushStyle()

<!--
_syntax: pushStyle()_
_name: pushStyle_
_returns: void_
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

Push this renderer's current style into its internal style stack.

This creates a new style object used by this renderer internally until
popStyle() is called.





_description: _







<!----------------------------------------------------------------------------->

###void pushView()

<!--
_syntax: pushView()_
_name: pushView_
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

Push the current viewport into the renderer's viewport stack.

pushViewport() save the current viewport to the renderer's viewport
history stack allowing new viewport operations to effect only the new
viewport created by this method. Should be paired with popView.


See also: viewport()





_description: _







<!----------------------------------------------------------------------------->

###void rotateDeg(degrees, vecX, vecY, vecZ)

<!--
_syntax: rotateDeg(degrees, vecX, vecY, vecZ)_
_name: rotateDeg_
_returns: void_
_returns_description: _
_parameters: float degrees, float vecX, float vecY, float vecZ_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about a euler.

Parameters:
degrees Degrees to rotate about vecX, vecY, and vecZ.
vecX The x axis to rotate about.
vecY The y axis to rotate about.
vecZ The z axis to rotate about.





_description: _







<!----------------------------------------------------------------------------->

###void rotateDeg(degrees)

<!--
_syntax: rotateDeg(degrees)_
_name: rotateDeg_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about the z
axis.

This method is an alias of rotateZ().


Parameters:
degrees Degrees to rotate about the z axis.

See also: rotateZ()





_description: _







<!----------------------------------------------------------------------------->

###void rotateRad(degrees, vecX, vecY, vecZ)

<!--
_syntax: rotateRad(degrees, vecX, vecY, vecZ)_
_name: rotateRad_
_returns: void_
_returns_description: _
_parameters: float degrees, float vecX, float vecY, float vecZ_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about a euler.

Parameters:
degrees Degrees to rotate about vecX, vecY, and vecZ.
vecX The x axis to rotate about.
vecY The y axis to rotate about.
vecZ The z axis to rotate about.





_description: _







<!----------------------------------------------------------------------------->

###void rotateRad(degrees)

<!--
_syntax: rotateRad(degrees)_
_name: rotateRad_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about the z
axis.

This method is an alias of rotateZ().


Parameters:
degrees Degrees to rotate about the z axis.

See also: rotateZ()





_description: _







<!----------------------------------------------------------------------------->

###void rotateXDeg(degrees)

<!--
_syntax: rotateXDeg(degrees)_
_name: rotateXDeg_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about the x
axis.

Parameters:
degrees Degrees to rotate about the x axis.





_description: _







<!----------------------------------------------------------------------------->

###void rotateXRad(degrees)

<!--
_syntax: rotateXRad(degrees)_
_name: rotateXRad_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about the x
axis.

Parameters:
degrees Degrees to rotate about the x axis.





_description: _







<!----------------------------------------------------------------------------->

###void rotateYDeg(degrees)

<!--
_syntax: rotateYDeg(degrees)_
_name: rotateYDeg_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about the y
axis.

Parameters:
degrees Degrees to rotate about the y axis.





_description: _







<!----------------------------------------------------------------------------->

###void rotateYRad(degrees)

<!--
_syntax: rotateYRad(degrees)_
_name: rotateYRad_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about the y
axis.

Parameters:
degrees Degrees to rotate about the y axis.





_description: _







<!----------------------------------------------------------------------------->

###void rotateZDeg(degrees)

<!--
_syntax: rotateZDeg(degrees)_
_name: rotateZDeg_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about the z
axis.

Parameters:
degrees Degrees to rotate about the z axis.





_description: _







<!----------------------------------------------------------------------------->

###void rotateZRad(degrees)

<!--
_syntax: rotateZRad(degrees)_
_name: rotateZRad_
_returns: void_
_returns_description: _
_parameters: float degrees_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Rotate this renderer's current matrix by \p degrees about the z
axis.

Parameters:
degrees Degrees to rotate about the z axis.





_description: _







<!----------------------------------------------------------------------------->

###void scale(xAmnt, yAmnt, zAmnt)

<!--
_syntax: scale(xAmnt, yAmnt, zAmnt)_
_name: scale_
_returns: void_
_returns_description: _
_parameters: float xAmnt, float yAmnt, float zAmnt_
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

Scale this renderer's current matrix by xAmnt, yAmnt, and zAmnt.

Parameters:
xAmnt The amount to scale this renderer's current matrix's x
axis by.
yAmnt The amount to scale this renderer's current matrix's y
axis by.
zAmnt The amount to scale this renderer's current matrix's z
axis by. Defaults to 1.





_description: _







<!----------------------------------------------------------------------------->

###void setBackgroundAuto(bManual)

<!--
_syntax: setBackgroundAuto(bManual)_
_name: setBackgroundAuto_
_returns: void_
_returns_description: _
_parameters: bool bManual_
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

Enable/disable automatic redrawing of the background each frame.

Parameters:
bManual False to disable automatic background redrawing.





_description: _







<!----------------------------------------------------------------------------->

###void setBackgroundColor(&c)

<!--
_syntax: setBackgroundColor(&c)_
_name: setBackgroundColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &c_
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

Set this renderer's background color.

Parameters:
c The color to request this renderer to use.





_description: _







<!----------------------------------------------------------------------------->

###void setBitmapTextMode(mode)

<!--
_syntax: setBitmapTextMode(mode)_
_name: setBitmapTextMode_
_returns: void_
_returns_description: _
_parameters: ofDrawBitmapMode mode_
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

Set this renderer's bitmap text mode.

Possible bitmap texture modes include:
		OF_BITMAPMODE_SIMPLE
		OF_BITMAPMODE_SCREEN
		OF_BITMAPMODE_VIEWPORT
		OF_BITMAPMODE_MODEL
		OF_BITMAPMODE_MODEL_BILLBOARD


Parameters:
mode The bitmap mode to request this renderer to use.

See also: ofDrawBitmapMode





_description: _







<!----------------------------------------------------------------------------->

###void setBlendMode(blendMode)

<!--
_syntax: setBlendMode(blendMode)_
_name: setBlendMode_
_returns: void_
_returns_description: _
_parameters: ofBlendMode blendMode_
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

Set this renderer's current blend mode.

Possible blend modes include:
Rotate this renderer's current matrix by \p degrees about the z
axis.

This method is an alias of rotateZ().


Parameters:
degrees Degrees to rotate about the z axis.

See also: rotateZ()
		OF_BLENDMODE_DISABLED
		OF_BLENDMODE_ALPHA
		OF_BLENDMODE_ADD
		OF_BLENDMODE_SUBTRACT
		OF_BLENDMODE_MULTIPLY
		OF_BLENDMODE_SCREEN

blendMode The blend mode to request this renderer to use.

See also: ofBlendMode

See also: https://helpx.adobe.com/photoshop/using/blending-modes.html





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

Set the resolution this renderer uses when drawing boxes.

Parameters:
res The resolution to use for box widths, heights, and depths.





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

Set the resolution this renderer uses when drawing boxes.

Parameters:
resWidth The width resolution this renderer uses when drawing
boxes.
resHeight The height resolution this renderer uses when drawing
boxes.
resDepth The depth resolution this renderer uses when drawing
boxes.





_description: _







<!----------------------------------------------------------------------------->

###void setCircleResolution(res)

<!--
_syntax: setCircleResolution(res)_
_name: setCircleResolution_
_returns: void_
_returns_description: _
_parameters: int res_
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

Set the resolution to use when drawing ellipses with this
renderer.

Parameters:
res The number of points to use when drawing circles and ellipses
with this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void setColor(r, g, b)

<!--
_syntax: setColor(r, g, b)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b_
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

Set the global color this renderer will use when drawing.

The renderer will continue using a color set by setColor() until another
call to setColor() changes the drawing color.


Parameters:
r The red value between 0 and 255 to use when drawing.
g The green value between 0 and 255 to use when drawing.
b The blue value between 0 and 255 to use when drawing.





_description: _







<!----------------------------------------------------------------------------->

###void setColor(r, g, b, a)

<!--
_syntax: setColor(r, g, b, a)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int r, int g, int b, int a_
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

Set the global color this renderer will use when drawing.

The renderer will continue using a color set by setColor() until another
call to setColor() changes the drawing color.


Parameters:
r The red value between 0 and 255 to use when drawing.
g The green value between 0 and 255 to use when drawing.
b The blue value between 0 and 255 to use when drawing.
a The alpha value between 0 and 255 to use when drawing.





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

Set the global color this renderer will use when drawing.

The renderer will continue using a color set by setColor() until another
call to setColor() changes the drawing color.


Parameters:
color The color to use when drawing.





_description: _







<!----------------------------------------------------------------------------->

###void setColor(&color, _a)

<!--
_syntax: setColor(&color, _a)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: const ofColor &color, int _a_
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

Set the global color this renderer will use when drawing.

The renderer will continue using a color set by setColor() until another
call to setColor() changes the drawing color.


Parameters:
color The color to use when drawing.
_a The alpha value between 0 and 255 to use when drawing.





_description: _







<!----------------------------------------------------------------------------->

###void setColor(gray)

<!--
_syntax: setColor(gray)_
_name: setColor_
_returns: void_
_returns_description: _
_parameters: int gray_
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

Set the global color this renderer will use when drawing.

The renderer will continue using a color set by setColor() until another
call to setColor() changes the drawing color.


Parameters:
gray The grayscale value to use when drawing.





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

Allows you to set the polygonization resolution of any cones you
subsequently draw with ofDrawCone().


Parameters:
radiusSegments The number of facets (subdivisions) around the
cone's circular footprint.
heightSegments The number of subdivisions from the cone's top to
bottom.
capSegments The number of annular (ring-shaped) subdivisions of
the cone's endcap.





_description: _







<!----------------------------------------------------------------------------->

###void setCoordHandedness(handedness)

<!--
_syntax: setCoordHandedness(handedness)_
_name: setCoordHandedness_
_returns: void_
_returns_description: _
_parameters: ofHandednessType handedness_
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

Set the coordinate handidness of this renderer.

Possible handednesses include OF_LEFT_HANDED and OF_RIGHT_HANDED.
In a left handed coordinate system positive x, y and z axes point right,
up and forward, respectively and positive rotation is clockwise about
the axis of rotation. In a right handed coordinate system the positive x
and y axes point right and up, and the negative z axis points forward
and positive rotation is counterclockwise about the axis of rotation.


Parameters:
handedness The handedness to set this renderer to use.

See also: http://seanmiddleditch.com/matrices-handedness-pre-and-post-multiplication-row-vs-column-major-and-notations/

See also: https://www.evl.uic.edu/ralph/508S98/coordinates.html





_description: _







<!----------------------------------------------------------------------------->

###void setCurveResolution(resolution)

<!--
_syntax: setCurveResolution(resolution)_
_name: setCurveResolution_
_returns: void_
_returns_description: _
_parameters: int resolution_
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

Set the resolution used when drawing curves with this renderer.

Parameters:
resolution The resolution to request this renderer to use when
drawing curves.





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

Set this renderer's cylinder resolution.

Parameters:
radiusSegments The number of facets (subdivisions) around the
icosphere's circular footprint. A larger number yields a higher
resolution.
heightSegments The number of subdivisions from the cylinder's top
to bottom.
capSegments The number of annular (ring-shaped) subdivisions of
the cylinder's endcap. Defaults to 2.





_description: _







<!----------------------------------------------------------------------------->

###void setDepthTest(depthTest)

<!--
_syntax: setDepthTest(depthTest)_
_name: setDepthTest_
_returns: void_
_returns_description: _
_parameters: bool depthTest_
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

Enable/disable depth testing with this renderer.

When depth testing is enabled the order shapes are drawn with the
renderer is dependent on their distance from the camera rather than the
order their drawing methods were called. This should be enabled when
expecting normal behavior when drawing 3D scenes.


Parameters:
depthTest True to enable depth testing.





_description: _







<!----------------------------------------------------------------------------->

###void setFillMode(fill)

<!--
_syntax: setFillMode(fill)_
_name: setFillMode_
_returns: void_
_returns_description: _
_parameters: ofFillFlag fill_
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

set this renderer's fill flag.

Possible fill flags include OF_OUTLINE and OF_FILLED.


Parameters:
fill The fill flag to request this renderer to use.

See also: ofFillFlag





_description: _







<!----------------------------------------------------------------------------->

###void setHexColor(hexColor)

<!--
_syntax: setHexColor(hexColor)_
_name: setHexColor_
_returns: void_
_returns_description: _
_parameters: int hexColor_
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

Set the global color this renderer will use when drawing.

The renderer will continue using a color set by setColor() until another
call to setColor() changes the drawing color.


Parameters:
hexColor The hexidecimal representation of the color to use when
drawing.





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

Set the point resolution to use when drawing an icosphere with
this renderer.

Parameters:
res The desired icosphere resolution to use with this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void setLineSmoothing(smooth)

<!--
_syntax: setLineSmoothing(smooth)_
_name: setLineSmoothing_
_returns: void_
_returns_description: _
_parameters: bool smooth_
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

Enable/disable line smoothing for this renderer if it's supported.

Parameters:
smooth True to enable line smoothing for this renderer if it's
supported.





_description: _







<!----------------------------------------------------------------------------->

###void setLineWidth(lineWidth)

<!--
_syntax: setLineWidth(lineWidth)_
_name: setLineWidth_
_returns: void_
_returns_description: _
_parameters: float lineWidth_
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

Set the line width this renderer should use when drawing lines.

Parameters:
lineWidth The line width to request this renderer to use.





_description: _







<!----------------------------------------------------------------------------->

###void setOrientation(orientation, vFlip)

<!--
_syntax: setOrientation(orientation, vFlip)_
_name: setOrientation_
_returns: void_
_returns_description: _
_parameters: ofOrientation orientation, bool vFlip_
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

set this renderer's orientation.

Possible orientation values include:
	OF_ORIENTATION_DEFAULT
		OF_ORIENTATION_180
		OF_ORIENTATION_90_LEFT
		OF_ORIENTATION_90_RIGHT
		OF_ORIENTATION_UNKNOWN


Parameters:
orientation The orientation to use with this renderer.
vFlip True if the orientation should be vertically flipped.

See also: ofOrientation





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

Set this renderer's plane resolution using \p column and \p rows.

Parameters:
columns The number of columns to use when drawing planes with
this renderer.
rows The number of rows to use when drawing planes with this
renderer.





_description: _







<!----------------------------------------------------------------------------->

###void setPolyMode(mode)

<!--
_syntax: setPolyMode(mode)_
_name: setPolyMode_
_returns: void_
_returns_description: _
_parameters: ofPolyWindingMode mode_
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

Set this renderer's poly winding mode.

Possible poly winding modes include:
		OF_POLY_WINDING_ODD
		OF_POLY_WINDING_NONZERO
		OF_POLY_WINDING_POSITIVE
		OF_POLY_WINDING_NEGATIVE
		OF_POLY_WINDING_ABS_GEQ_TWO


Parameters:
mode The poly winding mode to request this renderer to use.

See also: ofPolyWindingMode





_description: _







<!----------------------------------------------------------------------------->

###void setRectMode(mode)

<!--
_syntax: setRectMode(mode)_
_name: setRectMode_
_returns: void_
_returns_description: _
_parameters: ofRectMode mode_
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

Set this renderer's rect mode.

Possible rect modes include OF_RECTMODE_CORNER and OF_RECTMODE_CENTER.


Parameters:
mode The rect mode to request this renderer to use.

See also: ofRectMode





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

UV Sphere
Set the point resolution to use when drawing a sphere with this
renderer.

Parameters:
res The desired sphere resolution to use with this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void setStyle(&style)

<!--
_syntax: setStyle(&style)_
_name: setStyle_
_returns: void_
_returns_description: _
_parameters: const ofStyle &style_
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

Set this renderer's current style object.

Parameters:
style The style object to set this renderer to use.





_description: _







<!----------------------------------------------------------------------------->

###void setupGraphicDefaults()

<!--
_syntax: setupGraphicDefaults()_
_name: setupGraphicDefaults_
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

setup the default graphics settings for this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void setupScreen()

<!--
_syntax: setupScreen()_
_name: setupScreen_
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

setup the default screen settings for this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void setupScreenOrtho(width, height, nearDist, farDist)

<!--
_syntax: setupScreenOrtho(width, height, nearDist, farDist)_
_name: setupScreenOrtho_
_returns: void_
_returns_description: _
_parameters: float width, float height, float nearDist, float farDist_
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

Setup the renderer to use an orthographic matrix.

Parameters:
width The width of the desired orthographic matrix. Defaults to
-1 setting its width according to the rendering surface's width.
height The height of the desired orthographic matrix. Defaults to
-1 setting its height according to the rendering surface's height.
nearDist The near clipping distance to use with the orthographic
matrix. Setting this value to 0 uses the defualt near distance. Defaults
to 0.
farDist The far clipping distance to use with the orthographic
matrix. Setting this value to 0 uses the defualt near distance. Defaults
to 0.





_description: _







<!----------------------------------------------------------------------------->

###void setupScreenPerspective(width, height, fov, nearDist, farDist)

<!--
_syntax: setupScreenPerspective(width, height, fov, nearDist, farDist)_
_name: setupScreenPerspective_
_returns: void_
_returns_description: _
_parameters: float width, float height, float fov, float nearDist, float farDist_
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

Setup the renderer to use a perspective matrix.

Parameters:
width The width of the desired perspective matrix. Defaults to -1
setting its width according to the rendering surface's width.
height The height of the desired perspective matrix. Defaults to
Defaults to -1 setting its width according to the rendering surface's
width.
fov The field of view to use with the perspective matrix.
Defaults to 60.
nearDist The near clipping distance to use with the perspective
matrix. Setting this value to 0 uses the default near distance. Defaults
to 0.
farDist The far clipping distance to use with the perspective
matrix. Setting this value to 0 uses the default near distance. Defaults
to 0.





_description: _







<!----------------------------------------------------------------------------->

###void startRender()

<!--
_syntax: startRender()_
_name: startRender_
_returns: void_
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

Starts using this renderer as the rendering surface.





_description: _







<!----------------------------------------------------------------------------->

###void translate(x, y, z)

<!--
_syntax: translate(x, y, z)_
_name: translate_
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

Translate this renderer's current matrix by x, y, and z.

Parameters:
x The x coordinate to translate this renderer's current matrix
by.
y The y coordinate to translate this renderer's current matrix
by.
z The z coordinate to translate this renderer's current matrix
by. Defaults to 0.





_description: _







<!----------------------------------------------------------------------------->

###void translate(&p)

<!--
_syntax: translate(&p)_
_name: translate_
_returns: void_
_returns_description: _
_parameters: const glm::vec3 &p_
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

Translate this renderer's current matrix by a point.

Parameters:
p The 3D point to translate this renderer's current matrix by.





_description: _







<!----------------------------------------------------------------------------->

###void unbind(&camera)

<!--
_syntax: unbind(&camera)_
_name: unbind_
_returns: void_
_returns_description: _
_parameters: const ofCamera &camera_
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

Unbind the camera from this renderer.

Parameters:
camera The camera to unbind from this renderer.





_description: _







<!----------------------------------------------------------------------------->

###void viewport(viewport)

<!--
_syntax: viewport(viewport)_
_name: viewport_
_returns: void_
_returns_description: _
_parameters: ofRectangle viewport_
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

Set this renderer's viewport using a rectangle.

This method uses the ofGetWidth() and ofGetHeight() to set the width and
height of the viewport. It also automatically creates near and far
clipping planes based on this width and height.





_description: _







<!----------------------------------------------------------------------------->

###void viewport(x, y, width, height, vflip = true)

<!--
_syntax: viewport(x, y, width, height, vflip = true)_
_name: viewport_
_returns: void_
_returns_description: _
_parameters: float x, float y, float width, float height, bool vflip=true_
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

Set this renderer's viewport manually using x, y, width, and
height.

Parameters:
x The x coordinate of the viewport. Defaults to 0.
y The y coordinate of the viewport. Defaults to 0.
w The width of the viewport. Defaults to -1 setting its width
according to the rendering surface's width.
h The height of the viewport. Defaults to -1 setting its height
according to the rendering surface's height.





_description: _







<!----------------------------------------------------------------------------->

### ~ofBaseRenderer()

<!--
_syntax: ~ofBaseRenderer()_
_name: ~ofBaseRenderer_
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







<!----------------------------------------------------------------------------->

##Variables



