#class ofColor


##Description





This class contains variables defining a color. We can create a color object containing information about a certain color. 
For example:

$$code(lang=c++)

ofColor red;
red.r=255;
red.g=0;
red.b=0;
ofSetColor(red.r,red.g,red.b);

$$/code




ofColor represents a color in openFrameworks and enables a lot of extra functionality like using RGB or HSB color spectrums, lerping or linearly interpolating between colors, or inverting colors, among other things. You're probably familiar with RGB colors already, but HSB is a big part of ofCOlor and it uses a hue value between 0 and 360 to determine what the hue of a color will be:

![HSB](../types/hsb.png)

The saturation determines how much of the hue versus white is present and brightness determines how much hue versus black is present:

![SB](../types/hsb-cone.jpg)

ofColor is templated, which means that it has several different ways it can be created. These are probably best to leave as they are because there's already a few kinds type-deffed for you. You can make an ofFloatColor if you want to work with floating point numbers, ofShortColor if you want to work with ints, or the default ofColor, which uses unsigned char values.





##Methods



###void ofColor()

_syntax: ofColor()_

_name: ofColor_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _
























###void ~ofColor()

_syntax: ~ofColor()_

_name: ~ofColor_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _
























### ofColor_&lt;PixelType&gt;(_r, _g, _b, _a =  255.0f)

_syntax: ofColor_&lt;PixelType&gt;(_r, _g, _b, _a =  255.0f)_

_name: ofColor_&lt;PixelType&gt;_

_returns: _

_returns_description: _

_parameters: float _r, float _g, float _b, float _a = 255.0f_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


This creates a color using RGB







### ofColor_&lt;PixelType&gt;(color)

_syntax: ofColor_&lt;PixelType&gt;(color)_

_name: ofColor_&lt;PixelType&gt;_

_returns: _

_returns_description: _

_parameters: const ofColor_&lt;PixelType&gt; & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


This copies a color:

$$code(lang=c++)
ofColor mom(255, 0, 0);
ofColor c(mom);
$$/code







### ofColor_&lt;PixelType&gt;(color, _a)

_syntax: ofColor_&lt;PixelType&gt;(color, _a)_

_name: ofColor_&lt;PixelType&gt;_

_returns: _

_returns_description: _

_parameters: const ofColor_&lt;PixelType&gt; & color, float _a_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


$$code(lang=c++)
ofColor mom(255, 0, 0);
ofColor c(mom, 122); // now c is 50% alpha red
$$/code







### ofColor_&lt;PixelType&gt;(gray, _a =  255.0f)

_syntax: ofColor_&lt;PixelType&gt;(gray, _a =  255.0f)_

_name: ofColor_&lt;PixelType&gt;_

_returns: _

_returns_description: _

_parameters: float gray, float _a = 255.0f_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


$$code(lang=c++)
ofColor c(0.5, 122); // now c is 50% alpha gray, ooh, dismal
$$/code







### ofColor_&lt;PixelType&gt;(color)

_syntax: ofColor_&lt;PixelType&gt;(color)_

_name: ofColor_&lt;PixelType&gt;_

_returns: _

_returns_description: _

_parameters: const ofColor_&lt;SrcType&gt; & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


$$code(lang=c++)
ofColor mom(255, 0, 0);
ofColor c(mom, 122); // now c is 50% alpha red
$$/code







### ofColor_&lt;PixelType&gt; fromHsb(hue, saturation, brightness, alpha =  255.f)

_syntax: fromHsb(hue, saturation, brightness, alpha =  255.f)_

_name: fromHsb_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: float hue, float saturation, float brightness, float alpha = 255.f_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Allows you create a color from HSB settings. Important to note is that h is between 0 and 360, while s and b are between 0 and 1. The f







### ofColor_&lt;PixelType&gt; fromHex(hexColor, alpha =  255.f)

_syntax: fromHex(hexColor, alpha =  255.f)_

_name: fromHex_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: int hexColor, float alpha = 255.f_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


This allows you to create a color from a hexadecimal value like 0xffffff (white) or oxff000088 (red with 1/2 alpha). You get an ofColor instance back from the method so you can use it like:

$$code(lang=c++)
ofColor yellow = ofColor::fromHex(0xffff00);
ofColor halfYellow = ofColor::fromHex(0xffff00, 122);
$$/code







### void set(_r, _g, _b, _a =  255.0f)

_syntax: set(_r, _g, _b, _a =  255.0f)_

_name: set_

_returns:  void_

_returns_description: _

_parameters: float _r, float _g, float _b, float _a = 255.0f_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Set a color using RGB.

