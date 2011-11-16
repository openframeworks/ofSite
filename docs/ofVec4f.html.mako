<%inherit file="_templates/docs.mako" />
___ofVec4f___
$$code(lang=c++)
float x
$$/code



$$code(lang=c++)
float y
$$/code



$$code(lang=c++)
float z
$$/code



$$code(lang=c++)
float w
$$/code



$$code(lang=c++)
None ofVec4f(float _x=0.f, float _y=0.f, float _z=0.f, float _w=0.f)
$$/code



$$code(lang=c++)
None ofVec4f(const ofVec2f &vec)
$$/code



$$code(lang=c++)
None ofVec4f(const ofVec3f &vec)
$$/code



$$code(lang=c++)
void set(float _x, float _y, float _z, float _w)
$$/code



$$code(lang=c++)
void set(const ofVec4f &vec)
$$/code



$$code(lang=c++)
float * getPtr()
$$/code



$$code(lang=c++)
const float * getPtr() const 
$$/code



$$code(lang=c++)
float & operator[](int n)
$$/code



$$code(lang=c++)
float operator[](int n) const 
$$/code



$$code(lang=c++)
bool operator==(const ofVec4f &vec) const 
$$/code



$$code(lang=c++)
bool operator!=(const ofVec4f &vec) const 
$$/code



$$code(lang=c++)
bool match(const ofVec4f &vec, float tolerance=0.0001) const 
$$/code



$$code(lang=c++)
None operator+(const ofVec4f &vec) const 
$$/code



$$code(lang=c++)
None operator+=(const ofVec4f &vec)
$$/code



$$code(lang=c++)
None operator-(const float f) const 
$$/code



$$code(lang=c++)
None operator-=(const float f)
$$/code



$$code(lang=c++)
None operator-(const ofVec4f &vec) const 
$$/code



$$code(lang=c++)
None operator-=(const ofVec4f &vec)
$$/code



$$code(lang=c++)
None operator+(const float f) const 
$$/code



$$code(lang=c++)
None operator+=(const float f)
$$/code



$$code(lang=c++)
None operator-() const 
$$/code



$$code(lang=c++)
None operator*(const ofVec4f &vec) const 
$$/code



$$code(lang=c++)
None operator*=(const ofVec4f &vec)
$$/code



$$code(lang=c++)
None operator*(const float f) const 
$$/code



$$code(lang=c++)
None operator*=(const float f)
$$/code



$$code(lang=c++)
None operator/(const ofVec4f &vec) const 
$$/code



$$code(lang=c++)
None operator/=(const ofVec4f &vec)
$$/code



$$code(lang=c++)
None operator/(const float f) const 
$$/code



$$code(lang=c++)
None operator/=(const float f)
$$/code



$$code(lang=c++)
None getScaled(const float length) const 
$$/code



$$code(lang=c++)
None scale(const float length)
$$/code



$$code(lang=c++)
float distance(const ofVec4f &pnt) const 
$$/code



$$code(lang=c++)
float squareDistance(const ofVec4f &pnt) const 
$$/code



$$code(lang=c++)
None getInterpolated(const ofVec4f &pnt, float p) const 
$$/code



$$code(lang=c++)
None interpolate(const ofVec4f &pnt, float p)
$$/code



$$code(lang=c++)
None getMiddle(const ofVec4f &pnt) const 
$$/code



$$code(lang=c++)
None middle(const ofVec4f &pnt)
$$/code



$$code(lang=c++)
None average(const ofVec4f *points, int num)
$$/code



$$code(lang=c++)
None getNormalized() const 
$$/code



$$code(lang=c++)
None normalize()
$$/code



$$code(lang=c++)
None getLimited(float max) const 
$$/code



$$code(lang=c++)
None limit(float max)
$$/code



$$code(lang=c++)
float length() const 
$$/code



$$code(lang=c++)
float squareLength() const 
$$/code



$$code(lang=c++)
float dot(const ofVec4f &vec) const 
$$/code



$$code(lang=c++)
None rescaled(const float length) const 
$$/code



$$code(lang=c++)
None rescale(const float length)
$$/code



$$code(lang=c++)
None normalized() const 
$$/code



$$code(lang=c++)
None limited(float max) const 
$$/code



$$code(lang=c++)
float lengthSquared() const 
$$/code



$$code(lang=c++)
float distanceSquared(const ofVec4f &pnt) const 
$$/code



$$code(lang=c++)
None interpolated(const ofVec4f &pnt, float p) const 
$$/code



$$code(lang=c++)
None middled(const ofVec4f &pnt) const 
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
$$/code



