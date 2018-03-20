---
.. title: ofMath functions
.. type: documentation
.. translator: jongun won
.. translator_site: http://scripter.co.kr
---
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
</br>두개의 호도(degree)의 실제 차이를 계산 합니다.</br>
This will calculate the actual difference, taking into account multiple
revolutions. For example:
</br>이것은 실제 차이를 계산 하며, 여러가지 결과를 가져 옵니다. 예를들어</br>

~~~~{.cpp}
		ofAngleDifferenceDegrees(0, 90); // Returns 90.
		ofAngleDifferenceDegrees(0, 450); // Also returns 90.
~~~~


Parameters:
currentAngle The current angle in degrees.
targetAngle the angle to be compared to in degrees.
</br> Parameters :  현재 호도(degree) , 비교할 대상의 호도(degree)  </br>
Returns: The difference between two angles in degrees.
</br> Returns : 두 호도(degree)의 차이를 반환합니다. </br>
###### 코멘트 : angles in degrees 이부분을 한국말로 옮기는게 다소 애매모호 하네요. 그래서 그냥 호도 라고 했습니다. 사실 호도 라는 한자어 보다 degree 를 더 많이 쓰긴 합니다... 




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
</br>두 라디안의 실제 차이를 계산 합니다.</br>
This will calculate the actual difference, taking into account multiple
revolutions. For example:
</br>이것은 실제 차이를 계산 하며, 여러가지 결과를 가져 옵니다. 예를들어</br>

~~~~{.cpp}
		ofAngleDifferenceRadians(0, PI); // Returns -PI.
		ofAngleDifferenceRadians(0, 3*PI); // Also returns -PI.
~~~~


Parameters:
currentAngle The current angle in radians.
targetAngle the angle to be compared to in radians.
</br>Parameters: 현재 라디안, 비교할 대상의 라디안 </br>
Returns: The difference between two angles in radians.
</br>Returns: 두 라디안의 차이를 반환합니다.  </br>




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
</br>베지어 커브의 4점을 결정 하고, 보간된 커브의 점을 반환 합니다</br>
Parameters:
a The beginning point of the curve.
b The first control point.
c The second control point.
d The end point of the curve.
t an offset along the curve, normalized between 0 and 1.
</br>Parameters</br>
</br>a : 커브의 시작점 </br>
</br>b : 첫번째 컨트롤 포인트 </br>
</br>c : 두번째 컨트롤 포인트</br>
</br>d : 커브의 종료점 </br>
</br>t : 커브의 오프셋을 따라 0과 1사이를 노멀라이즈 합니다. </br>

Returns: A ofPoint on the curve.
</br>Returns : 커브위의 ofPoint를 반환 합니다</br>




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
</br>베이저 커브의 4점을 결정 하고, 커브의 오프셋을 따라 커브의 탄젠트 벡터를 반환합니다. 현재 이것은 노멀라이즈 포인트가 아니고, 노멀라이즈 포인트가 될 필요가 있습니다</br>
Parameters:
a The beginning point of the curve.
b The first control point.
c The second control point.
d The end point of the curve.
t an offset along the curve, normalized between 0 and 1.
</br>Parameters</br>
</br>a : 커브의 시작점 </br>
</br>b : 첫번째 컨트롤 포인트 </br>
</br>c : 두번째 컨트롤 포인트</br>
</br>d : 커브의 종료점 </br>
</br>t : 커브의 오프셋을 따라 0과 1사이를 노멀라이즈 합니다. </br>

