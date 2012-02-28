#class ofVec3f


##Description


`ofVec3f` is a class for storing a three dimensional vector. 

Moving through space requires knowledge of where things are and where they are going. Vector Maths is the class of mathematics that gives us control over these things in space, allowing for elegant and intuitive descriptions of complex structures and movement. Vectors are at the heart of animations, particle systems, and 2D and 3D graphics.

Vectors in mathematics in general are entities with magnitude (also called length) and direction. A vector whose magnitude is 1 (ie a vector that is *normalized*) is called a *unit vector*. Unit vectors are very handy for storing directions as they can be easily scaled up (or down) to represent motion in a particular direction with a particular length.

*You will also see the term `vector` used to describe an array of objects in C++ (such as text strings). Don't let this confuse you, they are quite different: one of them is a mathematical term for a fixed-length list of numbers that you can do mathematical operations on, the other is a C++-specific term that means 'dynamically sizeable array'.*

`ofVec3f` has three member variables, `x`, `y`, and `z`, which allow to conveniently store 3D properties of an object such as its position, velocity, or acceleration. 

~~~~{.cpp}
ofVec3f v1; // v1.x is 0, v1.y is 0, v1.z is 0
v1.set(10, 50, 80); // now v1.x is 10, v1.y is 50, v1.z is 80
~~~~

Using `ofVec3f` greatly simplifies arithmetic operations in three dimensions. For example if you have two vectors `v1` and `v2`, both of which represent a 3D change in position, you can find the total change of position of both of them just by doing an addition `v1 + v2`:

~~~~{.cpp}
ofVec3f v1(5, 2, 1); 
// so now v1 represents walking 5 steps forward then 2 steps 
// sideways then 1 step upwards
ofVec3f v2;
v2.set(1, 1, 1); 
// so now v2 represents walking 1 step forward then 1 step 
// sideways then 1 step upwards

// what happens if you do v1 followed by v2?
// to find out just add v1 and v2 together:
ofVec3f result = v1 + v2; 
// result is (6, 3, 1), or 6 steps forward then 3 steps sideways
// then 2 steps upwards
~~~~

You can scale an `ofVec3f` by multiplying it with a float:

~~~~{.cpp}
// walk 5 steps forward then 2 steps sideways then 1 step upwards
ofVec3f v1(5, 2, 1); 
// what happens if we do v1 three times?
ofVec3f result = v1 * 3; // result is (15, 6, 3), or 
// 15 steps forward, 6 steps sideways and 3 steps upwards

~~~~

This also works for subtraction and division.

As you can see this really makes dealing with vectors as easy as dealing with single `float`s or `int`s, and can reduce the number of lines of code you have to write by half, at the same time making your code much easier to read and understand! 





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


Construct a 3D vector. Defaults to (0,0).

~~~~{.cpp}
ofVec3f v1; // default: v1.x is 0, v1.y is 0, v1.z is 0
ofVec3f v2 = ofVec3f(40, 20, 10); // v2.x is 40, v2.y is 20, v2.z is 10
ofVec3f v3(0.1, 0.3, -1.5); // v3.x is 0.1, v3.y is 0.3, v3.z is -1.5
~~~~





<!----------------------------------------------------------------------------->

### ofVec3f(&vec)

<!--
_syntax: ofVec3f(&vec)_
_name: ofVec3f_
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

Construct a new `ofxVec3f` by copying values from `vec`.

~~~~{.cpp}
ofVec3f mom = ofVec3f(40, 20, 10);
ofVec3f v(mom); // v is (40, 20, 10)
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


Construct a new 3D vector (`ofxVec3f`) from a 4D vector `vec` by throwing away the `z` component.

~~~~{.cpp}
ofVec3f mom = ofVec4f(40, 20, 10, 100);
ofVec3f v(mom); // v is (40, 20, 10)
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



Set `x`, `y` and `z` components of this vector with just one function call. `z` is optional, it defaults to 0.

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

