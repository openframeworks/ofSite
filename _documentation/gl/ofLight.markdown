#class ofLight


<!--
_visible: True_
_advanced: False_
_istemplated: False_
-->

##InlineDescription






##Description

ofLight is an openGL light for 3D rendering.  It contains four main lighting types:

**Spot light** : Light originates from a single point and spreads outward in a cone of variable diameter and length

**Point light** : Light comes from a single point and spreads outward evenly in all directions

**Directional light** : Light comes evenly from a given direction, as if coming from a plan of infinite size and distance from the lit object

**Ambient light** : Light from a fixed intensity and fixed source that affects all objects equally

![PointSpot](../gl/Lights_PointSpot.jpg)
![AmbientDirectional](../gl/Lights_AmbientDirectional.jpg)

Within ofLight, the following properties of each light type can be set individually:

XYZ orientation

XYZ position

RGB color

Light attenuation / falloff

Additionally, spot lights have variable control of cone length and diameter.

![spotLight_yellowDiffuse_narrowCone](../gl/spotLight_yellowDiffuse_narrowCone.png)

*Spotlight with yellow diffuse reflection, narrow cone*

![spotLight_yellowDiffuse_wideCone](../gl/spotLight_yellowDiffuse_wideCone.png)

*Spotlight with yellow diffuse reflection, wide cone*

**ofLight and ofMaterial**

GL lighting effects are dependent on both the light and the material being lit.  ofLight interacts strongly with ofMaterial, which has five rendering parameters for materials being lit:

**Specular color** : the color of highlights on a material

**Diffuse color** : the color of the material when it is illuminated

![pointLight_blueSpecular_redDiffuse](../gl/pointLight_blueSpecular_redDiffuse.png)

*Point light with blue specular reflection and red diffuse reflection*

**Ambient color** : the color of the material when it is not illuminated

![spotLight_redDiffuse_noSpec_blueAmbient](../gl/spotLight_redDiffuse_noSpec_blueAmbient.png)

*Spotlight with red diffuse reflection, no specular reflection, and blue ambient color*

**Emissive color** : the color the material illuminated from within

![emissive_green](../gl/emissive_green.png)

*Emissive green material coloring, no external lights*

**Shininess** : the matte or shiny property of the material, which impacts how much specular light vs diffuse light reflects from a surface.

![pointLight_yellowDiffuse_blueSpecular_lowShine](../gl/pointLight_yellowDiffuse_blueSpecular_lowShine.png)

*Point light with yellow diffuse and blue specular reflections, high matte*

![pointLight_yellowDiffuse_blueSpecular_highShine](../gl/pointLight_yellowDiffuse_blueSpecular_highShine.png)

*Point light with yellow diffuse and blue specular reflections, high shine*

**ofLight and cameras**

If an ofLight is drawn within the context of a camera such as ofEasyCam, its position and orientation will be controlled by the camera and it will be oriented relative to the scene focus of the camera.

~~~~{.cpp}
camera.begin();
//spotlight is drawn in the camera frame and oriented relative to the focus of the camera
spotlight.enable(); 
ofSphere(0,0,0,100);
spotlight.disable();
camera.end();
~~~~

If an ofLight is drawn outside the camera, it will be drawn in the global frame and will affect all objects in the scene equally.

~~~~{.cpp}
spotlight.enable(); //spotlight is in the global frame and not the camera frame
camera.begin();
ofSphere(0,0,0,100);
camera.end();
spotlight.disable();
~~~~

