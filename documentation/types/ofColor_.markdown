#class ofColor_


<!--
_visible: True_
_advanced: False_
_istemplated: True_
_extends: _
-->

##InlineDescription


ofColor represents a color in openFrameworks. Colors are usually defined by
specifying a red, green, and blue component (RGB), and a transparency
(alpha) component. You can also specify colors using hue, saturation, and
brightness (HSB).

For example:
~~~~{.cpp}
    // Set red, component by component
    ofColor red;
    red.r=255;
    red.g=0;
    red.b=0;
    ofSetColor(red);
    // Draw color is now red.

    // Shorter notation is also possible.
    ofColor green(0, 255, 0);
    ofSetColor(green);
    // Draw color is now green.

    // ... or even shorter.
    ofSetColor( ofColor(0, 0, ofRandom( 128, 255 ) );
    // Draw color is now a random blue.
~~~~

ofColor also enables a lot of extra functionality like using HSB instead of
color spectrums, lerping or linearly interpolating between colors, and
inverting colors, among other things.

ofColor is templated, which means that it has several different ways it can
be created. These are probably best to leave as they are because there's
already a few kinds typedefed for you. The default ofColor uses unsigned
char values (0 to 255), but you can make an ofFloatColor if you want to work
with floating point numbers between 0 and 1, or ofShortColor if you want to
work with integers between 0 and 65,535.

|   Typedef     |    PixelType     | Bit Depth | Min. Value | Max. Value  |
| ------------- | ---------------- | --------- | ---------- | ----------- |
| `ofColor`     | `unsigned char`  | 8         | 0          | 255         |
| `ofShortColor`| `unsigned short` | 16        | 0          | 65535       |
| `ofFloatColor`| `float`          | _varies_  | 0.0        | 1.0         |

#### HSB

You're probably familiar with RGB colors already, but HSB is a big part of
ofColor. It uses a *hue* value (for the standard ofColor the range for this
value is between 0 and 255) to determine what the hue (the 'color' in the
sense of a color in the rainbow) will be:

![HSB](types/hsb.jpg)

Approximate hues for some common colors:

* Red: 0 (wrapped round from 255)
* Orange: 25
* Yellow: 42
* Green: 85
* Blue: 170
* Purple: 205
* Red: 255 (wraps round to 0)

Once you've selected a hue, you can use the *saturation* and *brightness*
values to further refine the color. The saturation determines how much of
the hue versus white is present and brightness determines how much hue
versus black is present:

![SB](types/hsb-cone.jpg)

In other words, saturation refers to the intensity of the color: high
saturation means intense color, low saturation means washed out or black and
white. Brightness refers to how light or dark the color is: high brightness
means a bright color, low brightness means a dark color. If the brightness
is 0 the resulting color will be black, regardless of the values of hue or
saturation.

\tparam PixelType The data type used to represent a single pixel value.





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

Clamp values between 0 and the limit().

Clamps the value of each component, R, G, B and A to a maximum of
limit() and a minimum of zero.

~~~~{.cpp}
    ofColor c( 300, 0, 0 );
    // r component is above the limit() of 255.
    c.clamp(); // c.r has now been clamped so its value is 255.
~~~~


Returns: A reference to itself.





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

\}





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > fromHex(hexColor, alpha)

<!--
_syntax: fromHex(hexColor, alpha)_
_name: fromHex_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: int hexColor, float alpha_
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

Create an ofColor_ from a hexadecimal value.

In some cases, it is convenient to represent colors using a hexadecimal
number. In this case, red, green, and blue values are packed into a
single integer.

The alpha channel is specified separately and will default to the
PixelType's maximum, resulting in an opaque color.

~~~~{.cpp}
    ofColor c = ofColor::fromHex(0xFFFF00); // c is yellow.
~~~~


Parameters:
hexColor A color in hexadecimal form.
alpha The alpha value of the color.





_description: _

Convenience method to construct an ofColor from a 24 bit hex value.

