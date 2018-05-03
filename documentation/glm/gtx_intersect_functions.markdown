#functions


<!--
_visible: True_
_advanced: False_
-->

##Description





<!----------------------------------------------------------------------------->

###bool glm::intersectLineSphere(&point0, &point1, &sphereCenter, sphereRadius, &intersectionPosition1, &intersectionNormal1, &intersectionPosition2, &intersectionNormal2)

<!--
_syntax: glm::intersectLineSphere(&point0, &point1, &sphereCenter, sphereRadius, &intersectionPosition1, &intersectionNormal1, &intersectionPosition2, &intersectionNormal2)_
_name: glm::intersectLineSphere_
_returns: bool_
_returns_description: _
_parameters: const genType &point0, const genType &point1, const genType &sphereCenter, typename genType::value_type sphereRadius, genType &intersectionPosition1, genType &intersectionNormal1, genType &intersectionPosition2, genType &intersectionNormal2_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Compute the intersection of a line and a sphere.
 From GLM_GTX_intersect extension





_description: _







<!----------------------------------------------------------------------------->

###bool glm::intersectLineTriangle(&orig, &dir, &vert0, &vert1, &vert2, &position)

<!--
_syntax: glm::intersectLineTriangle(&orig, &dir, &vert0, &vert1, &vert2, &position)_
_name: glm::intersectLineTriangle_
_returns: bool_
_returns_description: _
_parameters: const genType &orig, const genType &dir, const genType &vert0, const genType &vert1, const genType &vert2, genType &position_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Compute the intersection of a line and a triangle.
 From GLM_GTX_intersect extension.





_description: _







<!----------------------------------------------------------------------------->

###bool glm::intersectRayPlane(&orig, &dir, &planeOrig, &planeNormal, &intersectionDistance)

<!--
_syntax: glm::intersectRayPlane(&orig, &dir, &planeOrig, &planeNormal, &intersectionDistance)_
_name: glm::intersectRayPlane_
_returns: bool_
_returns_description: _
_parameters: const genType &orig, const genType &dir, const genType &planeOrig, const genType &planeNormal, typename genType::value_type &intersectionDistance_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Compute the intersection of a ray and a plane.
 Ray direction and plane normal must be unit length.
 From GLM_GTX_intersect extension.





_description: _







<!----------------------------------------------------------------------------->

###bool glm::intersectRaySphere(&rayStarting, &rayNormalizedDirection, &sphereCenter, sphereRadius, &intersectionPosition, &intersectionNormal)

<!--
_syntax: glm::intersectRaySphere(&rayStarting, &rayNormalizedDirection, &sphereCenter, sphereRadius, &intersectionPosition, &intersectionNormal)_
_name: glm::intersectRaySphere_
_returns: bool_
_returns_description: _
_parameters: const genType &rayStarting, const genType &rayNormalizedDirection, const genType &sphereCenter, const typename genType::value_type sphereRadius, genType &intersectionPosition, genType &intersectionNormal_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Compute the intersection of a ray and a sphere.
 From GLM_GTX_intersect extension.





_description: _







<!----------------------------------------------------------------------------->

###bool glm::intersectRaySphere(&rayStarting, &rayNormalizedDirection, &sphereCenter, sphereRadiusSquered, &intersectionDistance)

<!--
_syntax: glm::intersectRaySphere(&rayStarting, &rayNormalizedDirection, &sphereCenter, sphereRadiusSquered, &intersectionDistance)_
_name: glm::intersectRaySphere_
_returns: bool_
_returns_description: _
_parameters: const genType &rayStarting, const genType &rayNormalizedDirection, const genType &sphereCenter, const typename genType::value_type sphereRadiusSquered, typename genType::value_type &intersectionDistance_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Compute the intersection distance of a ray and a sphere.
 The ray direction vector is unit length.
 From GLM_GTX_intersect extension.





_description: _







<!----------------------------------------------------------------------------->

###bool glm::intersectRayTriangle(&orig, &dir, &vert0, &vert1, &vert2, &baryPosition)

<!--
_syntax: glm::intersectRayTriangle(&orig, &dir, &vert0, &vert1, &vert2, &baryPosition)_
_name: glm::intersectRayTriangle_
_returns: bool_
_returns_description: _
_parameters: const genType &orig, const genType &dir, const genType &vert0, const genType &vert1, const genType &vert2, genType &baryPosition_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

 Compute the intersection of a ray and a triangle.
 From GLM_GTX_intersect extension.





_description: _







<!----------------------------------------------------------------------------->

