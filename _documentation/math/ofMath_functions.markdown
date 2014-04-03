#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###float ofAngleDifferenceDegrees(currentAngle, targetAngle)

<!--
_syntax: ofAngleDifferenceDegrees(currentAngle, targetAngle)_
_name: ofAngleDifferenceDegrees_
_returns: float_
_returns_description: _
_parameters: float currentAngle, float targetAngle_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates the difference between two angles in degrees. 

This will calculate the actual difference, taking into account multiple revolutions. For example: 







_description: _








<!----------------------------------------------------------------------------->

###float ofAngleDifferenceRadians(currentAngle, targetAngle)

<!--
_syntax: ofAngleDifferenceRadians(currentAngle, targetAngle)_
_name: ofAngleDifferenceRadians_
_returns: float_
_returns_description: _
_parameters: float currentAngle, float targetAngle_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates the difference between two angles in radians. 

This will calculate the actual difference, taking into account multiple revolutions. For example: 







_description: _








<!----------------------------------------------------------------------------->

###ofPoint ofBezierPoint(a, b, c, d, t)

<!--
_syntax: ofBezierPoint(a, b, c, d, t)_
_name: ofBezierPoint_
_returns: ofPoint_
_returns_description: _
_parameters: ofPoint a, ofPoint b, ofPoint c, ofPoint d, float t_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Given the four points that determine a bezier curve, return an interpolated point on the curve. 







_description: _








<!----------------------------------------------------------------------------->

###ofPoint ofBezierTangent(a, b, c, d, t)

<!--
_syntax: ofBezierTangent(a, b, c, d, t)_
_name: ofBezierTangent_
_returns: ofPoint_
_returns_description: _
_parameters: ofPoint a, ofPoint b, ofPoint c, ofPoint d, float t_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Given the four points that determine a bezier curve and an offset along the curve, return an tangent vector to a point on the curve. Currently this is not a normalized point, and will need to be normalized. 







_description: _








<!----------------------------------------------------------------------------->

###float ofClamp(value,min,max) 

<!--
_syntax: ofClamp(value,min,max) _
_name: ofClamp_
_returns: float_
_returns_description: _
_parameters: float value, float min, float max_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Clamp a value between min and max. 

Restricts a value to be within a specified range defined by values min and max. If the value is min <= value <= max, returns value. If the value is greater than max, return max; if the value is less than min, return min. 







_description: _








<!----------------------------------------------------------------------------->

###ofPoint ofCurvePoint(a, b, c, d, t)

<!--
_syntax: ofCurvePoint(a, b, c, d, t)_
_name: ofCurvePoint_
_returns: ofPoint_
_returns_description: _
_parameters: ofPoint a, ofPoint b, ofPoint c, ofPoint d, float t_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Given the four points that determine a Catmull Rom curve, return an interpolated point on the curve. 







_description: _








<!----------------------------------------------------------------------------->

###ofPoint ofCurveTangent(a, b, c, d, t)

<!--
_syntax: ofCurveTangent(a, b, c, d, t)_
_name: ofCurveTangent_
_returns: ofPoint_
_returns_description: _
_parameters: ofPoint a, ofPoint b, ofPoint c, ofPoint d, float t_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Return a tangent point for an offset along a Catmull Rom curve. 







_description: _








<!----------------------------------------------------------------------------->

###float ofDegToRad(degrees)

<!--
_syntax: ofDegToRad(degrees)_
_name: ofDegToRad_
_returns: float_
_returns_description: _
_parameters: float degrees_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert degrees to radians. 

Example: 







_description: _








<!----------------------------------------------------------------------------->

###float ofDist(x1,y1,x2,y2) 

<!--
_syntax: ofDist(x1,y1,x2,y2) _
_name: ofDist_
_returns: float_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2 _
_version_started: 006_
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

###float ofDist(x1, y1, x2, y2)

<!--
_syntax: ofDist(x1, y1, x2, y2)_
_name: ofDist_
_returns: float_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates the distance between two points. 

Uses 







_description: _








<!----------------------------------------------------------------------------->

###float ofDistSquared(x1,y1,x2,y2) 

<!--
_syntax: ofDistSquared(x1,y1,x2,y2) _
_name: ofDistSquared_
_returns: float_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2 _
_version_started: 006_
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

###float ofDistSquared(x1, y1, x2, y2)

<!--
_syntax: ofDistSquared(x1, y1, x2, y2)_
_name: ofDistSquared_
_returns: float_
_returns_description: _
_parameters: float x1, float y1, float x2, float y2_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates the distance between two points, without taking the square root of the result. 

