#class ofPlanePrimitive


##Description



The ofPlanePrimitive allows you to create an UV sphere, which is a sphere based on UV slices rather than faces like the ofPlanePrimitive.

Like all primitives it allows you to set the size, in this case height and width, draw it, set positions, etc, as a simple example:

~~~~{.cpp}

void setup()
{

	sphere.setRadius( width );
}

void draw()
{

	sphere.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	sphere.rotate(spinX, 1.0, 0.0, 0.0);
	sphere.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the icoSphere, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = sphere.getMesh().getUniqueFaces();

	// now draw
	sphere.draw();
}
~~~~

To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

~~~~{.cpp}

texture.getTextureReference().bind();
// now draw
sphere.draw();

~~~~

The plane primitive also allows you to simply pass an ofTexture to the plane and generate the texture coordinates from that texture so that the ofTexture fills the plane when it's drawn. This saves you the hassle of creating all the texture coordinates for each vertex, which is nice.


##Methods



###float getHeight()

<!--
_syntax: getHeight()_
_name: getHeight_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int getNumColumns()

<!--
_syntax: getNumColumns()_
_name: getNumColumns_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###int getNumRows()

<!--
_syntax: getNumRows()_
_name: getNumRows_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofVec2f getResolution()

<!--
_syntax: getResolution()_
_name: getResolution_
_returns: ofVec2f_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###float getWidth()

<!--
_syntax: getWidth()_
_name: getWidth_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPlanePrimitive()

<!--
_syntax: ofPlanePrimitive()_
_name: ofPlanePrimitive_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofPlanePrimitive(width, height, columns, rows, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: ofPlanePrimitive(width, height, columns, rows, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: ofPlanePrimitive_
_returns: _
_returns_description: _
_parameters: float width, float height, int columns, int rows, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void resizeToTexture(&inTexture, scale = 1.f)

<!--
_syntax: resizeToTexture(&inTexture, scale = 1.f)_
_name: resizeToTexture_
_returns: void_
_returns_description: _
_parameters: ofTexture &inTexture, float scale=1.f_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void set(width, height, columns, rows, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: set(width, height, columns, rows, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float width, float height, int columns, int rows, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void set(width, height)

<!--
_syntax: set(width, height)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float width, float height_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setColumns(columns)

<!--
_syntax: setColumns(columns)_
_name: setColumns_
_returns: void_
_returns_description: _
_parameters: int columns_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setHeight(height)

<!--
_syntax: setHeight(height)_
_name: setHeight_
_returns: void_
_returns_description: _
_parameters: float height_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setMode(mode)

<!--
_syntax: setMode(mode)_
_name: setMode_
_returns: void_
_returns_description: _
_parameters: ofPrimitiveMode mode_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setResolution(columns, rows)

<!--
_syntax: setResolution(columns, rows)_
_name: setResolution_
_returns: void_
_returns_description: _
_parameters: int columns, int rows_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setRows(rows)

<!--
_syntax: setRows(rows)_
_name: setRows_
_returns: void_
_returns_description: _
_parameters: int rows_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###void setWidth(width)

<!--
_syntax: setWidth(width)_
_name: setWidth_
_returns: void_
_returns_description: _
_parameters: float width_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ~ofPlanePrimitive()

<!--
_syntax: ~ofPlanePrimitive()_
_name: ~ofPlanePrimitive_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

##Variables



###float height

<!--
_name: height_
_type: float_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofVec2f resolution

<!--
_name: resolution_
_type: ofVec2f_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###float width

<!--
_name: width_
_type: float_
_access: protected_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