$$code(lang=c++)
ofColor c(255, 0, 0); // red
$$/code







### void set(_gray, _a =  255.0f)

_syntax: set(_gray, _a =  255.0f)_

_name: set_

_returns:  void_

_returns_description: _

_parameters: float _gray, float _a = 255.0f_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Grayscale, for the emo among us.

$$code(lang=c++)
ofColor c(0.5, 122); // now c is 50% alpha gray
$$/code







### void set(color)

_syntax: set(color)_

_name: set_

_returns:  void_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _










### void setHex(hexColor, alpha =  255.0f)

_syntax: setHex(hexColor, alpha =  255.0f)_

_name: setHex_

_returns:  void_

_returns_description: _

_parameters: int hexColor, float alpha = 255.0f_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _







### int getHex()

_syntax: getHex()_

_name: getHex_

_returns:  int_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Gets the value of the color as RGB hex, so for instance, 0xffff00, which would be yellow. Usually when we look at these colors in print they're hex, so don't be surprised if they don't look familiar when you print them as decimal.







### ofColor_&lt;PixelType&gt;& clamp()

_syntax: clamp()_

_name: clamp_

_returns:  ofColor_&lt;PixelType&gt;&_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


This clamps the values of your color in case they're too high or low for their types, in case you go negative or too use values that are too high, like anything >255.0.







### ofColor_&lt;PixelType&gt;& invert()

_syntax: invert()_

_name: invert_

_returns:  ofColor_&lt;PixelType&gt;&_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Flips your color. You probably can guess what this looks like.







### ofColor_&lt;PixelType&gt;& normalize()

_syntax: normalize()_

_name: normalize_

_returns:  ofColor_&lt;PixelType&gt;&_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


The following

$$code(lang=c++)
	ofColor c(122, 122, 0);
	ofSetColor(c);
	ofCircle(100, 100, 100);
	c.normalize();
	ofSetColor(c);
	ofCircle(300, 100, 100);
$$/code

will create this:

![ofNorm](../types/ofNormalize.png)









### ofColor_&lt;PixelType&gt;& lerp(target, amount)

_syntax: lerp(target, amount)_

_name: lerp_

_returns:  ofColor_&lt;PixelType&gt;&_

_returns_description: _

_parameters: const ofColor_&lt;PixelType&gt;& target, float amount_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


This awesome method allows you set a color based on a another color and the amount of that color that you want it to be set to, so for instance, if you had red and wanted halfway between red and blue, you could do this:

$$code(lang=c++)
ofColor r = ofColor::red;
ofColor b = ofColor::blue;
b.lerp(r, 0.5); // now purple!
$$/code







### ofColor_&lt;PixelType&gt; getClamped()

_syntax: getClamped()_

_name: getClamped_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Returns the clamped version of the color.







### ofColor_&lt;PixelType&gt; getInverted()

_syntax: getInverted()_

_name: getInverted_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Returns the inverted version of the color.







### ofColor_&lt;PixelType&gt; getNormalized()

_syntax: getNormalized()_

_name: getNormalized_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Returns the normalized version of the color.







### ofColor_&lt;PixelType&gt; getLerped(target, amount)

_syntax: getLerped(target, amount)_

_name: getLerped_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: const ofColor_&lt;PixelType&gt;& target, float amount_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Returns the lerped version of the color so you can make a new color from it, which is fun.







### float getHue()

_syntax: getHue()_

_name: getHue_

_returns:  float_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Gets the hue of the color, between 0 and 360







### float getSaturation()

_syntax: getSaturation()_

_name: getSaturation_

_returns:  float_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Gets the saturation of the color, between 0 and 1, that is, how much hue there is. No saturation and full brightness = white.







### float getBrightness()

_syntax: getBrightness()_

_name: getBrightness_

_returns:  float_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Gets the brightness of the color, that is, how black it is. No brightness = black.







### float getLightness()

_syntax: getLightness()_

_name: getLightness_

_returns:  float_

_returns_description: _

_parameters: _

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


creates average of the components







### void getHsb(hue, saturation, brightness)

_syntax: getHsb(hue, saturation, brightness)_

_name: getHsb_

_returns:  void_

_returns_description: _

_parameters: float& hue, float& saturation, float& brightness_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### void setHue(hue)

_syntax: setHue(hue)_

_name: setHue_

_returns:  void_

_returns_description: _

_parameters: float hue_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Sets the hue. Note the color wheel at the top. Hue values are from 0 to 360.0.







### void setSaturation(saturation)

_syntax: setSaturation(saturation)_

_name: setSaturation_

