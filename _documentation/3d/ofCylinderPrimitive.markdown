#class ofCylinderPrimitive


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofCylinderPrimitive allows you to create an cylinder mesh.

Like all primitives it allows you to set the size, for the cylinder a radius and height, draw it, set positions, etc, as a simple example:

~~~~{.cpp}

void setup()
{

	cylinder.set( cylinderRadius, cylinderHeight );
}

void draw()
{

	cylinder.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	cylinder.rotate(spinX, 1.0, 0.0, 0.0);
	cylinder.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the icoSphere, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = cylinder.getMesh().getUniqueFaces();

	// now draw
	cylinder.draw();
}
~~~~

To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

~~~~{.cpp}

texture.getTextureReference().bind();
// now draw
cylinder.draw();

~~~~





##Methods



###vector< ofIndexType > getBottomCapIndices()

<!--
_syntax: getBottomCapIndices()_
_name: getBottomCapIndices_
_returns: vector< ofIndexType >_
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

###ofMesh getBottomCapMesh()

<!--
_syntax: getBottomCapMesh()_
_name: getBottomCapMesh_
_returns: ofMesh_
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

###bool getCapped()

<!--
_syntax: getCapped()_
_name: getCapped_
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








_description: _








<!----------------------------------------------------------------------------->

###vector< ofIndexType > getCylinderIndices()

<!--
_syntax: getCylinderIndices()_
_name: getCylinderIndices_
_returns: vector< ofIndexType >_
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

###ofMesh getCylinderMesh()

<!--
_syntax: getCylinderMesh()_
_name: getCylinderMesh_
_returns: ofMesh_
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
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

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

###ofVec3f getResolution()

<!--
_syntax: getResolution()_
_name: getResolution_
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

###int getResolutionCap()

<!--
_syntax: getResolutionCap()_
_name: getResolutionCap_
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

###int getResolutionHeight()

<!--
_syntax: getResolutionHeight()_
_name: getResolutionHeight_
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

###int getResolutionRadius()

<!--
_syntax: getResolutionRadius()_
_name: getResolutionRadius_
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

###vector< ofIndexType > getTopCapIndices()

<!--
_syntax: getTopCapIndices()_
_name: getTopCapIndices_
_returns: vector< ofIndexType >_
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

###ofMesh getTopCapMesh()

<!--
_syntax: getTopCapMesh()_
_name: getTopCapMesh_
_returns: ofMesh_
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

### ofCylinderPrimitive()

<!--
_syntax: ofCylinderPrimitive()_
_name: ofCylinderPrimitive_
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

### ofCylinderPrimitive(radius, height, radiusSegments, heightSegments, capSegments = 2, bCapped = true, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: ofCylinderPrimitive(radius, height, radiusSegments, heightSegments, capSegments = 2, bCapped = true, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: ofCylinderPrimitive_
_returns: _
_returns_description: _
_parameters: float radius, float height, int radiusSegments, int heightSegments, int capSegments=2, bool bCapped=true, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
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

###void set(radius, height, radiusSegments, heightSegments, capSegments = 2, bCapped = true, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: set(radius, height, radiusSegments, heightSegments, capSegments = 2, bCapped = true, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float radius, float height, int radiusSegments, int heightSegments, int capSegments=2, bool bCapped=true, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
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

###void set(radius, height, bCapped = true)

<!--
_syntax: set(radius, height, bCapped = true)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float radius, float height, bool bCapped=true_
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

###void setBottomCapColor(color)

<!--
_syntax: setBottomCapColor(color)_
_name: setBottomCapColor_
_returns: void_
_returns_description: _
_parameters: ofColor color_
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

###void setCapped(bCapped)

<!--
_syntax: setCapped(bCapped)_
_name: setCapped_
_returns: void_
_returns_description: _
_parameters: bool bCapped_
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

###void setCylinderColor(color)

<!--
_syntax: setCylinderColor(color)_
_name: setCylinderColor_
_returns: void_
_returns_description: _
_parameters: ofColor color_
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

###void setResolution(radiusSegments, heightSegments, capSegments = 2)

<!--
_syntax: setResolution(radiusSegments, heightSegments, capSegments = 2)_
_name: setResolution_
_returns: void_
_returns_description: _
_parameters: int radiusSegments, int heightSegments, int capSegments=2_
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

###void setResolutionCap(capRes)

<!--
_syntax: setResolutionCap(capRes)_
_name: setResolutionCap_
_returns: void_
_returns_description: _
_parameters: int capRes_
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

###void setResolutionHeight(heightRes)

<!--
_syntax: setResolutionHeight(heightRes)_
_name: setResolutionHeight_
_returns: void_
_returns_description: _
_parameters: int heightRes_
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

###void setResolutionRadius(radiusRes)

<!--
_syntax: setResolutionRadius(radiusRes)_
_name: setResolutionRadius_
_returns: void_
_returns_description: _
_parameters: int radiusRes_
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

###void setTopCapColor(color)

<!--
_syntax: setTopCapColor(color)_
_name: setTopCapColor_
_returns: void_
_returns_description: _
_parameters: ofColor color_
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

### ~ofCylinderPrimitive()

<!--
_syntax: ~ofCylinderPrimitive()_
_name: ~ofCylinderPrimitive_
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



###bool bCapped

<!--
_name: bCapped_
_type: bool_
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

###ofVec3f resolution

<!--
_name: resolution_
_type: ofVec3f_
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

###int strides

<!--
_name: strides_
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

###int vertices

<!--
_name: vertices_
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

