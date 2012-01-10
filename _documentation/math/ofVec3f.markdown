#class ofVec3f


##Description

A class to describe a three dimensional vector. This datatype stores three variables (x, y and z). It's commonly used as a position, velocity, and/or acceleration. Technically, positions is described as a point (and commonly defined with a ofPoint, that in fact it's a ofVec3f).
Vectors in general are entities with magnitude ( also called length) and direction. A vector whose magnitude is 1 is a unit or normalized vector.  Witch means that it's important data that stores it's the direction of a point. This last practice it's very well-known on 3D design for defining the direction of a plane by passing-through the normal value of each vertex that conform a triangle or quad mesh. 

Any way, what's very handy of this class it's that you could perform arithmetic operations on vectors really easy, just as you deal with int or floats. This is a substantial difference from the Processing implementation call PVectors.

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); // one way of assignment 
ofVec3f v2;
v2.set(25,50,43); // other way of assignment
v1 = v1 + v2; // vector operation also equivalent of: v1 += v2 
~~~~



##Methods



### ofVec3f(_x = 0.f, _y = 0.f, _z = 0.f)

<!--
_syntax: ofVec3f(_x = 0.f, _y = 0.f, _z = 0.f)_
_name: ofVec3f_
_returns: _
_returns_description: _
_parameters: float _x=0.f, float _y=0.f, float _z=0.f_
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

Vector constructor passing a three floats variables

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70);
~~~~




<!----------------------------------------------------------------------------->

### ofVec3f(&vec)

<!--
_syntax: ofVec3f(&vec)_
_name: ofVec3f_
_returns: _
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

Vector constructor passing a 2 dimensional vector (ofVec2f)

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20);
ofVec3f v2 = ofVec3f(v1);
~~~~


<!----------------------------------------------------------------------------->

### ofVec3f(&vec)

<!--
_syntax: ofVec3f(&vec)_
_name: ofVec3f_
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

Vector constructor passing a 4 dimensional vector (ofVec4f)

~~~~{.cpp}
ofVec4f v1 = ofVec4f(40, 20, 50, 0);
ofVec3f v2 = ofVec3f(v1);
~~~~



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

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70);
float *a;
a = v1.getPtr();
cout << *a << " = 40 ( x value )" << endl;
~~~~


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

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70);
cout << v1[2] << " = 70 ( z value )" << endl;
~~~~

<!----------------------------------------------------------------------------->

###void set(_x, _y, _z = 0)

<!--
_syntax: set(_x, _y, _z = 0)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float _x, float _y, float _z=0_
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

Setting the values by using three floats variables

~~~~{.cpp}
ofVec3f v1;
v1.set(40, 20, 70);
~~~~



<!----------------------------------------------------------------------------->

###void set(&vec)

<!--
_syntax: set(&vec)_
_name: set_
_returns: void_
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

Setting the values by using other 3 dimension vector (ofVec3f)

~~~~{.cpp}
ofVec3f v1;
ofVec3f v2;
v1.set(40, 20, 70);
v2.set(v1);
~~~~



<!----------------------------------------------------------------------------->

###bool operator==(&vec)

<!--
_syntax: operator==(&vec)_
_name: operator==_
_returns: bool_
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

Equal comparison of two 3D vectors



<!----------------------------------------------------------------------------->

###bool operator!=(&vec)

<!--
_syntax: operator!=(&vec)_
_name: operator!=_
_returns: bool_
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

Not Equal comparison of two 3D vectors 



<!----------------------------------------------------------------------------->

###bool match(&vec, tolerance = 0.0001)

<!--
_syntax: match(&vec, tolerance = 0.0001)_
_name: match_
_returns: bool_
_returns_description: _
_parameters: const ofVec3f &vec, float tolerance=0.0001_
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

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70);
ofVec3f v2 = ofVec3f(40.01, 19.999, 70.05);
cout << v1.match(v2, 0.1) << endl;
~~~~



<!----------------------------------------------------------------------------->

###bool align(&vec, tolerance = 0.0001)

<!--
_syntax: align(&vec, tolerance = 0.0001)_
_name: align_
_returns: bool_
_returns_description: _
_parameters: const ofVec3f &vec, float tolerance=0.0001_
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

Let's you check if both vectors are align with a angular tolerance threshold (default = 0.0001 )

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70);
ofVec3f v2 = ofVec3f(4, 2, 7);
cout << v1.align(v2, 0.0) << endl;
~~~~



<!----------------------------------------------------------------------------->

###bool alignRad(&vec, tolerance = 0.0001)

<!--
_syntax: alignRad(&vec, tolerance = 0.0001)_
_name: alignRad_
_returns: bool_
_returns_description: _
_parameters: const ofVec3f &vec, float tolerance=0.0001_
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

