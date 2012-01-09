#class ofVec2f


##Description

A class to describe a two dimensional vector. This datatype stores two variables (x and y). It's commonly used as a position, velocity, and/or acceleration. Technically, positions is described as a point (and commonly defined with a ofPoint, that in fact it's a ofVec3f).
Vectors in general are entities with magnitude ( also called lenght) and direction. A vector whose magnitude is 1 is a unit or normalized vector.  Witch means that it's important data that stores it's the direction of a point. This last practice it's very well-known on 3D design for defining the direction of a plane by passing-through the normal value of each vertex that conform a triangle or quad mesh. 

Any way, what's very handy of this class it's that you could perform arithmetic operations on vectors really easy, just as you deal with int or floats. This is a substantial difference from the Processing implementation call PVectors.

$$code(lang=c++)
ofVec2f v1 = ofVec2f(40, 20);   // one way of assignment 
    
ofVec2f v2;
v2.set(25,50);                  // other way of assignment
    
v1 = v1 + v2;    // vector operation also equivalent of: v1 += v2 

cout << v1 << endl;
$$/code



##Methods



### ofVec2f(_x = 0.f, _y = 0.f)

<!--
_syntax: ofVec2f(_x = 0.f, _y = 0.f)_
_name: ofVec2f_
_returns: _
_returns_description: _
_parameters: float _x=0.f, float _y=0.f_
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

Values assigment using two floats variables

$$code(lang=c++)
ofVec2f v1 = ofVec2f(40, 20);
$$/code



<!----------------------------------------------------------------------------->

### ofVec2f(&vec)

<!--
_syntax: ofVec2f(&vec)_
_name: ofVec2f_
_returns: _
_returns_description: _
_parameters: const ofVec3f &vec_
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

Values assigment using a 3 dimensional vector (ofVec3f)

$$code(lang=c++)
ofVec3f v1 = ofVec3f(40, 20, 50);
ofVec2f v2 = ofVec2f(v1);
$$/code



<!----------------------------------------------------------------------------->

### ofVec2f(&vec)

<!--
_syntax: ofVec2f(&vec)_
_name: ofVec2f_
_returns: _
_returns_description: _
_parameters: const ofVec4f &vec_
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

Values assigment using a 4 dimensional vector (ofVec4f)

$$code(lang=c++)
ofVec4f v1 = ofVec3f(40, 20, 50, 0);
ofVec2f v2 = ofVec2f(v1);
$$/code



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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Gets the pointer to the memory position of the first element of the vector

$$code(lang=c++)
ofVec2f v1 = ofVec2f(40, 20);
    
float *a;
    
a = v1.getPtr();
    
cout << *a << " = 40 ( x value )" << endl;
$$/code

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the value corresponding to the allocation position inside this object. In this case: 0 it's for x and 1 it's for y

$$code(lang=c++)
ofVec2f v1 = ofVec2f(40, 20);
    
cout << v1[1] << " = 20 ( y value )" << endl;
$$/code


<!----------------------------------------------------------------------------->

###void set(_x, _y)

<!--
_syntax: set(_x, _y)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float _x, float _y_
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

Setting the values by using two floats variables

$$code(lang=c++)
ofVec2f v1;
v1.set(40, 20);
$$/code



<!----------------------------------------------------------------------------->

###void set(&vec)

<!--
_syntax: set(&vec)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const ofVec2f &vec_
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

Setting the values by using other 2 dimension vector (ofVec2f)

$$code(lang=c++)
ofVec2f v1;
ofVec2f v2;
v1.set(40, 20);
v2.set(v1);
$$/code



<!----------------------------------------------------------------------------->

###bool operator==(&vec)

<!--
_syntax: operator==(&vec)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofVec2f &vec_
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

Equal comparison of two vectors



<!----------------------------------------------------------------------------->

###bool operator!=(&vec)

<!--
_syntax: operator!=(&vec)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofVec2f &vec_
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

Not Equal comparison of two vectors 



<!----------------------------------------------------------------------------->

###bool match(&vec, tolerance = 0.0001)

<!--
_syntax: match(&vec, tolerance = 0.0001)_
_name: match_
_returns: bool_
_returns_description: _
_parameters: const ofVec2f &vec, float tolerance=0.0001_
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

Let you check if two vectors are similar given a tolerance threshold (default = 0.0001 )
For example this gives true:

$$code(lang=c++)
ofVec2f v1 = ofVec2f(40, 20);
ofVec2f v2 = ofVec2f(40.01, 19.999);
    
cout << v1.match(v2, 0.1) << endl;
$$/code


<!----------------------------------------------------------------------------->

###bool align(&vec, tolerance = 0.0001)

<!--
_syntax: align(&vec, tolerance = 0.0001)_
_name: align_
_returns: bool_
_returns_description: _
_parameters: const ofVec2f &vec, float tolerance=0.0001_
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

Let's you check if they both have an alignated direction with a tolerance threshold (default = 0.0001 )

