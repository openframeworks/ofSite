#class ofTessellator


##Description















































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

