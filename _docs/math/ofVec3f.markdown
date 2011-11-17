#class ofVec3f

Example



Reference



Methods



//----------------------

##None ofVec3f(float _x=0.f, float _y=0.f, float _z=0.f)

_syntax: ofVec3f(float _x=0.f, float _y=0.f, float _z=0.f)_

_name: ofVec3f_

_returns: None_

_parameters: float = 0.f, float = 0.f, float = 0.f_



_description: _















//----------------------

##None ofVec3f(const ofVec2f &vec)

_syntax: ofVec3f(const ofVec2f &vec)_

_name: ofVec3f_

_returns: None_

_parameters: const _



_description: _















//----------------------

##float * getPtr()

_syntax: getPtr()_

_name: getPtr_

_returns: float *_

_parameters: _



_description: _















//----------------------

##float operator[](int n)

_syntax: operator[](int n)_

_name: operator[]_

_returns: float_

_parameters: int_



_description: _



<br/><br/>return type changed from float & to float in 0.07













//----------------------

##void set(float _x, float _y, float _z=0)

_syntax: set(float _x, float _y, float _z=0)_

_name: set_

_returns: void_

_parameters: float, float, float = 0_



_description: _















//----------------------

##void set(const ofVec3f &vec)

_syntax: set(const ofVec3f &vec)_

_name: set_

_returns: void_

_parameters: const _



_description: _















//----------------------

##bool operator==(const ofVec3f &vec) const 

_syntax: operator==(const ofVec3f &vec) const _

_name: operator==_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator!=(const ofVec3f &vec) const 

_syntax: operator!=(const ofVec3f &vec) const _

_name: operator!=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool match(const ofVec3f &vec, float tollerance=0.0001) const 

_syntax: match(const ofVec3f &vec, float tollerance=0.0001) const _

_name: match_

_returns: bool_

_parameters: const , float = 0.0001_



_description: _















//----------------------

##bool align(const ofVec3f &vec, float tollerance=0.0001) const 

_syntax: align(const ofVec3f &vec, float tollerance=0.0001) const _

_name: align_

_returns: bool_

_parameters: const , float = 0.0001_



_description: _















//----------------------

##bool alignRad(const ofVec3f &vec, float tollerance=0.0001) const 

_syntax: alignRad(const ofVec3f &vec, float tollerance=0.0001) const _

_name: alignRad_

_returns: bool_

_parameters: const , float = 0.0001_



_description: _















//----------------------

##ofVec3f operator+(const ofVec3f &pnt) const 

_syntax: operator+(const ofVec3f &pnt) const _

_name: operator+_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f operator+=(const ofVec3f &pnt)

_syntax: operator+=(const ofVec3f &pnt)_

_name: operator+=_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f operator-(const ofVec3f &vec) const 

_syntax: operator-(const ofVec3f &vec) const _

_name: operator-_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f operator-=(const ofVec3f &vec)

_syntax: operator-=(const ofVec3f &vec)_

_name: operator-=_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f operator*(const ofVec3f &vec) const 

_syntax: operator*(const ofVec3f &vec) const _

_name: operator*_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f operator*=(const ofVec3f &vec)

_syntax: operator*=(const ofVec3f &vec)_

_name: operator*=_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f operator/(const ofVec3f &vec) const 

_syntax: operator/(const ofVec3f &vec) const _

_name: operator/_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f operator/=(const ofVec3f &vec)

_syntax: operator/=(const ofVec3f &vec)_

_name: operator/=_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f operator-() const 

_syntax: operator-() const _

_name: operator-_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f operator+(const float f) const 

_syntax: operator+(const float f) const _

_name: operator+_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f operator+=(const float f)

_syntax: operator+=(const float f)_

_name: operator+=_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f operator-(const float f) const 

_syntax: operator-(const float f) const _

_name: operator-_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f operator-=(const float f)

_syntax: operator-=(const float f)_

_name: operator-=_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f operator*(const float f) const 

_syntax: operator*(const float f) const _

_name: operator*_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f operator*=(const float f)

_syntax: operator*=(const float f)_

_name: operator*=_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f operator/(const float f) const 

_syntax: operator/(const float f) const _

_name: operator/_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f operator/=(const float f)

_syntax: operator/=(const float f)_

_name: operator/=_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f getScaled(const float length) const 

_syntax: getScaled(const float length) const _

_name: getScaled_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f scale(const float length)

_syntax: scale(const float length)_

_name: scale_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f getRotated(float angle, const ofVec3f &axis) const 

_syntax: getRotated(float angle, const ofVec3f &axis) const _

_name: getRotated_

_returns: ofVec3f_

_parameters: float, const _



_description: _















//----------------------