~~~~{.cpp}
ofColor c = ofColor::fromHex(0xFFFF00); // c is yellow
~~~~





<!----------------------------------------------------------------------------->

###ofColor_< PixelType > fromHsb(hue, saturation, brightness, alpha)

<!--
_syntax: fromHsb(hue, saturation, brightness, alpha)_
_name: fromHsb_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: float hue, float saturation, float brightness, float alpha_
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

Create an ofColor_ from an HSB representation.

While ofColor_ represents color using R, G, B, and A components, other
representations are available.  This method allows the user to construct
an ofColor_ from a Hue (H), Saturation (S), and Brightness (B) and an
optional alpha value.

The alpha channel is specified separately and will default to the
PixelType's maximum, resulting in an opaque color.

~~~~{.cpp}
    ofColor c = ofColor::fromHsb(128, 255, 255);
    // c is bright saturated cyan.
~~~~

For more information about HSB, see:
    http://en.wikipedia.org/wiki/HSV_color_space


Parameters:
hue The hue of the color.
saturation The saturation of the color.
brightness The brightness of the color.
alpha The alpha value of the color.





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

Calculate the brightness of of the R, G and B components.

Brightness is simply the maximum of the three color components. This
method of calculating brightness is used by Photoshop (HSB) and
Processing (HSB).  Note that brightness is also called "Value".


Returns: the brightness in the range 0 - limit().





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

A non-destructive version of clamp().

See also: clamp()

Returns: A copy of this color, clamped.





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

Get a 24-bit hexadecimal representation of the RGB color.

~~~~{.cpp}
    ofColor c( 255, 255, 0 ); // Yellow.
    int hex = c.getHex(); // Hex is 0xffff00 (or 16776960 in decimal).
~~~~


Warning: This method does _not_ encode the alpha component.


Returns: An integer representing an RGB color.





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

Extract the hue, saturation and brightness (HSB) from this color.

~~~~{.cpp}
    ofColor red(255,0,0);
    float hue = 0;  // The hue value to set.
    float saturation = 0; // The saturation value to set.
    float brightness = 0; The brightness value to set.
    red.getHsb(hue, saturation, brightness);
    // Hue is now 0 (for red), saturation is 255, brightness is 255.
~~~~


Parameters:
hue A reference to the hue to fill. Will be in the range of
    0 - limit().
saturation A reference to the saturation to fill. Will be in the
		range of 0 - limit().
brightness A reference to the brightness to fill. Will be in the
    range of 0 - limit().





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

Get the Hue of this color.

The color is converted from the default RGB to an HSB color space and
the resulting Hue value is returned.  The resulting hue value will
always be returned in the range 0 - limit().


Returns: The Hue value in the range 0 - limit().





_description: _