Setting the values by using other 3 dimension vector (`ofVec3f`).

~~~~{.cpp}
ofVec3f v1;
ofVec3f v2;
v1.set(40, 20, 70);
v2.set(v1);
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

Returns a pointer to the memory position of the first element of the vector  (`x`); the other elements (`y` and `z`) immediately follow it in memory.

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10);
float * v1Ptr = v1.getPtr();
float x = *(v1Ptr); // x is 40
float y = *(v1Ptr+1); // y is 20
float z = *(v1Ptr+2); // z is 10
~~~~

This is very useful when using arrays of `ofVec3f`s to store geometry information, as it allows the vector to be treated as a simple C array of `float`s that can be passed verbatim to OpenGL.



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

Allows to access the individual components of an `ofVec3f` as though it is an array:

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10);
float x = v1[0]; // x is 40
float y = v1[1]; // y is 20
float z = v1[2]; // z is 10
~~~~

This function can be handy if you want to do the same operation to all `x`, `y` and `z` components, as it means you can just make a `for` loop that repeats 3 times.

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

Calculate and return the coplanar angle in degrees between this vector and `vec`.

~~~~{.cpp}
ofVec3f v1(1,0,0);
ofVec3f v2(0,1,0);
float angle = v1.angle(v2); // angle is 90
~~~~






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

Calculate and return the coplanar angle in radians between this vector and `vec`.

~~~~{.cpp}
ofVec3f v1(1,0,0);
ofVec3f v2(0,1,0);
float angle = v1.angle(v2); // angle is 90
~~~~







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

Return a new `ofVec3f` that is the result of rotating this vector by `angle` degrees around the given axis.

~~~~{.cpp}
ofVec3f v1(1, 0, 0);
// rotate v1 around the z axis
ofVec3f v2 = v1.getRotated(45, ofVec3f(0, 0, 1)); // v2 is (√2, √2, 0)
// rotate v1 around the y axis
ofVec3f v3 = v1.getRotated(45, ofVec3f(0, 1, 0)); // v3 is (√2, 0, √2)
~~~~



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

Return a new `ofVec3f` that is the result of rotating this vector by `angle` degrees around the given axis.

~~~~{.cpp}
ofVec3f v1(1, 0, 0);
// rotate v1 around the z axis
v1.rotate(45, ofVec3f(0, 0, 1)); // v2 is (√2, √2, 0)

v1.set(1, 0, 0);
// then rotate around the y axis
v1.rotate(45, ofVec3f(0, 1, 0)); // v3 is (√2, 0, √2)
~~~~



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

Return a new `ofVec3f` that is the result of rotating this vector by `angle` radians around the given axis.

~~~~{.cpp}
ofVec3f v1(1, 0, 0);
// rotate v1 around the z axis
ofVec3f v2 = v1.getRotated(PI/4, ofVec3f(0, 0, 1)); // v2 is (√2, √2, 0)
// rotate v1 around the y axis
ofVec3f v3 = v1.getRotated(PI/4, ofVec3f(0, 1, 0)); // v3 is (√2, 0, √2)
~~~~



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

Return a new `ofVec3f` that is the result of rotating this vector by `angle` degrees around the given axis.

~~~~{.cpp}
ofVec3f v1(1, 0, 0);
// rotate v1 around the z axis
v1.rotate(45, ofVec3f(0, 0, 1)); // v2 is (√2, √2, 0)

v1.set(1, 0, 0);
// then rotate around the y axis
v1.rotate(45, ofVec3f(0, 1, 0)); // v3 is (√2, 0, √2)
~~~~



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

Perform an Euler rotation of this vector around three axes: `ax` degrees about the x axis, `ay` about the y axis and `az` about the z axis. 

~~~~~{.cpp}
ofVec3f v( 1, 0, 0 );
v.rotate( 0, 0, 90 ); // v is now (0, 1, 0)
v.rotate( 45, 0, 0 ); // v is now (0, √2, √2)
~~~~~

