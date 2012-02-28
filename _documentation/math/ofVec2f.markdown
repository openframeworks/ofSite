#class ofVec2f


##Description


`ofVec2f` is a class for storing a two dimensional vector. 

Moving through space requires knowledge of where things are and where they are going. Vector Maths is the class of mathematics that gives us control over these things in space, allowing for elegant and intuitive descriptions of complex structures and movement. Vectors are at the heart of animations, particle systems, and 2D and 3D graphics.

Vectors in mathematics in general are entities with magnitude (also called length) and direction. A vector whose magnitude is 1 (ie a vector that is *normalized*) is called a *unit vector*. Unit vectors are very handy for storing directions as they can be easily scaled up (or down) to represent motion in a particular direction with a particular length.

*You will also see the term `vector` used to describe an array of objects in C++ (such as text strings). Don't let this confuse you, they are quite different: one of them is a mathematical term for a fixed-length list of numbers that you can do mathematical operations on, the other is a C++-specific term that means 'dynamically sizeable array'.*

`ofVec2f` has two member variables, `x` and `y`, which allow to conveniently store 2D properties of an object such as its position, velocity, or acceleration. 

~~~~{.cpp}
ofVec2f v1; // v1.x is 0, v1.y is 0
v1.set( 10, 50 ); // now v1.x is 10, v1.y is 50
~~~~

Using `ofVec2f` greatly simplifies arithmetic operations in two dimensions. For example if you have two vectors `v1` and `v2`, both of which represent a 2D change in position, you can find the total change of position of both of them just by doing an addition `v1 + v2`:

~~~~{.cpp}
ofVec2f v1(5, 2); // v1 represents walking 5 steps forward then 2 steps sideways
ofVec2f v2;
v2.set(1, 1); // v2 represents walking 1 step forward then 1 step sideways
// what happens if you do v1 followed by v2? just add v1 and v2 together:
ofVec2f result = v1 + v2; // result is 6 steps forward then 3 steps sideways
~~~~

You can scale an `ofVec2f` by multiplying it with a float:

~~~~{.cpp}
ofVec2f v1(5, 2); // walk 5 steps forward and 2 steps right
// what happens if we do v1 three times?
ofVec2f result = v1 * 3; // result is 15 steps forward and 6 steps right
~~~~

This also works for subtraction and division.

As you can see this really makes dealing with vectors as easy as dealing with single `float`s or `int`s, and can reduce the number of lines of code you have to write by half, at the same time making your code much easier to read and understand! 





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


Construct a 2D vector. Defaults to (0,0).

~~~~{.cpp}
ofVec2f v1; // default: v1.x is 0, v1.y is 0
ofVec2f v2 = ofVec2f(40, 20); // v2.x is 40, v2.y is 20
ofVec3f v3(0.1, 0.3); // v3.x is 0.1, v3.y is 0.3
~~~~







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


Create a 2D vector (`ofVec2f`) from a 3D vector (`ofVec3f`) by throwing away the `z` component of the 3D vector.

~~~~{.cpp}
ofVec3f mom3d(40, 20, 50); // 3d vector 
ofVec2f v(mom3d); // v.x is 40, v.y is 20
~~~~







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


Create a 2D vector (`ofVec2f`) from a 4D vector (`ofVec4f`) by throwing away the `z` and `w` components of the 4D vector.

~~~~{.cpp}
ofVec3f mom4d(40, 20, 50, 80); // 4d vector 
ofVec2f v(mom4d); // v.x is 40, v.y is 20
~~~~





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


Set `x` and `y` components of this vector with just one function call.

~~~~{.cpp}
ofVec2f v1;
v1.set(40, 20);
~~~~







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


Set the `x` and `y` components of this vector by copying the corresponding values from `vec`.

~~~~{.cpp}
ofVec2f v1(40, 20);
ofVec2f v2;
v2.set(v1); // v2.x is 40, v2.y is 20
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
_advanced: True_
-->

_description: _


Returns a pointer to the memory position of the first element of the vector  (`x`); the second element (`y`) immediately follows it in memory.

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20);
float * v1Ptr = v1.getPtr();
float x = *(v1Ptr); // x is 40
float y = *(v1Ptr+1); // y is 20
~~~~

This is very useful when using arrays of `ofVec2f`s to store geometry information, as it allows the vector to be treated as a simple C array of `float`s that can be passed verbatim to OpenGL.


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
_advanced: True_
-->

_description: _

