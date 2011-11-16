<%inherit file="_templates/docs.mako" />
___ofVec2f___
$$code(lang=c++)
float x
$$/code



$$code(lang=c++)
float y
$$/code



$$code(lang=c++)
None ofVec2f(float _x=0.f, float _y=0.f)
$$/code



$$code(lang=c++)
None ofVec2f(const ofVec3f &vec)
$$/code



$$code(lang=c++)
None ofVec2f(const ofVec4f &vec)
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
void set(float _x, float _y)
$$/code



$$code(lang=c++)
void set(const ofVec2f &vec)
$$/code



$$code(lang=c++)
bool operator==(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
bool operator!=(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
bool match(const ofVec2f &vec, float tolerance=0.0001) const 
$$/code



$$code(lang=c++)
bool align(const ofVec2f &vec, float tolerance=0.0001) const 
$$/code



$$code(lang=c++)
bool alignRad(const ofVec2f &vec, float tolerance=0.0001) const 
$$/code



$$code(lang=c++)
None operator+(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
None operator+=(const ofVec2f &vec)
$$/code



$$code(lang=c++)
None operator-(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
None operator-=(const ofVec2f &vec)
$$/code



$$code(lang=c++)
None operator*(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
None operator*=(const ofVec2f &vec)
$$/code



$$code(lang=c++)
None operator/(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
None operator/=(const ofVec2f &vec)
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
None operator-() const 
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
None getRotated(float angle) const 
$$/code



$$code(lang=c++)
None getRotatedRad(float angle) const 
$$/code



$$code(lang=c++)
None rotate(float angle)
$$/code



$$code(lang=c++)
None rotateRad(float angle)
$$/code



$$code(lang=c++)
None getRotated(float angle, const ofVec2f &pivot) const 
$$/code



$$code(lang=c++)
None rotate(float angle, const ofVec2f &pivot)
$$/code



$$code(lang=c++)
None getRotatedRad(float angle, const ofVec2f &pivot) const 
$$/code



$$code(lang=c++)
None rotateRad(float angle, const ofVec2f &pivot)
$$/code



$$code(lang=c++)
None getMapped(const ofVec2f &origin, const ofVec2f &vx, const ofVec2f &vy) const 
$$/code



$$code(lang=c++)
None map(const ofVec2f &origin, const ofVec2f &vx, const ofVec2f &vy)
$$/code



$$code(lang=c++)
float distance(const ofVec2f &pnt) const 
$$/code



$$code(lang=c++)
float squareDistance(const ofVec2f &pnt) const 
$$/code



$$code(lang=c++)
None getInterpolated(const ofVec2f &pnt, float p) const 
$$/code



$$code(lang=c++)
None interpolate(const ofVec2f &pnt, float p)
$$/code



$$code(lang=c++)
None getMiddle(const ofVec2f &pnt) const 
$$/code



$$code(lang=c++)
None middle(const ofVec2f &pnt)
$$/code



$$code(lang=c++)
None average(const ofVec2f *points, int num)
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
None getPerpendicular() const 
$$/code



$$code(lang=c++)
None perpendicular()
$$/code



$$code(lang=c++)
float length() const 
$$/code



$$code(lang=c++)
float squareLength() const 
$$/code



$$code(lang=c++)
float angle(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
float angleRad(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
float dot(const ofVec2f &vec) const 
$$/code



$$code(lang=c++)
None rescaled(const float length) const 
$$/code



$$code(lang=c++)
None rescale(const float length)
$$/code



$$code(lang=c++)
None rotated(float angle) const 
$$/code



$$code(lang=c++)
None normalized() const 
$$/code



$$code(lang=c++)
None limited(float max) const 
$$/code



$$code(lang=c++)
None perpendiculared() const 
$$/code



$$code(lang=c++)
float lengthSquared() const 
$$/code



$$code(lang=c++)
None interpolated(const ofVec2f &pnt, float p) const 
$$/code



$$code(lang=c++)
None middled(const ofVec2f &pnt) const 
$$/code



$$code(lang=c++)
None mapped(const ofVec2f &origin, const ofVec2f &vx, const ofVec2f &vy) const 
$$/code



$$code(lang=c++)
float distanceSquared(const ofVec2f &pnt) const 
$$/code



$$code(lang=c++)
None rotated(float angle, const ofVec2f &pivot) const 
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
$$/code