Let's you check if both vectors are align with a radial tolerance threshold (default = 0.0001 )

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20);
ofVec3f v2 = ofVec3f(4, 2);
cout << v1.alignRad(v2, 0.0) << endl;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator+(&pnt)

<!--
_syntax: operator+(&pnt)_
_name: operator+_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt_
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

Let's you make vectorial addition super easy

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 = v1 + v2;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator+=(&pnt)

<!--
_syntax: operator+=(&pnt)_
_name: operator+=_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt_
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

Addition assignment of a vector (v2) to it's own data (v1)

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 += v2;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator-(&vec)

<!--
_syntax: operator-(&vec)_
_name: operator-_
_returns: ofVec3f_
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

Let's you make vectorial subtraction super easy

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 = v1 - v2;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator-=(&vec)

<!--
_syntax: operator-=(&vec)_
_name: operator-=_
_returns: ofVec3f_
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

Subtraction assignment of a vector (v2) to it's own data (v1)

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 -= v2;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator*(&vec)

<!--
_syntax: operator*(&vec)_
_name: operator*_
_returns: ofVec3f_
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

Let's you make vectorial multiplication super easy

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 = v1 * v2;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator*=(&vec)

<!--
_syntax: operator*=(&vec)_
_name: operator*=_
_returns: ofVec3f_
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

Multiplication assignment of a vector (v2) to it's own data (v1)

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 *= v2;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator/(&vec)

<!--
_syntax: operator/(&vec)_
_name: operator/_
_returns: ofVec3f_
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

Let's you make vectorial division super easy

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 = v1 / v2;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator/=(&vec)

<!--
_syntax: operator/=(&vec)_
_name: operator/=_
_returns: ofVec3f_
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

Division assignment of a vector (v2) to it's own data (v1)

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 /= v2;
~~~~



<!----------------------------------------------------------------------------->

###ofVec3f operator-()

<!--
_syntax: operator-()_
_name: operator-_
_returns: ofVec3f_
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

Subtract a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f operator+(f)

<!--
_syntax: operator+(f)_
_name: operator+_
_returns: ofVec3f_
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

Adds a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f operator+=(f)

<!--
_syntax: operator+=(f)_
_name: operator+=_
_returns: ofVec3f_
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

Adds a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f operator-(f)

<!--
_syntax: operator-(f)_
_name: operator-_
_returns: ofVec3f_
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

Subtracts a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f operator-=(f)

<!--
_syntax: operator-=(f)_
_name: operator-=_
_returns: ofVec3f_
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

Substract a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f operator*(f)

<!--
_syntax: operator*(f)_
_name: operator*_
_returns: ofVec3f_
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

Multiplies a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f operator*=(f)

<!--
_syntax: operator*=(f)_
_name: operator*=_
_returns: ofVec3f_
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

Multiplies a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f operator/(f)

<!--
_syntax: operator/(f)_
_name: operator/_
_returns: ofVec3f_
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

Devides a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f operator/=(f)

<!--
_syntax: operator/=(f)_
_name: operator/=_
_returns: ofVec3f_
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

Devides a value to x, y and z variables



<!----------------------------------------------------------------------------->

###ofVec3f getScaled(length)

<!--
_syntax: getScaled(length)_
_name: getScaled_
_returns: ofVec3f_
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

Return a 3D vector after scaling it.



<!----------------------------------------------------------------------------->

###ofVec3f scale(length)

<!--
_syntax: scale(length)_
_name: scale_
_returns: ofVec3f_
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

Scales the vector some amount of length.



<!----------------------------------------------------------------------------->

###ofVec3f getRotated(angle, &axis)

<!--
_syntax: getRotated(angle, &axis)_
_name: getRotated_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &axis_
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

Return a 3D vector after rotating it a given angle



<!----------------------------------------------------------------------------->

###ofVec3f getRotatedRad(angle, &axis)

<!--
_syntax: getRotatedRad(angle, &axis)_
_name: getRotatedRad_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &axis_
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

Return a 3D vector after rotating it a given radio



<!----------------------------------------------------------------------------->

###ofVec3f rotate(angle, &axis)

<!--
_syntax: rotate(angle, &axis)_
_name: rotate_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &axis_
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

Rotates the vector a given amount of angles



<!----------------------------------------------------------------------------->

###ofVec3f rotateRad(angle, &axis)

<!--
_syntax: rotateRad(angle, &axis)_
_name: rotateRad_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &axis_
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

Rotates the vector a given amount of radial angles



<!----------------------------------------------------------------------------->

###ofVec3f getRotated(ax, ay, az)

<!--
_syntax: getRotated(ax, ay, az)_
_name: getRotated_
_returns: ofVec3f_
_returns_description: _
_parameters: float ax, float ay, float az_
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

