#class ofColor

Example



Reference



Methods



//----------------------

##None ofColor()

_syntax: ofColor()_

_name: ofColor_

_returns: None_

_parameters: _



_description: _

None

<br/><br/>return type changed from  to None in 0.07













//----------------------

##None ofColor(float _r, float _g, float _b, float _a=255.0f)

_syntax: ofColor(float _r, float _g, float _b, float _a=255.0f)_

_name: ofColor_

_returns: None_

_parameters: float, float, float, float = 255.0f_



_description: _















//----------------------

##None ofColor(ofColor const &color, float _a)

_syntax: ofColor(ofColor const &color, float _a)_

_name: ofColor_

_returns: None_

_parameters: float_



_description: _















//----------------------

##None ofColor(float gray, float _a=255.0f)

_syntax: ofColor(float gray, float _a=255.0f)_

_name: ofColor_

_returns: None_

_parameters: float, float = 255.0f_



_description: _















//----------------------

##void set(float _r, float _g, float _b, float _a=255.0f)

_syntax: set(float _r, float _g, float _b, float _a=255.0f)_

_name: set_

_returns: void_

_parameters: float, float, float, float = 255.0f_



_description: _















//----------------------

##void set(float _gray, float _a=255.0f)

_syntax: set(float _gray, float _a=255.0f)_

_name: set_

_returns: void_

_parameters: float, float = 255.0f_



_description: _















//----------------------

##void set(ofColor const &color)

_syntax: set(ofColor const &color)_

_name: set_

_returns: void_

_parameters: _



_description: _















//----------------------

##void setHex(int hexColor, float alpha=255.0f)

_syntax: setHex(int hexColor, float alpha=255.0f)_

_name: setHex_

_returns: void_

_parameters: int, float = 255.0f_



_description: _















//----------------------

##int getHex() const 

_syntax: getHex() const _

_name: getHex_

_returns: int_

_parameters: _



_description: _















//----------------------

##ofColor clamp()

_syntax: clamp()_

_name: clamp_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor invert()

_syntax: invert()_

_name: invert_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor normalize()

_syntax: normalize()_

_name: normalize_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor lerp(const ofColor &target, float amount)

_syntax: lerp(const ofColor &target, float amount)_

_name: lerp_

_returns: ofColor_

_parameters: const , float_



_description: _















//----------------------

##ofColor getClamped() const 

_syntax: getClamped() const _

_name: getClamped_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor getInverted() const 

_syntax: getInverted() const _

_name: getInverted_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor getNormalized() const 

_syntax: getNormalized() const _

_name: getNormalized_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor getLerped(const ofColor &target, float amount) const 

_syntax: getLerped(const ofColor &target, float amount) const _

_name: getLerped_

_returns: ofColor_

_parameters: const , float_



_description: _















//----------------------

##float getHue() const 

_syntax: getHue() const _

_name: getHue_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getSaturation() const 

_syntax: getSaturation() const _

_name: getSaturation_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getBrightness() const 

_syntax: getBrightness() const _

_name: getBrightness_

_returns: float_

_parameters: _



_description: _















//----------------------

##float getLightness() const 

_syntax: getLightness() const _

_name: getLightness_

_returns: float_

_parameters: _



_description: _















//----------------------

##void getHsb(float &hue, float &saturation, float &brightness) const 

_syntax: getHsb(float &hue, float &saturation, float &brightness) const _

_name: getHsb_

_returns: void_

_parameters: float &, float &, float &_



_description: _















//----------------------

##void setHue(float hue)

_syntax: setHue(float hue)_

_name: setHue_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setSaturation(float saturation)

_syntax: setSaturation(float saturation)_

_name: setSaturation_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setBrightness(float brightness)

_syntax: setBrightness(float brightness)_

_name: setBrightness_

_returns: void_

_parameters: float_



_description: _















//----------------------

##void setHsb(float hue, float saturation, float brightness, float alpha)

_syntax: setHsb(float hue, float saturation, float brightness, float alpha)_

_name: setHsb_

_returns: void_

_parameters: float, float, float, float_



_description: _















//----------------------

##void setHsb(float hue, float saturation, float brightness)

_syntax: setHsb(float hue, float saturation, float brightness)_

_name: setHsb_

_returns: void_

_parameters: float, float, float_



_description: _















//----------------------

##ofColor operator=(ofColor const &color)

_syntax: operator=(ofColor const &color)_

_name: operator=_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator=(float const &val)

_syntax: operator=(float const &val)_

_name: operator=_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##bool operator==(ofColor const &color)

_syntax: operator==(ofColor const &color)_

_name: operator==_

_returns: bool_

_parameters: _



_description: _















//----------------------

##bool operator!=(ofColor const &color)

_syntax: operator!=(ofColor const &color)_

_name: operator!=_

_returns: bool_

_parameters: _



_description: _















//----------------------

##ofColor operator+(ofColor const &color) const 

_syntax: operator+(ofColor const &color) const _

_name: operator+_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator+(float const &val) const 

_syntax: operator+(float const &val) const _

_name: operator+_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##ofColor operator+=(ofColor const &color)

_syntax: operator+=(ofColor const &color)_

_name: operator+=_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator+=(float const &val)

_syntax: operator+=(float const &val)_

_name: operator+=_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##ofColor operator-(ofColor const &color) const 

_syntax: operator-(ofColor const &color) const _

_name: operator-_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator-(float const &val) const 

_syntax: operator-(float const &val) const _

_name: operator-_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##ofColor operator-=(ofColor const &color)

_syntax: operator-=(ofColor const &color)_

_name: operator-=_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator-=(float const &val)

_syntax: operator-=(float const &val)_

_name: operator-=_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##ofColor operator*(ofColor const &color) const 

_syntax: operator*(ofColor const &color) const _

_name: operator*_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator*(float const &val) const 

_syntax: operator*(float const &val) const _

_name: operator*_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##ofColor operator*=(ofColor const &color)

_syntax: operator*=(ofColor const &color)_

_name: operator*=_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator*=(float const &val)

_syntax: operator*=(float const &val)_

_name: operator*=_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##ofColor operator/(ofColor const &color) const 

_syntax: operator/(ofColor const &color) const _

_name: operator/_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator/(float const &val) const 

_syntax: operator/(float const &val) const _

_name: operator/_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##ofColor operator/=(ofColor const &color)

_syntax: operator/=(ofColor const &color)_

_name: operator/=_

_returns: ofColor_

_parameters: _



_description: _















//----------------------

##ofColor operator/=(float const &val)

_syntax: operator/=(float const &val)_

_name: operator/=_

_returns: ofColor_

_parameters: float const &_



_description: _















//----------------------

##float & operator[](int n)

_syntax: operator[](int n)_

_name: operator[]_

_returns: float &_

_parameters: int_



_description: _















//----------------------

##ofColor fromHsb(float hue, float saturation, float brightness, float alpha=255.f)

_syntax: fromHsb(float hue, float saturation, float brightness, float alpha=255.f)_

_name: fromHsb_

_returns: ofColor_

_parameters: float, float, float, float = 255.f_



_description: _















//----------------------

##ofColor fromHex(int hexColor, float alpha=255.f)

_syntax: fromHex(int hexColor, float alpha=255.f)_

_name: fromHex_

_returns: ofColor_

_parameters: int, float = 255.f_



_description: _















//----------------------

##None ~ofColor()

_syntax: ~ofColor()_

_name: ~ofColor_

_returns: None_

_parameters: _



_description: _

None

<br/><br/>return type changed from  to None in 0.07













