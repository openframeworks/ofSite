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

This will calculate the actual difference, taking into account multiple
revolutions. For example:

~~~~{.cpp}
		ofAngleDifferenceDegrees(0, 90); // Returns 90.
		ofAngleDifferenceDegrees(0, 450); // Also returns 90.
~~~~


Parameters:
currentAngle The current angle in degrees.
targetAngle the angle to be compared to in degrees.

Returns: The difference between two angles in degrees.





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

This will calculate the actual difference, taking into account multiple
revolutions. For example:

~~~~{.cpp}
		ofAngleDifferenceRadians(0, PI); // Returns -PI.
		ofAngleDifferenceRadians(0, 3*PI); // Also returns -PI.
~~~~


Parameters:
currentAngle The current angle in radians.
targetAngle the angle to be compared to in radians.

Returns: The difference between two angles in radians.





_description: _







<!----------------------------------------------------------------------------->

###ofPoint ofBezierPoint(&a, &b, &c, &d, t)

<!--
_syntax: ofBezierPoint(&a, &b, &c, &d, t)_
_name: ofBezierPoint_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint &a, const ofPoint &b, const ofPoint &c, const ofPoint &d, float t_
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

Parameters:
a The beginning point of the curve.
b The first control point.
c The second control point.
d The end point of the curve.
t an offset along the curve, normalized between 0 and 1.

Returns: A ofPoint on the curve.





_description: _







<!----------------------------------------------------------------------------->

###ofPoint ofBezierTangent(&a, &b, &c, &d, t)

<!--
_syntax: ofBezierTangent(&a, &b, &c, &d, t)_
_name: ofBezierTangent_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint &a, const ofPoint &b, const ofPoint &c, const ofPoint &d, float t_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Given the four points that determine a bezier curve and an offset along the curve, return an tangent vector to a point on the curve.
Currently this is not a normalized point, and will need to be normalized.

Parameters:
a The beginning point of the curve.
b The first control point.
c The second control point.
d The end point of the curve.
t an offset along the curve, normalized between 0 and 1.

Returns: A ofPoint on the curve.





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

Restricts a value to be within a specified range defined by values min and
max. If the value is min <= value <= max, returns value.  If the value is
greater than max, return max; if the value is less than min, return min.
Otherwise, return the value unchanged.

~~~~{.cpp}
		float val = 10;
		float newVal = 0;
		newval = ofClamp(val, 30, 40); // newval = 30
		newval = ofClamp(val, 0, 5);   // newval = 5
		newval = ofClamp(val, 0, 20);  // newval = 10
~~~~


Parameters:
value The number to be clamped.
min The lower bound of the range.
max The upper bound of the range.

Returns: a floating point number in the range [min, max].





_description: _







<!----------------------------------------------------------------------------->

###ofPoint ofCurvePoint(&a, &b, &c, &d, t)

<!--
_syntax: ofCurvePoint(&a, &b, &c, &d, t)_
_name: ofCurvePoint_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint &a, const ofPoint &b, const ofPoint &c, const ofPoint &d, float t_
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

Parameters:
a The first control point.
b The beginning point of the curve.
c The end point of the curve.
d The second control point.
t an offset along the curve, normalized between 0 and 1.

Returns: A ofPoint on the curve.





_description: _







<!----------------------------------------------------------------------------->

###ofPoint ofCurveTangent(&a, &b, &c, &d, t)

<!--
_syntax: ofCurveTangent(&a, &b, &c, &d, t)_
_name: ofCurveTangent_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint &a, const ofPoint &b, const ofPoint &c, const ofPoint &d, float t_
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

Parameters:
a The first control point.
b The beginning point of the curve.
c The end point of the curve.
d The second control point.
t an offset along the curve, normalized between 0 and 1.

Returns: A ofPoint on the curve.





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
~~~~{.cpp}
		float result = ofDegToRad(90); // The result will be PI/2.
~~~~


Parameters:
degrees An angle in degrees.

Returns: the angle in radians.





_description: _







<!----------------------------------------------------------------------------->

###float ofDist(x1, y1, z1, x2, y2, z2)

<!--
_syntax: ofDist(x1, y1, z1, x2, y2, z2)_
_name: ofDist_
_returns: float_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates the 3D distance between two points.