Watch out for gimbal lock when specifying multiple rotations in the same call.

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

Make a copy of this vector and perform an Euler rotation of the copy around three axes: `ax` degrees about the x axis, `ay` about the y axis and `az` about the z axis. Return the copy.

~~~~~{.cpp}
ofVec3f v1( 1, 0, 0 );
ofVec3f v2 = v1.getRotated( 0, 0, 90 ); // v is now (0, 1, 0)
ofVec3f v3 = v1.getRotated( 45, 0, 0 ); // v is now (0, √2, √2)
~~~~~

Watch out for gimbal lock when specifying multiple rotations in the same call.

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

Make a copy of this vector and perform an Euler rotation of the copy around three axes: `ax` radians about the x axis, `ay` about the y axis and `az` about the z axis. Return the copy.

~~~~~{.cpp}
ofVec3f v1( 1, 0, 0 );
ofVec3f v2 = v1.getRotatedRad( 0, 0, HALF_PI ); // v is now (0, 1, 0)
ofVec3f v3 = v1.getRotatedRad( PI/4, 0, 0 ); // v is now (0, √2, √2)
~~~~~

Watch out for gimbal lock when specifying multiple rotations in the same call.
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

Perform an Euler rotation of this vector around three axes: `ax` radians about the x axis, `ay` about the y axis and `az` about the z axis. 

~~~~~{.cpp}
ofVec3f v( 1, 0, 0 );
v.rotateRad( 0, 0, HALF_PI ); // v is now (0, 1, 0)
v.rotateRad( PI/4, 0, 0 ); // v is now (0, √2, √2)
~~~~~

Watch out for gimbal lock when specifying multiple rotations in the same call.


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
_advanced: True_
-->

_description: _

Return a new `ofVec3f` that is the result of rotating this vector by `angle` degrees around the axis specified by `axis`, using `pivot` as the origin of rotation.


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

Rotate this vector by `angle` degrees around the axis specified by `axis`, using `pivot` as the origin of rotation.






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

Return a new `ofVec3f` that is the result of rotating this vector by `angle` radians around the axis specified by `axis`, using `pivot` as the origin of rotation.






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

Rotate this vector by `angle` radians around the axis specified by `axis`, using `pivot` as the origin of rotation.






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

Construct a plane using this vector and `vec` (by finding the plane that both lectors lie on), and return the vector that is perpendicular to that plane (the normal to that plane).

~~~~{.cpp}
ofSetLogLevel(OF_LOG_NOTICE);
ofVec3f v1(1,0,0);
ofVec3f v2(0,1,0);
ofVec3f p = v1.getPerpendicular(v2);
ofLog(OF_LOG_NOTICE, "%1.1f, %1.1f, %1.1f\n", p.x, p.y, p.z);
// prints "0.0, 0.0, 1.0"
~~~~

This method is usually used to calculate a normal vector to a surface, which can then be used to calculate lighting, collisions, and other 3D effects.



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

Construct a plane using this vector and `vec` (by finding the plane that both lie on), and set our `x`, `y` and `z` to be the vector that is perpendicular to the constructed plane (the normal to the plane).

~~~~{.cpp}
ofSetLogLevel(OF_LOG_NOTICE);
ofVec3f v1(1,0,0);
ofVec3f v2(0,1,0); 
v1.perpendicular(v2); 
ofLog(OF_LOG_NOTICE, "%1.1f, %1.1f, %1.1f\n", v1.x, v1.y, v1.z);
// prints "0.0, 0.0, 1.0'
~~~~

This method is usually used to calculate a normal vector to a surface, which can then be used to calculate lighting, collisions, and other 3D effects.


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

Let you check if two vectors are similar given a tolerance threshold `tolerance` (default = 0.0001). 

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70);
ofVec3f v2 = ofVec3f(40.01, 19.999, 70.05);
// v1.match(v2, 0.1) is true
// v1.match(v2, 0.01) is false (because (70.5-70) > 0.01)
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

