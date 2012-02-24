#class ofColor_


##Description

`ofColor` represents a color in openFrameworks. Colors are usually defined by specifying a red, green, and blue component (RGB), and a transparency (alpha) component. You can also specify colors using hue, saturation and brightness (HSB).

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

`ofColor` also enables a lot of extra functionality like using HSB instead of color spectrums, lerping or linearly interpolating between colors, and inverting colors, among other things. 

`ofColor` is templated, which means that it has several different ways it can be created. These are probably best to leave as they are because there's already a few kinds `typedef`ed for you. The default `ofColor` uses `unsigned char` values (0 to 255), but you can make an `ofFloatColor` if you want to work with floating point numbers between 0 and 1, or `ofShortColor` if you want to work with integers between 0 and 65,535.

### HSB

You're probably familiar with RGB colors already, but HSB is a big part of `ofColor`. It uses a *hue* value (for the standard `ofColor` the range for this value is between 0 and 255) to determine what the hue (the 'color' in the sense of a color in the rainbow) will be:

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


### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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
_name: ofColor_
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
_name: ofColor_
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

_description: _

Creates a gray color from the value of `gray`. `_a` defaults to completely opaque.

~~~~{.cpp}
ofColor c(0.5, 122); // now c is 50% alpha gray, ooh, dismal
~~~~






<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
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
_name: ofColor_
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

_description: _

Creates a color by copying another color, overriding the existing alpha value with the value of `_a`:

~~~~{.cpp}
ofColor mom(255, 0, 0); // red
ofColor c(mom, 128); // now c is red with 50% alpha
~~~~






<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
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

_description: _

Creates a color by copying another color with a different type (for example when copying from a standard `ofColor` using `unsigned char`s to an `ofFloatColor`):

~~~~{.cpp}
ofColor c1(255, 128, 0); // orange
ofFloatColor c2(c1);
float g = c2.g; // g is now 0.5
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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Creates a gray color from the value of `gray`. `_a` defaults to completely opaque.
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Set this color to be the same as `color`.