Same as ofMath::ofDist() but doesn't take the sqrt() of the result, which is a faster operation if you need to calculate and compare multiple distances.







_description: _








<!----------------------------------------------------------------------------->

###bool ofInRange(t,min,max)

<!--
_syntax: ofInRange(t,min,max)_
_name: ofInRange_
_returns: bool_
_returns_description: _
_parameters: float t, float min, float max_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Determines if a number is inside of a given range. 







_description: _








<!----------------------------------------------------------------------------->

###bool ofInsidePoly(x, y, &poly)

<!--
_syntax: ofInsidePoly(x, y, &poly)_
_name: ofInsidePoly_
_returns: bool_
_returns_description: _
_parameters: float x, float y, const vector< ofPoint > &poly_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Determine if an (x,y) coordinate is within the polygon defined by a vector of ofPoints. 







_description: _








<!----------------------------------------------------------------------------->

###bool ofInsidePoly(&p, &poly)

<!--
_syntax: ofInsidePoly(&p, &poly)_
_name: ofInsidePoly_
_returns: bool_
_returns_description: _
_parameters: const ofPoint &p, const vector< ofPoint > &poly_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Determine if an ofPoint is within the polygon defined by a vector of ofPoints. 







_description: _








<!----------------------------------------------------------------------------->

###Type ofInterpolateCatmullRom(y0, y1, y2, y3, pct)

<!--
_syntax: ofInterpolateCatmullRom(y0, y1, y2, y3, pct)_
_name: ofInterpolateCatmullRom_
_returns: Type_
_returns_description: _
_parameters: Type y0, Type y1, Type y2, Type y3, float pct_
_version_started: _
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

###Type ofInterpolateCosine(y1, y2, pct)

<!--
_syntax: ofInterpolateCosine(y1, y2, pct)_
_name: ofInterpolateCosine_
_returns: Type_
_returns_description: _
_parameters: Type y1, Type y2, float pct_
_version_started: _
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

###Type ofInterpolateCubic(y0, y1, y2, y3, pct)

<!--
_syntax: ofInterpolateCubic(y0, y1, y2, y3, pct)_
_name: ofInterpolateCubic_
_returns: Type_
_returns_description: _
_parameters: Type y0, Type y1, Type y2, Type y3, float pct_
_version_started: _
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

###Type ofInterpolateHermite(y0, y1, y2, y3, pct)

<!--
_syntax: ofInterpolateHermite(y0, y1, y2, y3, pct)_
_name: ofInterpolateHermite_
_returns: Type_
_returns_description: _
_parameters: Type y0, Type y1, Type y2, Type y3, float pct_
_version_started: _
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

###Type ofInterpolateHermite(y0, y1, y2, y3, pct, tension, bias)

<!--
_syntax: ofInterpolateHermite(y0, y1, y2, y3, pct, tension, bias)_
_name: ofInterpolateHermite_
_returns: Type_
_returns_description: _
_parameters: Type y0, Type y1, Type y2, Type y3, float pct, float tension, float bias_
_version_started: _
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

###float ofLerp(start,stop,amt)

<!--
_syntax: ofLerp(start,stop,amt)_
_name: ofLerp_
_returns: float_
_returns_description: _
_parameters: float start, float stop, float amt_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Linearly interpolate a value be within a range. 

Calculates a number between two numbers (start,stop) at a specific increment (amt). If we want the new number to be between start and stop numbers, amt needs to be a number between 0 and 1. 







_description: _








<!----------------------------------------------------------------------------->

###float ofLerpDegrees(currentAngle, targetAngle, pct)

<!--
_syntax: ofLerpDegrees(currentAngle, targetAngle, pct)_
_name: ofLerpDegrees_
_returns: float_
_returns_description: _
_parameters: float currentAngle, float targetAngle, float pct_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Linearly interpolate a value between two angles in degrees. 

Calculates a number between two numbers (start, stop) at a specific increment (amt). This does constrain the result into a single rotation, but does not clamp the values







_description: _








<!----------------------------------------------------------------------------->

###float ofLerpRadians(currentAngle, targetAngle, pct)

<!--
_syntax: ofLerpRadians(currentAngle, targetAngle, pct)_
_name: ofLerpRadians_
_returns: float_
_returns_description: _
_parameters: float currentAngle, float targetAngle, float pct_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Linearly interpolate a value between two angles in radians. 

Calculates a number between two numbers (start, stop) at a specific increment (amt). This does constrain the result into a single rotation, but does not clamp the values







