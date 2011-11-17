#class ofVec4f

Example



Reference



Methods



//----------------------

##None ofVec4f(float _x=0.f, float _y=0.f, float _z=0.f, float _w=0.f)

_syntax: ofVec4f(float _x=0.f, float _y=0.f, float _z=0.f, float _w=0.f)_

_name: ofVec4f_

_returns: None_

_parameters: float = 0.f, float = 0.f, float = 0.f, float = 0.f_



_description: _















//----------------------

##None ofVec4f(const ofVec2f &vec)

_syntax: ofVec4f(const ofVec2f &vec)_

_name: ofVec4f_

_returns: None_

_parameters: const _



_description: _















//----------------------

##void set(float _x, float _y, float _z, float _w)

_syntax: set(float _x, float _y, float _z, float _w)_

_name: set_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void set(const ofVec4f &vec)

_syntax: set(const ofVec4f &vec)_

_name: set_

_returns: void_

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

##bool operator==(const ofVec4f &vec) const 

_syntax: operator==(const ofVec4f &vec) const _

_name: operator==_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool operator!=(const ofVec4f &vec) const 

_syntax: operator!=(const ofVec4f &vec) const _

_name: operator!=_

_returns: bool_

_parameters: const _



_description: _















//----------------------

##bool match(const ofVec4f &vec, float tollerance=0.0001) const 

_syntax: match(const ofVec4f &vec, float tollerance=0.0001) const _

_name: match_

_returns: bool_

_parameters: const , float = 0.0001_



_description: _















//----------------------

##ofVec4f operator+(const ofVec4f &vec) const 

_syntax: operator+(const ofVec4f &vec) const _

_name: operator+_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f operator+=(const ofVec4f &vec)

_syntax: operator+=(const ofVec4f &vec)_

_name: operator+=_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f operator-(const float f) const 

_syntax: operator-(const float f) const _

_name: operator-_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f operator-=(const float f)

_syntax: operator-=(const float f)_

_name: operator-=_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f operator-(const ofVec4f &vec) const 

_syntax: operator-(const ofVec4f &vec) const _

_name: operator-_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f operator-=(const ofVec4f &vec)

_syntax: operator-=(const ofVec4f &vec)_

_name: operator-=_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f operator+(const float f) const 

_syntax: operator+(const float f) const _

_name: operator+_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f operator+=(const float f)

_syntax: operator+=(const float f)_

_name: operator+=_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f operator-() const 

_syntax: operator-() const _

_name: operator-_

_returns: ofVec4f_

_parameters: _



_description: _















//----------------------

##ofVec4f operator*(const ofVec4f &vec) const 

_syntax: operator*(const ofVec4f &vec) const _

_name: operator*_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f operator*=(const ofVec4f &vec)

_syntax: operator*=(const ofVec4f &vec)_

_name: operator*=_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f operator*(const float f) const 

_syntax: operator*(const float f) const _

_name: operator*_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f operator*=(const float f)

_syntax: operator*=(const float f)_

_name: operator*=_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f operator/(const ofVec4f &vec) const 

_syntax: operator/(const ofVec4f &vec) const _

_name: operator/_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f operator/=(const ofVec4f &vec)

_syntax: operator/=(const ofVec4f &vec)_

_name: operator/=_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f operator/(const float f) const 

_syntax: operator/(const float f) const _

_name: operator/_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f operator/=(const float f)

_syntax: operator/=(const float f)_

_name: operator/=_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f getScaled(const float length) const 

_syntax: getScaled(const float length) const _

_name: getScaled_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f scale(const float length)

_syntax: scale(const float length)_

_name: scale_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##float distance(const ofVec4f &pnt) const 

_syntax: distance(const ofVec4f &pnt) const _

_name: distance_

_returns: float_

_parameters: const _



_description: _















//----------------------

##float squareDistance(const ofVec4f &pnt) const 

_syntax: squareDistance(const ofVec4f &pnt) const _

_name: squareDistance_

_returns: float_

_parameters: const _



_description: _















//----------------------

##ofVec4f getInterpolated(const ofVec4f &pnt, float p) const 

_syntax: getInterpolated(const ofVec4f &pnt, float p) const _

_name: getInterpolated_

_returns: ofVec4f_

_parameters: const , float_



_description: _















//----------------------

##ofVec4f interpolate(const ofVec4f &pnt, float p)

_syntax: interpolate(const ofVec4f &pnt, float p)_

_name: interpolate_

_returns: ofVec4f_

_parameters: const , float_



_description: _















//----------------------

##ofVec4f getMiddle(const ofVec4f &pnt) const 

_syntax: getMiddle(const ofVec4f &pnt) const _

_name: getMiddle_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f middle(const ofVec4f &pnt)

_syntax: middle(const ofVec4f &pnt)_

_name: middle_

_returns: ofVec4f_

_parameters: const _



_description: _















//----------------------

##ofVec4f average(const ofVec4f *points, int num)

_syntax: average(const ofVec4f *points, int num)_

_name: average_

_returns: ofVec4f_

_parameters: const , int_



_description: _















//----------------------

##ofVec4f getNormalized() const 

_syntax: getNormalized() const _

_name: getNormalized_

_returns: ofVec4f_

_parameters: _



_description: _















//----------------------

##ofVec4f normalize()

_syntax: normalize()_

_name: normalize_

_returns: ofVec4f_

_parameters: _



_description: _















//----------------------

##ofVec4f getLimited(float max) const 

_syntax: getLimited(float max) const _

_name: getLimited_

_returns: ofVec4f_

_parameters: float_



_description: _















//----------------------

##ofVec4f limit(float max)

_syntax: limit(float max)_

_name: limit_

_returns: ofVec4f_

_parameters: float_



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

##float dot(const ofVec4f &vec) const 

_syntax: dot(const ofVec4f &vec) const _

_name: dot_

_returns: float_

_parameters: const _



_description: _















//----------------------

##ofVec4f rescaled(const float length) const 

_syntax: rescaled(const float length) const _

_name: rescaled_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f rescale(const float length)

_syntax: rescale(const float length)_

_name: rescale_

_returns: ofVec4f_

_parameters: const float_



_description: _















//----------------------

##ofVec4f normalized() const 

_syntax: normalized() const _

_name: normalized_

_returns: ofVec4f_

_parameters: _



_description: _















//----------------------

##ofVec4f limited(float max) const 

_syntax: limited(float max) const _

_name: limited_

_returns: ofVec4f_

_parameters: float_



_description: _















//----------------------

##float lengthSquared() const 

_syntax: lengthSquared() const _

_name: lengthSquared_

_returns: float_

_parameters: _



_description: _















//----------------------

##float distanceSquared(const ofVec4f &pnt) const 

_syntax: distanceSquared(const ofVec4f &pnt) const _

_name: distanceSquared_

_returns: float_

_parameters: const _



_description: _















//----------------------

##ofVec4f interpolated(const ofVec4f &pnt, float p) const 

_syntax: interpolated(const ofVec4f &pnt, float p) const _

_name: interpolated_

_returns: ofVec4f_

_parameters: const , float_



_description: _















//----------------------

##ofVec4f middled(const ofVec4f &pnt) const 

_syntax: middled(const ofVec4f &pnt) const _

_name: middled_

_returns: ofVec4f_

_parameters: const _



_description: _















