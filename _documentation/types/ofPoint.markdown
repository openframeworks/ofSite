#class ofPoint


<!--
_visible: True_
_advanced: False_
-->

##InlineDescription





##Description


This class contains all the information and functionality of a geometrical point. It can be a 2D or 3D point. ofPoint allow users perform graphical operations, set positions and more with a better organization and control.





##Methods



###void ofPoint(_x, _y, _z)

<!--
_syntax: ofPoint(_x, _y, _z)_
_name: ofPoint_
_returns: void_
_returns_description: _
_parameters: float _x, float _y, float _z_
_access: public_
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

###void ofPoint(pnt)

<!--
_syntax: ofPoint(pnt)_
_name: ofPoint_
_returns: void_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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

###bool operator!=(pnt)

<!--
_syntax: operator!=(pnt)_
_name: operator!=_
_returns: bool_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


!= operator allow users know if two points are different.
e.g:

~~~~{.cpp}

ofPoint p1,p2;
bool dif;
p1.set(10,3);
p2.set(5,5);
dif=p1!=(p2);

~~~~

After this dif=true;







<!----------------------------------------------------------------------------->

###ofPoint operator*(pnt)

<!--
_syntax: operator*(pnt)_
_name: operator*_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and p2=(p2x,p2y,p2z) the operator * performs the arithmetic multiplication for each point component:
p1*p2=(p1x*p2x,p1y*p2y,p1z*p2z)







<!----------------------------------------------------------------------------->

###ofPoint operator*(val)

<!--
_syntax: operator*(val)_
_name: operator*_
_returns: ofPoint_
_returns_description: _
_parameters: const float & val_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and a value val the operator * performs the arithmetic multiplication between each point coordinate and the value:
p1*val=(p1x*val,p1y*val,p1z*val)







<!----------------------------------------------------------------------------->

###ofPoint & operator*=(pnt)

<!--
_syntax: operator*=(pnt)_
_name: operator*=_
_returns: ofPoint &_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and p2=(p2x,p2y,p2z) the operator *= performs the following operation:

~~~~{.cpp}

ofPoint p1,p2;
...
p1*=p2;

~~~~


Now p1=(p1x*p2x,p1y*p2y,p1z*p2z);







<!----------------------------------------------------------------------------->

###ofPoint & operator*=(val)

<!--
_syntax: operator*=(val)_
_name: operator*=_
_returns: ofPoint &_
_returns_description: _
_parameters: const float & val_
_access: public_
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


Considering a point p1=(p1x,p1y,p1z) and a value val. The operator *= performs the following operation:

~~~~{.cpp}

ofPoint p1;
float val;
...
p1*=val;

~~~~


Now p1=(p1x*val,p1y*val,p1z*val)







<!----------------------------------------------------------------------------->

###ofPoint operator+(pnt)

<!--
_syntax: operator+(pnt)_
_name: operator+_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


+ operator perform the addition between two points. 
(x1,y1,z1)+(x2,y2,z2)=(x1+x2,y1+y2,z1+z2)
e.g:

~~~~{.cpp}

ofPoint p1,p2,result;
p1.set(1,2,3);
p2.set(2,1,0);
result = p1 + p2;

~~~~


After this result=(3,3,3)







<!----------------------------------------------------------------------------->

###ofPoint operator+(val)

<!--
_syntax: operator+(val)_
_name: operator+_
_returns: ofPoint_
_returns_description: _
_parameters: const float & val_
_access: public_
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


+ Operator performs the arithmetic addition of val and point components.
Considering p1=(p1x,p1y,p1z);

~~~~{.cpp}

ofPoint p1;
...
p1=p1+5;

~~~~

Now p1=(p1x+5,p1y+5,p1z+5)







<!----------------------------------------------------------------------------->

###ofPoint & operator+=(pnt)

<!--
_syntax: operator+=(pnt)_
_name: operator+=_
_returns: ofPoint &_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and p2=(p2x,p2y,p2z) the operator += performs the following operation:

~~~~{.cpp}

ofPoint p1,p2;
...
p1+=p2;

~~~~

Now p1=(p1x+p2x,p1y+p2y,p1z+p2z);







<!----------------------------------------------------------------------------->

###ofPoint & operator+=(val)

<!--
_syntax: operator+=(val)_
_name: operator+=_
_returns: ofPoint &_
_returns_description: _
_parameters: const float & val_
_access: public_
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


Considering a point p1=(p1x,p1y,p1z) and a value val. The operator += performs the following operation:

~~~~{.cpp}

ofPoint p1;
float val;
...
p1+=val;

~~~~

Now p1=(p1x+val,p1y+val,p1z+val);







<!----------------------------------------------------------------------------->

###ofPoint operator-()

<!--
_syntax: operator-()_
_name: operator-_
_returns: ofPoint_
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
-->

_inlined_description: _







_description: _


Calling - operator we turn x,y,z values of a point object into values of  opposite sign.
e.g:

~~~~{.cpp}

ofPoint p;
p.set(10,5,-3);
p = -(p);

~~~~

Now p=(-10,-5,3)







<!----------------------------------------------------------------------------->

###ofPoint operator-(pnt)

<!--
_syntax: operator-(pnt)_
_name: operator-_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and p2=(p2x,p2y,p2z) the operator - performs the arithmetic substraction between two points:
p1-p2=(p1x-p2x,p1y-p2y,p1z-p2z)







<!----------------------------------------------------------------------------->

###ofPoint operator-(val)

