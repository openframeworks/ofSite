#class ofQuaternion

Example



Reference



Methods



//----------------------

##void getRotate(float &angle, float &x, float &y, float &z) const 

_syntax: getRotate(float &angle, float &x, float &y, float &z) const _

_name: getRotate_

_returns: void_

_parameters: float &, float &, float &, float &_



_description: _















//----------------------

##void getRotate(float &angle, ofVec3f &vec) const 

_syntax: getRotate(float &angle, ofVec3f &vec) const _

_name: getRotate_

_returns: void_

_parameters: float &, _



_description: _















//----------------------

##ofVec3f getEuler() const 

_syntax: getEuler() const _

_name: getEuler_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##void slerp(float t, const ofQuaternion &from, const ofQuaternion &to)

_syntax: slerp(float t, const ofQuaternion &from, const ofQuaternion &to)_

_name: slerp_

_returns: void_

_parameters: float, const , const _



_description: _















//----------------------

##None ofQuaternion()

_syntax: ofQuaternion()_

_name: ofQuaternion_

_returns: None_

_parameters: _



_description: _















//----------------------

##None ofQuaternion(float x, float y, float z, float w)

_syntax: ofQuaternion(float x, float y, float z, float w)_

_name: ofQuaternion_

_returns: None_

_parameters: float, float, float, float_



_description: _















//----------------------

##None ofQuaternion(const ofVec4f &v)

_syntax: ofQuaternion(const ofVec4f &v)_

_name: ofQuaternion_

_returns: None_

_parameters: const _



_description: _















//----------------------

##None ofQuaternion(float angle, const ofVec3f &axis)

_syntax: ofQuaternion(float angle, const ofVec3f &axis)_

_name: ofQuaternion_

_returns: None_

_parameters: float, const _



_description: _















//----------------------

##None ofQuaternion(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)

_syntax: ofQuaternion(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)_

_name: ofQuaternion_

_returns: None_

_parameters: float, const , float, const , float, const _



_description: _















//----------------------

##ofQuaternion operator=(const ofQuaternion &q)

_syntax: operator=(const ofQuaternion &q)_

_name: operator=_

_returns: ofQuaternion_

_parameters: const _



_description: _















//----------------------

##bool operator==(const ofQuaternion &q) const 

_syntax: operator==(const ofQuaternion &q) const _

_name: operator==_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator!=(const ofQuaternion &q) const 

_syntax: operator!=(const ofQuaternion &q) const _

_name: operator!=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##ostream & operator<<(ostream &os)

_syntax: operator<<(ostream &os)_

_name: operator<<_

_returns: ostream &_

_parameters: ostream &_



_description: _















//----------------------

##istream & operator>>(istream &is)

_syntax: operator>>(istream &is)_

_name: operator>>_

_returns: istream &_

_parameters: istream &_



_description: _















//----------------------

##ofVec4f asVec4() const 

_syntax: asVec4() const _

_name: asVec4_

_returns: ofVec4f_

_parameters: _



_description: _















//----------------------

##ofVec3f asVec3() const 

_syntax: asVec3() const _

_name: asVec3_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##void set(float x, float y, float z, float w)

_syntax: set(float x, float y, float z, float w)_

_name: set_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void set(const ofVec4f &v)

_syntax: set(const ofVec4f &v)_

_name: set_

_returns: void_

_parameters: const _



_description: _















//----------------------

##void get(ofMatrix4x4 &matrix) const 

_syntax: get(ofMatrix4x4 &matrix) const _

_name: get_

_returns: void_

_parameters: _



_description: _















//----------------------

##float operator[](int i)

_syntax: operator[](int i)_

_name: operator[]_

_returns: float_

_parameters: int_



_description: _



<br/><br/>return type changed from float & to float in 0.07













//----------------------

##float x()

_syntax: x()_

_name: x_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from float & to float in 0.07













//----------------------

##float y()

_syntax: y()_

_name: y_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from float & to float in 0.07













//----------------------

##float z()

_syntax: z()_

_name: z_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from float & to float in 0.07













//----------------------

##float w()

_syntax: w()_

_name: w_

_returns: float_

_parameters: _



_description: _



<br/><br/>return type changed from float & to float in 0.07













//----------------------

##bool zeroRotation() const 

_syntax: zeroRotation() const _

_name: zeroRotation_

_returns: bool_

_parameters: _



_description: _















//----------------------

##ofQuaternion operator*(float rhs) const 

_syntax: operator*(float rhs) const _

