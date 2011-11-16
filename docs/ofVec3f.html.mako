<%inherit file="_templates/docs.mako" />
___ofVec3f___
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
None ofVec3f(float _x=0.f, float _y=0.f, float _z=0.f)
$$/code



$$code(lang=c++)
None ofVec3f(const ofVec2f &vec)
$$/code



$$code(lang=c++)
None ofVec3f(const ofVec4f &vec)
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
void set(float _x, float _y, float _z=0)
$$/code



$$code(lang=c++)
void set(const ofVec3f &vec)
$$/code



$$code(lang=c++)
bool operator==(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
bool operator!=(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
bool match(const ofVec3f &vec, float tolerance=0.0001) const 
$$/code



$$code(lang=c++)
bool align(const ofVec3f &vec, float tolerance=0.0001) const 
$$/code



$$code(lang=c++)
bool alignRad(const ofVec3f &vec, float tolerance=0.0001) const 
$$/code



$$code(lang=c++)
None operator+(const ofVec3f &pnt) const 
$$/code



$$code(lang=c++)
None operator+=(const ofVec3f &pnt)
$$/code



$$code(lang=c++)
None operator-(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
None operator-=(const ofVec3f &vec)
$$/code



$$code(lang=c++)
None operator*(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
None operator*=(const ofVec3f &vec)
$$/code



$$code(lang=c++)
None operator/(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
None operator/=(const ofVec3f &vec)
$$/code



$$code(lang=c++)
None operator-() const 
$$/code



$$code(lang=c++)
None operator+(const float f) const 
$$/code



$$code(lang=c++)
None operator+=(const float f)
$$/code



$$code(lang=c++)
None operator-(const float f) const 
$$/code



$$code(lang=c++)
None operator-=(const float f)
$$/code



$$code(lang=c++)
None operator*(const float f) const 
$$/code



$$code(lang=c++)
None operator*=(const float f)
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
None getRotated(float angle, const ofVec3f &axis) const 
$$/code



$$code(lang=c++)
None getRotatedRad(float angle, const ofVec3f &axis) const 
$$/code



$$code(lang=c++)
None rotate(float angle, const ofVec3f &axis)
$$/code



$$code(lang=c++)
None rotateRad(float angle, const ofVec3f &axis)
$$/code



$$code(lang=c++)
None getRotated(float ax, float ay, float az) const 
$$/code



$$code(lang=c++)
None getRotatedRad(float ax, float ay, float az) const 
$$/code



$$code(lang=c++)
None rotate(float ax, float ay, float az)
$$/code



$$code(lang=c++)
None rotateRad(float ax, float ay, float az)
$$/code



$$code(lang=c++)
None getRotated(float angle, const ofVec3f &pivot, const ofVec3f &axis) const 
$$/code



$$code(lang=c++)
None rotate(float angle, const ofVec3f &pivot, const ofVec3f &axis)
$$/code



$$code(lang=c++)
None getRotatedRad(float angle, const ofVec3f &pivot, const ofVec3f &axis) const 
$$/code



$$code(lang=c++)
None rotateRad(float angle, const ofVec3f &pivot, const ofVec3f &axis)
$$/code



$$code(lang=c++)
None getMapped(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz) const 
$$/code



$$code(lang=c++)
None map(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz)
$$/code



$$code(lang=c++)
float distance(const ofVec3f &pnt) const 
$$/code



$$code(lang=c++)
float squareDistance(const ofVec3f &pnt) const 
$$/code



$$code(lang=c++)
None getInterpolated(const ofVec3f &pnt, float p) const 
$$/code



$$code(lang=c++)
None interpolate(const ofVec3f &pnt, float p)
$$/code



$$code(lang=c++)
None getMiddle(const ofVec3f &pnt) const 
$$/code



$$code(lang=c++)
None middle(const ofVec3f &pnt)
$$/code



$$code(lang=c++)
None average(const ofVec3f *points, int num)
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
None getCrossed(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
None cross(const ofVec3f &vec)
$$/code



$$code(lang=c++)
None getPerpendicular(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
None perpendicular(const ofVec3f &vec)
$$/code



$$code(lang=c++)
float length() const 
$$/code



$$code(lang=c++)
float squareLength() const 
$$/code



$$code(lang=c++)
float angle(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
float angleRad(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
float dot(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
None rescaled(const float length) const 
$$/code



$$code(lang=c++)
None rescale(const float length)
$$/code



$$code(lang=c++)
None rotated(float angle, const ofVec3f &axis) const 
$$/code



$$code(lang=c++)
None rotated(float ax, float ay, float az)
$$/code



$$code(lang=c++)
None normalized() const 
$$/code



$$code(lang=c++)
None limited(float max) const 
$$/code



$$code(lang=c++)
None crossed(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
None perpendiculared(const ofVec3f &vec) const 
$$/code



$$code(lang=c++)
float lengthSquared() const 
$$/code



$$code(lang=c++)
None mapped(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz) const 
$$/code



$$code(lang=c++)
float distanceSquared(const ofVec3f &pnt) const 
$$/code



$$code(lang=c++)
None interpolated(const ofVec3f &pnt, float p) const 
$$/code



$$code(lang=c++)
None middled(const ofVec3f &pnt) const 
$$/code



$$code(lang=c++)
None rotated(float angle, const ofVec3f &pivot, const ofVec3f &axis) const 
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
$$/code