Allows to access the `x` and `y` components of an `ofVec2f` as though it is an array:

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20);
float x = v1[0]; // x is 40
float y = v1[1]; // y is 20
~~~~

This function can be handy if you want to do the same operation to both `x` and `y` components, as it means you can just make a `for` loop that repeats twice.





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

Calculate and return the angle in degrees between this vector and `vec`.

~~~~{.cpp}
ofVec2f v1(1,0);
ofVec2f v2(0,1);
float angle = v1.angle(v2); // angle is 90
~~~~



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


Calculate and return the angle in radians between this vector and `vec`.

~~~~{.cpp}
ofVec2f v1(1,0);
ofVec2f v2(0,1);
float angle = v1.angleRad(v2); // angle is HALF_PI
~~~~


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

Return a new `ofVec2f` that is the result of rotating this vector by `angle` degrees around the origin.

~~~~{.cpp}
ofVec2f v1(1, 0);
ofVec2f v2 = v1.getRotated( 45 ); // v2 is (√2, √2)
ofVec3f v3 = v2.getRotated( 45 ); // v3 is (0, 1)
~~~~


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


Rotate this vector by `angle` degrees around the origin.

~~~~{.cpp}
ofVec2f v1(1, 0);
v1.rotate( 45 ); // (√2, √2)
v1.rotate( 45 ); // (0, 1)
~~~~






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

Return a new `ofVec2f` that is the result of rotating this vector by `angle` radians around the origin.

~~~~{.cpp}
ofVec2f v1(1, 0);
ofVec2f v2 = v1.getRotatedRad( PI/4 ); // v2 is (√2, √2)
ofVec3f v3 = v2.getRotated( PI/4 ); // v3 is (0, 1)
~~~~


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


Rotate this vector by `angle` radians around the origin.

~~~~{.cpp}
ofVec2f v1(1, 0);
v1.rotate( PI/4 ); // (√2, √2)
v1.rotate( PI/4 ); // (0, 1)
~~~~







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