_name: operator*_

_returns: ofQuaternion_

_parameters: float_



_description: _















//----------------------

##ofQuaternion operator*=(float rhs)

_syntax: operator*=(float rhs)_

_name: operator*=_

_returns: ofQuaternion_

_parameters: float_



_description: _















//----------------------

##ofVec3f operator*(const ofQuaternion &rhs) const 

_syntax: operator*(const ofQuaternion &rhs) const _

_name: operator*_

_returns: ofVec3f_

_parameters: const _



_description: _



<br/><br/>return type changed from ofQuaternion to ofVec3f in 0.07













//----------------------

##ofQuaternion operator*=(const ofQuaternion &rhs)

_syntax: operator*=(const ofQuaternion &rhs)_

_name: operator*=_

_returns: ofQuaternion_

_parameters: const _



_description: _















//----------------------

##ofQuaternion operator/(float rhs) const 

_syntax: operator/(float rhs) const _

_name: operator/_

_returns: ofQuaternion_

_parameters: float_



_description: _















//----------------------

##ofQuaternion operator/=(float rhs)

_syntax: operator/=(float rhs)_

_name: operator/=_

_returns: ofQuaternion_

_parameters: float_



_description: _















//----------------------

##ofQuaternion operator/(const ofQuaternion &denom) const 

_syntax: operator/(const ofQuaternion &denom) const _

_name: operator/_

_returns: ofQuaternion_

_parameters: const _



_description: _















//----------------------

##ofQuaternion operator/=(const ofQuaternion &denom)

_syntax: operator/=(const ofQuaternion &denom)_

_name: operator/=_

_returns: ofQuaternion_

_parameters: const _



_description: _















//----------------------

##ofQuaternion operator+(const ofQuaternion &rhs) const 

_syntax: operator+(const ofQuaternion &rhs) const _

_name: operator+_

_returns: ofQuaternion_

_parameters: const _



_description: _















//----------------------

##ofQuaternion operator+=(const ofQuaternion &rhs)

_syntax: operator+=(const ofQuaternion &rhs)_

_name: operator+=_

_returns: ofQuaternion_

_parameters: const _



_description: _















//----------------------

##ofQuaternion operator-(const ofQuaternion &rhs) const 

_syntax: operator-(const ofQuaternion &rhs) const _

_name: operator-_

_returns: ofQuaternion_

_parameters: const _



_description: _















//----------------------

##ofQuaternion operator-=(const ofQuaternion &rhs)

_syntax: operator-=(const ofQuaternion &rhs)_

_name: operator-=_

_returns: ofQuaternion_

_parameters: const _



_description: _















//----------------------

##ofQuaternion operator-() const 

_syntax: operator-() const _

_name: operator-_

_returns: ofQuaternion_

_parameters: _



_description: _















//----------------------

##float length() const 

_syntax: length() const _

_name: length_

_returns: float_

_parameters: _



_description: _















//----------------------

##float length2() const 

_syntax: length2() const _

_name: length2_

_returns: float_

_parameters: _



_description: _















//----------------------

##ofQuaternion conj() const 

_syntax: conj() const _

_name: conj_

_returns: ofQuaternion_

_parameters: _



_description: _















//----------------------

##ofQuaternion inverse() const 

_syntax: inverse() const _

_name: inverse_

_returns: ofQuaternion_

_parameters: _



_description: _















//----------------------

##void makeRotate(float angle, float x, float y, float z)

_syntax: makeRotate(float angle, float x, float y, float z)_

_name: makeRotate_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void makeRotate(float angle, const ofVec3f &vec)

_syntax: makeRotate(float angle, const ofVec3f &vec)_

_name: makeRotate_

_returns: void_

_parameters: float, const _



_description: _















//----------------------

##void makeRotate(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)

_syntax: makeRotate(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)_

_name: makeRotate_

_returns: void_

_parameters: float, const , float, const , float, const _



_description: _















//----------------------

##void makeRotate(const ofVec3f &vec1, const ofVec3f &vec2)

_syntax: makeRotate(const ofVec3f &vec1, const ofVec3f &vec2)_

_name: makeRotate_

_returns: void_

_parameters: const , const _



_description: _















//----------------------

##void makeRotate_original(const ofVec3f &vec1, const ofVec3f &vec2)

_syntax: makeRotate_original(const ofVec3f &vec1, const ofVec3f &vec2)_

_name: makeRotate_original_

_returns: void_

_parameters: const , const _



_description: _