Uses the [Pythagorean theorem](http://en.wikipedia.org/wiki/Pythagorean_theorem).


Parameters:
x1 X position of first point.
y1 Y position of first point.
z1 Z position of first point.
x2 X position of second point.
y2 Y position of second point.
z2 Z position of second point.

Returns: float Distance between points.





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

Calculates the 2D distance between two points.

Uses the [Pythagorean theorem](http://en.wikipedia.org/wiki/Pythagorean_theorem).


Parameters:
x1 X position of first point.
y1 Y position of first point.
x2 X position of second point.
y2 Y position of second point.

Returns: float Distance between points.





_description: _







<!----------------------------------------------------------------------------->

###float ofDistSquared(x1, y1, z1, x2, y2, z2)

<!--
_syntax: ofDistSquared(x1, y1, z1, x2, y2, z2)_
_name: ofDistSquared_
_returns: float_
_returns_description: _
_parameters: float x1, float y1, float z1, float x2, float y2, float z2_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Calculates the squared 3D distance between two points.

Same as ofDist() but doesn't take the square root sqrt() of the result,
which is a faster operation if you need to calculate and compare multiple
distances.


Parameters:
x1 X position of first point.
y1 Y position of first point.
z1 Z position of first point.
x2 X position of second point.
y2 Y position of second point.
z2 Z position of second point.

Returns: distance-squared between two points.





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

Calculates the squared 2D distance between two points.

Same as ofDist() but doesn't take the square root sqrt() of the result,
which is a faster operation if you need to calculate and compare multiple
distances.


Parameters:
x1 X position of first point.
y1 Y position of first point.
x2 X position of second point.
y2 Y position of second point.

Returns: distance-squared between two points.





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

Determine if a number is inside of a given range.

Parameters:
t The value to test.
min The lower bound of the range.
max The upper bound of the range.

Returns: true if the number t is the range of [min, max].





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

Parameters:
x The x dimension of the coordinate.
y The y dimension of the coordinate.
poly a vector of ofPoints defining a polygon.

Returns: True if the point defined by the coordinates is enclosed, false otherwise.





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

Parameters:
p A point to check.
poly A vector of ofPoints defining a polygon.

Returns: True if the ofPoint is enclosed, false otherwise.





_description: _







<!----------------------------------------------------------------------------->

###Type ofInterpolateCatmullRom(&y0, &y1, &y2, &y3, pct)

<!--
_syntax: ofInterpolateCatmullRom(&y0, &y1, &y2, &y3, pct)_
_name: ofInterpolateCatmullRom_
_returns: Type_
_returns_description: _
_parameters: const Type &y0, const Type &y1, const Type &y2, const Type &y3, float pct_
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

###Type ofInterpolateCosine(&y1, &y2, pct)

<!--
_syntax: ofInterpolateCosine(&y1, &y2, pct)_
_name: ofInterpolateCosine_
_returns: Type_
_returns_description: _
_parameters: const Type &y1, const Type &y2, float pct_
_version_started: _
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

\}





_description: _







<!----------------------------------------------------------------------------->

###Type ofInterpolateCubic(&y0, &y1, &y2, &y3, pct)

<!--
_syntax: ofInterpolateCubic(&y0, &y1, &y2, &y3, pct)_
_name: ofInterpolateCubic_
_returns: Type_
_returns_description: _
_parameters: const Type &y0, const Type &y1, const Type &y2, const Type &y3, float pct_
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

###Type ofInterpolateHermite(&y0, &y1, &y2, &y3, pct)

<!--
_syntax: ofInterpolateHermite(&y0, &y1, &y2, &y3, pct)_
_name: ofInterpolateHermite_
_returns: Type_
_returns_description: _
_parameters: const Type &y0, const Type &y1, const Type &y2, const Type &y3, float pct_
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

###Type ofInterpolateHermite(&y0, &y1, &y2, &y3, pct, tension, bias)

<!--
_syntax: ofInterpolateHermite(&y0, &y1, &y2, &y3, pct, tension, bias)_
_name: ofInterpolateHermite_
_returns: Type_
_returns_description: _
_parameters: const Type &y0, const Type &y1, const Type &y2, const Type &y3, float pct, float tension, float bias_
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

Linearly interpolate a value within a range.

Calculates a number between two numbers [start, stop] at a specific increment
(amt).  If we want the new number to be between start and stop numbers, amt
needs to be a number between 0 and 1, inclusive.  ofLerp() does not clamp
the values.

~~~~{.cpp}
		float init = 1;
		float end = 2;
		float increment = 0.2;
		float result = ofLerp(init, end, increment); // result = 1.2
		// Values outside 0...1 work as well.
		increment = 2;
		result = ofLerp(init, end, increment); // result = 3
~~~~


See also: float ofClamp(float value, float min, float max)

Parameters:
start The lower bound of the range.
stop The upper bound of the range.
amt The normalized [0, 1] value within the range to return.

Returns: A float between start and stop.





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

Calculates a number between two numbers [start, stop) at a specific
increment (amt). This does constrain the result into a single rotation,
but does not clamp the values


Parameters:
currentAngle The lower bound of the range in degrees.
targetAngle The upper bound of the range in degrees.
pct An amount between [0.0, 1.0] within the range to return.

Returns: An angle in degrees between currentAngle and targetAngle.





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

Calculates a number between two numbers (start, stop) at a specific
increment (amt).  This does constrain the result into a single rotation, but
does not clamp the values


Parameters:
currentAngle The lower bound of the range in radians.
targetAngle The upper bound of the range in radians.
pct An amount between [0.0, 1.0] within the range to return.

Returns: An angle in radians between currentAngle and targetAngle.





_description: _







<!----------------------------------------------------------------------------->

###bool ofLineSegmentIntersection(&line1Start, &line1End, &line2Start, &line2End, &intersection)

<!--
_syntax: ofLineSegmentIntersection(&line1Start, &line1End, &line2Start, &line2End, &intersection)_
_name: ofLineSegmentIntersection_
_returns: bool_
_returns_description: _
_parameters: const ofPoint &line1Start, const ofPoint &line1End, const ofPoint &line2Start, const ofPoint &line2End, ofPoint &intersection_
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

Parameters:
line1Start Starting point for first line.
line1End End point for first line.
line2Start Starting point for second line.
line2End End point for second line.
intersection ofPoint reference in which to store the computed intersection point.

Returns: True if the lines intersect.





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

Given a value and an input range, map the value to an output range.

ofMap linearly maps the given value to a new value given an input and output
range.  Thus if value is 50% of the way between inputMin and inputMax, the
output value will be 50% of the way between outpuMin and outputMax. For
an input value _outside_ of the intputMin and inputMax range, negative
percentages and percentages greater than 100% will be used.  For example, if
the input value is 150 and the input range is 0 - 100 and the output range
0 - 1000, the output value will be 1500 or 150% of the total range.  The
user can avoid mapping outside of the input range by clamping the output
value.  Clamping is disabled by default and ensures that the output value
always stays in the range [outputMin, outputMax).

Example:
~~~~~{.cpp}
		float x = 5;
		float newx = 0;
		// 0 <= x < 10
		newx = ofMap(x, 0, 10, 21, 22); // newx = 21.5 a value [21, 22).
~~~~~


Parameters:
value The number to be mapped.
inputMin The lower bound of the input range.
inputMax The upper bound of the input range.
outputMin The lower bound of the output range.
outputMax The upper bound of the output range.
clamp True if the value should be clamped to [outputMin, outputMax).
\note If the absolute difference between inputMin and inputMax is less than
		  FLT_EPSILON, outputMin will be returned to prevent divide by zero
		  errors.

Returns: a mapped floating point number.





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

If the input is already a power of 2, it will return itself.

Example:
~~~~{.cpp}
ofNextPow2(50); // returns 64
ofNextPow2(64); // returns 64
ofNextPow2(401); // returns 512
~~~~


Parameters:
a The starting point for finding the next power of 2.

Returns: value^2.





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

###float ofNoise(&p)

<!--
_syntax: ofNoise(&p)_
_name: ofNoise_
_returns: float_
_returns_description: _
_parameters: const ofVec2f &p_
_version_started: 0.9.0_
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

###float ofNoise(&p)

<!--
_syntax: ofNoise(&p)_
_name: ofNoise_
_returns: float_
_returns_description: _
_parameters: const ofVec3f &p_
_version_started: 0.9.0_
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

###float ofNoise(&p)

<!--
_syntax: ofNoise(&p)_
_name: ofNoise_
_returns: float_
_returns_description: _
_parameters: const ofVec4f &p_
_version_started: 0.9.0_
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

Given a value and an input range, map the value to be within 0 and 1.

Often, you'll need to work with percentages or other methods that expect a
value between 0 and 1.  This function will take a minimum and maximum and
then finds where within that range a value sits.  If the value is outside
the range, it will be mapped to 0 or 1.


Parameters:
value The number to be normalized.
min The lower bound of the range.
max The upper bound of the range.

Returns: A float between 0 and 1.





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

Example:
~~~~{.cpp}
		float result = ofRadToDeg(PI/2); // The result will be 90.
~~~~


Parameters:
radians An angle in radians.

Returns: the angle in degrees.





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

Get a random number between two values.

A random number in the range [min, max) will be returned.

Example:
	~~~~~{.cpp}
// Return a random floating point number between -30 and 20.
float randomNumber = ofRandom(-30, 20);
~~~~~


Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.


Parameters:
val0 the minimum value of the random number.
val1 The maximum value of the random number.

Returns: A random floating point number between val0 and val1.





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

Get a random floating point number between 0 and max.

A random number in the range [0, max) will be returned.

Example:
	~~~~~{.cpp}
// Return a random floating point number between 0 and 20.
float randomNumber = ofRandom(20);
~~~~~


Warning: ofRandom wraps C++'s `rand()` which is not reentrant or thread safe.


Parameters:
max The maximum value of the random number.





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

Get a random floating point number between 0 and the screen height.

A random number in the range [0, ofGetHeight()) will be returned.


Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.


Returns: a random number between 0 and ofGetHeight().





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

Get a random floating point number between 0 and the screen width.

A random number in the range [0, ofGetWidth()) will be returned.


Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.


Returns: a random number between 0 and ofGetWidth().





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

Get a random floating point number.


Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.


Returns: A random floating point number between -1 and 1.





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

Get a random unsigned floating point number.


Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.


Returns: A random floating point number between 0 and 1.





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

Seed the seeds the random number generator with a unique value.

This seeds the random number generator with an acceptably random value,
generated from clock time and the PID.





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

Seed the random number generator.

If the user would like to repeat the same random sequence, a known random
seed can be used to initialize the random number generator during app
setup.  This can be useful for debugging and testing.


Parameters:
val The value with which to seed the generator.





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

Returns: int -1 if n is negative, 1 if n is positive, and 0 is n == 0;





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

###float ofSignedNoise(&p)

<!--
_syntax: ofSignedNoise(&p)_
_name: ofSignedNoise_
_returns: float_
_returns_description: _
_parameters: const ofVec2f &p_
_version_started: 0.9.0_
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

###float ofSignedNoise(&p)

<!--
_syntax: ofSignedNoise(&p)_
_name: ofSignedNoise_
_returns: float_
_returns_description: _
_parameters: const ofVec3f &p_
_version_started: 0.9.0_
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

###float ofSignedNoise(&p)

<!--
_syntax: ofSignedNoise(&p)_
_name: ofSignedNoise_
_returns: float_
_returns_description: _
_parameters: const ofVec4f &p_
_version_started: 0.9.0_
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

If a value is between from and to, return that value.
If a value is NOT within that range, wrap it.

Example:
~~~~{.cpp}
		ofWrap(5, 0, 10); // Returns 5.
		ofWrap(15, 0, 10); // Also returns 5.
		ofWrap(-5, 0, 10); // Also returns 5.
~~~~


Parameters:
value The value to map.
from The lower bound of the range.

Returns: to The upper bound of the range.





_description: _







<!----------------------------------------------------------------------------->

###float ofWrapDegrees(angle, from = -180, to = +180)

<!--
_syntax: ofWrapDegrees(angle, from = -180, to = +180)_
_name: ofWrapDegrees_
_returns: float_
_returns_description: _
_parameters: float angle, float from, float to_
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
_parameters: float angle, float from, float to_
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