$$code(lang=c++)
ofVec2f v1 = ofVec2f(40, 20);
ofVec2f v2 = ofVec2f(4, 2);

cout << v1.align(v2, 0.0) << endl;
$$/code


<!----------------------------------------------------------------------------->

###bool alignRad(&vec, tolerance = 0.0001)

<!--
_syntax: alignRad(&vec, tolerance = 0.0001)_
_name: alignRad_
_returns: bool_
_returns_description: _
_parameters: const ofVec2f &vec, float tolerance=0.0001_
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

###ofVec2f operator+(&vec)

<!--
_syntax: operator+(&vec)_
_name: operator+_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###ofVec2f operator+=(&vec)

<!--
_syntax: operator+=(&vec)_
_name: operator+=_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###ofVec2f operator-(&vec)

<!--
_syntax: operator-(&vec)_
_name: operator-_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###ofVec2f operator-=(&vec)

<!--
_syntax: operator-=(&vec)_
_name: operator-=_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###ofVec2f operator*(&vec)

<!--
_syntax: operator*(&vec)_
_name: operator*_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###ofVec2f operator*=(&vec)

<!--
_syntax: operator*=(&vec)_
_name: operator*=_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###ofVec2f operator/(&vec)

<!--
_syntax: operator/(&vec)_
_name: operator/_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###ofVec2f operator/=(&vec)

<!--
_syntax: operator/=(&vec)_
_name: operator/=_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###ofVec2f operator+(f)

<!--
_syntax: operator+(f)_
_name: operator+_
_returns: ofVec2f_
_returns_description: _
_parameters: const float f_
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

###ofVec2f operator+=(f)

<!--
_syntax: operator+=(f)_
_name: operator+=_
_returns: ofVec2f_
_returns_description: _
_parameters: const float f_
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

###ofVec2f operator-(f)

<!--
_syntax: operator-(f)_
_name: operator-_
_returns: ofVec2f_
_returns_description: _
_parameters: const float f_
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

###ofVec2f operator-=(f)

<!--
_syntax: operator-=(f)_
_name: operator-=_
_returns: ofVec2f_
_returns_description: _
_parameters: const float f_
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

###ofVec2f operator-()

<!--
_syntax: operator-()_
_name: operator-_
_returns: ofVec2f_
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

###ofVec2f operator*(f)

<!--
_syntax: operator*(f)_
_name: operator*_
_returns: ofVec2f_
_returns_description: _
_parameters: const float f_
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

###ofVec2f operator*=(f)

<!--
_syntax: operator*=(f)_
_name: operator*=_
_returns: ofVec2f_
_returns_description: _
_parameters: const float f_
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

###ofVec2f operator/(f)

<!--
_syntax: operator/(f)_
_name: operator/_
_returns: ofVec2f_
_returns_description: _
_parameters: const float f_
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

###ofVec2f operator/=(f)

<!--
_syntax: operator/=(f)_
_name: operator/=_
_returns: ofVec2f_
_returns_description: _
_parameters: const float f_
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

###ofVec2f getScaled(length)

<!--
_syntax: getScaled(length)_
_name: getScaled_
_returns: ofVec2f_
_returns_description: _
_parameters: const float length_
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

###ofVec2f scale(length)

<!--
_syntax: scale(length)_
_name: scale_
_returns: ofVec2f_
_returns_description: _
_parameters: const float length_
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

###ofVec2f getRotated(angle)

<!--
_syntax: getRotated(angle)_
_name: getRotated_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle_
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

###ofVec2f getRotatedRad(angle)

<!--
_syntax: getRotatedRad(angle)_
_name: getRotatedRad_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle_
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

###ofVec2f rotate(angle)

<!--
_syntax: rotate(angle)_
_name: rotate_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle_
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

###ofVec2f rotateRad(angle)

<!--
_syntax: rotateRad(angle)_
_name: rotateRad_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle_
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

###ofVec2f getRotated(angle, &pivot)

<!--
_syntax: getRotated(angle, &pivot)_
_name: getRotated_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle, const ofVec2f &pivot_
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

###ofVec2f rotate(angle, &pivot)

<!--
_syntax: rotate(angle, &pivot)_
_name: rotate_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle, const ofVec2f &pivot_
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

###ofVec2f getRotatedRad(angle, &pivot)

<!--
_syntax: getRotatedRad(angle, &pivot)_
_name: getRotatedRad_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle, const ofVec2f &pivot_
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

###ofVec2f rotateRad(angle, &pivot)

<!--
_syntax: rotateRad(angle, &pivot)_
_name: rotateRad_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle, const ofVec2f &pivot_
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

###ofVec2f getMapped(&origin, &vx, &vy)

<!--
_syntax: getMapped(&origin, &vx, &vy)_
_name: getMapped_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &origin, const ofVec2f &vx, const ofVec2f &vy_
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

###ofVec2f map(&origin, &vx, &vy)

