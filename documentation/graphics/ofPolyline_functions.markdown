#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###bool ofInsidePoly(x, y, &polygon)

<!--
_syntax: ofInsidePoly(x, y, &polygon)_
_name: ofInsidePoly_
_returns: bool_
_returns_description: _
_parameters: float x, float y, const int &polygon_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Determine if an (x,y) coordinate is within the polygon defined by a vector of glm::vec3s.

Parameters:
x The x dimension of the coordinate.
y The y dimension of the coordinate.
poly a vector of glm::vec3s defining a polygon.

Returns: True if the point defined by the coordinates is enclosed, false otherwise.





_description: _







<!----------------------------------------------------------------------------->

###bool ofInsidePoly(&p, &poly)

<!--
_syntax: ofInsidePoly(&p, &poly)_
_name: ofInsidePoly_
_returns: bool_
_returns_description: _
_parameters: const T &p, const int &poly_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Determine if an glm::vec3 is within the polygon defined by a vector of glm::vec3s.

Parameters:
p A point to check.
poly A vector of glm::vec3s defining a polygon.

Returns: True if the glm::vec3 is enclosed, false otherwise.





_description: _







<!----------------------------------------------------------------------------->