Returns: A ofPoint on the curve.
</br>Returns : 커브위의 ofPoint를 반환 합니다</br>





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
</br>최대값 과 최소값 사이를 고정 합니다</br>
Restricts a value to be within a specified range defined by values min and
max. If the value is min <= value <= max, returns value.  If the value is
greater than max, return max; if the value is less than min, return min.
Otherwise, return the value unchanged.
</br>최대값과 최소값의 특정 영역을 지정 하여 값을 제한시킵니다. 만약 값이 min <= value <= max 라면 (영역안에 포함 된다면) , 그 값을 반환 합니다. 만약 값이 최대값 보다 크다면 최대값을 반환 합니다. 만약 값이 최소값보다 작다면 최소값을 반환 합니다. 그외에는, 변하지 않은 값을 반환 합니다.(??마지막줄의 의미를 잘 모르겠네요??)</br>

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
</br>Parameters : </br>
</br>클램프 시킬 값 입니다.</br>
</br>영역의 최소값 입니다. </br>
</br>영역의 최대값 입니다.</br>
Returns: a floating point number in the range [min, max].
</br>Returns : 최대, 최소 값에 의한 숫자를 띄움니다.</br>




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
</br>4개의 점으로 Catmull Rom 커브를 결정 합니다. 보간된 커브위의 점을 반환 합니다 </br>
Parameters:
a The first control point.
b The beginning point of the curve.
c The end point of the curve.
d The second control point.
t an offset along the curve, normalized between 0 and 1.
</br>Parameters</br>
</br>a : 첫번째 컨트롤 포인트 </br>
</br>b : 커브의 시작점 </br>
</br>c : 커브의 종료점</br>
</br>d : 두번째 컨트롤 포인트</br>
</br>t : 커브의 오프셋을 따라 0과 1사이를 노멀라이즈 합니다. </br>
Returns: A ofPoint on the curve.
</br>Returns : 커브위의 ofPoint를 반환 합니다</br>




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
</br>Catmull Rom 커브 오프셋에 따른 탄젠트 포인트를 반환 합니다.</br>
Parameters:
a The first control point.
b The beginning point of the curve.
c The end point of the curve.
d The second control point.
t an offset along the curve, normalized between 0 and 1.
</br>Parameters</br>
</br>a : 첫번째 컨트롤 포인트 </br>
</br>b : 커브의 시작점 </br>
</br>c : 커브의 종료점</br>
</br>d : 두번째 컨트롤 포인트</br>
</br>t : 커브의 오프셋을 따라 0과 1사이를 노멀라이즈 합니다. </br>

Returns: A ofPoint on the curve.
</br>Returns : 커브위의 ofPoint를 반환 합니다</br>




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
</br>호도(degree) 와 라디안을 변환 합니다.</br>
Example:
~~~~{.cpp}
		float result = ofDegToRad(90); // The result will be PI/2.
~~~~


Parameters:
degrees An angle in degrees.
</br>Parameters : 호도값(degree) </br>

