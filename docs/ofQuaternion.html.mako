<%inherit file="_templates/docs.mako" />
___ofQuaternion___
$$code(lang=c++)
None _v
$$/code



$$code(lang=c++)
None ofQuaternion()
$$/code



$$code(lang=c++)
None ofQuaternion(float x, float y, float z, float w)
$$/code



$$code(lang=c++)
None ofQuaternion(const ofVec4f &v)
$$/code



$$code(lang=c++)
None ofQuaternion(float angle, const ofVec3f &axis)
$$/code



$$code(lang=c++)
None ofQuaternion(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)
$$/code



$$code(lang=c++)
None operator=(const ofQuaternion &q)
$$/code



$$code(lang=c++)
bool operator==(const ofQuaternion &q) const 
$$/code



$$code(lang=c++)
bool operator!=(const ofQuaternion &q) const 
$$/code



$$code(lang=c++)
ostream & operator<<(ostream &os)
$$/code



$$code(lang=c++)
istream & operator>>(istream &is)
$$/code



$$code(lang=c++)
None asVec4() const 
$$/code



$$code(lang=c++)
None asVec3() const 
$$/code



$$code(lang=c++)
void set(float x, float y, float z, float w)
$$/code



$$code(lang=c++)
void set(const ofVec4f &v)
$$/code



$$code(lang=c++)
void set(const ofMatrix4x4 &matrix)
$$/code



$$code(lang=c++)
void get(ofMatrix4x4 &matrix) const 
$$/code



$$code(lang=c++)
float & operator[](int i)
$$/code



$$code(lang=c++)
float operator[](int i) const 
$$/code



$$code(lang=c++)
float & x()
$$/code



$$code(lang=c++)
float & y()
$$/code



$$code(lang=c++)
float & z()
$$/code



$$code(lang=c++)
float & w()
$$/code



$$code(lang=c++)
float x() const 
$$/code



$$code(lang=c++)
float y() const 
$$/code



$$code(lang=c++)
float z() const 
$$/code



$$code(lang=c++)
float w() const 
$$/code



$$code(lang=c++)
bool zeroRotation() const 
$$/code



$$code(lang=c++)
const  operator*(float rhs) const 
$$/code



$$code(lang=c++)
None operator*=(float rhs)
$$/code



$$code(lang=c++)
const  operator*(const ofQuaternion &rhs) const 
$$/code



$$code(lang=c++)
None operator*=(const ofQuaternion &rhs)
$$/code



$$code(lang=c++)
None operator/(float rhs) const 
$$/code



$$code(lang=c++)
None operator/=(float rhs)
$$/code



$$code(lang=c++)
const  operator/(const ofQuaternion &denom) const 
$$/code



$$code(lang=c++)
None operator/=(const ofQuaternion &denom)
$$/code



$$code(lang=c++)
const  operator+(const ofQuaternion &rhs) const 
$$/code



$$code(lang=c++)
None operator+=(const ofQuaternion &rhs)
$$/code



$$code(lang=c++)
const  operator-(const ofQuaternion &rhs) const 
$$/code



$$code(lang=c++)
None operator-=(const ofQuaternion &rhs)
$$/code



$$code(lang=c++)
const  operator-() const 
$$/code



$$code(lang=c++)
None operator*(const ofVec3f &v) const 
$$/code



$$code(lang=c++)
float length() const 
$$/code



$$code(lang=c++)
float length2() const 
$$/code



$$code(lang=c++)
None conj() const 
$$/code



$$code(lang=c++)
const  inverse() const 
$$/code



$$code(lang=c++)
void makeRotate(float angle, float x, float y, float z)
$$/code



$$code(lang=c++)
void makeRotate(float angle, const ofVec3f &vec)
$$/code



$$code(lang=c++)
void makeRotate(float angle1, const ofVec3f &axis1, float angle2, const ofVec3f &axis2, float angle3, const ofVec3f &axis3)
$$/code



$$code(lang=c++)
void makeRotate(const ofVec3f &vec1, const ofVec3f &vec2)
$$/code



$$code(lang=c++)
void makeRotate_original(const ofVec3f &vec1, const ofVec3f &vec2)
$$/code



$$code(lang=c++)
void getRotate(float &angle, float &x, float &y, float &z) const 
$$/code



$$code(lang=c++)
void getRotate(float &angle, ofVec3f &vec) const 
$$/code



$$code(lang=c++)
None getEuler() const 
$$/code



$$code(lang=c++)
void slerp(float t, const ofQuaternion &from, const ofQuaternion &to)
$$/code