_returns:  void_

_returns_description: _

_parameters: float saturation_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Sets the saturation, note the color, em, diamond at the top. Saturation values are 0 to 1.0







### void setBrightness(brightness)

_syntax: setBrightness(brightness)_

_name: setBrightness_

_returns:  void_

_returns_description: _

_parameters: float brightness_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Sets the brightness, note the color gem at the top. Saturation values are 0 to 1.0







### void setHsb(hue, saturation, brightness, alpha)

_syntax: setHsb(hue, saturation, brightness, alpha)_

_name: setHsb_

_returns:  void_

_returns_description: _

_parameters: float hue, float saturation, float brightness, float alpha_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Sets the HSB all at once, with alpha included.







### void setHsb(hue, saturation, brightness)

_syntax: setHsb(hue, saturation, brightness)_

_name: setHsb_

_returns:  void_

_returns_description: _

_parameters: float hue, float saturation, float brightness_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Sets the HSB all at once, no need for alpha.







### ofColor_&lt;PixelType&gt; & operator=(color)

_syntax: operator=(color)_

_name: operator=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Operator overloading for a color, so you can do:

$$code(lang=c++)
ofColor newRed = ofColor::red;
$$/code







### ofColor_&lt;PixelType&gt; & operator=(color)

_syntax: operator=(color)_

_name: operator=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: ofColor_&lt;SrcType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Operator overloading for a color, so you can do:

$$code(lang=c++)
ofColor newRed = ofColor::red;
$$/code







### ofColor_&lt;PixelType&gt; & operator=(val)

_syntax: operator=(val)_

_name: operator=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### bool operator==(color)

_syntax: operator==(color)_

_name: operator==_

_returns:  bool_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### bool operator!=(color)

_syntax: operator!=(color)_

_name: operator!=_

_returns:  bool_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; operator+(color)

_syntax: operator+(color)_

_name: operator+_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; operator+(val)

_syntax: operator+(val)_

_name: operator+_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; & operator+=(color)

_syntax: operator+=(color)_

_name: operator+=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; & operator+=(val)

_syntax: operator+=(val)_

_name: operator+=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; operator-(color)

_syntax: operator-(color)_

_name: operator-_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; operator-(val)

_syntax: operator-(val)_

_name: operator-_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; & operator-=(color)

_syntax: operator-=(color)_

_name: operator-=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; & operator-=(val)

_syntax: operator-=(val)_

_name: operator-=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; operator*(color)

_syntax: operator*(color)_

_name: operator*_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; operator*(val)

_syntax: operator*(val)_

_name: operator*_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; & operator*=(color)

_syntax: operator*=(color)_

_name: operator*=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; & operator*=(val)

_syntax: operator*=(val)_

_name: operator*=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; operator/(color)

_syntax: operator/(color)_

_name: operator/_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; operator/(val)

_syntax: operator/(val)_

_name: operator/_

_returns:  ofColor_&lt;PixelType&gt;_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; & operator/=(color)

_syntax: operator/=(color)_

_name: operator/=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: ofColor_&lt;PixelType&gt; const & color_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### ofColor_&lt;PixelType&gt; & operator/=(val)

_syntax: operator/=(val)_

_name: operator/=_

_returns:  ofColor_&lt;PixelType&gt; &_

_returns_description: _

_parameters: float const & val_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _








### const PixelType & operator[](n)

_syntax: operator[](n)_

_name: operator[]_

_returns:  const PixelType &_

_returns_description: _

_parameters: int n_

_access: _

_version_started: _

_version_deprecated: _

_summary: _

_constant: False_

_static: False_

_visible: True_

_advanced: False_



_description: _


Gives you access to the color as an array:

[0] = r
[1] = g
[2] = b
[3] = a


Gives you access to the color as an array:

[0] = r
[1] = g
[2] = b
[3] = a








##Variables



###float r

_name: r_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: True_

_constant: False_

_advanced: False_



_description: _


Variable r contains the amount of red color our color object has. r needs to be a value between 0 and 255.



















###float g

_name: g_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: True_

_constant: False_

_advanced: False_



_description: _


Variable g contains the amount of green color our color object has. g needs to be a value between 0 and 255.



















###float b

_name: b_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: True_

_constant: False_

_advanced: False_



_description: _


Variable b contains the amount of blue color our color object has. b needs to be a value between 0 and 255.



















###float a

_name: a_

_type: float_

_access: public_

_version_started: 006_

_version_deprecated: _

_summary: _

_visible: True_

_constant: False_

_advanced: False_



_description: _


Variable a contains the alpha value of our color object.



















