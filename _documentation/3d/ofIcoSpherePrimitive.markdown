#class ofIcoSpherePrimitive


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofIcoSpherePrimitive allows you to create an icosphere, which is a sphere not based on UV slices like the ofSpherePrimitive, but rather faces. Like this:

Like all primitives it allows you to set the radius, draw it, set positions, etc.

~~~~{.cpp}

void setup()
{

	icoSphere.setRadius( width );
}

void draw()
{

	icoSphere.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	icoSphere.rotate(spinX, 1.0, 0.0, 0.0);
	icoSphere.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the icoSphere, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = icoSphere.getMesh().getUniqueFaces();

	// now draw
	icoSphere.draw();
}
~~~~





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

### ofIcoSpherePrimitive()

<!--
_syntax: ofIcoSpherePrimitive()_
_name: ofIcoSpherePrimitive_
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

### ofIcoSpherePrimitive(radius, iterations)

<!--
_syntax: ofIcoSpherePrimitive(radius, iterations)_
_name: ofIcoSpherePrimitive_
_returns: _
_returns_description: _
_parameters: float radius, int iterations_
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

###void set(radius, res)

<!--
_syntax: set(radius, res)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float radius, int res_
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

###void setResolution(iterations)

<!--
_syntax: setResolution(iterations)_
_name: setResolution_
_returns: void_
_returns_description: _
_parameters: int iterations_
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

### ~ofIcoSpherePrimitive()

<!--
_syntax: ~ofIcoSpherePrimitive()_
_name: ~ofIcoSpherePrimitive_
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

