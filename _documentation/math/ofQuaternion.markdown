#class ofQuaternion


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description





##Methods



###ofVec3f asVec3()

<!--
_syntax: asVec3()_
_name: asVec3_
_returns: ofVec3f_
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

###ofVec4f asVec4()

<!--
_syntax: asVec4()_
_name: asVec4_
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

###ofQuaternion conj()

<!--
_syntax: conj()_
_name: conj_
_returns: ofQuaternion_
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

###void get(&matrix)

<!--
_syntax: get(&matrix)_
_name: get_
_returns: void_
_returns_description: _
_parameters: ofMatrix4x4 &matrix_
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

###ofVec3f getEuler()

<!--
_syntax: getEuler()_
_name: getEuler_
_returns: ofVec3f_
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

###void getRotate(&angle, &x, &y, &z)

<!--
_syntax: getRotate(&angle, &x, &y, &z)_
_name: getRotate_
_returns: void_
_returns_description: _
_parameters: float &angle, float &x, float &y, float &z_
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

###void getRotate(&angle, &vec)

<!--
_syntax: getRotate(&angle, &vec)_
_name: getRotate_
_returns: void_
_returns_description: _
_parameters: float &angle, ofVec3f &vec_
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

###const ofQuaternion inverse()

<!--
_syntax: inverse()_
_name: inverse_
_returns: const ofQuaternion_
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








_description: _








<!----------------------------------------------------------------------------->

###float length2()

<!--
_syntax: length2()_
_name: length2_
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

###void makeRotate(angle, x, y, z)

<!--
_syntax: makeRotate(angle, x, y, z)_
_name: makeRotate_
_returns: void_
_returns_description: _
_parameters: float angle, float x, float y, float z_
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


Set the elements of the Quat to represent a rotation of angle (degrees) around the axis (x,y,z) 







_description: _








<!----------------------------------------------------------------------------->

###void makeRotate(angle, &vec)

<!--
_syntax: makeRotate(angle, &vec)_
_name: makeRotate_
_returns: void_
_returns_description: _
_parameters: float angle, const ofVec3f &vec_
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

###void makeRotate(angle1, &axis1, angle2, &axis2, angle3, &axis3)

<!--
_syntax: makeRotate(angle1, &axis1, angle2, &axis2, angle3, &axis3)_
_name: makeRotate_
_returns: void_
_returns_description: _
_parameters: float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3_
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

###void makeRotate(&vec1, &vec2)

<!--
_syntax: makeRotate(&vec1, &vec2)_
_name: makeRotate_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &vec1, const ofVec3f &vec2_
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


Make a rotation Quat which will rotate vec1 to vec2

This routine uses only fast geometric transforms, without costly acos/sin computations. It's exact, fast, and with less degenerate cases than the acos/sin method.