Like [getRotated](#getRotated) but rotates around `pivot` rather than around the origin.





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


Like [rotate](#rotate) but rotates around `pivot` rather than around the origin.





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


Like [getRotatedRad](#getRotatedRad) but rotates around `pivot` rather than around the origin.





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


Like [rotateRad](#rotateRad) but rotates around `pivot` rather than around the origin.








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


Return the **normalized** `ofVec2f` that is perpendicular to this vector (ie rotated 90 degrees and normalized).

![PERPENDICULAR](../math/perpendicular.png)
Image courtesy of Wikipedia

~~~~{.cpp}
ofVec2f v(2, 5);
ofVec2f u = v.getPerpendicular(); // u is (0.928, -0.371)
~~~~




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

Set this vector to its own **normalized** perpendicular (by rotating 90 degrees and normalizing).

![PERPENDICULAR](../math/perpendicular.png)
Image courtesy of Wikipedia

~~~~{.cpp}
ofVec2f v(2, 5);
v.perpendicular(); // v is (0.928, -0.371)
~~~~







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

Returns `true` if each component is *close enough* to its corresponding component in `vec`, where what is *close enough* is determined by the value of `tolerance`: 

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20);
ofVec2f v2 = ofVec2f(40.01, 19.999);
// v1.match(v2, 0.1) returns true
// v1.match(v2, 0.001) returns false
~~~~

This is handy if, for example, you want to find out when a point becomes *close enough* to another point to trigger an event.



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

Returns `true` if both vectors are aligned (pointing in the same direction). `tolerance` is an angle tolerance/threshold (specified in degrees) for deciding if the vectors are sufficiently aligned.

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20);
ofVec2f v2 = ofVec2f(4, 2);
// v1.align(v2) returns true
~~~~







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

Just like [align](#align) but the angle tolerance is specified in radians rather than degrees.


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

Return a new `ofVec2f` that is the result of scaling this vector up or down so that it has the requested length.

~~~~{.cpp}
ofVec2f v1( 3, 4 ); // length is 5
ofVec2f v2 = v1.getScaled( 15 ); // ( 9, 12 ), length is now 15
~~~~





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


Scales this vector up or down so that it has the requested length.

~~~~{.cpp}
ofVec2f v1( 3, 4 ); // length is 5
v1.scale( 15 ); // v1 is now (9, 12), with length 15
~~~~







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

Return the length (magnitude) of this vector.

~~~~{.cpp}
ofVec2f v(3, 4);
float len = v.length(); // len is 5 (3,4,5 triangle)
~~~~

`length` involves a square root calculation, which is one of the slowest things you can do in programming. If you don't need an exact number but rather just a rough idea of a length (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the lengths are, you just want the shortest), you can use [`squareLength`](#squareLength) instead.


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


Return the squared length (squared magnitude) of this vector.

~~~~{.cpp}
ofVec2f v(3, 4);
float len = v.length(); // len is 5 (3,4,5 triangle)
~~~~

Use as a much faster alternative to [`length`](#length) if you don't need to know an accurate length but rather just a rough idea of a length (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the lengths are, you just want the shortest). It avoids the square root calculation that is ordinarily required to calculate a length.


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

Return a normalized copy of this vector. 

*Normalization* means to scale the vector so that its length (magnitude) is exactly 1, at which stage all that is left is the direction. A normalized vector is usually called a *unit vector*, and can be used to represent a pure direction (heading).

~~~~{.cpp}
ofVec2f v1(5, 0);
ofVec2f v1Normalized = v1.getNormalized(); // (1, 0)
ofVec2f v2(5, 5);
ofVec2f v2Normalized = v2.getNormalized(); // (√2, √2)
~~~~

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

Normalize the vector.

*Normalizing* means to scale the vector so that its length (magnitude) is exactly 1, at which stage all that is left is the direction. A normalized vector is usually called a *unit vector*, and can be used to represent a pure direction (heading).

~~~~{.cpp}
ofVec2f v1(5, 0);
v1.normalize(); // v2 is now (1, 0)
ofVec2f v2(5, 5);
v2.normalize(); // v2 is now (√2, √2)
~~~~







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

Treats both this vector and `pnt` as points in 2D space, and calculates and returns the distance between them.

~~~~{.cpp}
ofVec2f p1( 3, 4 );
ofVec2f p2( 6, 8 );
float distance = p1.distance( p2 ); // distance is 5
~~~~

`distance` involves a square root calculation, which is one of the slowest things you can do in programming. If you don't need an exact number but rather just a rough idea of distance (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the distances are, you just want the shortest), you can use [`squareDistance`](#squareDistance) instead.

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

Treats both this vector and `pnt` as points in 2D space, and calculates and returns the squared distance between them.

~~~~{.cpp}
ofVec2f p1( 3, 4 );
ofVec2f p2( 6, 8 );
float distance = p1.distance( p2 ); // distance is 5
~~~~

Use as a much faster alternative to [`distance`](#distance) if you don't need to know an exact number but rather just a rough idea of distance (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the distances are, you just want the shortest). It avoids the square root calculation that is ordinarily required to calculate a length.




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

Return a copy of this vector with its length (magnitude) restricted to a maximum of `max` units by scaling down if necessary.

~~~~{.cpp}
ofVec2f v1(5, 1); // length is about 5.1
ofVec2f v2(2, 1); // length is about 2.2
ofVec2f v1Limited = v1.getLimited(3); 
// v1Limited is (2.9417, 0.58835) which has length of 3 in the same direction as v1
ofVec2f v2Limited = v2.getLimited(3);
// v2Limited is (2, 1) (same as v2)
~~~~



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

Restrict the length (magnitude) of this vector to a maximum of `max` units by scaling down if necessary.

~~~~{.cpp}
ofVec2f v1(5, 1); // length is about 5.1
ofVec2f v2(2, 1); // length is about 2.2
v1.limit(3); 
// v1 is now (2.9417, 0.58835) which has length of 3 in the same direction as at initialization
v2.limit(3);
// v2 is unchanged
~~~~








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

Calculate and return the dot product of this vector with `vec`.

*Dot product* (less commonly known as *Euclidean inner product*) expresses the angular relationship between two vectors. In other words it is a measure of how *parallel* two vectors are. If they are completely perpendicular the dot product is 0; if they are completely parallel their dot product is either 1 if they are pointing in the same direction, or -1 if they are pointing in opposite directions.

![DOT](../math/dotproduct.png)
Image courtesy of Wikipedia

~~~~{.cpp}
ofvec2f a1(1, 0);
ofVec2f b1(0, 1); // 90 degree angle to a1
dot = a1.dot(b1); // dot is 0, ie cos(90)

ofVec2f a2(1, 0); 
ofVec2f b2(1, 1); // 45 degree angle to a2
b2.normalize(); // vectors should to be unit vectors (normalized)
float dot = a2.dot(b2); // dot is 0.707, ie cos(45)

ofVec2f a3(1, 0);
ofVec2f b3(-1, 0); // 180 degree angle to a3
dot = a3.dot(b3); // dot is -1, ie cos(180)
~~~~



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
_advanced: True_
-->

_description: _

Return a new `ofVec2f` calculated by copying this vector and then mapping from its default coordinate system -- origin (0,0), X direction (1,0), Y direction (0,1) -- to a new coordinate system defined with origin at `origin`, X direction `vx`, and Y direction `vy`.

*In most cases you want `vx` and `vy` to be perpendicular and of unit length; if they are not perpendicular you will have shearing as part of the mapping, and if they are not of unit length you will have scaling as part of the mapping.*



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


Maps this vector from its default coordinate system -- origin (0,0), X direction (1,0), Y direction (0,1) -- to a new coordinate system defined with origin at `origin`, X direction `vx`, and Y direction `vy`. 

*In most case you want `vx` and `vy` to be perpendicular and of unit length; if they are not perpendicular you will have shearing as part of the mapping, and if they are not of unit length you will have scaling as part of the mapping.*






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

Perform a linear interpolation of this vector's position towards `pnt` and return the interpolated position without altering the original vector. `p` controls the amount to move towards `pnt`. `p` is normally between 0 and 1 and where 0 means stay the original position and 1 means move all the way to `pnt`, but you can also have `p` greater than 1 overshoot `pnt`, or less than 0 to move backwards away from `pnt`.

~~~~{.cpp}
ofVec2f v1( 0, 5 );
ofVec2f v2( 10, 10 );
ofVec3f v3 = v1.getInterpolated( p2, 0.5 ); // v3 is (5, 7.5)
ofVec3f v4 = v1.getInterpolated( p2, 0.8 ); // v4 is (8, 9)
~~~~


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

Perform a linear interpolation of this vector's position towards `pnt`. `p` controls the amount to move towards `pnt`. `p` is normally between 0 and 1 and where 0 means stay the original position and 1 means move all the way to `pnt`, but you can also have `p` greater than 1 overshoot `pnt`, or less than 0 to move backwards away from `pnt`.

~~~~{.cpp}
ofVec2f v1( 0, 5 );
ofVec2f v2( 10, 10 );
// go go gadget zeno
v1.interpolate( v2, 0.5 ); // v1 is now (5, 7.5)
v1.interpolate( v2, 0.5 ); // v1 is now (7.5, 8.75)
v1.interpolate( v2, 0.5 ); // v1 is now (8.75, 9.375)
v1.interpolate( v2, 0.5 ); // v1 is now (9.375, 9.6875)
~~~~


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

Calculate and return the midpoint between this vector and `pnt`.

~~~~{.cpp}
ofVec2f v1(5, 0);
ofVec2f v2(10, 10);
ofVec3f mid = v1.getMiddle(v2); // mid gets (7.5, 5)
~~~~






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

Set this vector to the midpoint between itself and `pnt`.

~~~~{.cpp}
ofVec2f v1( 0, 5 );
ofVec2f v2( 10, 10 );
// go go gadget zeno
v1.middle( v2 ); // v1 is now (5, 7.5)
v1.middle( v2 ); // v1 is now (7.5, 8.75)
v1.middle( v2 ); // v1 is now (8.75, 9.375)
v1.middle( v2 ); // v1 is now (9.375, 9.6875)
~~~~




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

Sets this vector to be the average (*centre of gravity* or *centroid*) of a given array of `ofVec2f`s. `points` is the array of `ofVec2f`s and `num` specifies the number of `ofVec2f`s in the array.

~~~~{.cpp}
int numPoints = 10;
ofVec2f points[numPoints];
for ( int i=0; i<numPoints; i++ ) {
	points[i].set( ofRandom(0,100), ofRandom(0,100) );
}
ofVec2f centroid;
centroid.average( points, numPoints ); 
// centroid now is the centre of gravity/average of all the random points
~~~~







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

Returns `true` if each component is the same as the corresponding component in `vec`, ie if `x == vec.x` and `y == vec.y`; otherwise returns `false`.

~~~~{.cpp}
ofVec2f v1(40, 20); 
ofVec2f v2(50, 30); 
ofVec2f v3(40, 20); 
// ( v1 == v2 ) is false
// ( v1 == v3 ) is true
~~~~








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


Returns `true` if any component is different to its corresponding component in `vec`, ie if `x != vec.x` or `y != vec.y`; otherwise returns `false`.

~~~~{.cpp}
ofVec2f v1(40, 20); 
ofVec2f v2(50, 30); 
ofVec2f v3(40, 20); 
// ( v1 != v2 ) is true
// ( v1 != v3 ) is false
~~~~









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


Super easy vector addition. Returns a new vector (`x`+`vec.x`,`y`+`vec.y`).

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20); 
ofVec2f v2 = ofVec2f(25, 50);
ofVec3f v3 = v1 + v2; // v3 is (65, 70)
~~~~







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

Super easy addition assignment. Adds `vec.x` to `x`, and adds `vec.y` to `y`.

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20); 
ofVec2f v2 = ofVec2f(25, 50);
v1 += v2; // v1 is (65, 70)
~~~~







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

Super easy vector subtraction. Returns a new vector (`x`-`vec.x`,`y`-`vec.y`).

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20); 
ofVec2f v2 = ofVec2f(25, 50);
ofVec3f v3 = v1 - v2; // v3 is (15, -30)
~~~~







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

Super easy subtraction assignment. Subtracts `vec.x` from `x`, and subtracts `vec.y` from `y`.

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20); 
ofVec2f v2 = ofVec2f(25, 50);
v1 -= v2; // v1 is (15, -30)
~~~~







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
_advanced: True_
-->

_description: _

Returns a new vector (`x`*`vec.x`,`y`*`vec.y`).

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20); 
ofVec2f v2 = ofVec2f(2, 4);
ofVec2f v3 = v1 * v2; // (80, 80)
~~~~

