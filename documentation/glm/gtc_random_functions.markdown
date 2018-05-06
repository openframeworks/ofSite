#functions


<!--
_visible: True_
_advanced: False_
-->

##Description






<!----------------------------------------------------------------------------->

###tvec3< T, defaultp > glm::ballRand(Radius)

<!--
_syntax: glm::ballRand(Radius)_
_name: glm::ballRand_
_returns: tvec3< T, defaultp >_
_returns_description: _
_parameters: T Radius_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Generate a random 3D vector which coordinates are regulary distributed within the volume of a ball of a given radius


**Parameters:**

Radius

**See also**: gtc_random





_description: _







<!----------------------------------------------------------------------------->

###tvec2< T, defaultp > glm::circularRand(Radius)

<!--
_syntax: glm::circularRand(Radius)_
_name: glm::circularRand_
_returns: tvec2< T, defaultp >_
_returns_description: _
_parameters: T Radius_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Generate a random 2D vector which coordinates are regulary distributed on a circle of a given radius


**Parameters:**

Radius

**See also**: gtc_random





_description: _







<!----------------------------------------------------------------------------->

###tvec2< T, defaultp > glm::diskRand(Radius)

<!--
_syntax: glm::diskRand(Radius)_
_name: glm::diskRand_
_returns: tvec2< T, defaultp >_
_returns_description: _
_parameters: T Radius_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Generate a random 2D vector which coordinates are regulary distributed within the area of a disk of a given radius


**Parameters:**

Radius

**See also**: gtc_random





_description: _







<!----------------------------------------------------------------------------->

###genType glm::gaussRand(Mean, Deviation)

<!--
_syntax: glm::gaussRand(Mean, Deviation)_
_name: glm::gaussRand_
_returns: genType_
_returns_description: _
_parameters: genType Mean, genType Deviation_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Generate random numbers in the interval [Min, Max], according a gaussian distribution


**Parameters:**

Mean

Deviation

**See also**: gtc_random





_description: _







<!----------------------------------------------------------------------------->

###genTYpe glm::linearRand(Min, Max)

<!--
_syntax: glm::linearRand(Min, Max)_
_name: glm::linearRand_
_returns: genTYpe_
_returns_description: _
_parameters: genTYpe Min, genTYpe Max_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Generate random numbers in the interval [Min, Max], according a linear distribution


**Parameters:**

Min

Max

**Type parameters:**

genType Value type. Currently supported: float or double scalars.

**See also**: gtc_random





_description: _







<!----------------------------------------------------------------------------->

###vecType< T, P > glm::linearRand(T, &Min = P, T, &Max = P)

<!--
_syntax: glm::linearRand(T, &Min = P, T, &Max = P)_
_name: glm::linearRand_
_returns: vecType< T, P >_
_returns_description: _
_parameters: const vecType< T, P > &Min=P, const vecType< T, P > &Max=P_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Generate random numbers in the interval [Min, Max], according a linear distribution


**Parameters:**

Min

Max

**Type parameters:**

T Value type. Currently supported: float or double.

vecType A vertor type: tvec1, tvec2, tvec3, tvec4 or compatible

**See also**: gtc_random





_description: _







<!----------------------------------------------------------------------------->

###tvec3< T, defaultp > glm::sphericalRand(Radius)

<!--
_syntax: glm::sphericalRand(Radius)_
_name: glm::sphericalRand_
_returns: tvec3< T, defaultp >_
_returns_description: _
_parameters: T Radius_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _

Generate a random 3D vector which coordinates are regulary distributed on a sphere of a given radius


**Parameters:**

Radius

**See also**: gtc_random





_description: _







<!----------------------------------------------------------------------------->

