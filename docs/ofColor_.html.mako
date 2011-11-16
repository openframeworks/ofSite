<%inherit file="_templates/docs.mako" />
___ofColor____
$$code(lang=c++)
const  white
$$/code



$$code(lang=c++)
const  gray
$$/code



$$code(lang=c++)
const  black
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
PixelType r
$$/code



$$code(lang=c++)
PixelType g
$$/code



$$code(lang=c++)
PixelType b
$$/code



$$code(lang=c++)
PixelType a
$$/code



$$code(lang=c++)
PixelType v
$$/code



$$code(lang=c++)
union ofColor_::@0 @1
$$/code



$$code(lang=c++)
None ofColor_()
$$/code



$$code(lang=c++)
None ~ofColor_()
$$/code



$$code(lang=c++)
None ofColor_(float _r, float _g, float _b, float _a=limit())
$$/code



$$code(lang=c++)
None ofColor_(const ofColor_< PixelType > &color)
$$/code



$$code(lang=c++)
None ofColor_(const ofColor_< PixelType > &color, float _a)
$$/code



$$code(lang=c++)
None ofColor_(float gray, float _a=limit())
$$/code



$$code(lang=c++)
None ofColor_(const ofColor_< SrcType > &color)
$$/code



$$code(lang=c++)
void set(float _r, float _g, float _b, float _a=limit())
$$/code



$$code(lang=c++)
void set(float _gray, float _a=limit())
$$/code



$$code(lang=c++)
void set(ofColor_< PixelType > const &color)
$$/code



$$code(lang=c++)
void setHex(int hexColor, float alpha=limit())
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
None lerp(const ofColor_< PixelType > &target, float amount)
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
None getLerped(const ofColor_< PixelType > &target, float amount) const 
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
None operator=(ofColor_< PixelType > const &color)
$$/code



$$code(lang=c++)
None operator=(ofColor_< SrcType > const &color)
$$/code



$$code(lang=c++)
None operator=(float const &val)
$$/code



$$code(lang=c++)
bool operator==(ofColor_< PixelType > const &color)
$$/code



$$code(lang=c++)
bool operator!=(ofColor_< PixelType > const &color)
$$/code



$$code(lang=c++)
None operator+(ofColor_< PixelType > const &color) const 
$$/code



$$code(lang=c++)
None operator+(float const &val) const 
$$/code



$$code(lang=c++)
None operator+=(ofColor_< PixelType > const &color)
$$/code



$$code(lang=c++)
None operator+=(float const &val)
$$/code



$$code(lang=c++)
None operator-(ofColor_< PixelType > const &color) const 
$$/code



$$code(lang=c++)
None operator-(float const &val) const 
$$/code



$$code(lang=c++)
None operator-=(ofColor_< PixelType > const &color)
$$/code



$$code(lang=c++)
None operator-=(float const &val)
$$/code



$$code(lang=c++)
None operator*(ofColor_< PixelType > const &color) const 
$$/code



$$code(lang=c++)
None operator*(float const &val) const 
$$/code



$$code(lang=c++)
None operator*=(ofColor_< PixelType > const &color)
$$/code



$$code(lang=c++)
None operator*=(float const &val)
$$/code



$$code(lang=c++)
None operator/(ofColor_< PixelType > const &color) const 
$$/code



$$code(lang=c++)
None operator/(float const &val) const 
$$/code



$$code(lang=c++)
None operator/=(ofColor_< PixelType > const &color)
$$/code



$$code(lang=c++)
None operator/=(float const &val)
$$/code



$$code(lang=c++)
const PixelType & operator[](int n) const 
$$/code



$$code(lang=c++)
PixelType & operator[](int n)
$$/code



$$code(lang=c++)
None fromHsb(float hue, float saturation, float brightness, float alpha=limit())
$$/code



$$code(lang=c++)
None fromHex(int hexColor, float alpha=limit())
$$/code



$$code(lang=c++)
float limit()
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
void copyFrom(const ofColor_< SrcType > &mom)
$$/code