(Examples made using LightsCamera example by Pete Werner https://github.com/petewerner/generative/tree/master/lights_camera)





##Methods



###void customDraw()

<!--
_syntax: customDraw()_
_name: customDraw_
_returns: void_
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








<!----------------------------------------------------------------------------->

###void destroy()

<!--
_syntax: destroy()_
_name: destroy_
_returns: void_
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








<!----------------------------------------------------------------------------->

###void disable()

<!--
_syntax: disable()_
_name: disable_
_returns: void_
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








<!----------------------------------------------------------------------------->

###void enable()

<!--
_syntax: enable()_
_name: enable_
_returns: void_
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








<!----------------------------------------------------------------------------->

###ofFloatColor getAmbientColor()

<!--
_syntax: getAmbientColor()_
_name: getAmbientColor_
_returns: ofFloatColor_
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








<!----------------------------------------------------------------------------->

###float getAttenuationConstant()

<!--
_syntax: getAttenuationConstant()_
_name: getAttenuationConstant_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
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

###float getAttenuationLinear()

<!--
_syntax: getAttenuationLinear()_
_name: getAttenuationLinear_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
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

###float getAttenuationQuadratic()

<!--
_syntax: getAttenuationQuadratic()_
_name: getAttenuationQuadratic_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
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

###ofFloatColor getDiffuseColor()

<!--
_syntax: getDiffuseColor()_
_name: getDiffuseColor_
_returns: ofFloatColor_
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








<!----------------------------------------------------------------------------->

###bool getIsDirectional()

<!--
_syntax: getIsDirectional()_
_name: getIsDirectional_
_returns: bool_
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








<!----------------------------------------------------------------------------->

###bool getIsEnabled()

<!--
_syntax: getIsEnabled()_
_name: getIsEnabled_
_returns: bool_
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








<!----------------------------------------------------------------------------->

###bool getIsPointLight()

<!--
_syntax: getIsPointLight()_
_name: getIsPointLight_
_returns: bool_
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








<!----------------------------------------------------------------------------->

###bool getIsSpotlight()

<!--
_syntax: getIsSpotlight()_
_name: getIsSpotlight_
_returns: bool_
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








<!----------------------------------------------------------------------------->

###int getLightID()

<!--
_syntax: getLightID()_
_name: getLightID_
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








<!----------------------------------------------------------------------------->

###ofFloatColor getSpecularColor()

<!--
_syntax: getSpecularColor()_
_name: getSpecularColor_
_returns: ofFloatColor_
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








<!----------------------------------------------------------------------------->

###float getSpotConcentration()

<!--
_syntax: getSpotConcentration()_
_name: getSpotConcentration_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
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

###float getSpotlightCutOff()

<!--
_syntax: getSpotlightCutOff()_
_name: getSpotlightCutOff_
_returns: float_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
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

###int getType()

<!--
_syntax: getType()_
_name: getType_
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








<!----------------------------------------------------------------------------->

### ofLight()

<!--
_syntax: ofLight()_
_name: ofLight_
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








<!----------------------------------------------------------------------------->

### ofLight(&mom)

<!--
_syntax: ofLight(&mom)_
_name: ofLight_
_returns: _
_returns_description: _
_parameters: const ofLight &mom_
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

###void onOrientationChanged()

<!--
_syntax: onOrientationChanged()_
_name: onOrientationChanged_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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

###void onPositionChanged()

<!--
_syntax: onPositionChanged()_
_name: onPositionChanged_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
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

###ofLight & operator=(&mom)

<!--
_syntax: operator=(&mom)_
_name: operator=_
_returns: ofLight &_
_returns_description: _
_parameters: const ofLight &mom_
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

###void setAmbientColor(&c)

<!--
_syntax: setAmbientColor(&c)_
_name: setAmbientColor_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor &c_
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

###void setAttenuation(constant = 2.f, linear = 1.f, quadratic = 0.5f)

<!--
_syntax: setAttenuation(constant = 2.f, linear = 1.f, quadratic = 0.5f)_
_name: setAttenuation_
_returns: void_
_returns_description: _
_parameters: float constant=1.f, float linear=0.f, float quadratic=0.f_
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

###void setDiffuseColor(&c)

<!--
_syntax: setDiffuseColor(&c)_
_name: setDiffuseColor_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor &c_
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

###void setDirectional()

<!--
_syntax: setDirectional()_
_name: setDirectional_
_returns: void_
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








<!----------------------------------------------------------------------------->

###void setPointLight()

<!--
_syntax: setPointLight()_
_name: setPointLight_
_returns: void_
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








<!----------------------------------------------------------------------------->

###void setSpecularColor(&c)

<!--
_syntax: setSpecularColor(&c)_
_name: setSpecularColor_
_returns: void_
_returns_description: _
_parameters: const ofFloatColor &c_
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

###void setSpotConcentration(exponent)

<!--
_syntax: setSpotConcentration(exponent)_
_name: setSpotConcentration_
_returns: void_
_returns_description: _
_parameters: float exponent_
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

###void setSpotlight(spotCutOff = 45.f, exponent = 0.f)

<!--
_syntax: setSpotlight(spotCutOff = 45.f, exponent = 0.f)_
_name: setSpotlight_
_returns: void_
_returns_description: _
_parameters: float spotCutOff=45.f, float exponent=0.f_
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

###void setSpotlightCutOff(spotCutOff)

<!--
_syntax: setSpotlightCutOff(spotCutOff)_
_name: setSpotlightCutOff_
_returns: void_
_returns_description: _
_parameters: float spotCutOff_
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

###void setup()

<!--
_syntax: setup()_
_name: setup_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0071_
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

### ~ofLight()

<!--
_syntax: ~ofLight()_
_name: ~ofLight_
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








<!----------------------------------------------------------------------------->

##Variables



###ofFloatColor ambientColor

<!--
_name: ambientColor_
_type: ofFloatColor_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float attenuation_constant

<!--
_name: attenuation_constant_
_type: float_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float attenuation_linear

<!--
_name: attenuation_linear_
_type: float_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float attenuation_quadratic

<!--
_name: attenuation_quadratic_
_type: float_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofFloatColor diffuseColor

<!--
_name: diffuseColor_
_type: ofFloatColor_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float exponent

<!--
_name: exponent_
_type: float_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int glIndex

<!--
_name: glIndex_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool isDirectional

<!--
_name: isDirectional_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###int isEnabled

<!--
_name: isEnabled_
_type: int_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###bool isSpotlight

<!--
_name: isSpotlight_
_type: bool_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofLightType lightType

<!--
_name: lightType_
_type: ofLightType_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###ofFloatColor specularColor

<!--
_name: specularColor_
_type: ofFloatColor_
_access: private_
_version_started: 007_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

###float spotCutOff

<!--
_name: spotCutOff_
_type: float_
_access: private_
_version_started: 0071_
_version_deprecated: _
_summary: _
_visible: True_
_constant: True_
_advanced: False_
-->

_description: _








<!----------------------------------------------------------------------------->

