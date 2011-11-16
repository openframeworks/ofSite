<%inherit file="_templates/docs.mako" />
___ofTessellator___
$$code(lang=c++)
TESStesselator * cacheTess
$$/code



$$code(lang=c++)
TESSalloc tessAllocator
$$/code



$$code(lang=c++)
None ofTessellator()
$$/code



$$code(lang=c++)
None ~ofTessellator()
$$/code



$$code(lang=c++)
None ofTessellator(const ofTessellator &mom)
$$/code



$$code(lang=c++)
None operator=(const ofTessellator &mom)
$$/code



$$code(lang=c++)
void tessellateToMesh(const vector< ofPolyline > &src, ofPolyWindingMode polyWindingMode, ofMesh &dstmesh, bool bIs2D=false)
$$/code



$$code(lang=c++)
void tessellateToMesh(const ofPolyline &src, ofPolyWindingMode polyWindingMode, ofMesh &dstmesh, bool bIs2D=false)
$$/code



$$code(lang=c++)
void tessellateToPolylines(const vector< ofPolyline > &src, ofPolyWindingMode polyWindingMode, vector< ofPolyline > &dstpoly, bool bIs2D=false)
$$/code



$$code(lang=c++)
void tessellateToPolylines(const ofPolyline &src, ofPolyWindingMode polyWindingMode, vector< ofPolyline > &dstpoly, bool bIs2D=false)
$$/code



$$code(lang=c++)
void performTessellation(ofPolyWindingMode polyWindingMode, ofMesh &dstmesh, bool bIs2D)
$$/code



$$code(lang=c++)
void performTessellation(ofPolyWindingMode polyWindingMode, vector< ofPolyline > &dstpoly, bool bIs2D)
$$/code



$$code(lang=c++)
void init()
$$/code