<!--
_syntax: operator-(val)_
_name: operator-_
_returns: ofPoint_
_returns_description: _
_parameters: const float & val_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and a value val the operator - performs the arithmetic substraction between each point coordinate and the value:
p1-val=(p1x-val,p1y-val,p1z-val)







<!----------------------------------------------------------------------------->

###ofPoint & operator-=(pnt)

<!--
_syntax: operator-=(pnt)_
_name: operator-=_
_returns: ofPoint &_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and p2=(p2x,p2y,p2z) the operator -= performs the following operation:

~~~~{.cpp}

ofPoint p1,p2;
...
p1-=p2;

~~~~

Now p1=(p1x-p2x,p1y-p2y,p1z-p2z);







<!----------------------------------------------------------------------------->

###ofPoint & operator-=(val)

<!--
_syntax: operator-=(val)_
_name: operator-=_
_returns: ofPoint &_
_returns_description: _
_parameters: const float & val_
_access: public_
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


Considering a point p1=(p1x,p1y,p1z) and a value val. The operator -= performs the following operation:

~~~~{.cpp}

ofPoint p1;
float val;
...
p1-=val;

~~~~


Now p1=(p1x-val,p1y-val,p1z-val);







<!----------------------------------------------------------------------------->

###ofPoint operator/(pnt)

<!--
_syntax: operator/(pnt)_
_name: operator/_
_returns: ofPoint_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and p2=(p2x,p2y,p2z) the operator / performs the arithmetic division for each point component:
p1/p2=(p1x/p2x,p1y/p2y,p1z/p2z)







<!----------------------------------------------------------------------------->

###ofPoint operator/(val)

<!--
_syntax: operator/(val)_
_name: operator/_
_returns: ofPoint_
_returns_description: _
_parameters: const float & val_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and a value val the operator / performs the arithmetic division between each point coordinate and the value:
p1/val=(p1x/val,p1y/val,p1z/val)







<!----------------------------------------------------------------------------->

###ofPoint & operator/=(pnt)

<!--
_syntax: operator/=(pnt)_
_name: operator/=_
_returns: ofPoint &_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


Considering two points p1=(p1x,p1y,p1z) and p2=(p2x,p2y,p2z) the operator /= performs the following operation:

~~~~{.cpp}

ofPoint p1,p2;
...
p1/=p2;

~~~~


Now p1=(p1x/p2x,p1y/p2y,p1z/p2z);







<!----------------------------------------------------------------------------->

###ofPoint & operator/=(val)

<!--
_syntax: operator/=(val)_
_name: operator/=_
_returns: ofPoint &_
_returns_description: _
_parameters: const float & val_
_access: public_
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


Considering a point p1=(p1x,p1y,p1z) and a value val. The operator /= performs the following operation:

~~~~{.cpp}

ofPoint p1;
float val;
...
p1/=val;

~~~~


Now p1=(p1x/val,p1y/val,p1z/val)







<!----------------------------------------------------------------------------->

###ofPoint & operator=(pnt)

<!--
_syntax: operator=(pnt)_
_name: operator=_
_returns: ofPoint &_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


= operator makes the current ofPoint a copy of another ofPoint.
e.g:

~~~~{.cpp}

ofPoint p1,p2;
p1.set(10,10,10);
p2= p1;

~~~~


p1 and p2 are now identical. 







<!----------------------------------------------------------------------------->

###ofPoint & operator=(val)

<!--
_syntax: operator=(val)_
_name: operator=_
_returns: ofPoint &_
_returns_description: _
_parameters: const float & val_
_access: public_
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


= operator sets x, y and z variables of an ofPoint object to val.
e.g:

~~~~{.cpp}

ofPoint p1;
p1.set(1,2,3);
p1 = 5.3;

~~~~


After this p1=(5.3,5.3,5.3);







<!----------------------------------------------------------------------------->

###bool operator==(pnt)

<!--
_syntax: operator==(pnt)_
_name: operator==_
_returns: bool_
_returns_description: _
_parameters: const ofPoint & pnt_
_access: public_
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


== operator allow users know if two points are equal.
e.g:

~~~~{.cpp}

ofPoint p1,p2;
bool equal;
p1.set(10,3);
p2.set(5,5);
equal=p1==(p2);

~~~~

After this equal=false;







<!----------------------------------------------------------------------------->

###void set(_x, _y, _z)

<!--
_syntax: set(_x, _y, _z)_
_name: set_
_returns: void_
_returns_description: _
_parameters: float _x, float _y, float _z_
_access: public_
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


Set function allow users to set the position of a point object by giving it a specific value for _x, _y and _z.
For example:

~~~~{.cpp}

ofPoint firstpoint;
firstpoint.set(100,230,50);

~~~~

now firstpoint = (100,230,50)







<!----------------------------------------------------------------------------->

###void ~ofPoint()

<!--
_syntax: ~ofPoint()_
_name: ~ofPoint_
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
-->

_inlined_description: _







_description: _








<!----------------------------------------------------------------------------->

##Variables



###float v

<!--
_name: v_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float x

<!--
_name: x_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


Variable x contains the x coordinate of our ofPoint object.







<!----------------------------------------------------------------------------->

###float y

<!--
_name: y_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


Variable y contains the y coordinate of our ofPoint object.







<!----------------------------------------------------------------------------->

###float z

<!--
_name: z_
_type: float_
_access: public_
_version_started: 006_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_description: _


Variable z contains the z coordinate of our ofPoint object.







<!----------------------------------------------------------------------------->