Returns: the angle in radians.
</br>Returns : 라디안을 반환 합니다 </br>




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
</br>3D 포인트의 2점의 거리를 계산 합니다</br>
Uses the [Pythagorean theorem](http://en.wikipedia.org/wiki/Pythagorean_theorem).


Parameters:
x1 X position of first point.
y1 Y position of first point.
z1 Z position of first point.
x2 X position of second point.
y2 Y position of second point.
z2 Z position of second point.
</br>x1 , y1 , z1 , x2 , y2 , z2</br>

Returns: float Distance between points.
</br>Returns : 두 점의 거리를 반환 합니다</br>




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
두개의 2D점의 거리를 계산 합니다.
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
</br>두개의 점에 의한 3D 정사각형 공간의 거리를 계산 합니다.</br>
Same as ofDist() but doesn't take the square root sqrt() of the result,
which is a faster operation if you need to calculate and compare multiple
distances.
</br>ofDist() 와 같으나, 결과는 square root sqrt()를 갖지 않습니다(와 같지 않습니다)(??안써봐서 이게 맞는지 잘 모르겠음??) </br>
</br>만약 여러 거리를 비교 하거나 계산 할때, 빠른게 수행 할 수 있습니다.</br>


Parameters:
x1 X position of first point.
y1 Y position of first point.
z1 Z position of first point.
x2 X position of second point.
y2 Y position of second point.
z2 Z position of second point.

Returns: distance-squared between two points.
</br>두점 사이의 distance-squared 를 반환함 </br>




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
</br>두점 사이의 2D 정사각형 거리를 계산 합니다.</br>
Same as ofDist() but doesn't take the square root sqrt() of the result,
which is a faster operation if you need to calculate and compare multiple
distances.
</br>ofDist() 와 같으나, 결과는 square root sqrt()를 갖지 않습니다(와 같지 않습니다)(??안써봐서 이게 맞는지 잘 모르겠음??) </br>
</br>만약 여러 거리를 비교 하거나 계산 할때, 빠른게 수행 할 수 있습니다.</br>

Parameters:
x1 X position of first point.
y1 Y position of first point.
x2 X position of second point.
y2 Y position of second point.

Returns: distance-squared between two points.
</br>두점 사이의 distance-squared 를 반환함 </br>




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
</br>값(Number)가 주어진 영역안에 있는지 알아냅니다</br>
Parameters:
t The value to test.
min The lower bound of the range.
max The upper bound of the range.

Returns: true if the number t is the range of [min, max].
</br> Returns : 그 값(number)이 [min, max]의 영역역 이면 true 를 반환합니다</br>




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
</br> ofPoints 의 벡터배열에 의하여 결정된 폴리곤의 영역안에 좌표(x,y)가 있는지 알아냅니다</br>
Parameters:
x The x dimension of the coordinate.
y The y dimension of the coordinate.
poly a vector of ofPoints defining a polygon.

Returns: True if the point defined by the coordinates is enclosed, false otherwise.
</br>설정한 점(x,y)가 안에 있다면 true , 그렇지 않다면 false 를 반환합니다.</br>




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
</br> ofPoints 의 벡터배열에 의하여 결정된 폴리곤의 영역안에 좌표(x,y)가 있는지 알아냅니다</br>
Parameters:
p A point to check.
poly A vector of ofPoints defining a polygon.

Returns: True if the ofPoint is enclosed, false otherwise.
</br>설정한 점(x,y)가 안에 있다면 true , 그렇지 않다면 false 를 반환합니다.</br>




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
</br>영역의 값을 선형보간 합니다.</br>
Calculates a number between two numbers [start, stop] at a specific increment
(amt).  If we want the new number to be between start and stop numbers, amt
needs to be a number between 0 and 1, inclusive.  ofLerp() does not clamp
the values.
</br>두 숫자[start, stop]사이의 특정한 증가값을 계산 합니다. 만약 start 와 stop사이의 새로운 숫자를 원한다면, 대략 0과 1사이의 포괄적인 숫자가 필요 합니다. ofLerp()은 값들을 clamp 하지 않습니다. 역주) 두 값 사이의 비율을 0.0 ~ 1.0의 사이값으로 비중을 계산 합니다. 0.5 이면 두 값의 중간값이 반환 됩니다. 사이값은 1을 넘어가도 됩니다.</br>
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
</br>영역의 호도값(degree)을 선형보간 합니다.</br>
Calculates a number between two numbers [start, stop] at a specific
increment (amt). This does constrain the result into a single rotation,
but does not clamp the values
</br>start와 stop값 사이이의 특정 증가분을 계산 합니다. 이것은 단일 rotation값을 반환 하며 clamp 하지 않습니다 </br>

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
</br>영역의 라디안 값을 선형보간 합니다.</br>
Calculates a number between two numbers (start, stop) at a specific
increment (amt).  This does constrain the result into a single rotation, but
does not clamp the values
</br>start와 stop값 사이이의 특정 증가분을 계산 합니다. 이것은 단일 rotation값을 반환 하며 clamp 하지 않습니다 </br>

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
</br>두 선의 교차여부를 알아냅니다.</br>
Parameters:
line1Start Starting point for first line.
line1End End point for first line.
line2Start Starting point for second line.
line2End End point for second line.
intersection ofPoint reference in which to store the computed intersection point.

