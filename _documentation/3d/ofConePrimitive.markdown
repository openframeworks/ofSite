#class ofConePrimitive


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

The ofConePrimitive allows you to create a 3D cone. Like all primitives it allows you to set the size, draw it, set positions, etc, as a simple example:

~~~~{.cpp}

void setup()
{

	cone.set( coneRadius, coneHeight, coneRadiusSegments, coneHeightSegments );
}

void draw()
{

	cone.setPosition(ofGetWidth()*.2, ofGetHeight()*.75, 0);
	cone.rotate(spinX, 1.0, 0.0, 0.0);
	cone.rotate(spinY, 0, 1.0, 0.0);

	// get all the faces from the cpme, handy when you want to copy
	// individual vertices or tweak them a little ;)
	vector<ofMeshFace> triangles = cone.getMesh().getUniqueFaces();

	// now draw
	cone.draw();
}
~~~~

To draw a texture over any primitive, simply bind the ofTexture instance and then draw your primitive:

~~~~{.cpp}

texture.getTextureReference().bind();
// now draw
cone.draw();

~~~~

Beware of the cone texture coordinates, they're a little strange.





##Methods



###vector< ofIndexType > getCapIndices()

<!--
_syntax: getCapIndices()_
_name: getCapIndices_
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


This returns a vector of the indices of vertices that make up the cap (as opposed to the cone indices)







<!----------------------------------------------------------------------------->

###ofMesh getCapMesh()

<!--
_syntax: getCapMesh()_
_name: getCapMesh_
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


This returns an ofMesh made up of the cap (as opposed to the cone)







<!----------------------------------------------------------------------------->

###vector< ofIndexType > getConeIndices()

<!--
_syntax: getConeIndices()_
_name: getConeIndices_
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


This returns a vector of the indices of vertices that make up the cone (as opposed to the cap indices)







<!----------------------------------------------------------------------------->

###ofMesh getConeMesh()

<!--
_syntax: getConeMesh()_
_name: getConeMesh_
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


This returns an ofMesh made up of the cone (as opposed to the cap)







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


This returns the height of the cone.







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


This returns the radius of the cap







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


This returns the resolution of the cone (rather than the cap)







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


This returns the resolution of the cap (rather than the cone)







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

### ofConePrimitive()

<!--
_syntax: ofConePrimitive()_
_name: ofConePrimitive_
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

### ofConePrimitive(radius, height, radiusSegments, heightSegments, capSegments = 2, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: ofConePrimitive(radius, height, radiusSegments, heightSegments, capSegments = 2, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: ofConePrimitive_
_returns: _
_returns_description: _
_parameters: float radius, float height, int radiusSegments, int heightSegments, int capSegments=2, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
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

###void set(radius, height, radiusSegments, heightSegments, capSegments = 2, mode = OF_PRIMITIVE_TRIANGLE_STRIP)

<!--
_syntax: set(radius, height, radiusSegments, heightSegments, capSegments = 2, mode = OF_PRIMITIVE_TRIANGLE_STRIP)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float radius, float height, int radiusSegments, int heightSegments, int capSegments=2, ofPrimitiveMode mode=OF_PRIMITIVE_TRIANGLE_STRIP_
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

###void set(radius, height)

<!--
_syntax: set(radius, height)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float radius, float height_
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

###void setCapColor(color)

<!--
_syntax: setCapColor(color)_
_name: setCapColor_
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

###void setResolution(radiusRes, heightRes, capRes)

<!--
_syntax: setResolution(radiusRes, heightRes, capRes)_
_name: setResolution_
_returns: void_
_returns_description: _
_parameters: int radiusRes, int heightRes, int capRes_
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

###void setTopColor(color)

<!--
_syntax: setTopColor(color)_
_name: setTopColor_
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

### ~ofConePrimitive()

<!--
_syntax: ~ofConePrimitive()_
_name: ~ofConePrimitive_
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

