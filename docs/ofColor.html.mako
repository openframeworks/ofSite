<%inherit file="_templates/docs.mako" />
___ofColor___
$$code(lang=c++)
const  gray
$$/code



$$code(lang=c++)
const  white
$$/code



$$code(lang=c++)
const  red
$$/code



$$code(lang=c++)
const  green
$$/code



$$code(lang=c++)
const  blue
$$/code



$$code(lang=c++)
const  cyan
$$/code



$$code(lang=c++)
const  magenta
$$/code



$$code(lang=c++)
const  yellow
$$/code



$$code(lang=c++)
const  black
$$/code



$$code(lang=c++)
float r
$$/code



$$code(lang=c++)
float g
$$/code



$$code(lang=c++)
float b
$$/code



$$code(lang=c++)
float a
$$/code



$$code(lang=c++)
float v
$$/code



$$code(lang=c++)
union ofColor::@0 @1
$$/code



$$code(lang=c++)
None ofColor()
$$/code



$$code(lang=c++)
None ~ofColor()
$$/code



$$code(lang=c++)
None ofColor(float _r, float _g, float _b, float _a=255.0f)
$$/code



$$code(lang=c++)
None ofColor(ofColor const &color)
$$/code



$$code(lang=c++)
None ofColor(ofColor const &color, float _a)
$$/code



$$code(lang=c++)
None ofColor(float gray, float _a=255.0f)
$$/code



$$code(lang=c++)
void set(float _r, float _g, float _b, float _a=255.0f)
$$/code



$$code(lang=c++)
void set(float _gray, float _a=255.0f)
$$/code



$$code(lang=c++)
void set(ofColor const &color)
$$/code



$$code(lang=c++)
void setHex(int hexColor, float alpha=255.0f)
$$/code



$$code(lang=c++)
int getHex() const 
$$/code



$$code(lang=c++)
None clamp()
$$/code



$$code(lang=c++)
None invert()
$$/code



$$code(lang=c++)
None normalize()
$$/code



$$code(lang=c++)
None lerp(const ofColor &target, float amount)
$$/code



$$code(lang=c++)
None getClamped() const 
$$/code



$$code(lang=c++)
None getInverted() const 
$$/code



$$code(lang=c++)
None getNormalized() const 
$$/code



$$code(lang=c++)
None getLerped(const ofColor &target, float amount) const 
$$/code



$$code(lang=c++)
float getHue() const 
$$/code



$$code(lang=c++)
float getSaturation() const 
$$/code



$$code(lang=c++)
float getBrightness() const 
$$/code



$$code(lang=c++)
float getLightness() const 
$$/code



$$code(lang=c++)
void getHsb(float &hue, float &saturation, float &brightness) const 
$$/code



$$code(lang=c++)
void setHue(float hue)
$$/code



$$code(lang=c++)
void setSaturation(float saturation)
$$/code



$$code(lang=c++)
void setBrightness(float brightness)
$$/code



$$code(lang=c++)
void setHsb(float hue, float saturation, float brightness, float alpha)
$$/code



$$code(lang=c++)
void setHsb(float hue, float saturation, float brightness)
$$/code



$$code(lang=c++)
None operator=(ofColor const &color)
$$/code



$$code(lang=c++)
None operator=(float const &val)
$$/code



$$code(lang=c++)
bool operator==(ofColor const &color)
$$/code



$$code(lang=c++)
bool operator!=(ofColor const &color)
$$/code



$$code(lang=c++)
None operator+(ofColor const &color) const 
$$/code



$$code(lang=c++)
None operator+(float const &val) const 
$$/code



$$code(lang=c++)
None operator+=(ofColor const &color)
$$/code



$$code(lang=c++)
None operator+=(float const &val)
$$/code



$$code(lang=c++)
None operator-(ofColor const &color) const 
$$/code



$$code(lang=c++)
None operator-(float const &val) const 
$$/code



$$code(lang=c++)
None operator-=(ofColor const &color)
$$/code



$$code(lang=c++)
None operator-=(float const &val)
$$/code



$$code(lang=c++)
None operator*(ofColor const &color) const 
$$/code



$$code(lang=c++)
None operator*(float const &val) const 
$$/code



$$code(lang=c++)
None operator*=(ofColor const &color)
$$/code



$$code(lang=c++)
None operator*=(float const &val)
$$/code



$$code(lang=c++)
None operator/(ofColor const &color) const 
$$/code



$$code(lang=c++)
None operator/(float const &val) const 
$$/code



$$code(lang=c++)
None operator/=(ofColor const &color)
$$/code



$$code(lang=c++)
None operator/=(float const &val)
$$/code



$$code(lang=c++)
float & operator[](int n)
$$/code



$$code(lang=c++)
None fromHsb(float hue, float saturation, float brightness, float alpha=255.f)
$$/code



$$code(lang=c++)
None fromHex(int hexColor, float alpha=255.f)
$$/code