Returns: True if the lines intersect.
</br>두 션이 교차 한다면 true를 반환 합니다.</br>




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
</br>input 영역의 값을 ouput 영역으로 맵핑 합니다.</br>
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
</br>ofMap 은 input 영역과 output영역의 값을 연속적으로 맵핑(대입) 하여 새로운 값을 가집니다. 만약 inputMin과 inputMax 사이의 50%의 값이라면, outputMin과 outputMax의 50%의 값을 반환 합니다.  intputMin 과 inputMax 의 밖의 값을 위하여, 음수의 퍼센테이지와 100# 이상의 퍼센테이지가 사용되었습니다. 예를들어, 만약 값이 150 이고, input영역이 0 ~ 100 이고 output영역이 0 ~ 1000 dlfkaus, 총 영역의 1500 또는 150%를 반환 할 것 입니다. 반환값의 클램핑으로 input영역 밖의 값을 피할수 있습니다. 클램핑(Clamping)은 기본적으로 비활성화 되어 있고, 항상 그 영역[outputMin, outputMax]안의 영역을 보장 해 줍니다. </br>


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
	
</br>	  
\note 만약 절대적으로 nputMin and inputMax 의 사이가 FLT_EPSILON 보다 작다면, "divide by zero
		  errors"를 방지 하기위하여 outputMin이 그대로 반한 됩니다.
		  
</br>

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
</br>지정된 숫자보다 바로 큰 2의 제곱을 반환 합니다. </br>
If the input is already a power of 2, it will return itself.
</br> 만약 값이 이미 2의 제곱이라면 , 그것이 그대로 반환 됩니다.</br>
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
</br> 0.0 ~ 1.0사이의 1차원 펄린노이즈를 계산합니다.</br>




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
</br> 0.0 ~ 1.0사이의 2차원 펄린노이즈를 계산합니다.</br>




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
</br> 0.0 ~ 1.0사이의 3차원 펄린노이즈를 계산합니다.</br>




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
</br> 0.0 ~ 1.0사이의 4차원 펄린노이즈를 계산합니다.</br>




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
</br> 0.0 ~ 1.0사이의 2차원 펄린노이즈를 계산합니다.</br>




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
</br> 0.0 ~ 1.0사이의 3차원 펄린노이즈를 계산합니다.</br>




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
</br> 0.0 ~ 1.0사이의 4차원 펄린노이즈를 계산합니다.</br>




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
</br>특정 값과 input영역의 값을 0과1로 맵핑 합니다.</br>
Often, you'll need to work with percentages or other methods that expect a
value between 0 and 1.  This function will take a minimum and maximum and
then finds where within that range a value sits.  If the value is outside
the range, it will be mapped to 0 or 1.
</br> 종종, 0 과 1 사이의 값을 예상하거나, 퍼센테이지된 작업을 필요로 합니다. 이 함수는 최소 와 최대, 그 영역의 값에 있는지를 알 수 있습니다.(????) 만약 영역 밖의 값이라면 0 혹은 1로 맵핑됩니다.</br>

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
</br>라디안을 호도(degrees)로 변환 합니다.</br>
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
</br>두 숫자 사이의 무작위 수를 반환 합니다.</br>
A random number in the range [min, max) will be returned.
</br>무작위 숫자가 영역(min,max)에서 반환 됩니다.</br>
Example:
	~~~~~{.cpp}
// Return a random floating point number between -30 and 20.
float randomNumber = ofRandom(-30, 20);
~~~~~


Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.
</br>경고: ofRandom은 C++의 'rand()'를 랩핑 하여 반복(???) 스레드에 안전하지 않습니다. </br>

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
</br>0과 max 사이의 무작위 숫자를 반환합니다.</br>
A random number in the range [0, max) will be returned.

Example:
	~~~~~{.cpp}
// Return a random floating point number between 0 and 20.
float randomNumber = ofRandom(20);
~~~~~


