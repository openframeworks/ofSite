#class ofMatrix3x3


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription


Credits: Code adopted from Lode Vandevenne [http://student.kuleuven.be/~m0216922/CG/](http://student.kuleuven.be/~m0216922/CG/) 





##Description

The 3x3 matrix can hold the values needed to transform a 2d vertex, which is pretty handy when you want to do things like move vertices around, rotate them, etc. The 3x3 is pretty important because it allows you to have both a rotation and a transformation in the same little old object. You won't see them used a great deal because it's usually easier to use the rotate() and translate() methods of ofVec2f but they are handy sometimes. You'll probably see the ofMatrix4x4 used more often, because it allows you to represent a camera or a projection mathematically, and that's pretty useful in doing 3d graphics. They're also used in ofxOpenCv sometimes to represent information about cameras.





##Methods



###float determinant()

<!--
_syntax: determinant()_
_name: determinant_
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


Determinant: [http://mathworld.wolfram.com/Determinant.html](http://mathworld.wolfram.com/Determinant.html) 







_description: _








<!----------------------------------------------------------------------------->

###float determinant(&A)

<!--
_syntax: determinant(&A)_
_name: determinant_
_returns: float_
_returns_description: _
_parameters: const ofMatrix3x3 &A_
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

###ofMatrix3x3 entrywiseTimes(&A)

<!--
_syntax: entrywiseTimes(&A)_
_name: entrywiseTimes_
_returns: ofMatrix3x3_
_returns_description: _
_parameters: const ofMatrix3x3 &A_
_access: public_
_version_started: 0071_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _


Multiply a matrix by a matrix entry by entry (i.e. a*a, b*b, c*c...) This is referred to as an entrywise, Hadamard, or Schur product 







_description: _








<!----------------------------------------------------------------------------->

###ofMatrix3x3 inverse(&A)

<!--
_syntax: inverse(&A)_
_name: inverse_
_returns: ofMatrix3x3_
_returns_description: _
_parameters: const ofMatrix3x3 &A_
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

###void invert()

<!--
_syntax: invert()_
_name: invert_
_returns: void_
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


Inverse of a 3x3 matrix the inverse is the adjoint divided through the determinant find the matrix of minors (minor = determinant of 2x2 matrix of the 2 rows/colums current element is NOT in) turn them in cofactors (= change some of the signs) find the adjoint by transposing the matrix of cofactors divide this through the determinant to get the inverse 







_description: _








<!----------------------------------------------------------------------------->

### ofMatrix3x3(_a = 0.0, _b = 0.0, _c = 0.0, _d = 0.0, _e = 0.0, _f = 0.0, _g = 0.0, _h = 0.0, _i = 0.0)

<!--
_syntax: ofMatrix3x3(_a = 0.0, _b = 0.0, _c = 0.0, _d = 0.0, _e = 0.0, _f = 0.0, _g = 0.0, _h = 0.0, _i = 0.0)_
_name: ofMatrix3x3_
_returns: _
_returns_description: _
_parameters: float _a=0.0, float _b=0.0, float _c=0.0, float _d=0.0, float _e=0.0, float _f=0.0, float _g=0.0, float _h=0.0, float _i=0.0_
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

###ofMatrix3x3 operator*(scalar)

<!--
_syntax: operator*(scalar)_
_name: operator*_
_returns: ofMatrix3x3_
_returns_description: _
_parameters: float scalar_
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


Multiply a matrix with a scalar 







_description: _








<!----------------------------------------------------------------------------->

###ofMatrix3x3 operator*(&B)

<!--
_syntax: operator*(&B)_
_name: operator*_
_returns: ofMatrix3x3_
_returns_description: _
_parameters: const ofMatrix3x3 &B_
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


Multiply a 3x3 matrix with a 3x3 matrix 







_description: _








<!----------------------------------------------------------------------------->

###void operator*=(&B)

<!--
_syntax: operator*=(&B)_
_name: operator*=_
_returns: void_
_returns_description: _
_parameters: const ofMatrix3x3 &B_
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


Multiply a matrix by a matrix this = this*B (in that order) 







_description: _








<!----------------------------------------------------------------------------->

###void operator*=(scalar)

<!--
_syntax: operator*=(scalar)_
_name: operator*=_
_returns: void_
_returns_description: _
_parameters: float scalar_
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


Multiply a matrix by a scalar (multiples all entries by scalar) 







_description: _








<!----------------------------------------------------------------------------->

###ofMatrix3x3 operator+(&B)

<!--
_syntax: operator+(&B)_
_name: operator+_
_returns: ofMatrix3x3_
_returns_description: _
_parameters: const ofMatrix3x3 &B_
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


Add two matrices 







_description: _








<!----------------------------------------------------------------------------->

###void operator+=(&B)

<!--
_syntax: operator+=(&B)_
_name: operator+=_
_returns: void_
_returns_description: _
_parameters: const ofMatrix3x3 &B_
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

###ofMatrix3x3 operator-(&B)

<!--
_syntax: operator-(&B)_
_name: operator-_
_returns: ofMatrix3x3_
_returns_description: _
_parameters: const ofMatrix3x3 &B_
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


Subtract two matrices 







_description: _








<!----------------------------------------------------------------------------->

###void operator-=(&B)

<!--
_syntax: operator-=(&B)_
_name: operator-=_
_returns: void_
_returns_description: _
_parameters: const ofMatrix3x3 &B_
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

###ofMatrix3x3 operator/(scalar)

<!--
_syntax: operator/(scalar)_
_name: operator/_
_returns: ofMatrix3x3_
_returns_description: _
_parameters: float scalar_
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


Divide a matrix through a scalar 







_description: _








<!----------------------------------------------------------------------------->

###void operator/=(&B)

<!--
_syntax: operator/=(&B)_
_name: operator/=_
_returns: void_
_returns_description: _
_parameters: const ofMatrix3x3 &B_
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

###void operator/=(scalar)

<!--
_syntax: operator/=(scalar)_
_name: operator/=_
_returns: void_
_returns_description: _
_parameters: float scalar_
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

###float & operator[](&index)

<!--
_syntax: operator[](&index)_
_name: operator[]_
_returns: float &_
_returns_description: _
_parameters: const int &index_
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

###void set(_a, _b, _c, _d, _e, _f, _g, _h, _i)

<!--
_syntax: set(_a, _b, _c, _d, _e, _f, _g, _h, _i)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float _a, float _b, float _c, float _d, float _e, float _f, float _g, float _h, float _i_
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

###void transpose()

<!--
_syntax: transpose()_
_name: transpose_
_returns: void_
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


Transpose: This changes the matrix. [ a b c ]T [ a d g ] [ d e f ] = [ b e h ] [ g h i ] [ c f i ] 







_description: _








<!----------------------------------------------------------------------------->

###ofMatrix3x3 transpose(&A)

<!--
_syntax: transpose(&A)_
_name: transpose_
_returns: ofMatrix3x3_
_returns_description: _
_parameters: const ofMatrix3x3 &A_
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


Transpose without changing the matrix. Uses the "swap" method with additions and subtractions to swap the elements that aren't on the main diagonal. ***return:*** 
	transposed matrix. 










_description: _








<!----------------------------------------------------------------------------->

##Variables



###float a

<!--
_name: a_
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

###float b

<!--
_name: b_
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

###float c

<!--
_name: c_
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

###float d

<!--
_name: d_
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

###float e

<!--
_name: e_
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

###float f

<!--
_name: f_
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

###float g

<!--
_name: g_
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

###float h

<!--
_name: h_
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

###float i

<!--
_name: i_
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