For an explanation of the math used, you may see for example: [http://logiciels.cnes.fr/MARMOTTES/marmottes-mathematique.pdf](http://logiciels.cnes.fr/MARMOTTES/marmottes-mathematique.pdf)

***note:*** 
	This is the rotation with shortest angle, which is the one equivalent to the acos/sin transform method. Other rotations exists, for example to additionally keep a local horizontal attitude.


***author:*** 
	Nicolas Brodu 










_description: _








<!----------------------------------------------------------------------------->

###void makeRotate_original(&vec1, &vec2)

<!--
_syntax: makeRotate_original(&vec1, &vec2)_
_name: makeRotate_original_
_returns: void_
_returns_description: _
_parameters: const ofVec3f &vec1, const ofVec3f &vec2_
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

###void normalize()

<!--
_syntax: normalize()_
_name: normalize_
_returns: void_
_returns_description: _
_parameters: _
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








_description: _








<!----------------------------------------------------------------------------->

### ofQuaternion()

<!--
_syntax: ofQuaternion()_
_name: ofQuaternion_
_returns: _
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

### ofQuaternion(x, y, z, w)

<!--
_syntax: ofQuaternion(x, y, z, w)_
_name: ofQuaternion_
_returns: _
_returns_description: _
_parameters: float x, float y, float z, float w_
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

### ofQuaternion(&v)

<!--
_syntax: ofQuaternion(&v)_
_name: ofQuaternion_
_returns: _
_returns_description: _
_parameters: const ofVec4f &v_
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

### ofQuaternion(angle, &axis)

<!--
_syntax: ofQuaternion(angle, &axis)_
_name: ofQuaternion_
_returns: _
_returns_description: _
_parameters: float angle, const ofVec3f &axis_
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

### ofQuaternion(angle1, &axis1, angle2, &axis2, angle3, &axis3)

<!--
_syntax: ofQuaternion(angle1, &axis1, angle2, &axis2, angle3, &axis3)_
_name: ofQuaternion_
_returns: _
_returns_description: _
_parameters: float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3_
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

###bool operator!=(&q)

<!--
_syntax: operator!=(&q)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###const ofQuaternion operator*(rhs)

<!--
_syntax: operator*(rhs)_
_name: operator*_
_returns: const ofQuaternion_
_returns_description: _
_parameters: float rhs_
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

###const ofQuaternion operator*(&rhs)

<!--
_syntax: operator*(&rhs)_
_name: operator*_
_returns: const ofQuaternion_
_returns_description: _
_parameters: const ofQuaternion &rhs_
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

###ofVec3f operator*(&v)

<!--
_syntax: operator*(&v)_
_name: operator*_
_returns: ofVec3f_
_returns_description: _
_parameters: const ofVec3f &v_
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

###ofQuaternion & operator*=(rhs)

<!--
_syntax: operator*=(rhs)_
_name: operator*=_
_returns: ofQuaternion &_
_returns_description: _
_parameters: float rhs_
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

###ofQuaternion & operator*=(&rhs)

<!--
_syntax: operator*=(&rhs)_
_name: operator*=_
_returns: ofQuaternion &_
_returns_description: _
_parameters: const ofQuaternion &rhs_
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

###const ofQuaternion operator+(&rhs)

<!--
_syntax: operator+(&rhs)_
_name: operator+_
_returns: const ofQuaternion_
_returns_description: _
_parameters: const ofQuaternion &rhs_
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

###ofQuaternion & operator+=(&rhs)

<!--
_syntax: operator+=(&rhs)_
_name: operator+=_
_returns: ofQuaternion &_
_returns_description: _
_parameters: const ofQuaternion &rhs_
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

###const ofQuaternion operator-(&rhs)

<!--
_syntax: operator-(&rhs)_
_name: operator-_
_returns: const ofQuaternion_
_returns_description: _
_parameters: const ofQuaternion &rhs_
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

###const ofQuaternion operator-()

<!--
_syntax: operator-()_
_name: operator-_
_returns: const ofQuaternion_
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

###ofQuaternion & operator-=(&rhs)

<!--
_syntax: operator-=(&rhs)_
_name: operator-=_
_returns: ofQuaternion &_
_returns_description: _
_parameters: const ofQuaternion &rhs_
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

###ofQuaternion operator/(rhs)

<!--
_syntax: operator/(rhs)_
_name: operator/_
_returns: ofQuaternion_
_returns_description: _
_parameters: float rhs_
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

###const ofQuaternion operator/(&denom)

<!--
_syntax: operator/(&denom)_
_name: operator/_
_returns: const ofQuaternion_
_returns_description: _
_parameters: const ofQuaternion &denom_
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

###ofQuaternion & operator/=(rhs)

<!--
_syntax: operator/=(rhs)_
_name: operator/=_
_returns: ofQuaternion &_
_returns_description: _
_parameters: float rhs_
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

###ofQuaternion & operator/=(&denom)

<!--
_syntax: operator/=(&denom)_
_name: operator/=_
_returns: ofQuaternion &_
_returns_description: _
_parameters: const ofQuaternion &denom_
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

###ostream & operator<<(&os)

<!--
_syntax: operator<<(&os)_
_name: operator<<_
_returns: ostream &_
_returns_description: _
_parameters: ostream &os_
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

###ofQuaternion & operator=(&q)

<!--
_syntax: operator=(&q)_
_name: operator=_
_returns: ofQuaternion &_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###bool operator==(&q)

<!--
_syntax: operator==(&q)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofQuaternion &q_
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

###istream & operator>>(&is)

<!--
_syntax: operator>>(&is)_
_name: operator>>_
_returns: istream &_
_returns_description: _
_parameters: istream &is_
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

###float & operator[](i)

<!--
_syntax: operator[](i)_
_name: operator[]_
_returns: float &_
_returns_description: _
_parameters: int i_
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

###float operator[](i)

<!--
_syntax: operator[](i)_
_name: operator[]_
_returns: float_
_returns_description: _
_parameters: int i_
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

###void set(x, y, z, w)

<!--
_syntax: set(x, y, z, w)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float x, float y, float z, float w_
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

###void set(&v)

<!--
_syntax: set(&v)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const ofVec4f &v_
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

###void set(&matrix)

<!--
_syntax: set(&matrix)_
_name: set_
_returns: void_
_returns_description: _
_parameters: const ofMatrix4x4 &matrix_
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

###void slerp(t, &from, &to)

<!--
_syntax: slerp(t, &from, &to)_
_name: slerp_
_returns: void_
_returns_description: _
_parameters: float t, const ofQuaternion &from, const ofQuaternion &to_
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


Spherical Linear Interpolation As t goes from 0 to 1, the Quat object goes from "from" to "to" Reference: Shoemake at SIGGRAPH 89 See also [http://www.gamasutra.com/features/programming/19980703/quaternions_01.htm](http://www.gamasutra.com/features/programming/19980703/quaternions_01.htm) 







_description: _








<!----------------------------------------------------------------------------->

###float & w()

<!--
_syntax: w()_
_name: w_
_returns: float &_
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








_description: _








<!----------------------------------------------------------------------------->

###float w()

<!--
_syntax: w()_
_name: w_
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

###float & x()

<!--
_syntax: x()_
_name: x_
_returns: float &_
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








_description: _








<!----------------------------------------------------------------------------->

###float x()

<!--
_syntax: x()_
_name: x_
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

###float & y()

<!--
_syntax: y()_
_name: y_
_returns: float &_
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








_description: _








<!----------------------------------------------------------------------------->

###float y()

<!--
_syntax: y()_
_name: y_
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

###float & z()

<!--
_syntax: z()_
_name: z_
_returns: float &_
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








_description: _








<!----------------------------------------------------------------------------->

###float z()

<!--
_syntax: z()_
_name: z_
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

###bool zeroRotation()

<!--
_syntax: zeroRotation()_
_name: zeroRotation_
_returns: bool_
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

##Variables



###ofVec4f _v

<!--
_name: _v_
_type: ofVec4f_
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