##ofVec3f getRotatedRad(float angle, const ofVec3f &axis) const 

_syntax: getRotatedRad(float angle, const ofVec3f &axis) const _

_name: getRotatedRad_

_returns: ofVec3f_

_parameters: float, const _



_description: _















//----------------------

##ofVec3f rotate(float angle, const ofVec3f &axis)

_syntax: rotate(float angle, const ofVec3f &axis)_

_name: rotate_

_returns: ofVec3f_

_parameters: float, const _



_description: _















//----------------------

##ofVec3f rotateRad(float angle, const ofVec3f &axis)

_syntax: rotateRad(float angle, const ofVec3f &axis)_

_name: rotateRad_

_returns: ofVec3f_

_parameters: float, const _



_description: _















//----------------------

##ofVec3f getRotated(float ax, float ay, float az) const 

_syntax: getRotated(float ax, float ay, float az) const _

_name: getRotated_

_returns: ofVec3f_

_parameters: float, float, float_



_description: _















//----------------------

##ofVec3f getRotatedRad(float ax, float ay, float az) const 

_syntax: getRotatedRad(float ax, float ay, float az) const _

_name: getRotatedRad_

_returns: ofVec3f_

_parameters: float, float, float_



_description: _















//----------------------

##ofVec3f rotate(float ax, float ay, float az)

_syntax: rotate(float ax, float ay, float az)_

_name: rotate_

_returns: ofVec3f_

_parameters: float, float, float_



_description: _















//----------------------

##ofVec3f rotateRad(float ax, float ay, float az)

_syntax: rotateRad(float ax, float ay, float az)_

_name: rotateRad_

_returns: ofVec3f_

_parameters: float, float, float_



_description: _















//----------------------

##ofVec3f getRotated(float angle, const ofVec3f &pivot, const ofVec3f &axis) const 

_syntax: getRotated(float angle, const ofVec3f &pivot, const ofVec3f &axis) const _

_name: getRotated_

_returns: ofVec3f_

_parameters: float, const , const _



_description: _















//----------------------

##ofVec3f rotate(float angle, const ofVec3f &pivot, const ofVec3f &axis)

_syntax: rotate(float angle, const ofVec3f &pivot, const ofVec3f &axis)_

_name: rotate_

_returns: ofVec3f_

_parameters: float, const , const _



_description: _















//----------------------

##ofVec3f getRotatedRad(float angle, const ofVec3f &pivot, const ofVec3f &axis) const 

_syntax: getRotatedRad(float angle, const ofVec3f &pivot, const ofVec3f &axis) const _

_name: getRotatedRad_

_returns: ofVec3f_

_parameters: float, const , const _



_description: _















//----------------------

##ofVec3f rotateRad(float angle, const ofVec3f &pivot, const ofVec3f &axis)

_syntax: rotateRad(float angle, const ofVec3f &pivot, const ofVec3f &axis)_

_name: rotateRad_

_returns: ofVec3f_

_parameters: float, const , const _



_description: _















//----------------------

##ofVec3f getMapped(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz) const 

_syntax: getMapped(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz) const _

_name: getMapped_

_returns: ofVec3f_

_parameters: const , const , const , const _



_description: _















//----------------------

##ofVec3f map(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz)

_syntax: map(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz)_

_name: map_

_returns: ofVec3f_

_parameters: const , const , const , const _



_description: _















//----------------------

##float distance(const ofVec3f &pnt) const 

_syntax: distance(const ofVec3f &pnt) const _

_name: distance_

_returns: float_

_parameters: const _



_description: _















//----------------------

##float squareDistance(const ofVec3f &pnt) const 

_syntax: squareDistance(const ofVec3f &pnt) const _

_name: squareDistance_

_returns: float_

_parameters: const _



_description: _















//----------------------

##ofVec3f getInterpolated(const ofVec3f &pnt, float p) const 

_syntax: getInterpolated(const ofVec3f &pnt, float p) const _

_name: getInterpolated_

_returns: ofVec3f_

_parameters: const , float_



_description: _















//----------------------

##ofVec3f interpolate(const ofVec3f &pnt, float p)

_syntax: interpolate(const ofVec3f &pnt, float p)_

_name: interpolate_

_returns: ofVec3f_

_parameters: const , float_



_description: _















//----------------------

##ofVec3f getMiddle(const ofVec3f &pnt) const 

_syntax: getMiddle(const ofVec3f &pnt) const _

_name: getMiddle_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f middle(const ofVec3f &pnt)

_syntax: middle(const ofVec3f &pnt)_

_name: middle_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f average(const ofVec3f *points, int num)

_syntax: average(const ofVec3f *points, int num)_

_name: average_

_returns: ofVec3f_

_parameters: const , int_



_description: _















