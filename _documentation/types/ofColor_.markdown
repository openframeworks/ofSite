#class ofColor_


<!--
_visible: True_
_advanced: False_
_istemplated: True_
-->

##InlineDescription






##Description

ofColor represents a color in openFrameworks. Colors are usually defined by specifying a red, green, and blue component (RGB), and a transparency (alpha) component. You can also specify colors using hue, saturation and brightness (HSB).

For example: 

~~~~{.cpp}
// set red, component by component
ofColor red;
red.r=255;
red.g=0;
red.b=0;
ofSetColor(red); 
// draw color is now red

// shorter notation is also possible
ofColor green(0, 255, 0);
ofSetColor(green); 
// draw color is now green

// or even shorter 
ofSetColor( ofColor(0, 0, ofRandom( 128, 255 ) ); 
// draw color is now a random blue
~~~~

ofColor also enables a lot of extra functionality like using HSB instead of color spectrums, lerping or linearly interpolating between colors, and inverting colors, among other things. 

ofColor is templated, which means that it has several different ways it can be created. These are probably best to leave as they are because there's already a few kinds typedefed for you. The default ofColor uses unsigned char values (0 to 255), but you can make an ofFloatColor if you want to work with floating point numbers between 0 and 1, or ofShortColor if you want to work with integers between 0 and 65,535.

### HSB

You're probably familiar with RGB colors already, but HSB is a big part of ofColor. It uses a *hue* value (for the standard ofColor the range for this value is between 0 and 255) to determine what the hue (the 'color' in the sense of a color in the rainbow) will be:

![HSB](../types/hsb.png)

Approximate hues for some common colors:

* Red: 0 (wrapped round from 255)
* Orange: 25
* Yellow: 42
* Green: 85
* Blue: 170
* Purple: 205
* Red: 255 (wraps round to 0)

Once you've selected a hue, you can use the *saturation* and *brightness* values to further refine the color. The saturation determines how much of the hue versus white is present and brightness determines how much hue versus black is present:

![SB](../types/hsb-cone.jpg)

In other words, saturation refers to the intensity of the color: high saturation means intense color, low saturation means washed out or black and white. Brightness refers to how light or dark the color is: high brightness means a bright color, low brightness means a dark color. If the brightness is 0 the resulting color will be black, regardless of the values of hue or saturation.





##Methods



###ofColor_< PixelType > & clamp()

<!--
_syntax: clamp()_
_name: clamp_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


This clamps the values of your color in case they're too high or low for their types, in case you go negative or too use values that are too high, like anything >1.0 in the case of ofFloatColor.

~~~~{.cpp}
ofFloatColor c( 1, 0, 0 );
c.g = 2; // g now has 2: this is usually invalid!
c.clamp(); // c.g has now been clamped so its value is 1.
~~~~







<!----------------------------------------------------------------------------->

###void copyFrom(&mom)

<!--
_syntax: copyFrom(&mom)_
_name: copyFrom_
_returns: void_
_returns_description: _
_parameters: const ofColor_< SrcType > &mom_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###ofColor_< PixelType > fromHex(hexColor, alpha = limit())

<!--
_syntax: fromHex(hexColor, alpha = limit())_
_name: fromHex_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: int hexColor, float alpha=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Convenience method to construct an ofColor from a 24 bit hex value.

~~~~{.cpp}
ofColor c = ofColor::fromHex(0xFFFF00); // c is yellow
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > fromHsb(hue, saturation, brightness, alpha = limit())

<!--
_syntax: fromHsb(hue, saturation, brightness, alpha = limit())_
_name: fromHsb_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: float hue, float saturation, float brightness, float alpha=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Convenience method to construct an ofColor from Hsb values.

~~~~{.cpp}
ofColor c = ofColor::fromHsb(128, 255, 255); // c is bright saturated cyan
~~~~







<!----------------------------------------------------------------------------->

###float getBrightness()

<!--
_syntax: getBrightness()_
_name: getBrightness_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return the brightness component of the HSB representation of this color. Refer the [discussion of HSB](#HSB) above.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > getClamped()

<!--
_syntax: getClamped()_
_name: getClamped_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns a clamped version of this color, without modifying the original. See [clamp](#clamp) for more info.







<!----------------------------------------------------------------------------->

###int getHex()

<!--
_syntax: getHex()_
_name: getHex_
_returns: int_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return a 24 bit hexidecimal number representing this color.

~~~~{.cpp}
ofColor c( 255, 255, 0 ); // yellow
int hex = c.getHex(); // hex is 0xffff00 (or 16776960 in decimal)
~~~~

Usually when we look at these colors in print they're hex, so don't be surprised if they don't look familiar when you print them as decimal. 







<!----------------------------------------------------------------------------->

###void getHsb(&hue, &saturation, &brightness)

<!--
_syntax: getHsb(&hue, &saturation, &brightness)_
_name: getHsb_
_returns: void_
_returns_description: _
_parameters: float &hue, float &saturation, float &brightness_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return all three components of the HSB representation of this color at the same time.

~~~~{.cpp}
ofColor red(255,0,0);
float hue, saturation, brightness;
red.getHsb( hue, saturation, brightness );
// hue is now 0 (for red), saturation is 255, brightness is 255
~~~~

Refer the [discussion of HSB](#HSB) above.







<!----------------------------------------------------------------------------->

###float getHue()

<!--
_syntax: getHue()_
_name: getHue_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return the hue component of the HSB representation of this color. Refer the [discussion of HSB](#HSB) above.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > getInverted()

<!--
_syntax: getInverted()_
_name: getInverted_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the color that is the inverted version (complement) to this color, without modifying the original. See [invert](#invert) for more info.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > getLerped(&target, amount)

<!--
_syntax: getLerped(&target, amount)_
_name: getLerped_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const ofColor_< PixelType > &target, float amount_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns this color lerped towards target by amount, without modifying the original. See [lerp](#lerp) for more info.







<!----------------------------------------------------------------------------->

###float getLightness()

<!--
_syntax: getLightness()_
_name: getLightness_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return the average of the three color components. This is used by the Lab and HSL color spaces.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > getNormalized()

<!--
_syntax: getNormalized()_
_name: getNormalized_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _








_description: _


Returns the normalized version of this color, without modifying the original. See [normalize](#normalize) for more info.







<!----------------------------------------------------------------------------->

###float getSaturation()

<!--
_syntax: getSaturation()_
_name: getSaturation_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Return the saturation component of the HSB representation of this color. Refer the [discussion of HSB](#HSB) above.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & invert()

<!--
_syntax: invert()_
_name: invert_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Invert the color, which turns it into its complement.

~~~~{.cpp}
ofColor c(0, 0, 255); // blue
c.invert(); // c is now (255,255,0), or yellow, which is blue's complement
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & lerp(&target, amount)

<!--
_syntax: lerp(&target, amount)_
_name: lerp_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const ofColor_< PixelType > &target, float amount_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Perform a linear interpolation (lerp) between this color and the target. Amount is a percentage represented by a float from 0 to 1. 

This function allows to blend between colors. For instance, if you have red and you want halfway between red and blue, you can do this:
~~~~{.cpp}
ofColor r = ofColor::red;
ofColor b = ofColor::blue;
b.lerp(r, 0.5); // now purple!
~~~~







<!----------------------------------------------------------------------------->

###float limit()

<!--
_syntax: limit()_
_name: limit_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: True_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns the maximum value for a component for this color. For standard ofColor returns 255, for ofFloatColor returns 1.0, for ofShortColor returns 65,536.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & normalize()

<!--
_syntax: normalize()_
_name: normalize_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: True_
-->

_inlined_description: _








_description: _


Divide all color components by brightness. This has the effect of conforming the color to the outer surface of the hue/saturation/brightness spherical color space, by forcing a unit radius (brightness).

The following
~~~~{.cpp}
	ofColor c(122, 122, 0);
	ofSetColor(c);
	ofCircle(100, 100, 100);
	c.normalize();
	ofSetColor(c);
	ofCircle(300, 100, 100);
~~~~

will create this:

![ofNorm](../types/ofNormalize.png)







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a color and sets it to white.

~~~~{.cpp}
ofColor c;
ofSetColor( c ); // draw color is now white
~~~~







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a color using RGB values and optional alpha value. The default alpha value makes a completely opaque color:

~~~~{.cpp}
ofColor c1(255, 0, 0); // red with 100% alpha
ofColor c2(255, 0, 0, 128); // red with 50% alpha.
~~~~







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a gray color from the value of gray. _a defaults to completely opaque.

~~~~{.cpp}
ofColor c(0.5, 122); // now c is 50% alpha gray, ooh, dismal
~~~~







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a color by copying another color:

~~~~{.cpp}
ofColor mom(255, 0, 0);
ofColor c(mom);
~~~~







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a color by copying another color, overriding the existing alpha value with the value of _a:

~~~~{.cpp}
ofColor mom(255, 0, 0); // red
ofColor c(mom, 128); // now c is red with 50% alpha
~~~~







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a color by copying another color with a different type (for example when copying from a standard ofColor using unsigned chars to an ofFloatColor):

~~~~{.cpp}
ofColor c1(255, 128, 0); // orange
ofFloatColor c2(c1);
float g = c2.g; // g is now 0.5
~~~~







<!----------------------------------------------------------------------------->

###bool operator!=(&color)

<!--
_syntax: operator!=(&color)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Non-equivalence operator. Returns true if any RGB component is different from its equivalent in color, otherwise returns false.

~~~~{.cpp}
ofColor c1(255, 0, 0); // red
ofColor c2(0, 255, 0); // green
ofColor c3(255, 0, 0); // red
// ( c1 != c2 ) is true
// ( c1 != c3 ) is false
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator*(&color)

<!--
_syntax: operator*(&color)_
_name: operator*_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns a new color where each channel has been multiplied by its parallel in color, with 100% alpha. Behaves like a multiply blend in a photo editing app: if the red channel in color is 50%, the output red channel will be 50% of the input red channel.

~~~~{.cpp}
ofColor c1(128, 0, 0); // 50% red
ofColor c2(255, 255, 255); // white
ofColor c3 = c2*c1; // c3 is (128, 0, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator*(&val)

<!--
_syntax: operator*(&val)_
_name: operator*_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Returns a new color where each channel has been multiplied by val, with alpha 100% alpha. Before multiplying, val is clamped to a range of 0 to 1.

~~~~{.cpp}
ofColor c1(255, 128, 0);
ofColor c2 = c1*0.5; // c2 is (127, 64, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator*=(&color)

<!--
_syntax: operator*=(&color)_
_name: operator*=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Multiplication assignment operator. Multiplies each channel by its parallel in color, without touching alpha. Behaves like a multiply blend in a photo editing app: if the red channel in color is 50%, the red channel in this color will be reduced to 50% of its input value.

~~~~{.cpp}
ofColor c1(128, 0, 0); // 50% red
ofColor c2(255, 255, 255); // white
ofColor c2 *= c1; // c2 is now (128, 0, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator*=(&val)

<!--
_syntax: operator*=(&val)_
_name: operator*=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Multiplication assignment operator. Multiplies each channel by val, without touching alpha. Before multiplying, val is clamped to a range of 0 to 1.

~~~~{.cpp}
ofColor c1(255, 128, 0);
ofColor c1*=0.5; // c2 is (127, 64, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator+(&color)

<!--
_syntax: operator+(&color)_
_name: operator+_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Sum red, green and blue components separately, ignoring alpha. In the case of integer types, like ofColor and ofShortColor this operation wraps. In the case of ofFloatColor, it automatically clamps the result by calling [clamp](#clamp).

~~~~{.cpp}
ofColor c1(64, 64, 0, 128);
ofColor c2(0, 64, 64, 64 );
ofColor c3 = c1 + c2; // c3 is (64, 128, 64) with alpha 128
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator+(&val)

<!--
_syntax: operator+(&val)_
_name: operator+_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Add val to all components except alpha. In the case of integer types, like ofColor and ofShortColor this operation wraps. In the case of ofFloatColor, it automatically clamps the result by calling [clamp](#clamp).

~~~~{.cpp}
ofColor c1(128, 64, 0, 128);
ofColor c2 = c1 + 64; // c3 is (192, 128, 64) with alpha 128
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator+=(&color)

<!--
_syntax: operator+=(&color)_
_name: operator+=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Addition assignment operator. Adds the contents of color (except alpha) to this color. In the case of integer types, like ofColor and ofShortColor this operation wraps. In the case of ofFloatColor, it automatically clamps the result by calling [clamp](#clamp).

~~~~{.cpp}
ofColor c1(0, 64, 0);
ofColor c2(64, 64, 0);
c1 += c2; // c1 is now (64, 128, 0);
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator+=(&val)

<!--
_syntax: operator+=(&val)_
_name: operator+=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Addition assignment operator. Adds val to all components (except alpha) to this color. In the case of integer types, like ofColor and ofShortColor this operation wraps. In the case of ofFloatColor, it automatically clamps the result by calling [clamp](#clamp).

~~~~{.cpp}
ofColor c1(128, 64, 0);
c1 += 128; // c1 is now (255, 192, 128)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator-(&color)

<!--
_syntax: operator-(&color)_
_name: operator-_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Subtraction operator. Works like [the addition operator](#operator+).







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator-(&val)

<!--
_syntax: operator-(&val)_
_name: operator-_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Subtraction operator. Works like [the addition operator](#operator+).







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator-=(&color)

<!--
_syntax: operator-=(&color)_
_name: operator-=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Subtraction assignment operator. Works like [the addition assignment operator](#operator+=).







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator-=(&val)

<!--
_syntax: operator-=(&val)_
_name: operator-=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Subtraction assignment operator. Works like [the addition assignment operator](#operator+=).







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator/(&color)

<!--
_syntax: operator/(&color)_
_name: operator/_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Division operator. Works similar to [the * operator](#operator*) but divides instead of multiplies.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator/(&val)

<!--
_syntax: operator/(&val)_
_name: operator/_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Division operator. Works similar to [the * operator](#operator*) but divides instead of multiplies.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator/=(&color)

<!--
_syntax: operator/=(&color)_
_name: operator/=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Division assignment operator. Works similar to [the *= operator](#operator*=) but divides instead of multiplies.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator/=(&val)

<!--
_syntax: operator/=(&val)_
_name: operator/=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Division assignment operator. Works similar to [the *= operator](#operator*=) but divides instead of multiplies.







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator=(&color)

<!--
_syntax: operator=(&color)_
_name: operator=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Assignment operator.

~~~~{.cpp}
ofColor c1(255, 0, 0); // red
ofColor c2; // default white
c2 = c1; // c2 is now red
~~~~

The color types can be different: you can assign an ofFloatColor to an ofColor:

~~~~{.cpp}
ofFloatColor c1(1.0, 0.0, 0.0); // red
ofColor c2; // default white
c2 = c1; // c2 is now red (255, 0, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator=(&color)

<!--
_syntax: operator=(&color)_
_name: operator=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: ofColor_< SrcType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator=(&val)

<!--
_syntax: operator=(&val)_
_name: operator=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Assigns val to all components, including alpha. Has the same effect as calling [set(val,val)](#set).

~~~~{.cpp}
ofColor c;
c.set( 128 ); // c is RGB (128, 128, 128) with alpha of 128
~~~~







<!----------------------------------------------------------------------------->

###bool operator==(&color)

<!--
_syntax: operator==(&color)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Equivalence operator. Returns true if every RGB component is the same as its equivalent in color, otherwise returns false. 

~~~~{.cpp}
ofColor c1(255, 0, 0); // red
ofColor c2(0, 255, 0); // green
ofColor c3(255, 0, 0); // red
// ( c1 == c2 ) is false
// ( c1 == c3 ) is true
~~~~







<!----------------------------------------------------------------------------->

###PixelType & operator[](n)

<!--
_syntax: operator[](n)_
_name: operator[]_
_returns: PixelType &_
_returns_description: _
_parameters: int n_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Array subscript operator. If n is 0 returns .r, if 1 returns .g, if 2 returns .b, if 3 returns alpha.

~~~~{.cpp}
ofColor c(128, 64, 255);
float red = c[0]; // red is 128
~~~~







<!----------------------------------------------------------------------------->

###void set(_r, _g, _b, _a = limit())

<!--
_syntax: set(_r, _g, _b, _a = limit())_
_name: set_
_returns: void_
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a color using RGB values and optional alpha value. The default alpha value makes a completely opaque color.

~~~~{.cpp}
ofColor c(255, 0, 0); // red
c.set(0, 255, 0); // and now green
~~~~







<!----------------------------------------------------------------------------->

###void set(_gray, _a = limit())

<!--
_syntax: set(_gray, _a = limit())_
_name: set_
_returns: void_
_returns_description: _
_parameters: float _gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Creates a gray color from the value of gray. _a defaults to completely opaque.
~~~~{.cpp}
ofColor c(255, 0, 0); // red
c.set( 128, 128 ); // now 50% gray with 50% alpha
~~~~







<!----------------------------------------------------------------------------->

###void set(&color)

<!--
_syntax: set(&color)_
_name: set_
_returns: void_
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set this color to be the same as color.

~~~~{.cpp}
ofColor c1(255, 0, 0); // red
ofColor c2(0, 255, 0); // green
c2.set(c1); // c2 is now red
~~~~







<!----------------------------------------------------------------------------->

###void setBrightness(brightness)

<!--
_syntax: setBrightness(brightness)_
_name: setBrightness_
_returns: void_
_returns_description: _
_parameters: float brightness_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Change the current brightness, leaving hue and saturation intact.

~~~~{.cpp}
ofColor c( 0, 0, 255 ); // bright blue
c.setBrightness( 128 ); // dark blue
~~~~

Refer the [discussion of HSB](#HSB) above.







<!----------------------------------------------------------------------------->

###void setHex(hexColor, alpha = limit())

<!--
_syntax: setHex(hexColor, alpha = limit())_
_name: setHex_
_returns: void_
_returns_description: _
_parameters: int hexColor, float alpha=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set this color to hexColor using a 24 bit hex-style color as normally used in web development.  alpha defaults to completely opaque.
~~~~{.cpp}
ofColor c;
c.setHex( 0xFFFFFF ); // white
c.setHex( 0x00FF00 ); // green
c.setHex( 0xFF8000, 128 ); // orange, 50% alpha
~~~~







<!----------------------------------------------------------------------------->

###void setHsb(hue, saturation, brightness, alpha)

<!--
_syntax: setHsb(hue, saturation, brightness, alpha)_
_name: setHsb_
_returns: void_
_returns_description: _
_parameters: float hue, float saturation, float brightness, float alpha=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Set this color using a HSB representation. Refer the [discussion of HSB](#HSB) above. **Note** that the hue value has a range that matches the base data type (ie **0 to 255** for the standard ofColor), rather than 0 to 360, 0 to 100 or float 0 to 1, as may be expected.







<!----------------------------------------------------------------------------->

###void setHsb(hue, saturation, brightness)

<!--
_syntax: setHsb(hue, saturation, brightness)_
_name: setHsb_
_returns: void_
_returns_description: _
_parameters: float hue, float saturation, float brightness_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

###void setHue(hue)

<!--
_syntax: setHue(hue)_
_name: setHue_
_returns: void_
_returns_description: _
_parameters: float hue_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Change the current hue, leaving saturation and brightness intact. 

~~~~{.cpp}
ofColor c = ofColor::fromHsb( 0, 255, 255 ); // bright red
c.setHue( 128 ); // now bright cyan
~~~~

Refer the [discussion of HSB](#HSB) above.







<!----------------------------------------------------------------------------->

###void setSaturation(saturation)

<!--
_syntax: setSaturation(saturation)_
_name: setSaturation_
_returns: void_
_returns_description: _
_parameters: float saturation_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _








_description: _


Change the current saturation, leaving hue and brightness intact.

~~~~{.cpp}
ofColor c( 0, 0, 255 ); // vibrant blue
c.setSaturation( 128 ); // pale blue
~~~~

Refer the [discussion of HSB](#HSB) above.







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor__
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_inlined_description: _








_description: _








<!----------------------------------------------------------------------------->

##Variables



###union ofColor @1

<!--
_name: @1_
_type: union ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: False_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###union ofColor_::@3 @4

<!--
_name: @4_
_type: union ofColor_::@3_
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###PixelType a

<!--
_name: a_
_type: PixelType_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


The alpha value (transparency) of a color. 0 is completely transparent, 255 is completely opaque.







<!----------------------------------------------------------------------------->

###ofColor_ aliceBlue

<!--
_name: aliceBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ antiqueWhite

<!--
_name: antiqueWhite_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ aqua

<!--
_name: aqua_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ aquamarine

<!--
_name: aquamarine_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ azure

<!--
_name: azure_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###PixelType b

<!--
_name: b_
_type: PixelType_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


The blue component of this color.

~~~~{.cpp}
ofColor c = ofColor::cyan;
float blue = c.b; // 255
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ beige

<!--
_name: beige_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ bisque

<!--
_name: bisque_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor black

<!--
_name: black_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized black color.

~~~~{.cpp}
ofColor c = ofColor::black; // (0, 0, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ blanchedAlmond

<!--
_name: blanchedAlmond_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor blue

<!--
_name: blue_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized blue color.

~~~~{.cpp}
ofColor c = ofColor::blue; // (0, 0, 255)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ blueSteel

<!--
_name: blueSteel_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ blueViolet

<!--
_name: blueViolet_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ brown

<!--
_name: brown_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ burlyWood

<!--
_name: burlyWood_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ cadetBlue

<!--
_name: cadetBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ chartreuse

<!--
_name: chartreuse_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ chocolate

<!--
_name: chocolate_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ coral

<!--
_name: coral_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ cornflowerBlue

<!--
_name: cornflowerBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ cornsilk

<!--
_name: cornsilk_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ crimson

<!--
_name: crimson_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor cyan

<!--
_name: cyan_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized cyan color.

~~~~{.cpp}
ofColor c = ofColor::cyan; // (0, 255, 255)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ darkBlue

<!--
_name: darkBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkCyan

<!--
_name: darkCyan_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkGoldenRod

<!--
_name: darkGoldenRod_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkGray

<!--
_name: darkGray_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkGreen

<!--
_name: darkGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkGrey

<!--
_name: darkGrey_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkKhaki

<!--
_name: darkKhaki_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkMagenta

<!--
_name: darkMagenta_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkOliveGreen

<!--
_name: darkOliveGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkOrchid

<!--
_name: darkOrchid_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkRed

<!--
_name: darkRed_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkSalmon

<!--
_name: darkSalmon_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkSeaGreen

<!--
_name: darkSeaGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkSlateBlue

<!--
_name: darkSlateBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkSlateGray

<!--
_name: darkSlateGray_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkSlateGrey

<!--
_name: darkSlateGrey_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkTurquoise

<!--
_name: darkTurquoise_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkViolet

<!--
_name: darkViolet_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ darkorange

<!--
_name: darkorange_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ deepPink

<!--
_name: deepPink_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ deepSkyBlue

<!--
_name: deepSkyBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ dimGray

<!--
_name: dimGray_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ dimGrey

<!--
_name: dimGrey_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ dodgerBlue

<!--
_name: dodgerBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ fireBrick

<!--
_name: fireBrick_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ floralWhite

<!--
_name: floralWhite_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ forestGreen

<!--
_name: forestGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ fuchsia

<!--
_name: fuchsia_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###PixelType g

<!--
_name: g_
_type: PixelType_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


The green component of this color.

~~~~{.cpp}
ofColor c = ofColor::yellow;
float green = c.g; // 255
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ gainsboro

<!--
_name: gainsboro_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ ghostWhite

<!--
_name: ghostWhite_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ gold

<!--
_name: gold_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ goldenRod

<!--
_name: goldenRod_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor gray

<!--
_name: gray_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized gray color.

~~~~{.cpp}
ofColor c = ofColor::gray;
~~~~







<!----------------------------------------------------------------------------->

###ofColor green

<!--
_name: green_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized green color.

~~~~{.cpp}
ofColor c = ofColor::green; // (0, 255, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ greenYellow

<!--
_name: greenYellow_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ grey

<!--
_name: grey_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ honeyDew

<!--
_name: honeyDew_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ hotPink

<!--
_name: hotPink_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ indianRed

<!--
_name: indianRed_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ indigo

<!--
_name: indigo_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ ivory

<!--
_name: ivory_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ khaki

<!--
_name: khaki_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lavender

<!--
_name: lavender_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lavenderBlush

<!--
_name: lavenderBlush_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lawnGreen

<!--
_name: lawnGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lemonChiffon

<!--
_name: lemonChiffon_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightBlue

<!--
_name: lightBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightCoral

<!--
_name: lightCoral_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightCyan

<!--
_name: lightCyan_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightGoldenRodYellow

<!--
_name: lightGoldenRodYellow_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightGray

<!--
_name: lightGray_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightGreen

<!--
_name: lightGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightGrey

<!--
_name: lightGrey_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightPink

<!--
_name: lightPink_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightSalmon

<!--
_name: lightSalmon_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightSeaGreen

<!--
_name: lightSeaGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightSkyBlue

<!--
_name: lightSkyBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightSlateGray

<!--
_name: lightSlateGray_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightSlateGrey

<!--
_name: lightSlateGrey_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightSteelBlue

<!--
_name: lightSteelBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lightYellow

<!--
_name: lightYellow_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ lime

<!--
_name: lime_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ limeGreen

<!--
_name: limeGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ linen

<!--
_name: linen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor magenta

<!--
_name: magenta_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized magenta color.

~~~~{.cpp}
ofColor c = ofColor::magenta; // (255, 0, 255)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ maroon

<!--
_name: maroon_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumAquaMarine

<!--
_name: mediumAquaMarine_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumBlue

<!--
_name: mediumBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumOrchid

<!--
_name: mediumOrchid_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumPurple

<!--
_name: mediumPurple_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumSeaGreen

<!--
_name: mediumSeaGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumSlateBlue

<!--
_name: mediumSlateBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumSpringGreen

<!--
_name: mediumSpringGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumTurquoise

<!--
_name: mediumTurquoise_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mediumVioletRed

<!--
_name: mediumVioletRed_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ midnightBlue

<!--
_name: midnightBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mintCream

<!--
_name: mintCream_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ mistyRose

<!--
_name: mistyRose_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ moccasin

<!--
_name: moccasin_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ navajoWhite

<!--
_name: navajoWhite_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ navy

<!--
_name: navy_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ oldLace

<!--
_name: oldLace_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ olive

<!--
_name: olive_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ oliveDrab

<!--
_name: oliveDrab_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ orange

<!--
_name: orange_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ orangeRed

<!--
_name: orangeRed_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ orchid

<!--
_name: orchid_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ paleGoldenRod

<!--
_name: paleGoldenRod_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ paleGreen

<!--
_name: paleGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ paleTurquoise

<!--
_name: paleTurquoise_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ paleVioletRed

<!--
_name: paleVioletRed_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ papayaWhip

<!--
_name: papayaWhip_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ peachPuff

<!--
_name: peachPuff_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ peru

<!--
_name: peru_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ pink

<!--
_name: pink_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ plum

<!--
_name: plum_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ powderBlue

<!--
_name: powderBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ purple

<!--
_name: purple_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###PixelType r

<!--
_name: r_
_type: PixelType_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


The red component of this color.

~~~~{.cpp}
ofColor c = ofColor::red;
float red = c.r; // 255
~~~~







<!----------------------------------------------------------------------------->

###ofColor red

<!--
_name: red_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized red color.

~~~~{.cpp}
ofColor c = ofColor::red; // (255, 0, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ rosyBrown

<!--
_name: rosyBrown_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ royalBlue

<!--
_name: royalBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ saddleBrown

<!--
_name: saddleBrown_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ salmon

<!--
_name: salmon_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ sandyBrown

<!--
_name: sandyBrown_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ seaGreen

<!--
_name: seaGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ seaShell

<!--
_name: seaShell_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ sienna

<!--
_name: sienna_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ silver

<!--
_name: silver_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ skyBlue

<!--
_name: skyBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ slateBlue

<!--
_name: slateBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ slateGray

<!--
_name: slateGray_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ slateGrey

<!--
_name: slateGrey_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ snow

<!--
_name: snow_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ springGreen

<!--
_name: springGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ steelBlue

<!--
_name: steelBlue_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ tan

<!--
_name: tan_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ teal

<!--
_name: teal_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ thistle

<!--
_name: thistle_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ tomato

<!--
_name: tomato_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ turquoise

<!--
_name: turquoise_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###PixelType v

<!--
_name: v_
_type: PixelType_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: True_
-->

_description: _


Array/pointer access. Allows the r, g, b, a components to be accessed as a pointer to an array of PixelType.







<!----------------------------------------------------------------------------->

###ofColor_ violet

<!--
_name: violet_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor_ wheat

<!--
_name: wheat_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor white

<!--
_name: white_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized white color.

~~~~{.cpp}
ofColor c = ofColor::white;
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ whiteSmoke

<!--
_name: whiteSmoke_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofColor yellow

<!--
_name: yellow_
_type: ofColor_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _


Pre-iniatilized yellow color.

~~~~{.cpp}
ofColor c = ofColor::yellow; // (255, 255, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ yellowGreen

<!--
_name: yellowGreen_
_type: ofColor__
_access: public_
_version_started: 0073_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