Useful for scaling a 2D point by a non-uniform scale.


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
_advanced: True_
-->

_description: _

Multiplies `x` by `vec.x`, and multiplies `y` by `vec.y`.

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20); 
ofVec2f v2 = ofVec2f(2, 4);
v1 *= v2; // v1 is now (80, 80)
~~~~

Useful for scaling a 2D point by a non-uniform scale.







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
_advanced: True_
-->

_description: _

Returns a new vector (`x`/`vec.x`,`y`/`vec.y`).

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20); 
ofVec2f v2 = ofVec2f(2, 4);
ofVec3f v3 = v1 / v2; // (20, 5)
~~~~

Useful for scaling a 2D point by a non-uniform scale.






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
_advanced: True_
-->

_description: _

Divides `x` by `vec.x`, and divides `y` by `vec.y`.

~~~~{.cpp}
ofVec2f v1 = ofVec2f(40, 20); 
ofVec2f v2 = ofVec2f(2, 4);
v1 *= v2; // v1 is now (20, 5)
~~~~

Useful for scaling a 2D point by a non-uniform scale.



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


Returns a new vector with a float value `f` added to both `x` and `y` members.

~~~~{.cpp}
ofVec2f v1(2, 5);
ofVec2f v2 = v1 + 10; // (12, 15)
~~~~






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