Returns `true` if this vector is pointing in the same direction as `vec`, with an angle error threshold `tolerance` in degrees (default 0.0001 degrees).

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70);
ofVec3f v2 = ofVec3f(4, 2, 7);
// v1.align(v2, 0.0) is true
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

Returns `true` if this vector is pointing in the same direction as `vec`, with an angle error threshold `tolerance` in radians (default 0.0001).

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 70);
ofVec3f v2 = ofVec3f(4, 2, 7);
// v1.align(v2, 0.0) is true
~~~~



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

Return a new `ofVec3f` that is the result of scaling this vector up or down so that it has the requested length.

~~~~{.cpp}
ofVec3f v1(3, 4); // length is 5
ofVec3f v2 = v1.getScaled(15); // v2 is (9, 12), which has length of 15
~~~~



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

Scales this vector up or down so that it has the requested length.

~~~~{.cpp}
ofVec3f v1(3, 4); // length is 5
v1.scale(15); // v1 is now (9, 12), which has length of 15
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
ofVec3f v(3, 4, 1);
float len = v.length(); // len is 5.0990
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
ofVec3f v(3, 4, 1);
float len = v.length(); // len is 5.0990
~~~~

Use as a much faster alternative to [`length`](#length) if you don't need to know an accurate length but rather just a rough idea of a length (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the lengths are, you just want the shortest). It avoids the square root calculation that is ordinarily required to calculate a length.






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

Return a normalized copy of this vector. 

*Normalization* means to scale the vector so that its length (magnitude) is exactly 1, at which stage all that is left is the direction. A normalized vector is usually called a *unit vector*, and can be used to represent a pure direction (heading).

~~~~{.cpp}
ofVec3f v1(5, 0, 0);
ofVec3f v1Normalized = v1.getNormalized(); // (1, 0, 0)
ofVec3f v2(5, 0, 5);
ofVec3f v2Normalized = v2.getNormalized(); // (√2, 0, √2)
~~~~


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

Normalize the vector.

*Normalizing* means to scale the vector so that its length (magnitude) is exactly 1, at which stage all that is left is the direction. A normalized vector is usually called a *unit vector*, and can be used to represent a pure direction (heading).

~~~~{.cpp}
ofVec3f v1(5, 0, 0);
v1.normalize(); // v2 is now (1, 0, 0)
ofVec3f v2(5, 0, 5);
v2.normalize(); // v2 is now (√2, 0, √2)
~~~~

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

Treats both this vector and `pnt` as points in 3D space, and calculates and returns the distance between them.

~~~~{.cpp}
ofVec3f p1(3, 4, 2);
ofVec3f p2(6, 8, 5);
float distance = p1.distance( p2 ); // distance is 5.8310
~~~~

`distance` involves a square root calculation, which is one of the slowest things you can do in programming. If you don't need an exact number but rather just a rough idea of distance (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the distances are, you just want the shortest), you can use [`squareDistance`](#squareDistance) instead.



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

Treats both this vector and `pnt` as points in 3D space, and calculates and returns the squared distance between them.

~~~~{.cpp}
ofVec3f p1(3, 4, 2);
ofVec3f p2(6, 8, 5);
float distance = p1.distance( p2 ); // distance is 5.8310
~~~~

Use as a much faster alternative to [`distance`](#distance) if you don't need to know an exact number but rather just a rough idea of distance (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the distances are, you just want the shortest). It avoids the square root calculation that is ordinarily required to calculate a length.




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

Return a copy of this vector with its length (magnitude) restricted to a maximum of `max` units by scaling down if necessary.

~~~~{.cpp}
ofVec3f v1(5, 0, 1); // length is about 5.1
ofVec3f v2(2, 0, 1); // length is about 2.2
ofVec3f v1Limited = v1.getLimited(3); 
// v1Limited is (2.9417, 0, 0.58835) which has length of 3 in the same direction as v1
ofVec3f v2Limited = v2.getLimited(3);
// v2Limited is (2, 0, 1) (same as v2)
~~~~




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

Restrict the length (magnitude) of this vector to a maximum of `max` units by scaling down if necessary.

~~~~{.cpp}
ofVec3f v1(5, 0, 1); // length is about 5.1
ofVec3f v2(2, 0, 1); // length is about 2.2
v1.limit(3); 
// v1 is now (2.9417, 0, 0.58835) which has length of 3 in the same direction as at initialization
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

Calculate and return the dot product of this vector with `vec`.

*Dot product* (less commonly known as *Euclidean inner product*) expresses the angular relationship between two vectors. In other words it is a measure of how *parallel* two vectors are. If they are completely perpendicular the dot product is 0; if they are completely parallel their dot product is either 1 if they are pointing in the same direction, or -1 if they are pointing in opposite directions.

![DOT](../math/dotproduct.png)
Image courtesy of Wikipedia

~~~~{.cpp}
ofVec3f a1(1, 0, 0);
ofVec3f b1(0, 0, 1); // 90 degree angle to a1
dot = a1.dot(b1); // dot is 0, ie cos(90)

ofVec3f a2(1, 0, 0); 
ofVec3f b2(1, 1, 0); // 45 degree angle to a2
b2.normalize(); // vectors should to be unit vectors (normalized)
float dot = a2.dot(b2); // dot is 0.707, ie cos(45)

ofVec3f a3(0, 1, 0);
ofVec3f b3(0, -1, 0); // 180 degree angle to a3
dot = a3.dot(b3); // dot is -1, ie cos(180)
~~~~



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

Returns the cross product (vector product) of this vector and `vec`. This is a binary operation on two vectors in three-dimensional space, which results in a vector that is perpendicular to both of the vectors being multiplied, and normal to the plane containing them. The name *cross product* is derived from the cross symbol X that is often used to designate this operation; the alternative name *vector product* emphasizes the vector (rather than scalar) nature of the result.

![CROSS](../math/crossproduct.png)
Image courtesy of Wikipedia

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

Set this vector to the cross product (vector product) of itself and `vec`. This is a binary operation on two vectors in three-dimensional space, which results in a vector that is perpendicular to both of the vectors being multiplied, and normal to the plane containing them. The name *cross product* is derived from the cross symbol X that is often used to designate this operation; the alternative name *vector product* emphasizes the vector (rather than scalar) nature of the result.


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

Return a new `ofVec3f` calculated by copying this vector and then mapping from its default coordinate system -- origin (0,0,0), X direction (1,0,0), Y direction (0,1,0), Z direction (0,0,1) -- to a new coordinate system defined with origin at `origin`, X direction `vx`, and Y direction `vy`, and Z direction `vz`.

*In most cases you want `vx`, `vy`, and `vz` to be perpendicular and of unit length; if they are not perpendicular you will have shearing as part of the mapping, and if they are not of unit length you will have scaling as part of the mapping.*



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

Map this vector from its default coordinate system -- origin (0,0,0), X direction (1,0,0), Y direction (0,1,0), Z direction (0,0,1) -- to a new coordinate system defined with origin at `origin`, X direction `vx`, and Y direction `vy`, and Z direction `vz`.

*In most cases you want `vx`, `vy`, and `vz` to be perpendicular and of unit length; if they are not perpendicular you will have shearing as part of the mapping, and if they are not of unit length you will have scaling as part of the mapping.*



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

Perform a linear interpolation of this vector's position towards `pnt` and return the interpolated vector without altering the original. `p` controls the amount to move towards `pnt`. `p` is normally between 0 and 1 and where 0 means stay the original position and 1 means move all the way to `pnt`, but you can also have `p` greater than 1 overshoot `pnt`, or less than 0 to move backwards away from `pnt`.

~~~~{.cpp}
ofVec3f v1(0, 5, 0);
ofVec3f v2(10, 10, 20);
ofVec3f v3 = v1.getInterpolated(p2, 0.5); // v3 is (5, 7.5, 10)
ofVec3f v4 = v1.getInterpolated(p2, 0.8); // v4 is (8, 9, 16)
~~~~






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

Perform a linear interpolation of this vector's position towards `pnt`. `p` controls the amount to move towards `pnt`. `p` is normally between 0 and 1 and where 0 means stay the original position and 1 means move all the way to `pnt`, but you can also have `p` greater than 1 overshoot `pnt`, or less than 0 to move backwards away from `pnt`.

~~~~{.cpp}
ofVec3f v1( 0, 5, 0 );
ofVec3f v2( 10, 10, 20 );
// go go gadget zeno
v1.interpolate( v2, 0.5 ); // v1 is now (5, 7.5, 10)
v1.interpolate( v2, 0.5 ); // v1 is now (7.5, 8.75, 15)
v1.interpolate( v2, 0.5 ); // v1 is now (8.75, 9.375, 17.5)
v1.interpolate( v2, 0.5 ); // v1 is now (9.375, 9.6875, 18.75)
~~~~


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

Calculate and return the midpoint between this vector and `pnt`.

~~~~{.cpp}
ofVec3f v1(5, 0, 0);
ofVec3f v2(10, 10, 20);
ofVec3f mid = v1.getMiddle(v2); // mid gets (7.5, 5, 10)
~~~~



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

Set this vector to the midpoint between itself and `pnt`.

~~~~{.cpp}
ofVec3f v1( 0, 5, 0 );
ofVec3f v2( 10, 10, 20);
// go go gadget zeno
v1.middle( v2 ); // v1 is now (5, 7.5, 10)
v1.middle( v2 ); // v1 is now (7.5, 8.75, 15)
v1.middle( v2 ); // v1 is now (8.75, 9.375, 17.5)
v1.middle( v2 ); // v1 is now (9.375, 9.6875, 18.75)
~~~~




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

Sets this vector to be the average (*centre of gravity* or *centroid*) of a given array of `ofVec3f`s. `points` is the array of `ofVec3f`s and `num` specifies the number of `ofVec3f`s in the array.

~~~~{.cpp}
int numPoints = 10;
ofVec3f points[numPoints];
for ( int i=0; i<numPoints; i++ ) {
	points[i].set( ofRandom(0,100), ofRandom(0,100), ofRandom(0,100) );
}
ofVec3f centroid;
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

Returns `true` if each component is the same as the corresponding component in `vec`, ie if `x == vec.x` and `y == vec.y` and `z == vec.z`; otherwise returns `false`. But you should probably be using [`match`](#match) instead.

~~~~{.cpp}
ofVec3f v1(40, 20, 10); 
ofVec3f v2(50, 30, 10); 
ofVec3f v3(40, 20, 10); 
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

Returns `true` if any component is different to its corresponding component in `vec`, ie if `x != vec.x` or `y != vec.y` or `z != vec.z`; otherwise returns `false`.

~~~~{.cpp}
ofVec3f v1(40, 20, 10); 
ofVec3f v2(50, 20, 40); 
ofVec3f v3(40, 20, 10); 
// ( v1 != v2 ) is true
// ( v1 != v3 ) is false
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

Super easy vector addition. Returns a new vector (`x`+`vec.x`,`y`+`vec.y`,`z`+`vec.z`).

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(25, 50, 10);
ofVec3f v3 = v1 + v2; // v3 is (65, 70, 20)
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

Super easy addition assignment. Adds `vec.x` to `x`, adds `vec.y` to `y` and adds `vec.z` to `z`.

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 += v2; // v1 is (65, 70, 20)
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

Super easy vector subtraction. Returns a new vector (`x`-`vec.x`,`y`-`vec.y`,`z`-`vec.z`).

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(25, 50, 10);
ofVec3f v3 = v1 - v2; // v3 is (15, -30, 0)
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

Super easy subtraction assignment. Subtracts `vec.x` from `x`, subtracts `vec.y` from `y` and subtracts `vec.z` from `z`.

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(25, 50, 10);
v1 -= v2; // v1 is (15, -30, 0)
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

Returns a new vector (`x`*`vec.x`,`y`*`vec.y`,`z`*`vec.z`).

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(2, 4, 10);
ofVec3f v3 = v1 * v2; // (80, 80, 100)
~~~~

Useful for scaling a 3D point by a non-uniform scale.



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

Multiplies `x` by `vec.x`, and multiplies `y` by `vec.y`, and multiplies `z` by `vec.z`.

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(2, 4, 10);
v1 *= v2; // v1 is now (80, 80, 100)
~~~~

Useful for scaling a 3D point by a non-uniform scale.




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

Returns a new vector (`x`/`vec.x`,`y`/`vec.y`,`z`/`vec.z`).

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(2, 4, 10);
ofVec3f v3 = v1 / v2; // (20, 5, 1)
~~~~

Useful for scaling a 3D point by a non-uniform scale.



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

Divides `x` by `vec.x`, divides `y` by `vec.y`, and divides `z` by `vec.z`.

~~~~{.cpp}
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(2, 4, 10);
v1 *= v2; // v1 is now (20, 5, 1)
~~~~

Useful for scaling a 3D point by a non-uniform scale.



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


Returns a new vector with a float value `f` added to `x`, `y` and `z` members.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
ofVec3f v2 = v1 + 10; // (12, 15, 11)
~~~~



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

Adds a float value `f` to `x`, `y` and `z` members.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
v1 += 10; // (12, 15, 11)
~~~~



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

Returns a new vector with a float value `f` subtracted from `x`, `y` and `z` members.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
ofVec3f v2 = v1 - 10; // (-8, -5, -9)
~~~~




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

Subtract a float value `f` from `x`, `y`, and `z` members.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
v1 -= 10; // (-8, -5, -9)
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

Returns a new `ofVec3f` that is the inverted version (mirrored in X, Y and Z) of this vector.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
ofVec3f v2 = -v1; // (-2, -5, -1)
~~~~



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

Return a new `ofVec3f` that is this vector scaled by multiplying `x`, `y`, `z` members by `f`.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
ofVec3f v2 = v1 * 4; // (8, 20, 4)
~~~~



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

Scale this vector by multiplying `x`, `y` and `z` members by `f`.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
v1 *= 4; // (8, 20, 4)
~~~~



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

Return a new `ofVec3f` that is this vector scaled by dividing `x`, `y` and `z` members by `f`.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
ofVec3f v2 = v1 / 4; // (0.5, 1.25, 0.25)
~~~~



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

Scale this vector by dividing `x`, `y` and `z` members by `f`.

~~~~{.cpp}
ofVec3f v1(2, 5, 1);
v1 /= 4; // (0.5, 1.25, 0.25)
~~~~



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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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
_version_deprecated: 007_
_summary: _
_constant: False_
_static: no_
_visible: False_
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

###ofVec3f mapped(&origin, &vx, &vy, &vz)

<!--
_syntax: mapped(&origin, &vx, &vy, &vz)_
_name: mapped_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz_
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
_parameters: const ofVec3f &pnt_
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

###ofVec3f interpolated(&pnt, p)

<!--
_syntax: interpolated(&pnt, p)_
_name: interpolated_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt, float p_
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

###ofVec3f middled(&pnt)

<!--
_syntax: middled(&pnt)_
_name: middled_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &pnt_
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

###ofVec3f rotated(angle, &pivot, &axis)

<!--
_syntax: rotated(angle, &pivot, &axis)_
_name: rotated_
_returns: ofVec3f_
_returns_description: _
_parameters: float angle, const ofVec3f &pivot, const ofVec3f &axis_
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

Stores the Z component of this vector.



<!----------------------------------------------------------------------------->

