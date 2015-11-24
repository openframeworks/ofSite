#class ofVec4f


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description





##Methods



###ofVec4f & average(*points, num)

<!--
_syntax: average(*points, num)_
_name: average_
_returns: ofVec4f &_
_returns_description: _
_parameters: const ofVec4f *points, int num_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Sets this vector to be the average (center of gravity or centroid) of a given array of 'ofVec4f's.


Parameters:
points The array of 'ofVec4f's used in the average calculation.
num The number of ofVec4f objects in the array.





_description: _







<!----------------------------------------------------------------------------->

###float distance(&pnt)

<!--
_syntax: distance(&pnt)_
_name: distance_
_returns: float_
_returns_description: _
_parameters: const ofVec4f &pnt_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Treats this vector and 'pnt' as points in 4D space and calculates the distance between them.


Parameters:
pnt The vector used in the distance calculation with the current vector.

Returns: The distance between the two vectors in 4D space.





_description: _







<!----------------------------------------------------------------------------->

###float dot(&vec)

<!--
_syntax: dot(&vec)_
_name: dot_
_returns: float_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates and returns the dot product of this vector with 'vec'.

Dot product (less commonly known as Euclidean inner product) expresses the angular
relationship between two vectors. In other words it is a measure of how parallel two vectors
are. If they are completely perpendicular the dot product is 0; if they are completely parallel
their dot product is either 1 if they are pointing in the same direction, or -1 if they are pointing
in opposite directions.


Parameters:
vec The vector used in the dot product calculation with this vector.

Returns: The dot product of this vector with 'vec'.





_description: _







<!----------------------------------------------------------------------------->

###ofVec4f getInterpolated(&pnt, p)

<!--
_syntax: getInterpolated(&pnt, p)_
_name: getInterpolated_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &pnt, float p_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Performs a linear interpolation of this vector towards 'pnt'.


Parameters:
pnt The vector the interpolation will be performed on.
p The amount to move towards 'pnt'; 'p' is normally between 0 and 1 and where 0 means stay the original position and 1 means move all the way to 'pnt', but you can also have 'p' greater than 1 overshoot 'pnt', or less than 0 to move backwards away from 'pnt'.

Returns: The interpolation as an ofVec4f.





_description: _







<!----------------------------------------------------------------------------->

###ofVec4f getLimited(max)

<!--
_syntax: getLimited(max)_
_name: getLimited_
_returns: ofVec4f_
_returns_description: _
_parameters: float max_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a copy of this vector with its length (magnitude) restricted to a maximum of 'max' units by scaling down if necessary.


Parameters:
max The maximum length of the new vector.

Returns: A copy of the current vector that is at most 'max' units long.





_description: _







<!----------------------------------------------------------------------------->

###ofVec4f getMiddle(&pnt)

<!--
_syntax: getMiddle(&pnt)_
_name: getMiddle_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &pnt_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates and returns the midpoint (as a vector) between this vector and 'pnt'.


Parameters:
pnt The vector used in the midpoint calculation with this vector.

Returns: The midpoint between this vector and 'pnt' as an ofVec4f.





_description: _







<!----------------------------------------------------------------------------->

###ofVec4f getNormalized()

<!--
_syntax: getNormalized()_
_name: getNormalized_
_returns: ofVec4f_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a normalized copy of this vector.

Normalization means to scale the vector so that its length (magnitude) is exactly 1,
at which stage all that is left is the direction. A normalized vector is usually called
a unit vector, and can be used to represent a pure direction (heading).


Returns: The normalized copy of the current vector.





_description: _







<!----------------------------------------------------------------------------->

###float * getPtr()