Adds a float value `f` to both `x` and `y` members.

~~~~{.cpp}
ofVec2f v1(2, 5);
v1 += 10; // (12, 15)
~~~~







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


Returns a new vector with a float value `f` subtracted from both `x` and `y` members.

~~~~{.cpp}
ofVec2f v1(2, 5);
ofVec2f v2 = v1 - 10; // (-8, -5)
~~~~




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


Subtract a float value `f` from both `x` and `y` members.

~~~~{.cpp}
ofVec2f v1(2, 5);
v1 -= 10; // (-8, -5)
~~~~








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

Returns a new `ofVec2f` that is the inverted version (mirrored in X and Y) of this vector.

~~~~{.cpp}
ofVec2f v1(2, 5);
ofVec2f v2 = -v1; // (-2, -5)
~~~~





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


Return a new `ofVec2f` that is this vector scaled by multiplying both `x` and `y` members by `f`.

~~~~{.cpp}
ofVec2f v1(2, 5);
ofVec2f v2 = v1 * 4; // (8, 20)
~~~~




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

Scale this vector by multiplying both `x` and `y` members by `f`.

~~~~{.cpp}
ofVec2f v1(2, 5);
v1 *= 4; // (8, 20)
~~~~






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

Return a new `ofVec2f` that is this vector scaled by dividing both `x` and `y` members by `f`.

~~~~{.cpp}
ofVec2f v1(2, 5);
ofVec2f v2 = v1 / 4; // (0.5, 1.25)
~~~~


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

Scale this vector by dividing both `x` and `y` members by `f`.

~~~~{.cpp}
ofVec2f v1(2, 5);
v1 /= 4; // (0.5, 1.25)
~~~~








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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _

Deprecated; use [`squaredDistance`](#squaredDistance).


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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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

Stores the X component of this vector.

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

Stores the Y component of this vector.






<!----------------------------------------------------------------------------->