_description: _








<!----------------------------------------------------------------------------->

###bool ofLineSegmentIntersection(line1Start, line1End, line2Start, line2End, &intersection)

<!--
_syntax: ofLineSegmentIntersection(line1Start, line1End, line2Start, line2End, &intersection)_
_name: ofLineSegmentIntersection_
_returns: bool_
_returns_description: _
_parameters: ofPoint line1Start, ofPoint line1End, ofPoint line2Start, ofPoint line2End, ofPoint &intersection_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Determine the intersection between two lines. 







_description: _








<!----------------------------------------------------------------------------->

###float ofMap(value,inputMin,inputMax,outputMin,outputMax)

<!--
_syntax: ofMap(value,inputMin,inputMax,outputMin,outputMax)_
_name: ofMap_
_returns: float_
_returns_description: _
_parameters: float value, float inputMin, float inputMax, float outputMin,  float outputMax_
_version_started: 006_
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

###float ofMap(value, inputMin, inputMax, outputMin, outputMax, clamp = false)

<!--
_syntax: ofMap(value, inputMin, inputMax, outputMin, outputMax, clamp = false)_
_name: ofMap_
_returns: float_
_returns_description: _
_parameters: float value, float inputMin, float inputMax, float outputMin, float outputMax, bool clamp=false_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Given a value and an input range, remap the value to be within an output range. 

ofMap remaps the value passed in "value", calculating it's linear distance between inputMin and inputMax, and remapping it based on that percentage to outputMin and outputMax. You can choose to clamp the results, which will constrain the results between outputMin and outputMax. Results are not clamped by default.

Example: 







_description: _








<!----------------------------------------------------------------------------->

###int ofNextPow2(input)

<!--
_syntax: ofNextPow2(input)_
_name: ofNextPow2_
_returns: int_
_returns_description: _
_parameters: int a_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates the next larger power of 2. 

If the input is already a power of 2, it will return itself. Example:

ofNextPow2(50); // returns 64 ofNextPow2(64); // returns 64 ofNextPow(401)); // returns 512







_description: _








<!----------------------------------------------------------------------------->

###float ofNoise(x)

<!--
_syntax: ofNoise(x)_
_name: ofNoise_
_returns: float_
_returns_description: _
_parameters: float x_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates a one dimensional Perlin noise value between 0.0...1.0. 







_description: _








<!----------------------------------------------------------------------------->

###float ofNoise(x, y)

<!--
_syntax: ofNoise(x, y)_
_name: ofNoise_
_returns: float_
_returns_description: _
_parameters: float x, float y_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates a two dimensional Perlin noise value between 0.0...1.0. 







_description: _








<!----------------------------------------------------------------------------->

###float ofNoise(x, y, z)

<!--
_syntax: ofNoise(x, y, z)_
_name: ofNoise_
_returns: float_
_returns_description: _
_parameters: float x, float y, float z_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates a three dimensional Perlin noise value between 0.0...1.0. 







_description: _








<!----------------------------------------------------------------------------->

###float ofNoise(x, y, z, w)

<!--
_syntax: ofNoise(x, y, z, w)_
_name: ofNoise_
_returns: float_
_returns_description: _
_parameters: float x, float y, float z, float w_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates a four dimensional Perlin noise value between 0.0...1.0. 







_description: _








<!----------------------------------------------------------------------------->

###float ofNormalize(float value, float min, float max)

<!--
_syntax: ofNormalize(float value, float min, float max)_
_name: ofNormalize_
_returns: float_
_returns_description: _
_parameters: float value, float min, float max_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Given a value and a range, remap the value to be within 0 and 1. 

Often, you'll need to work with percentages or other methods that expect a value between 0 and 1. This function will take a minimum and maximum, and then finds where within that range a value sits. If the value is outside the range, it will be mapped to 0 or 1.







_description: _








<!----------------------------------------------------------------------------->

###float ofRadToDeg(radians)

<!--
_syntax: ofRadToDeg(radians)_
_name: ofRadToDeg_
_returns: float_
_returns_description: _
_parameters: float radians_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Convert radians to degrees. 







_description: _








<!----------------------------------------------------------------------------->

###float ofRandom(val0,val1)

<!--
_syntax: ofRandom(val0,val1)_
_name: ofRandom_
_returns: float_
_returns_description: _
_parameters: float val0, float val1_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

returns a random number between two values. 

Example:

// Return a random floating point number between -30 and 20. ofRandom(-30, 20);