Return a 3D vector after rotating it with given angle over some pivot (that actually it's another vector)



<!----------------------------------------------------------------------------->

###ofVec3f getRotatedRad(ax, ay, az)

<!--
_syntax: getRotatedRad(ax, ay, az)_
_name: getRotatedRad_
_returns: ofVec3f_
_returns_description: _
_parameters: float ax, float ay, float az_
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

Return a 3D vector after rotating it with given radial angle over some pivot (that actually it's another vector)



<!----------------------------------------------------------------------------->

###ofVec3f rotate(ax, ay, az)

<!--
_syntax: rotate(ax, ay, az)_
_name: rotate_
_returns: ofVec3f_
_returns_description: _
_parameters: float ax, float ay, float az_
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

Rotates the vector with a given angle over some pivot (that actually it's another vector)



<!----------------------------------------------------------------------------->

###ofVec3f rotateRad(ax, ay, az)

<!--
_syntax: rotateRad(ax, ay, az)_
_name: rotateRad_
_returns: ofVec3f_
_returns_description: _
_parameters: float ax, float ay, float az_
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

Rotates the vector over a pivot vector (another ofVec3f) a given amount of radial angles



<!----------------------------------------------------------------------------->

###ofVec3f getRotated(angle, &pivot, &axis)

<!--
_syntax: getRotated(angle, &pivot, &axis)_
_name: getRotated_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &pivot, const ofVec3f &axis_
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

###ofVec3f rotate(angle, &pivot, &axis)

<!--
_syntax: rotate(angle, &pivot, &axis)_
_name: rotate_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &pivot, const ofVec3f &axis_
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

###ofVec3f getRotatedRad(angle, &pivot, &axis)

<!--
_syntax: getRotatedRad(angle, &pivot, &axis)_
_name: getRotatedRad_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &pivot, const ofVec3f &axis_
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

###ofVec3f rotateRad(angle, &pivot, &axis)

<!--
_syntax: rotateRad(angle, &pivot, &axis)_
_name: rotateRad_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &pivot, const ofVec3f &axis_
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

###ofVec3f getMapped(&origin, &vx, &vy, &vz)

<!--
_syntax: getMapped(&origin, &vx, &vy, &vz)_
_name: getMapped_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz_
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

Returns a 3D vector that fits on the range of another to 3D vectors that correspond to the x range (max and min), the y range (max and min) and the z range (max and min) 



<!----------------------------------------------------------------------------->

###ofVec3f map(&origin, &vx, &vy, &vz)

<!--
_syntax: map(&origin, &vx, &vy, &vz)_
_name: map_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz_
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

Fits the vector inside the range of another to 3D vectors that correspond to the x range (max and min), the y range (max and min) and the z range (max and min) 



<!----------------------------------------------------------------------------->

###float distance(&pnt)

<!--
_syntax: distance(&pnt)_
_name: distance_
_returns: float_
_returns_description: _
_parameters: const ofVec3f &pnt_
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

Returns the distance from the vector to another



<!----------------------------------------------------------------------------->

###float squareDistance(&pnt)

<!--
_syntax: squareDistance(&pnt)_
_name: squareDistance_
_returns: float_
_returns_description: _
_parameters: const ofVec3f &pnt_
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

Returns the distance from the vector to another



<!----------------------------------------------------------------------------->

###ofVec3f getInterpolated(&pnt, p)

<!--
_syntax: getInterpolated(&pnt, p)_
_name: getInterpolated_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt, float p_
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

###ofVec3f interpolate(&pnt, p)

<!--
_syntax: interpolate(&pnt, p)_
_name: interpolate_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt, float p_
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

###ofVec3f getMiddle(&pnt)

<!--
_syntax: getMiddle(&pnt)_
_name: getMiddle_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt_
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

Returns a 3D vector ( ofVec3f ) that's match the precise middle point between the vector and other one given as parameter



<!----------------------------------------------------------------------------->

###ofVec3f middle(&pnt)

<!--
_syntax: middle(&pnt)_
_name: middle_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt_
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

Set's the value of the vector to the exactly middle point of it with another one given as parameter



<!----------------------------------------------------------------------------->

###ofVec3f average(*points, num)

<!--
_syntax: average(*points, num)_
_name: average_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f *points, int num_
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

Calculates the average of a given array of vectors (ofVec3f) and the total number of them.



<!----------------------------------------------------------------------------->

###ofVec3f getNormalized()

<!--
_syntax: getNormalized()_
_name: getNormalized_
_returns: ofVec3f_
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

Return the normalized vector. That means that it will return a vector with the same direction but with length equal to 1. This it's pretty handy when it's not important the magnitude just the direction of a point or plane (surface).



<!----------------------------------------------------------------------------->

###ofVec3f normalize()

<!--
_syntax: normalize()_
_name: normalize_
_returns: ofVec3f_
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

Normalized the vector. That means that it will return a vector with the same direction but with length equal to 1. This it's pretty handy when it's not important the magnitude just the direction of a point or plane (surface).



<!----------------------------------------------------------------------------->

###ofVec3f getLimited(max)

<!--
_syntax: getLimited(max)_
_name: getLimited_
_returns: ofVec3f_
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

###ofVec3f limit(max)

<!--
_syntax: limit(max)_
_name: limit_
_returns: ofVec3f_
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

###ofVec3f getCrossed(&vec)

<!--
_syntax: getCrossed(&vec)_
_name: getCrossed_
_returns: ofVec3f_
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

Returns the cross product vector product of the vector and the one it's passed as a parameter. This is also call Gibbs vector product and is a binary operation on two vectors in three-dimensional space. It results in a vector which is perpendicular to both of the vectors being multiplied and normal to the plane containing them. The name 'cross product' is derived from the cross symbol X that is often used to designate this operation; the alternative name 'vector product' emphasizes the vector (rather than scalar) nature of the result.

![CROSS](../math/crossproduct.png)

<!----------------------------------------------------------------------------->

###ofVec3f cross(&vec)

<!--
_syntax: cross(&vec)_
_name: cross_
_returns: ofVec3f_
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

Set's the values of the vector to the cross product of the vectors and the one it's passed as a parameter. This is also call Gibbs vector product and is a binary operation on two vectors in three-dimensional space. It results in a vector which is perpendicular to both of the vectors being multiplied and normal to the plane containing them. The name 'cross product' is derived from the cross symbol X that is often used to designate this operation; the alternative name 'vector product' emphasizes the vector (rather than scalar) nature of the result.


<!----------------------------------------------------------------------------->

###ofVec3f getPerpendicular(&vec)

<!--
_syntax: getPerpendicular(&vec)_
_name: getPerpendicular_
_returns: ofVec3f_
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

Return a 3D vector (ofVec3f) rotated at 90 degrees 

![PERPENDICULAR](../math/perpendicular.png)


<!----------------------------------------------------------------------------->

###ofVec3f perpendicular(&vec)

<!--
_syntax: perpendicular(&vec)_
_name: perpendicular_
_returns: ofVec3f_
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

Rotates the vector at 90 degrees 



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

Return the magnitude or length of the vector



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







<!----------------------------------------------------------------------------->

###float angleRad(&vec)

<!--
_syntax: angleRad(&vec)_
_name: angleRad_
_returns: float_
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







<!----------------------------------------------------------------------------->

###float dot(&vec)

<!--
_syntax: dot(&vec)_
_name: dot_
_returns: float_
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

Dot Product, or less commonly know as Euclidean inner product. It can be used to get the angle between to vectors.

![DOT](../math/dotproduct.png)


<!----------------------------------------------------------------------------->

###ofVec3f rescaled(length)

<!--
_syntax: rescaled(length)_
_name: rescaled_
_returns: ofVec3f_
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

###ofVec3f rescale(length)

<!--
_syntax: rescale(length)_
_name: rescale_
_returns: ofVec3f_
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

###ofVec3f rotated(angle, &axis)

<!--
_syntax: rotated(angle, &axis)_
_name: rotated_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &axis_
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

###ofVec3f rotated(ax, ay, az)

<!--
_syntax: rotated(ax, ay, az)_
_name: rotated_
_returns: ofVec3f_
_returns_description: _
_parameters: float ax, float ay, float az_
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

###ofVec3f normalized()

<!--
_syntax: normalized()_
_name: normalized_
_returns: ofVec3f_
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

###ofVec3f limited(max)

<!--
_syntax: limited(max)_
_name: limited_
_returns: ofVec3f_
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

###ofVec3f crossed(&vec)

<!--
_syntax: crossed(&vec)_
_name: crossed_
_returns: ofVec3f_
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







<!----------------------------------------------------------------------------->

###ofVec3f perpendiculared(&vec)

<!--
_syntax: perpendiculared(&vec)_
_name: perpendiculared_
_returns: ofVec3f_
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

###ofVec3f mapped(&origin, &vx, &vy, &vz)

<!--
_syntax: mapped(&origin, &vx, &vy, &vz)_
_name: mapped_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz_
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
_parameters: const ofVec3f &pnt_
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

###ofVec3f interpolated(&pnt, p)

<!--
_syntax: interpolated(&pnt, p)_
_name: interpolated_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt, float p_
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

###ofVec3f middled(&pnt)

<!--
_syntax: middled(&pnt)_
_name: middled_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt_
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

###ofVec3f rotated(angle, &pivot, &axis)

<!--
_syntax: rotated(angle, &pivot, &axis)_
_name: rotated_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &pivot, const ofVec3f &axis_
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

_description: _







<!----------------------------------------------------------------------------->

