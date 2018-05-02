#class ofMaterialSettings


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription


wrapper for material color properties and other settings

customUniforms: adds some uniforms to the shader so they can be accessed
from the postFragment function

postFragment: Adds a function to the material shader that will get
executed after all lighting and material calculations

The source passed has to include a function with the
signature:

vec4 postFragment(vec4 localColor){
    return localColor;
}

which will receive the final color after calculating all
the lights and material and can modify it and return a new color

The function has access to the following variables:

    vec2 v_texcoord;          // texture coordinate
    vec3 v_normal;            // normal at this fragment
    vec3 v_transformedNormal; // normal multiplied by the normal matrix
    vec3 v_eyePosition;       // position of this fragment in eye coordinates
    vec3 v_worldPosition;     // position of this fragment in world coordinates
    vec4 v_color;             // color interpolated from the vertex colors
    SAMPLER tex0;             // the bound texture if there's any

    vec4 mat_ambient;         // material ambient color
    vec4 mat_diffuse;         // material diffuse color
    vec4 mat_specular;        // material specular
    vec4 mat_emissive;        // material emissive
    float mat_shininess;      // material shininess

    vec4 global_ambient;      // global ambient light
    mat4 modelViewMatrix;     // model view matrix
    mat4 projectionMatrix;    // projection matrix
    mat4 textureMatrix;       // texture matrix
    mat4 modelViewProjectionMatrix; // model view projection matrix

    MAX_LIGHTS                // the total number of lights in the scen

And an array of lights
each light has the following properties:

    float lights[i].enabled;
    vec4 lights[i].ambient;
    float lights[i].type;     // 0 = pointlight
                              // 1 = directionlight
                              // 2 = spotlight
                              // 3 = area
    vec4 lights[i].position;  // where are we
    vec4 lights[i].diffuse;   // how diffuse
    vec4 lights[i].specular;  // what kinda specular stuff we got going on?

    // attenuation, how the light attenuates with the distance
    float lights[i].constantAttenuation;
    float lights[i].linearAttenuation;
    float lights[i].quadraticAttenuation;

    // only for spot
    float lights[i].spotCutoff;
    float lights[i].spotCosCutoff;
    float lights[i].spotExponent;

    // spot and area
    vec3 lights[i].spotDirection;

    // only for directional
    vec3 lights[i].halfVector;

    // only for area
    float lights[i].width;
    float lights[i].height;
    vec3 lights[i].right;
    vec3 lights[i].up;






##Description





##Methods



##Variables



###ofFloatColor ambient

<!--
_name: ambient_
_type: ofFloatColor_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< ambient reflectance





_description: _







<!----------------------------------------------------------------------------->

###string customUniforms

<!--
_name: customUniforms_
_type: string_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###ofFloatColor diffuse

<!--
_name: diffuse_
_type: ofFloatColor_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< diffuse reflectance





_description: _







<!----------------------------------------------------------------------------->

###ofFloatColor emissive

<!--
_name: emissive_
_type: ofFloatColor_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< emitted light intensity





_description: _







<!----------------------------------------------------------------------------->

###string postFragment

<!--
_name: postFragment_
_type: string_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###float shininess

<!--
_name: shininess_
_type: float_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< specular exponent





_description: _







<!----------------------------------------------------------------------------->

###ofFloatColor specular

<!--
_name: specular_
_type: ofFloatColor_
_access: public_
_version_started: 0.10.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _

< specular reflectance





_description: _







<!----------------------------------------------------------------------------->