Return the hue component of the HSB representation of this color. Refer the [discussion of HSB](#HSB) above.





<!----------------------------------------------------------------------------->

###float getHueAngle()

<!--
_syntax: getHueAngle()_
_name: getHueAngle_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Get the Hue angle of this color.

The color is converted from the default RGB to an HSB color space and
the resulting Hue angle is returned.  The resulting hue value will
always be returned in degrees in the range 0 - 360.


Returns: The Hue angle in the range 0 - 360.





_description: _







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

A non-destructive version of invert().

See also: invert()

Returns: A copy of this color, inverted.





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

A non-destructive version of lerp().

See also: lerp()

Returns: A copy of this color, lerped.





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

Calculate the lightness of the R, G and B components.

Lightness is simply the average of the three color components. This
method of calculating lightness is used by the Lab and HSL color spaces.


Returns: the lightness in the range 0 - limit().





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

A non-destructive version of normalize().

See also: normalize()

Returns: A copy of this color, normalized.





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

Get the Saturation of this color.

The color is converted from the default RGB to an HSB color space and
the resulting saturation is returned.  The resulting saturation value
will always be returned in the range 0 - limit().


Returns: The saturation in the range 0 - limit().





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

Invert the R, G and B components.

Performs an inversion operation on the color by replacing the red, green
and blue components with their original value subtracted from the
limit().  For example, an ofColor value of:

~~~~~{.cpp}
    unsigned char maxValue = limit(); // would return 255

    unsigned char r = 255;
    unsigned char g = 255;
    unsigned char b = 0;

    unsigned char rNew = maxValue - r; // 255 - 255 = 0
    unsigned char gNew = maxValue - g; // 255 - 255 = 0
    unsigned char bNew = maxValue - b; // 255 - 0   = 255;
~~~~~

Example usage:
~~~~{.cpp}
    ofColor c(0, 0, 255); // Blue.
    c.invert();
    // c is now (255,255,0), or yellow, which is blue's complement.
~~~~


Returns: A reference to itself.





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

A linear interpolation between all components of two colors.

The lerp method performs a linear interpolation (or [lerp][1]) between
this color and a target color.  In contrast to many of the mathematical
functions found in ofColor_, The linear interpolation is carried out
on _all_ components, R, G, B _and_ A.  The amount is typically a value
between 0.0 and 1.0, with 0.0 yielding an unchanged color and 1.0
yielding a color identical to the target color.

~~~~{.cpp}
    ofColor r = ofColor::red;
    ofColor b = ofColor::blue;
    b.lerp(r, 0.5); // now purple
~~~~

[1]: http://en.wikipedia.org/wiki/Lerp_(computing) "Lerp"


Parameters:
target The target color corresponding to an amount of 1.0.
amount The amount (between 0.0 and 1.0) to interpolate.
    A value of 0.0 will yield an unchanged color.  A value of 1.0
    will yield the target color.

Returns: A reference to itself.





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

Get the maximum value of a color component.

Based on the type of PixelType (whether its a ofColor, ofFloatColor or
ofShortColor), the maximum value different. For a ofFloatColor the
maximum is `1.0`, but for a ofColor it's `255`.

Use this function to get this maximum number.


Returns: The value associated with a fully saturated color component.





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

Normalize the R, G and B components.

Performs a normalization operation on the red, green and blue components
by scaling them by brightness of the original color divided by the
limit().  The brightness is calculated by finding the maximum of
original red, green and blue components.  This operation is equivalent
to the following:

~~~~~{.cpp}
    ofColor myColor(127, 0, 0, 127);

    float brightness = myColor.getBrightness(); // Returns 127.
    float scaleFactor = brightness / limit();   // Returns 127 / 255.

    ofColor myNormalizedColor = myColor / scaleFactor;
                                // Divides the red, green and blue
                                // components by the scale factor.
~~~~~


Returns: A reference to itself.





_description: _

Divide all color components by brightness. This has the effect of conforming the color to the outer surface of the hue/saturation/brightness spherical color space, by forcing a unit radius (brightness).

The following
~~~~{.cpp}
	ofColor c(122, 122, 0);
	ofSetColor(c);
	ofDrawCircle(100, 100, 100);
	c.normalize();
	ofSetColor(c);
	ofDrawCircle(300, 100, 100);
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

Construct a default white color.

~~~~{.cpp}
    ofColor c;
    ofSetColor(c); // Draw color is now white.
~~~~





_description: _

Creates a color and sets it to white.

~~~~{.cpp}
ofColor c;
ofSetColor( c ); // draw color is now white
~~~~





<!----------------------------------------------------------------------------->

### ofColor_(red, green, blue, alpha)

<!--
_syntax: ofColor_(red, green, blue, alpha)_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: float red, float green, float blue, float alpha_
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

Construct an ofColor_ by using channel values.

When creating an instance of ofColor_ the channel values must fall
within the range represented by the PixelType.  By default, the alpha
component will take the PixelType's maximum, producing an opaque color.

~~~~{.cpp}
    ofColor c1(255, 0, 0); // Red with 100% alpha.
    ofColor c2(255, 0, 0, 128); // Red with 50% alpha.
~~~~

Parameters:
red The red component.
green The green component.
blue The blue component.
alpha The alpha component.





_description: _

Creates a color using RGB values and optional alpha value. The default alpha value makes a completely opaque color:

~~~~{.cpp}
ofColor c1(255, 0, 0); // red with 100% alpha
ofColor c2(255, 0, 0, 128); // red with 50% alpha.
~~~~





<!----------------------------------------------------------------------------->

### ofColor_(gray, alpha)

<!--
_syntax: ofColor_(gray, alpha)_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: float gray, float alpha_
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

Construct a grayscale ofColor_ by specifying a single number.

This constructor will use a single value to describe a grayscale color.
This single value will be taken by each of the R, G and B components.
The alpha channel is specified separately and will and will default to
the PixelType's maximum resulting in an opaque color.

~~~~{.cpp}
    ofColor c(0.5); // c is now gray.
~~~~

Parameters:
gray A grayscale value.
alpha The opacity of the color.





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

Construct an ofColor_ from an existing ofColor_.

This constructor will attempt to convert between color instances of
differing precision.

~~~~{.cpp}
    ofColor colorA(255, 0, 0);
    ofColor colorB(colorA); // colorB is now equal to colorA.
~~~~


Warning: Depending on the PixelType and SrcType used, color precision
         may be lost when converting a higher precision to a lower
         precision representation.


Parameters:
color The ofColor_ to copy.





_description: _

Creates a color by copying another color with a different type (for example when copying from a standard ofColor using unsigned chars to an ofFloatColor):

~~~~{.cpp}
ofColor c1(255, 128, 0); // orange
ofFloatColor c2(c1);
float g = c2.g; // g is now 0.5
~~~~





<!----------------------------------------------------------------------------->

### ofColor_(&color, alpha)

<!--
_syntax: ofColor_(&color, alpha)_
_name: ofColor__
_returns: _
_returns_description: _
_parameters: const ofColor_< PixelType > &color, float alpha_
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

Construct an ofColor_ from an existing ofColor_.

This constructor will use the R, G, and B components from the passed
color ignoring its alpha channel.  The provided alpha channel will be
used instead.


Parameters:
color The ofColor_ to copy.
alpha The new alpha value to replace the alpha value in color.





_description: _

Creates a color by copying another color, overriding the existing alpha value with the value of _a:

~~~~{.cpp}
ofColor mom(255, 0, 0); // red
ofColor c(mom, 128); // now c is red with 50% alpha
~~~~





<!----------------------------------------------------------------------------->

###bool operator!=(&color)

<!--
_syntax: operator!=(&color)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Test two colors for inequality.

Returns: true iff any of the R, G, B or A components are not equal.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator*(&color)

<!--
_syntax: operator*(&color)_
_name: operator*_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped multiplication operator.

Multiply two colors by multiplying and clamping their R, G and B
components.


Warning: The alpha component is ignored.


Parameters:
color The color to multiply.

Returns: The new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator*(&value)

<!--
_syntax: operator*(&value)_
_name: operator*_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const float &value_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped scalar multiplication operator.

Multiply the R, G and B components by a scaler and clamp each.


Warning: The alpha component is ignored.


Parameters:
value The value to multiply.

Returns: The new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator*=(&color)

<!--
_syntax: operator*=(&color)_
_name: operator*=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped multiplication operator.

Multiply two colors by multiplying and clamping their R, G and B
components.


Warning: The alpha component is ignored.


Parameters:
color The color to multiply.

Returns: A reference to itself, the new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator*=(&value)

<!--
_syntax: operator*=(&value)_
_name: operator*=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const float &value_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped scalar multiplication operator.

Multiply the R, G and B components by a scaler and clamp each.


Warning: The alpha component is ignored.


Parameters:
value The scaler value.

Returns: A reference to itself, the new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator+(&color)

<!--
_syntax: operator+(&color)_
_name: operator+_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped addition operator.

Add two colors by summing and clamping their R, G and B components.


Warning: The alpha component is ignored.


Parameters:
color The color to add.

Returns: The new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator+(&color)

<!--
_syntax: operator+(&color)_
_name: operator+_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const float &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped addition operator.

Add a value to each of the R, G and B components and clamp each.


Warning: The alpha component is ignored.


Parameters:
color The value to add.

Returns: The new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator+=(&color)

<!--
_syntax: operator+=(&color)_
_name: operator+=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped addition operator.

Add two colors by summing and clamping their R, G and B components.


Warning: The alpha component is ignored.


Parameters:
color The color to add.

Returns: A reference to itself, the new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator+=(&color)

<!--
_syntax: operator+=(&color)_
_name: operator+=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const float &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped addition operator.

Add a value to each of the R, G and B components and clamp each.


Warning: The alpha component is ignored.


Parameters:
color The value to add.

Returns: A reference to itself, the new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator-(&color)

<!--
_syntax: operator-(&color)_
_name: operator-_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped subtraction operator.

Subtract two colors by subtracting and clamping their R, G and B
components.


Warning: The alpha component is ignored.


Parameters:
color The color to subtract.

Returns: The new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator-(&value)

<!--
_syntax: operator-(&value)_
_name: operator-_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const float &value_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped subtraction operator.

Subtract a value from each of the R, G and B components and clamp each.


Warning: The alpha component is ignored.


Parameters:
value The value to subtract.

Returns: The new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator-=(&color)

<!--
_syntax: operator-=(&color)_
_name: operator-=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped subtraction operator.

Add two colors by subtracting and clamping their R, G and B components.


Parameters:
color The color to subtract.

Returns: A reference to itself, the new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator-=(&color)

<!--
_syntax: operator-=(&color)_
_name: operator-=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const float &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped subtraction operator.

Subtract a value to each of the R, G and B components and clamp each.


Warning: The alpha component is ignored.


Parameters:
color The value to subtract.

Returns: A reference to itself, the new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator/(&color)

<!--
_syntax: operator/(&color)_
_name: operator/_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped division operator.

Divide two colors by treating the passed color components as divisors.


Warning: The alpha component is ignored.


Parameters:
color The divisor color.

Returns: The new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > operator/(&value)

<!--
_syntax: operator/(&value)_
_name: operator/_
_returns: ofColor_< PixelType >_
_returns_description: _
_parameters: const float &value_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped scalar division operator.

Divide each of the R, G and B components by a scalar and clamp each.


Warning: The alpha component is ignored.


Parameters:
value The divisor value.

Returns: The new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator/=(&color)

<!--
_syntax: operator/=(&color)_
_name: operator/=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped division operator.

Divide two colors by treating the passed color components as divisors.


Parameters:
color The divisor color.

Returns: A reference to itself, the new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator/=(&value)

<!--
_syntax: operator/=(&value)_
_name: operator/=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const float &value_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamped scalar division operator.

Divide each of the R, G and B components by a scalar and clamp each.


Warning: The alpha component is ignored.


Parameters:
value The divisor value.

Returns: A reference to itself, the new clamped color.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator=(&color)

<!--
_syntax: operator=(&color)_
_name: operator=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const ofColor_< SrcType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Assign a color using an existing color.

R, G, B and A components are set to the the values of the assigned
color.


Warning: Depending on the PixelType and SrcType used, color precision
    may be lost when converting a higher precision to a lower precision
    representation.


Parameters:
color The color to assign.

Returns: A reference to itself.





_description: _







<!----------------------------------------------------------------------------->

###ofColor_< PixelType > & operator=(&value)

<!--
_syntax: operator=(&value)_
_name: operator=_
_returns: ofColor_< PixelType > &_
_returns_description: _
_parameters: const float &value_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Assign a color using a grayscale value.

R, G and B components are set to the grayscale value and alpha is
set to limit().

~~~~~{.cpp}
    ofColor myColor = 127;
~~~~~

is equivalent to:

~~~~~{.cpp}
    ofColor myColor(127, 127, 127, 255);
~~~~~


Parameters:
value The grayscale value.

Returns: A reference to itself.





_description: _







<!----------------------------------------------------------------------------->

###bool operator==(&color)

<!--
_syntax: operator==(&color)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Test two colors for equality.

Returns: true iff the R, G, B and A components are all equal.





_description: _







<!----------------------------------------------------------------------------->

###const PixelType & operator[](n)

<!--
_syntax: operator[](n)_
_name: operator[]_
_returns: const PixelType &_
_returns_description: _
_parameters: size_t n_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Array subscript operator.

If n is 0 returns .r, if 1 returns .g, if 2 returns .b, if 3 returns
alpha.

~~~~{.cpp}
    ofColor c(128, 64, 255);
    float red = c[0]; // Red is 128.
~~~~


Parameters:
n An index 0-3 of the component to get.

Returns: The value of the requested component.





_description: _







<!----------------------------------------------------------------------------->

###PixelType & operator[](n)

<!--
_syntax: operator[](n)_
_name: operator[]_
_returns: PixelType &_
_returns_description: _
_parameters: size_t n_
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

Array subscript operator.

If n is 0 returns .r, if 1 returns .g, if 2 returns .b, if 3 returns
alpha.

~~~~{.cpp}
    ofColor c(128, 64, 255);
    float red = c[0]; // Red is 128.
~~~~


Parameters:
n An index 0-3 of the component to get.

Returns: The value of the requested component.





_description: _

Array subscript operator. If n is 0 returns .r, if 1 returns .g, if 2 returns .b, if 3 returns alpha.

~~~~{.cpp}
ofColor c(128, 64, 255);
float red = c[0]; // red is 128
~~~~





<!----------------------------------------------------------------------------->

###void set(red, green, blue, alpha)

<!--
_syntax: set(red, green, blue, alpha)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float red, float green, float blue, float alpha_
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

Set an ofColor_ by using channel values.

When modifying an instance of ofColor_ the channel values must fall
within the range represented by the PixelType.  By default, the alpha
component will take the PixelType's maximum, producing an opaque color.

~~~~{.cpp}
    ofColor c(255, 0, 0); // Red ...
    c.set(0, 255, 0); // ... and now green.
~~~~


Parameters:
red The red component.
green The green component.
blue The blue component.
alpha The alpha component.





_description: _

Creates a color using RGB values and optional alpha value. The default alpha value makes a completely opaque color.

~~~~{.cpp}
ofColor c(255, 0, 0); // red
c.set(0, 255, 0); // and now green
~~~~





<!----------------------------------------------------------------------------->

###void set(gray, alpha)

<!--
_syntax: set(gray, alpha)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float gray, float alpha_
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

Set a grayscale ofColor_ by specifying a single number.

When modifying an instance of ofColor_ you can use a single value to
describe a grayscale color. This single value will be taken by each of
the R, G and B components. The alpha channel is specified separately
and will and will default to the PixelType's maximum resulting in an
opaque color.

~~~~{.cpp}
    ofColor c(255, 0, 0); // Red ...
    c.set(128, 128); // ... and now 50% gray with 50% alpha.
~~~~


Parameters:
gray A grayscale value.
alpha The opacity of the color.





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
_parameters: const ofColor_< PixelType > &color_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set an ofColor_ from an existing ofColor_.

This will use the R, G, B and A components from the passed color.


Parameters:
color The ofColor_ to copy.





_description: _







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

Set the brightness of this color.

~~~~{.cpp}
    ofColor c(0, 0, 255); // Bright blue ...
    c.setBrightness(128); // ... dark blue.
~~~~


Parameters:
brightness A brightness value to set in the range of 0 - limit().





_description: _

Change the current brightness, leaving hue and saturation intact.

~~~~{.cpp}
ofColor c( 0, 0, 255 ); // bright blue
c.setBrightness( 128 ); // dark blue
~~~~

Refer the [discussion of HSB](#HSB) above.





<!----------------------------------------------------------------------------->

###void setHex(hexColor, alpha)

<!--
_syntax: setHex(hexColor, alpha)_
_name: setHex_
_returns: void_
_returns_description: _
_parameters: int hexColor, float alpha_
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

Set an ofColor_ from a hexadecimal representation.

In some cases, it is convenient to represent colors using a hexadecimal
number.  In this case, red, green and blue values are packed into a
integer.

The alpha channel is specified separately and will default to the
PixelType's maximum, resulting in an opaque color.

~~~~{.cpp}
    ofColor c;
    c.setHex(0xFFFFFF); // White.
    c.setHex(0x00FF00); // Green.
    c.setHex(0xFF8000, 128); // Orange, 50% alpha.
~~~~


Warning: The alpha value _should not_ be packed in the hexColor and
    must be specified separately.


Parameters:
hexColor An RGB color in hexadecimal form.
alpha The alpha value of the color.





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
_parameters: float hue, float saturation, float brightness, float alpha_
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

Set the color using HSB components.

Parameters:
hue A hue value to set in the range of 0 - limit().
saturation A saturation value to set in the range of 0 - limit().
brightness A brightness value to set in the range of 0 - limit().
alpha An alpha value to set in the range of 0 - limit().





_description: _

Set this color using a HSB representation. Refer the [discussion of HSB](#HSB) above. **Note** that the hue value has a range that matches the base data type (ie **0 to 255** for the standard ofColor), rather than 0 to 360, 0 to 100 or float 0 to 1, as may be expected.





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

Set the hue of this color.

~~~~{.cpp}
    ofColor c = ofColor::fromHsb(0, 255, 255); // Bright red ...
    c.setHue(128); // ... now bright cyan.
~~~~


Parameters:
hue A hue value to set in the range of 0 - limit().





_description: _

Change the current hue, leaving saturation and brightness intact.

~~~~{.cpp}
ofColor c = ofColor::fromHsb( 0, 255, 255 ); // bright red
c.setHue( 128 ); // now bright cyan
~~~~

Refer the [discussion of HSB](#HSB) above.





<!----------------------------------------------------------------------------->

###void setHueAngle(angle)

<!--
_syntax: setHueAngle(angle)_
_name: setHueAngle_
_returns: void_
_returns_description: _
_parameters: float angle_
_access: public_
_version_started: 0.8.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Set the hue angle of this color.

Parameters:
angle A hue angle value to set in the range of 0 - 360 degrees.





_description: _







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

Set the saturation of this color.

This method uses HSB not HSL. So red desaturated is white, not gray

~~~~{.cpp}
    ofColor c(0, 0, 255); // Vibrant blue ...
    c.setSaturation( 128 ); // ... pale blue.
~~~~


Parameters:
saturation A saturation value value in the range of 0 - limit().

See also: http://en.wikipedia.org/wiki/HSL_and_HSV





_description: _

Change the current saturation, leaving hue and brightness intact.

~~~~{.cpp}
ofColor c( 0, 0, 255 ); // vibrant blue
c.setSaturation( 128 ); // pale blue
~~~~

Refer the [discussion of HSB](#HSB) above.





<!----------------------------------------------------------------------------->

##Variables



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

_inlined_description: _

< The alpha color component.





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

< The blue color component.





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

< The green color component.





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

< The red color component.





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

< The pixel values as an array.





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





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

_inlined_description: _

 \name Predefined Colors
A collection of static colors defined by name.

These constants allow the user to access colors by name.  For example,
if using ofColor, one might set a color in the following way:

~~~~{.cpp}
    ofColor myColor = ofColor::white;
    // myColor is now full white (255,255,255,255).
~~~~

The list of colors is based upon the CSS names colors and can be viewed
[here](http://www.w3schools.com/cssref/css_colornames.asp).

\{





_description: _







<!----------------------------------------------------------------------------->