Warning: ofRandom wraps C++'s `rand()` which is not reentrant or thread safe.
</br>경고: ofRandom은 C++의 'rand()'를 랩핑 하여 반복(???) 스레드에 안전하지 않습니다. </br>

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
</br>0과 스크린의 높이 사이의 무작위 숫자를 반환합니다.</br>
A random number in the range [0, ofGetHeight()) will be returned.


Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.
</br>경고: ofRandom은 C++의 'rand()'를 랩핑 하여 반복(???) 스레드에 안전하지 않습니다. </br>

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
</br>0과 스크린의 너비 사이의 무작위 숫자를 반환합니다.</br>
A random number in the range [0, ofGetWidth()) will be returned.


Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.
</br>경고: ofRandom은 C++의 'rand()'를 랩핑 하여 반복(???) 스레드에 안전하지 않습니다. </br>

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
</br>소수점으로 된 무작이 숫자를 반환 합니다</br>

Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.
</br>경고: ofRandom은 C++의 'rand()'를 랩핑 하여 반복(???) 스레드에 안전하지 않습니다. </br>

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
</br>unsigned 소수점으로 된 무작이 숫자를 반환 합니다</br>

Warning: ofRandom wraps `rand()` which is not reentrant or thread safe.
</br>경고: ofRandom은 C++의 'rand()'를 랩핑 하여 반복(???) 스레드에 안전하지 않습니다. </br>

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
</br> Seed는 랜덤 생성기의 유니크한 값의 seed입니다. (한국말이 참 어렵군요...)</br>
This seeds the random number generator with an acceptably random value,
generated from clock time and the PID.
</br> 이 seed는 PID 와 생성기의 클록 타임으로 부터 랜덤 생성기의 무작위 수용값 입니다.(????)(역주 : seed 에 의하여 랜덤 함수가 반환 하는 숫자를 결정 하게 됩니다. 사실 현대 컴퓨팅은 절대적인 랜덤을 반환 하지 못하여 PID 와 클록 타임에 의존 한 훼이크입니다.)</br>




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
</br>랜덤 생성기의 seed 입니다.</br>
If the user would like to repeat the same random sequence, a known random
seed can be used to initialize the random number generator during app
setup.  This can be useful for debugging and testing.
</br> 만약 반복적으로 같은 랜덤 함수를 나열 할때, 확실한 핸덤 seed는 app이 setup되는 동안 랜덤 생성기의 숫자를 초기화 할 수 있습니다. 테스트와 디버깅에 유용합니다.</br>

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
</br> sign 넘버를 반환 합니다. </br>
Returns: int -1 if n is negative, 1 if n is positive, and 0 is n == 0;
</br> 음수 이면 -1을 , 양수이면 1을 , 0 이면 0 을 반환 합니다 </br>




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
</br>1차원 의 펄린노이즈 값(-1.0 ~ 1.0)사이를 계산 합니다.</br>




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
</br>2차원 의 펄린노이즈 값(-1.0 ~ 1.0)사이를 계산 합니다.</br>




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
</br>3차원 의 펄린노이즈 값(-1.0 ~ 1.0)사이를 계산 합니다.</br>




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
</br>4차원 의 펄린노이즈 값(-1.0 ~ 1.0)사이를 계산 합니다.</br>




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
</br>2차원 의 펄린노이즈 값(-1.0 ~ 1.0)사이를 계산 합니다.</br>




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
</br>3차원 의 펄린노이즈 값(-1.0 ~ 1.0)사이를 계산 합니다.</br>




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
</br>4차원 의 펄린노이즈 값(-1.0 ~ 1.0)사이를 계산 합니다.</br>




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
</br>주어진 영역에서 값을 찾고, 만약 초과한다면 값을 랩핑 합니다 </br>
If a value is between from and to, return that value.
If a value is NOT within that range, wrap it.
</br>만약 from 과 todml 값사이에 있다면, 그 값을 반환 합니다. 그렇지 않다면, 그 값을 랩핑 합니다 </br>
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

