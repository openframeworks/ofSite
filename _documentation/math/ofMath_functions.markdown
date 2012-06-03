#functions

##Description





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

_description: _

Seeds the random number generator to the clock time, so that random numbers will always be different.






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

_description: _

Seeds the random number generator to a value passed in (val) so that random numbers will always be the same.






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

_description: _

For example, ofRandom(-30,20) will return a random number between -30 and 20.






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

_description: _







<!----------------------------------------------------------------------------->

###int ofNextPow2(input)

<!--
_syntax: ofNextPow2(input)_
_name: ofNextPow2_
_returns: int_
_returns_description: _
_parameters: int input_
_version_started: 006_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_description: _

eg: for an input of 50 ofNextPow2 will return 64 and for an input of 401 it will return 512.






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

_description: _

Normalizes a number from a given range (min,max) into a value between 0 and 1.
note: we are getting a clamp number between 0 and 1 of "value-min/max-min"






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

_description: _

Re-maps a number from one range to another. We convert the number value where inputMin < value < inputMax into a number beetween outputMin and outputMax.
e.g:
~~~~{.cpp}
float x, newx;
x=5;
// 0 < x < 10
newx = ofMap(x, 0, 10, 21, 22) //newx = 21.5 a value between 21 and 22
~~~~






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

_description: _

Restricts a value to be within a specified range defined by values min and max. 
e.g:
~~~~{.cpp}
float val, newval;
val=10;
newval=ofClamp(val,30,40); //newval = 30
newval=ofClamp(val,0,5); //newval = 5
newval=ofClamp(val,0,20); //newval = 10
~~~~






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

_description: _

Calculates a number between two numbers (start,stop) at a specific increment (amt).
If we want the new number to be between start,stop numbers amp needs to be a number between 0 and 1. 
e.g:
~~~~{.cpp}
float init,end,increment,result;
increment=0.2;
init = 1;
end =2;
result=ofLerp(init, end, increment); //result = 1.2
//We are doing init+increment*(end-init)
~~~~






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

_description: _


Calculates the distance between two points, (x1, y1) and (x2, y2).   Uses http://en.wikipedia.org/wiki/Pythagorean_theorem




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

_description: _



Calculates the distances between two points, as in ofDist() but doesn't take the sqrt() of the result, which is a faster operation if you need to calculate and compare multiple distances. 



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

_description: _



Returns true if the number t is the range of [min - max], false if it's not. 



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

_description: _

Convert an angle value expressed in Radians into an angle in Degrees. For example if we call this function for radians=PI/2 we obtain 90. 






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

_description: _

Convert an angle value expressed in Degrees into an angle in Radians. For example if we call this function for degrees=90 we obtain PI/2.






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

_description: _



Picks a random number between 0 and the width of the screen. 



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

_description: _



Picks a random number between 0 and max. 



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

_description: _


ofMap remaps the value passed in "value", calculating it's linear distance between inputMin and inputMax, and remapping it based on that percentage to outputMin and outputMax.  You can choose to clamp the results.  Results are not clamped by default.

For example:

float color = ofMap(mouseX, 0, ofGetWidth(), 0, 255, true);
ofBackground(color, color, color);


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

_description: _







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

_description: _







<!----------------------------------------------------------------------------->

###float ofAngleSumRadians(currentAngle, targetAngle)

<!--
_syntax: ofAngleSumRadians(currentAngle, targetAngle)_
_name: ofAngleSumRadians_
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

_description: _







<!----------------------------------------------------------------------------->

