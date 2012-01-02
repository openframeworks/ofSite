#class ofTessellator


##Description


ofTessellator exists for one purpose: to turn ofPolylines into ofMeshes so that they can be more efficiently displayed using OpenGL. The ofPolyline class uses tessellation to turn its paths into openGL-ready shapes under the hood, so if you're interested in just having ofPolyline instances converted to meshes, it's handled for you by the ofPolyline. If you're interested in using the tessellation multiple polylines at a time, then you'll find what you need in the ofTessellator. Many shapes can't be drawn by OpenGL without tessellation, but by breaking them into triangles or quads, they can be drawn easily, for instance:

The fairly simple shape shown on the left needs to be broken into triangles to be displayed, an example of how this might be done is shown on the right.

![tessellation](tessellation.png)


##Methods



### ofTessellator()

<!--
_syntax: ofTessellator()_
_name: ofTessellator_
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







<!----------------------------------------------------------------------------->

### ~ofTessellator()

<!--
_syntax: ~ofTessellator()_
_name: ~ofTessellator_
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







<!----------------------------------------------------------------------------->

### ofTessellator(&mom)

<!--
_syntax: ofTessellator(&mom)_
_name: ofTessellator_
_returns: _
_returns_description: _
_parameters: const ofTessellator &mom_
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



Copy constructor to copy properties from one tessellator to another. 



<!----------------------------------------------------------------------------->

###ofTessellator operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofTessellator_
_returns_description: _
_parameters: const ofTessellator &mom_
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



Operator overloading to copy properties from one tessellator to another. 



<!----------------------------------------------------------------------------->

###void tessellateToMesh(&src, polyWindingMode, &dstmesh, bIs2D = false)

<!--
_syntax: tessellateToMesh(&src, polyWindingMode, &dstmesh, bIs2D = false)_
_name: tessellateToMesh_
_returns: void_
_returns_description: _
_parameters: const vector< ofPolyline > &src, ofPolyWindingMode polyWindingMode, ofMesh &dstmesh, bool bIs2D=false_
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


Tessellates a vector of ofPolyline instances into a single ofMesh instance using the winding mode set in ofPolyWindingMode.




<!----------------------------------------------------------------------------->

###void tessellateToMesh(&src, polyWindingMode, &dstmesh, bIs2D = false)

<!--
_syntax: tessellateToMesh(&src, polyWindingMode, &dstmesh, bIs2D = false)_
_name: tessellateToMesh_
_returns: void_
_returns_description: _
_parameters: const ofPolyline &src, ofPolyWindingMode polyWindingMode, ofMesh &dstmesh, bool bIs2D=false_
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


Tessellates a ofPolyline instance into a single ofMesh instance using the winding mode set in ofPolyWindingMode.




<!----------------------------------------------------------------------------->

###void tessellateToPolylines(&src, polyWindingMode, &dstpoly, bIs2D = false)

<!--
_syntax: tessellateToPolylines(&src, polyWindingMode, &dstpoly, bIs2D = false)_
_name: tessellateToPolylines_
_returns: void_
_returns_description: _
_parameters: const vector< ofPolyline > &src, ofPolyWindingMode polyWindingMode, vector< ofPolyline > &dstpoly, bool bIs2D=false_
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


Tessellates a vector of ofPolyline instances into vector of ofPolyline instances using the winding mode set in ofPolyWindingMode.




<!----------------------------------------------------------------------------->

###void tessellateToPolylines(&src, polyWindingMode, &dstpoly, bIs2D = false)

<!--
_syntax: tessellateToPolylines(&src, polyWindingMode, &dstpoly, bIs2D = false)_
_name: tessellateToPolylines_
_returns: void_
_returns_description: _
_parameters: const ofPolyline &src, ofPolyWindingMode polyWindingMode, vector< ofPolyline > &dstpoly, bool bIs2D=false_
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

Tessellate multiple polylines into a single polyline.

~~~~{.cpp}
vector<ofPolyline> sources;
ofPolyline destination;
// ... fill vec
tess.performTessellation(destination, OF_POLY_WINDING_ODD, sources, true ); // true is for 2d
~~~~





<!----------------------------------------------------------------------------->

###void performTessellation(polyWindingMode, &dstmesh, bIs2D)

<!--
_syntax: performTessellation(polyWindingMode, &dstmesh, bIs2D)_
_name: performTessellation_
_returns: void_
_returns_description: _
_parameters: ofPolyWindingMode polyWindingMode, ofMesh &dstmesh, bool bIs2D_
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





<!----------------------------------------------------------------------------->

###void performTessellation(polyWindingMode, &dstpoly, bIs2D)

<!--
_syntax: performTessellation(polyWindingMode, &dstpoly, bIs2D)_
_name: performTessellation_
_returns: void_
_returns_description: _
_parameters: ofPolyWindingMode polyWindingMode, vector< ofPolyline > &dstpoly, bool bIs2D_
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



<!----------------------------------------------------------------------------->

###void init()

<!--
_syntax: init()_
_name: init_
_returns: void_
_returns_description: _
_parameters: _
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







<!----------------------------------------------------------------------------->

##Variables



###TESStesselator * cacheTess

<!--
_name: cacheTess_
_type: TESStesselator *_
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

###TESSalloc tessAllocator

<!--
_name: tessAllocator_
_type: TESSalloc_
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