~~~~{.cpp}
ofColor c1(255, 0, 0); // red
ofColor c2(0, 255, 0); // green
c2.set(c1); // c2 is now red
~~~~







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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Set this color to `hexColor` using a 24 bit hex-style color as normally used in web development.  `alpha` defaults to completely opaque.
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
_parameters: float hue, float saturation, float brightness, float alpha_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Set this color using a HSB representation. Refer the [discussion of HSB](#HSB) above. **Note** that the `hue` value has a range that matches the base data type (ie **0 to 255** for the standard `ofColor`), rather than 0 to 360, 0 to 100 or float 0 to 1, as may be expected.


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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Change the current saturation, leaving hue and brightness intact.

~~~~{.cpp}
ofColor c( 0, 0, 255 ); // vibrant blue
c.setSaturation( 128 ); // pale blue
~~~~

Refer the [discussion of HSB](#HSB) above.





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Change the current brightness, leaving hue and saturation intact.

~~~~{.cpp}
ofColor c( 0, 0, 255 ); // bright blue
c.setBrightness( 128 ); // dark blue
~~~~

Refer the [discussion of HSB](#HSB) above.






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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Return the hue component of the HSB representation of this color. Refer the [discussion of HSB](#HSB) above.





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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Return the saturation component of the HSB representation of this color. Refer the [discussion of HSB](#HSB) above.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Return the brightness component of the HSB representation of this color. Refer the [discussion of HSB](#HSB) above.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Return the average of the three color components. This is used by the Lab and HSL color spaces.






<!----------------------------------------------------------------------------->

###ofColor_ clamp()

<!--
_syntax: clamp()_
_name: clamp_
_returns: ofColor__
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

This clamps the values of your color in case they're too high or low for their types, in case you go negative or too use values that are too high, like anything >255.0.

~~~~{.cpp}
ofColor c( 255, 0, 0 );
c.g = 500; // g now has 500: this is usually invalid!
c.clamp(); // c.g has now been clamped so its value is 255.
~~~~






<!----------------------------------------------------------------------------->

###ofColor_ invert()

<!--
_syntax: invert()_
_name: invert_
_returns: ofColor__
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Invert the color, which turns it into its complement.

~~~~{.cpp}
ofColor c(0, 0, 255); // blue
c.invert(); // c is now (255,255,0), or yellow, which is blue's complement
~~~~




<!----------------------------------------------------------------------------->

###ofColor_ normalize()

<!--
_syntax: normalize()_
_name: normalize_
_returns: ofColor__
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

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

###ofColor_ lerp(&target, amount)

<!--
_syntax: lerp(&target, amount)_
_name: lerp_
_returns: ofColor__
_returns_description: _
_parameters: const ofColor_< PixelType > &target, float amount_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Perform a linear interpolation (lerp) between this color and the target. Amount is a percentage represented by a float from 0 to 1. 

This function allows to blend between colors. For instance, if you have red and you want halfway between red and blue, you can do this:
~~~~{.cpp}
ofColor r = ofColor::red;
ofColor b = ofColor::blue;
b.lerp(r, 0.5); // now purple!
~~~~




<!----------------------------------------------------------------------------->

###ofColor_ getClamped()

<!--
_syntax: getClamped()_
_name: getClamped_
_returns: ofColor__
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns a clamped version of this color, without modifying the original. See [clamp](#clamp) for more info.







<!----------------------------------------------------------------------------->

###ofColor_ getInverted()

<!--
_syntax: getInverted()_
_name: getInverted_
_returns: ofColor__
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns the color that is the inverted version (complement) to this color, without modifying the original. See [invert](#invert) for more info.







<!----------------------------------------------------------------------------->

###ofColor_ getNormalized()

<!--
_syntax: getNormalized()_
_name: getNormalized_
_returns: ofColor__
_returns_description: _
_parameters: _
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: True_
-->

_description: _

Returns the normalized version of this color, without modifying the original. See [normalize](#normalize) for more info.







<!----------------------------------------------------------------------------->

###ofColor_ getLerped(&target, amount)

<!--
_syntax: getLerped(&target, amount)_
_name: getLerped_
_returns: ofColor__
_returns_description: _
_parameters: const ofColor_< PixelType > &target, float amount_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns this color lerped towards `target` by `amount`, without modifying the original. See [lerp](#lerp) for more info.







<!----------------------------------------------------------------------------->

###ofColor_ operator=(&color)

<!--
_syntax: operator=(&color)_
_name: operator=_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Assignment operator.

~~~~{.cpp}
ofColor c1(255, 0, 0); // red
ofColor c2; // default white
c2 = c1; // c2 is now red
~~~~

The color types can be different: you can assign an `ofFloatColor` to an `ofColor`:

~~~~{.cpp}
ofFloatColor c1(1.0, 0.0, 0.0); // red
ofColor c2; // default white
c2 = c1; // c2 is now red (255, 0, 0)
~~~~



<!----------------------------------------------------------------------------->

###ofColor_ operator=(&color)

<!--
_syntax: operator=(&color)_
_name: operator=_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< SrcType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

###ofColor_ operator=(&val)

<!--
_syntax: operator=(&val)_
_name: operator=_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Assigns `val` to all components, including alpha. Has the same effect as calling [`set(val,val)`](#set).

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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Equivalence operator. Returns `true` if every RGB component is the same as its equivalent in `color`, otherwise returns `false`. 

~~~~{.cpp}
ofColor c1(255, 0, 0); // red
ofColor c2(0, 255, 0); // green
ofColor c3(255, 0, 0); // red
// ( c1 == c2 ) is false
// ( c1 == c3 ) is true
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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Non-equivalence operator. Returns `true` if any RGB component is different from its equivalent in `color`, otherwise returns `false`.

~~~~{.cpp}
ofColor c1(255, 0, 0); // red
ofColor c2(0, 255, 0); // green
ofColor c3(255, 0, 0); // red
// ( c1 != c2 ) is true
// ( c1 != c3 ) is false
~~~~




<!----------------------------------------------------------------------------->

###ofColor_ operator+(&color)

<!--
_syntax: operator+(&color)_
_name: operator+_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Sum red, green and blue components separately, ignoring alpha. Automatically clamps the result by calling [clamp](#clamp).

~~~~{.cpp}
ofColor c1(64, 64, 0, 128);
ofColor c2(0, 64, 64, 64 );
ofColor c3 = c1 + c2; // c3 is (64, 128, 64) with alpha 128
~~~~




<!----------------------------------------------------------------------------->

###ofColor_ operator+(&val)

<!--
_syntax: operator+(&val)_
_name: operator+_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Add `val` to all components except alpha. Automatically clamps the result by calling [clamp](#clamp).

~~~~{.cpp}
ofColor c1(128, 64, 0, 128);
ofColor c2 = c1 + 64; // c3 is (192, 128, 64) with alpha 128
~~~~






<!----------------------------------------------------------------------------->

###ofColor_ operator+=(&color)

<!--
_syntax: operator+=(&color)_
_name: operator+=_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Addition assignment operator. Adds the contents of `color` (except alpha) to this color. Automatically clamps the result by calling [clamp](#clamp).

~~~~{.cpp}
ofColor c1(0, 64, 0);
ofColor c2(64, 64, 0);
c1 += c2; // c1 is now (64, 128, 0);
~~~~




<!----------------------------------------------------------------------------->

###ofColor_ operator+=(&val)

<!--
_syntax: operator+=(&val)_
_name: operator+=_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Addition assignment operator. Adds `val` to all components (except alpha) to this color. Automatically clamps the result by calling [clamp](#clamp).

~~~~{.cpp}
ofColor c1(128, 64, 0);
c1 += 128; // c1 is now (255, 192, 128)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ operator-(&color)

<!--
_syntax: operator-(&color)_
_name: operator-_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Subtraction operator. Works like [the addition operator](#operator+).





<!----------------------------------------------------------------------------->

###ofColor_ operator-(&val)

<!--
_syntax: operator-(&val)_
_name: operator-_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Subtraction operator. Works like [the addition operator](#operator+).






<!----------------------------------------------------------------------------->

###ofColor_ operator-=(&color)

<!--
_syntax: operator-=(&color)_
_name: operator-=_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Subtraction assignment operator. Works like [the addition assignment operator](#operator+=).






<!----------------------------------------------------------------------------->

###ofColor_ operator-=(&val)

<!--
_syntax: operator-=(&val)_
_name: operator-=_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Subtraction assignment operator. Works like [the addition assignment operator](#operator+=).






<!----------------------------------------------------------------------------->

###ofColor_ operator*(&color)

<!--
_syntax: operator*(&color)_
_name: operator*_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns a new color where each channel has been multiplied by its parallel in `color`, with 100% alpha. Behaves like a multiply blend in a photo editing app: if the red channel in `color` is 50%, the output red channel will be 50% of the input red channel.

~~~~{.cpp}
ofColor c1(128, 0, 0); // 50% red
ofColor c2(255, 255, 255); // white
ofColor c3 = c2*c1; // c3 is (128, 0, 0)
~~~~




<!----------------------------------------------------------------------------->

###ofColor_ operator*(&val)

<!--
_syntax: operator*(&val)_
_name: operator*_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Returns a new color where each channel has been multiplied by `val`, with alpha 100% alpha. Before multiplying, `val` is clamped to a range of 0 to 1.

~~~~{.cpp}
ofColor c1(255, 128, 0);
ofColor c2 = c1*0.5; // c2 is (127, 64, 0)
~~~~





<!----------------------------------------------------------------------------->

###ofColor_ operator*=(&color)

<!--
_syntax: operator*=(&color)_
_name: operator*=_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Multiplication assignment operator. Multiplies each channel by its parallel in `color`, without touching alpha. Behaves like a multiply blend in a photo editing app: if the red channel in `color` is 50%, the red channel in this color will be reduced to 50% of its input value.

~~~~{.cpp}
ofColor c1(128, 0, 0); // 50% red
ofColor c2(255, 255, 255); // white
ofColor c2 *= c1; // c2 is now (128, 0, 0)
~~~~





<!----------------------------------------------------------------------------->

###ofColor_ operator*=(&val)

<!--
_syntax: operator*=(&val)_
_name: operator*=_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Multiplication assignment operator. Multiplies each channel by `val`, without touching alpha. Before multiplying, `val` is clamped to a range of 0 to 1.

~~~~{.cpp}
ofColor c1(255, 128, 0);
ofColor c1*=0.5; // c2 is (127, 64, 0)
~~~~







<!----------------------------------------------------------------------------->

###ofColor_ operator/(&color)

<!--
_syntax: operator/(&color)_
_name: operator/_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Division operator. Works similar to [the * operator](#operator*) but divides instead of multiplies.



<!----------------------------------------------------------------------------->

###ofColor_ operator/(&val)

<!--
_syntax: operator/(&val)_
_name: operator/_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Division operator. Works similar to [the * operator](#operator*) but divides instead of multiplies.






<!----------------------------------------------------------------------------->

###ofColor_ operator/=(&color)

<!--
_syntax: operator/=(&color)_
_name: operator/=_
_returns: ofColor__
_returns_description: _
_parameters: ofColor_< PixelType > const &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Division assignment operator. Works similar to [the *= operator](#operator*=) but divides instead of multiplies.






<!----------------------------------------------------------------------------->

###ofColor_ operator/=(&val)

<!--
_syntax: operator/=(&val)_
_name: operator/=_
_returns: ofColor__
_returns_description: _
_parameters: float const &val_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Division assignment operator. Works similar to [the *= operator](#operator*=) but divides instead of multiplies.






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
_static: no_
_visible: True_
_advanced: False_
-->

_description: _

Array subscript operator. If `n` is 0 returns .r, if 1 returns .g, if 2 returns .b, if 3 returns alpha.

~~~~{.cpp}
ofColor c(128, 64, 255);
float red = c[0]; // red is 128
~~~~




<!----------------------------------------------------------------------------->

###ofColor_ fromHsb(hue, saturation, brightness, alpha = limit())

<!--
_syntax: fromHsb(hue, saturation, brightness, alpha = limit())_
_name: fromHsb_
_returns: ofColor__
_returns_description: _
_parameters: float hue, float saturation, float brightness, float alpha=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _

Convenience method to construct an ofColor from Hsb values.

~~~~{.cpp}
ofColor c = ofColor::fromHsb(128, 255, 255); // c is bright saturated cyan
~~~~





<!----------------------------------------------------------------------------->

###ofColor_ fromHex(hexColor, alpha = limit())

<!--
_syntax: fromHex(hexColor, alpha = limit())_
_name: fromHex_
_returns: ofColor__
_returns_description: _
_parameters: int hexColor, float alpha=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _

Convenience method to construct an ofColor from a 24 bit hex value.

~~~~{.cpp}
ofColor c = ofColor::fromHex(0xFFFF00); // c is yellow
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
_static: yes_
_visible: True_
_advanced: False_
-->

_description: _

Returns the maximum value for a component for this color. For standard `ofColor` returns 255, for `ofFloatColor` returns 1.0, for `ofShortColor` returns 65,536.





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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_()

<!--
_syntax: ofColor_()_
_name: ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ~ofColor_()

<!--
_syntax: ~ofColor_()_
_name: ~ofColor_
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

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(_r, _g, _b, _a = limit())

<!--
_syntax: ofColor_(_r, _g, _b, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float _r, float _g, float _b, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color, _a)

<!--
_syntax: ofColor_(&color, _a)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float _a_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(gray, _a = limit())

<!--
_syntax: ofColor_(gray, _a = limit())_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: float gray, float _a=limit()_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

### ofColor_(&color)

<!--
_syntax: ofColor_(&color)_
_name: ofColor_
_returns: _
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 007_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: False_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







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
_static: no_
_visible: False_
_advanced: False_
-->

_description: _







<!----------------------------------------------------------------------------->

##Variables


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