_description: _








<!----------------------------------------------------------------------------->

###float ofRandom(max)

<!--
_syntax: ofRandom(max)_
_name: ofRandom_
_returns: float_
_returns_description: _
_parameters: float max_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns a random floating point number between 0 and max. 







_description: _








<!----------------------------------------------------------------------------->

###float ofRandomHeight()

<!--
_syntax: ofRandomHeight()_
_name: ofRandomHeight_
_returns: float_
_returns_description: _
_parameters: _
_version_started: _
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

###float ofRandomWidth()

<!--
_syntax: ofRandomWidth()_
_name: ofRandomWidth_
_returns: float_
_returns_description: _
_parameters: _
_version_started: 006_
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

###float ofRandomf()

<!--
_syntax: ofRandomf()_
_name: ofRandomf_
_returns: float_
_returns_description: _
_parameters: _
_version_started: 006_
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

###float ofRandomuf()

<!--
_syntax: ofRandomuf()_
_name: ofRandomuf_
_returns: float_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

a random floating point number between 0 and 1. 







_description: _








<!----------------------------------------------------------------------------->

###void ofSeedRandom()

<!--
_syntax: ofSeedRandom()_
_name: ofSeedRandom_
_returns: void_
_returns_description: _
_parameters: _
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Randomly seeds the random number generator. 

This seeds the random number generator with an acceptably random value, generated from clock time and the PID. 







_description: _








<!----------------------------------------------------------------------------->

###void ofSeedRandom(val)

<!--
_syntax: ofSeedRandom(val)_
_name: ofSeedRandom_
_returns: void_
_returns_description: _
_parameters: int val_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Seeds the random number generator with a value for consistent randomness. 







_description: _








<!----------------------------------------------------------------------------->

###int ofSign(n) 

<!--
_syntax: ofSign(n) _
_name: ofSign_
_returns: int_
_returns_description: _
_parameters: float n _
_version_started: 006_
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

###int ofSign(n)

<!--
_syntax: ofSign(n)_
_name: ofSign_
_returns: int_
_returns_description: _
_parameters: float n_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Returns the sign of a number. 







_description: _








<!----------------------------------------------------------------------------->

###float ofSignedNoise(x)

<!--
_syntax: ofSignedNoise(x)_
_name: ofSignedNoise_
_returns: float_
_returns_description: _
_parameters: float x_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates a one dimensional Perlin noise value between -1.0...1.0. 







_description: _








<!----------------------------------------------------------------------------->

###float ofSignedNoise(x, y)

<!--
_syntax: ofSignedNoise(x, y)_
_name: ofSignedNoise_
_returns: float_
_returns_description: _
_parameters: float x, float y_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates a two dimensional Perlin noise value between -1.0...1.0. 







_description: _








<!----------------------------------------------------------------------------->

###float ofSignedNoise(x, y, z)

<!--
_syntax: ofSignedNoise(x, y, z)_
_name: ofSignedNoise_
_returns: float_
_returns_description: _
_parameters: float x, float y, float z_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates a three dimensional Perlin noise value between -1.0...1.0. 







_description: _








<!----------------------------------------------------------------------------->

###float ofSignedNoise(x, y, z, w)

<!--
_syntax: ofSignedNoise(x, y, z, w)_
_name: ofSignedNoise_
_returns: float_
_returns_description: _
_parameters: float x, float y, float z, float w_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates a four dimensional Perlin noise value between -1.0...1.0. 







_description: _








<!----------------------------------------------------------------------------->

###float ofWrap(value, from, to)

<!--
_syntax: ofWrap(value, from, to)_
_name: ofWrap_
_returns: float_
_returns_description: _
_parameters: float value, float from, float to_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Find a value within a given range, wrapping the value if it overflows. 

If a value is between from and to, return that value. If a value is NOT within that range, wrap it.

For example: 







_description: _








<!----------------------------------------------------------------------------->

###float ofWrapDegrees(angle, from = -180, to = +180)

<!--
_syntax: ofWrapDegrees(angle, from = -180, to = +180)_
_name: ofWrapDegrees_
_returns: float_
_returns_description: _
_parameters: float angle, float from=-180, float to=+180_
_version_started: _
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

###float ofWrapRadians(angle, from = -PI, to = +PI)

<!--
_syntax: ofWrapRadians(angle, from = -PI, to = +PI)_
_name: ofWrapRadians_
_returns: float_
_returns_description: _
_parameters: float angle, float from=-PI, float to=+PI_
_version_started: _
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