<!--
_syntax: map(&origin, &vx, &vy)_
_name: map_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &origin, const ofVec2f &vx, const ofVec2f &vy_
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

###float distance(&pnt)

<!--
_syntax: distance(&pnt)_
_name: distance_
_returns: float_
_returns_description: _
_parameters: const ofVec2f &pnt_
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

###float squareDistance(&pnt)

<!--
_syntax: squareDistance(&pnt)_
_name: squareDistance_
_returns: float_
_returns_description: _
_parameters: const ofVec2f &pnt_
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

###ofVec2f getInterpolated(&pnt, p)

<!--
_syntax: getInterpolated(&pnt, p)_
_name: getInterpolated_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &pnt, float p_
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

###ofVec2f interpolate(&pnt, p)

<!--
_syntax: interpolate(&pnt, p)_
_name: interpolate_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &pnt, float p_
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

###ofVec2f getMiddle(&pnt)

<!--
_syntax: getMiddle(&pnt)_
_name: getMiddle_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &pnt_
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

###ofVec2f middle(&pnt)

<!--
_syntax: middle(&pnt)_
_name: middle_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &pnt_
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

###ofVec2f average(*points, num)

<!--
_syntax: average(*points, num)_
_name: average_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f *points, int num_
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

###ofVec2f getNormalized()

<!--
_syntax: getNormalized()_
_name: getNormalized_
_returns: ofVec2f_
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

###ofVec2f normalize()

<!--
_syntax: normalize()_
_name: normalize_
_returns: ofVec2f_
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

###ofVec2f getLimited(max)

<!--
_syntax: getLimited(max)_
_name: getLimited_
_returns: ofVec2f_
_returns_description: _
_parameters: float max_
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

###ofVec2f limit(max)

<!--
_syntax: limit(max)_
_name: limit_
_returns: ofVec2f_
_returns_description: _
_parameters: float max_
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

###ofVec2f getPerpendicular()

<!--
_syntax: getPerpendicular()_
_name: getPerpendicular_
_returns: ofVec2f_
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

###ofVec2f perpendicular()

<!--
_syntax: perpendicular()_
_name: perpendicular_
_returns: ofVec2f_
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###float squareLength()

<!--
_syntax: squareLength()_
_name: squareLength_
_returns: float_
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

###float angle(&vec)

<!--
_syntax: angle(&vec)_
_name: angle_
_returns: float_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###float angleRad(&vec)

<!--
_syntax: angleRad(&vec)_
_name: angleRad_
_returns: float_
_returns_description: _
_parameters: const ofVec2f &vec_
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

###float dot(&vec)

<!--
_syntax: dot(&vec)_
_name: dot_
_returns: float_
_returns_description: _
_parameters: const ofVec2f &vec_
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

Dot Product, or less commonly know as Euclidean inner product. It can be used to get the angle between to vectors.



<!----------------------------------------------------------------------------->

###ofVec2f rescaled(length)

<!--
_syntax: rescaled(length)_
_name: rescaled_
_returns: ofVec2f_
_returns_description: _
_parameters: const float length_
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

###ofVec2f rescale(length)

<!--
_syntax: rescale(length)_
_name: rescale_
_returns: ofVec2f_
_returns_description: _
_parameters: const float length_
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

###ofVec2f rotated(angle)

<!--
_syntax: rotated(angle)_
_name: rotated_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle_
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

###ofVec2f normalized()

<!--
_syntax: normalized()_
_name: normalized_
_returns: ofVec2f_
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

###ofVec2f limited(max)

<!--
_syntax: limited(max)_
_name: limited_
_returns: ofVec2f_
_returns_description: _
_parameters: float max_
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

###ofVec2f perpendiculared()

<!--
_syntax: perpendiculared()_
_name: perpendiculared_
_returns: ofVec2f_
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofVec2f interpolated(&pnt, p)

<!--
_syntax: interpolated(&pnt, p)_
_name: interpolated_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &pnt, float p_
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

###ofVec2f middled(&pnt)

<!--
_syntax: middled(&pnt)_
_name: middled_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &pnt_
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

###ofVec2f mapped(&origin, &vx, &vy)

<!--
_syntax: mapped(&origin, &vx, &vy)_
_name: mapped_
_returns: ofVec2f_
_returns_description: _
_parameters: const ofVec2f &origin, const ofVec2f &vx, const ofVec2f &vy_
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

###float distanceSquared(&pnt)

<!--
_syntax: distanceSquared(&pnt)_
_name: distanceSquared_
_returns: float_
_returns_description: _
_parameters: const ofVec2f &pnt_
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

###ofVec2f rotated(angle, &pivot)

<!--
_syntax: rotated(angle, &pivot)_
_name: rotated_
_returns: ofVec2f_
_returns_description: _
_parameters: float angle, const ofVec2f &pivot_
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

##Variables



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

_description: _







<!----------------------------------------------------------------------------->