//----------------------

##ofVec3f getNormalized() const 

_syntax: getNormalized() const _

_name: getNormalized_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f normalize()

_syntax: normalize()_

_name: normalize_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f getLimited(float max) const 

_syntax: getLimited(float max) const _

_name: getLimited_

_returns: ofVec3f_

_parameters: float_



_description: _















//----------------------

##ofVec3f limit(float max)

_syntax: limit(float max)_

_name: limit_

_returns: ofVec3f_

_parameters: float_



_description: _















//----------------------

##ofVec3f getCrossed(const ofVec3f &vec) const 

_syntax: getCrossed(const ofVec3f &vec) const _

_name: getCrossed_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f cross(const ofVec3f &vec)

_syntax: cross(const ofVec3f &vec)_

_name: cross_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f getPerpendicular(const ofVec3f &vec) const 

_syntax: getPerpendicular(const ofVec3f &vec) const _

_name: getPerpendicular_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f perpendicular(const ofVec3f &vec)

_syntax: perpendicular(const ofVec3f &vec)_

_name: perpendicular_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##float length() const 

_syntax: length() const _

_name: length_

_returns: float_

_parameters: _



_description: _















//----------------------

##float squareLength() const 

_syntax: squareLength() const _

_name: squareLength_

_returns: float_

_parameters: _



_description: _















//----------------------

##float angle(const ofVec3f &vec) const 

_syntax: angle(const ofVec3f &vec) const _

_name: angle_

_returns: float_

_parameters: const _



_description: _















//----------------------

##float angleRad(const ofVec3f &vec) const 

_syntax: angleRad(const ofVec3f &vec) const _

_name: angleRad_

_returns: float_

_parameters: const _



_description: _















//----------------------

##float dot(const ofVec3f &vec) const 

_syntax: dot(const ofVec3f &vec) const _

_name: dot_

_returns: float_

_parameters: const _



_description: _















//----------------------

##ofVec3f rescaled(const float length) const 

_syntax: rescaled(const float length) const _

_name: rescaled_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f rescale(const float length)

_syntax: rescale(const float length)_

_name: rescale_

_returns: ofVec3f_

_parameters: const float_



_description: _















//----------------------

##ofVec3f rotated(float angle, const ofVec3f &axis) const 

_syntax: rotated(float angle, const ofVec3f &axis) const _

_name: rotated_

_returns: ofVec3f_

_parameters: float, const _



_description: _















//----------------------

##ofVec3f rotated(float ax, float ay, float az)

_syntax: rotated(float ax, float ay, float az)_

_name: rotated_

_returns: ofVec3f_

_parameters: float, float, float_



_description: _















//----------------------

##ofVec3f normalized() const 

_syntax: normalized() const _

_name: normalized_

_returns: ofVec3f_

_parameters: _



_description: _















//----------------------

##ofVec3f limited(float max) const 

_syntax: limited(float max) const _

_name: limited_

_returns: ofVec3f_

_parameters: float_



_description: _















//----------------------

##ofVec3f crossed(const ofVec3f &vec) const 

_syntax: crossed(const ofVec3f &vec) const _

_name: crossed_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f perpendiculared(const ofVec3f &vec) const 

_syntax: perpendiculared(const ofVec3f &vec) const _

_name: perpendiculared_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##float lengthSquared() const 

_syntax: lengthSquared() const _

_name: lengthSquared_

_returns: float_

_parameters: _



_description: _















//----------------------

##ofVec3f mapped(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz) const 

_syntax: mapped(const ofVec3f &origin, const ofVec3f &vx, const ofVec3f &vy, const ofVec3f &vz) const _

_name: mapped_

_returns: ofVec3f_

_parameters: const , const , const , const _



_description: _















//----------------------

##float distanceSquared(const ofVec3f &pnt) const 

_syntax: distanceSquared(const ofVec3f &pnt) const _

_name: distanceSquared_

_returns: float_

_parameters: const _



_description: _















//----------------------

##ofVec3f interpolated(const ofVec3f &pnt, float p) const 

_syntax: interpolated(const ofVec3f &pnt, float p) const _

_name: interpolated_

_returns: ofVec3f_

_parameters: const , float_



_description: _















//----------------------

##ofVec3f middled(const ofVec3f &pnt) const 

_syntax: middled(const ofVec3f &pnt) const _

_name: middled_

_returns: ofVec3f_

_parameters: const _



_description: _















//----------------------

##ofVec3f rotated(float angle, const ofVec3f &pivot, const ofVec3f &axis) const 

_syntax: rotated(float angle, const ofVec3f &pivot, const ofVec3f &axis) const _

_name: rotated_

_returns: ofVec3f_

_parameters: float, const , const _



_description: _