<!--
_syntax: getPtr()_
_name: getPtr_
_returns: float *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Access components
\{





_description: _







<!----------------------------------------------------------------------------->

###const float * getPtr()

<!--
_syntax: getPtr()_
_name: getPtr_
_returns: const float *_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###ofVec4f getScaled(length)

<!--
_syntax: getScaled(length)_
_name: getScaled_
_returns: ofVec4f_
_returns_description: _
_parameters: const float length_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a new ofVec4f that is the result of scaling this vector up or down so that it has the requested length.


Parameters:
length The desired length of the new ofVec4f object.

Returns: The result of scaling the this vector up or down.





_description: _







<!----------------------------------------------------------------------------->

###ofVec4f & interpolate(&pnt, p)

<!--
_syntax: interpolate(&pnt, p)_
_name: interpolate_
_returns: ofVec4f &_
_returns_description: _
_parameters: const ofVec4f &pnt, float p_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Performs a linear interpolation of this vector towards 'pnt'. This modifies the current vector to the interpolated value.


Parameters:
pnt The vector the interpolation will be performed on.
p The amount to move towards 'pnt'; 'p' is normally between 0 and 1 and where 0 means stay the original position and 1 means move all the way to 'pnt', but you can also have 'p' greater than 1 overshoot 'pnt', or less than 0 to move backwards away from 'pnt'.





_description: _







<!----------------------------------------------------------------------------->

###float length()

<!--
_syntax: length()_
_name: length_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the length (magnitude) of this vector.


Returns: The magnitude of the current vector.





_description: _







<!----------------------------------------------------------------------------->

###float lengthSquared()

<!--
_syntax: lengthSquared()_
_name: lengthSquared_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###ofVec4f & limit(max)

<!--
_syntax: limit(max)_
_name: limit_
_returns: ofVec4f &_
_returns_description: _
_parameters: float max_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Restrict the length (magnitude) of this vector to a maximum of 'max' units by scaling down if necessary.


Parameters:
max The maximum length of the current vector.





_description: _







<!----------------------------------------------------------------------------->

###bool match(&vec, tolerance = 0.0001f)

<!--
_syntax: match(&vec, tolerance = 0.0001f)_
_name: match_
_returns: bool_
_returns_description: _
_parameters: const ofVec4f &vec, float tolerance=0.0001f_
_access: public_
_version_started: 007_
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

###ofVec4f & middle(&pnt)

<!--
_syntax: middle(&pnt)_
_name: middle_
_returns: ofVec4f &_
_returns_description: _
_parameters: const ofVec4f &pnt_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates and returns the midpoint (as a vector) between this vector and 'pnt'. This modifies the current vector to the midpoint value.


Parameters:
pnt The vector used in the midpoint calculation with this vector.

Returns: The midpoint between this vector and 'pnt' as an ofVec4f.





_description: _







<!----------------------------------------------------------------------------->

###ofVec4f & normalize()

<!--
_syntax: normalize()_
_name: normalize_
_returns: ofVec4f &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Normalizes the vector. This changes the current vector to its normalized value.

Normalization means to scale the vector so that its length (magnitude) is exactly 1,
at which stage all that is left is the direction. A normalized vector is usually called
a unit vector, and can be used to represent a pure direction (heading).





_description: _







<!----------------------------------------------------------------------------->

### ofVec4f()

<!--
_syntax: ofVec4f()_
_name: ofVec4f_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0072_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Construct a 4D vector
\{





_description: _







<!----------------------------------------------------------------------------->

### ofVec4f(_scalar)

<!--
_syntax: ofVec4f(_scalar)_
_name: ofVec4f_
_returns: _
_returns_description: _
_parameters: float _scalar_
_access: public_
_version_started: 0072_
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

### ofVec4f(_x, _y, _z, _w)

<!--
_syntax: ofVec4f(_x, _y, _z, _w)_
_name: ofVec4f_
_returns: _
_returns_description: _
_parameters: float _x, float _y, float _z, float _w_
_access: public_
_version_started: 007_
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

### ofVec4f(&vec)

<!--
_syntax: ofVec4f(&vec)_
_name: ofVec4f_
_returns: _
_returns_description: _
_parameters: const ofVec2f &vec_
_access: public_
_version_started: 007_
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

### ofVec4f(&vec)

<!--
_syntax: ofVec4f(&vec)_
_name: ofVec4f_
_returns: _
_returns_description: _
_parameters: const ofVec3f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f one()

<!--
_syntax: one()_
_name: one_
_returns: ofVec4f_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###bool operator!=(&vec)

<!--
_syntax: operator!=(&vec)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f operator*(&vec)

<!--
_syntax: operator*(&vec)_
_name: operator*_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f operator*(f)

<!--
_syntax: operator*(f)_
_name: operator*_
_returns: ofVec4f_
_returns_description: _
_parameters: const float f_
_access: public_
_version_started: 007_
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

###ofVec4f & operator*=(&vec)

<!--
_syntax: operator*=(&vec)_
_name: operator*=_
_returns: ofVec4f &_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f & operator*=(f)

<!--
_syntax: operator*=(f)_
_name: operator*=_
_returns: ofVec4f &_
_returns_description: _
_parameters: const float f_
_access: public_
_version_started: 007_
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

###ofVec4f operator+(&vec)

<!--
_syntax: operator+(&vec)_
_name: operator+_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Operators
\{





_description: _







<!----------------------------------------------------------------------------->

###ofVec4f operator+(f)

<!--
_syntax: operator+(f)_
_name: operator+_
_returns: ofVec4f_
_returns_description: _
_parameters: const float f_
_access: public_
_version_started: 007_
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

###ofVec4f & operator+=(&vec)

<!--
_syntax: operator+=(&vec)_
_name: operator+=_
_returns: ofVec4f &_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f & operator+=(f)

<!--
_syntax: operator+=(f)_
_name: operator+=_
_returns: ofVec4f &_
_returns_description: _
_parameters: const float f_
_access: public_
_version_started: 007_
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

###ofVec4f operator-(f)

<!--
_syntax: operator-(f)_
_name: operator-_
_returns: ofVec4f_
_returns_description: _
_parameters: const float f_
_access: public_
_version_started: 007_
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

###ofVec4f operator-(&vec)

<!--
_syntax: operator-(&vec)_
_name: operator-_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f operator-()

<!--
_syntax: operator-()_
_name: operator-_
_returns: ofVec4f_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
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

###ofVec4f & operator-=(f)

<!--
_syntax: operator-=(f)_
_name: operator-=_
_returns: ofVec4f &_
_returns_description: _
_parameters: const float f_
_access: public_
_version_started: 007_
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

###ofVec4f & operator-=(&vec)

<!--
_syntax: operator-=(&vec)_
_name: operator-=_
_returns: ofVec4f &_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f operator/(&vec)

<!--
_syntax: operator/(&vec)_
_name: operator/_
_returns: ofVec4f_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f operator/(f)

<!--
_syntax: operator/(f)_
_name: operator/_
_returns: ofVec4f_
_returns_description: _
_parameters: const float f_
_access: public_
_version_started: 007_
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

###ofVec4f & operator/=(&vec)

<!--
_syntax: operator/=(&vec)_
_name: operator/=_
_returns: ofVec4f &_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###ofVec4f & operator/=(f)

<!--
_syntax: operator/=(f)_
_name: operator/=_
_returns: ofVec4f &_
_returns_description: _
_parameters: const float f_
_access: public_
_version_started: 007_
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

###bool operator==(&vec)

<!--
_syntax: operator==(&vec)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\name Comparison
\{





_description: _







<!----------------------------------------------------------------------------->

###float & operator[](n)

<!--
_syntax: operator[](n)_
_name: operator[]_
_returns: float &_
_returns_description: _
_parameters: int n_
_access: public_
_version_started: 0.8.0_
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

###float operator[](n)

<!--
_syntax: operator[](n)_
_name: operator[]_
_returns: float_
_returns_description: _
_parameters: int n_
_access: public_
_version_started: 007_
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

###ofVec4f & scale(length)

<!--
_syntax: scale(length)_
_name: scale_
_returns: ofVec4f &_
_returns_description: _
_parameters: const float length_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Scales this vector up or down so that it has the requested length.


Parameters:
length The desired length of the vector.





_description: _







<!----------------------------------------------------------------------------->

###void set(_scalar)

<!--
_syntax: set(_scalar)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float _scalar_
_access: public_
_version_started: 0072_
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

###void set(_x, _y, _z, _w)

<!--
_syntax: set(_x, _y, _z, _w)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float _x, float _y, float _z, float _w_
_access: public_
_version_started: 007_
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

###void set(&vec)

<!--
_syntax: set(&vec)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const ofVec4f &vec_
_access: public_
_version_started: 007_
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

###float squareDistance(&pnt)

<!--
_syntax: squareDistance(&pnt)_
_name: squareDistance_
_returns: float_
_returns_description: _
_parameters: const ofVec4f &pnt_
_access: public_
_version_started: 007_
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

###ofVec4f zero()

<!--
_syntax: zero()_
_name: zero_
_returns: ofVec4f_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

##Variables



###const int DIM

<!--
_name: DIM_
_type: const int_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

\cond INTERNAL





_description: _







<!----------------------------------------------------------------------------->

###float w

<!--
_name: w_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###float x

<!--
_name: x_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _

\endcond





_description: _







<!----------------------------------------------------------------------------->

###float y

<!--
_name: y_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###float z

<!--
_name: z_
_type: float_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

