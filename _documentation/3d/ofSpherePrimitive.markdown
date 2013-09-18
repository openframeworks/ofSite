#class ofSpherePrimitive


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofSpherePrimitive allows you to create an UV sphere, which is a sphere based on UV slices rather than faces like the ofIcoSpherePrimitive. Note this:

[IMG](spheretypes.png)

On the left is a UV sphere and on the right is an ICO sphere.

Like all primitives it allows you to set the size (radius), draw it, set positions, etc, as a simple example:

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

The sphere can look a little weird if you don't do ofEnabledDepthTesting() and ofDisableAlphaBlending().





##Methods



###float getRadius()

<!--
_syntax: getRadius()_
_name: getRadius_
_returns: float_
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

###int getResolution()

<!--
_syntax: getResolution()_
_name: getResolution_
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

### ofSpherePrimitive()

<!--
_syntax: ofSpherePrimitive()_
_name: ofSpherePrimitive_
_returns: _
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

### ofSpherePrimitive(radius, res, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: ofSpherePrimitive(radius, res, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: ofSpherePrimitive_
_returns: _
_returns_description: _
_parameters: float radius, int res, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
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

###void set(radius, resolution, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: set(radius, resolution, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float radius, int resolution, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setRadius(radius)

<!--
_syntax: setRadius(radius)_
_name: setRadius_
_returns: void_
_returns_description: _
_parameters: float radius_
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

###void setResolution(res)

<!--
_syntax: setResolution(res)_
_name: setResolution_
_returns: void_
_returns_description: _
_parameters: int res_
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

### ~ofSpherePrimitive()

<!--
_syntax: ~ofSpherePrimitive()_
_name: ~ofSpherePrimitive_
_returns: _
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

##Variables



###float radius

<!--
_name: radius_
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

###int resolution

<!--
_name: resolution_
_type: int_
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

