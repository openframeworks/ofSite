<%inherit file="_templates/docs.mako" />
___ofLight___
$$code(lang=c++)
None ambientColor
$$/code



$$code(lang=c++)
None diffuseColor
$$/code



$$code(lang=c++)
None specularColor
$$/code



$$code(lang=c++)
None lightType
$$/code



$$code(lang=c++)
int glIndex
$$/code



$$code(lang=c++)
int isEnabled
$$/code



$$code(lang=c++)
bool isDirectional
$$/code



$$code(lang=c++)
bool isSpotlight
$$/code



$$code(lang=c++)
None ofLight()
$$/code



$$code(lang=c++)
None ofLight(const ofLight &mom)
$$/code



$$code(lang=c++)
None operator=(const ofLight &mom)
$$/code



$$code(lang=c++)
None ~ofLight()
$$/code



$$code(lang=c++)
void destroy()
$$/code



$$code(lang=c++)
void enable()
$$/code



$$code(lang=c++)
void disable()
$$/code



$$code(lang=c++)
bool getIsEnabled() const 
$$/code



$$code(lang=c++)
void setDirectional()
$$/code



$$code(lang=c++)
bool getIsDirectional() const 
$$/code



$$code(lang=c++)
void setSpotlight(float spotCutOff=45.f, float exponent=0.f)
$$/code



$$code(lang=c++)
bool getIsSpotlight()
$$/code



$$code(lang=c++)
void setSpotlightCutOff(float spotCutOff)
$$/code



$$code(lang=c++)
void setSpotConcentration(float exponent)
$$/code



$$code(lang=c++)
void setPointLight()
$$/code



$$code(lang=c++)
bool getIsPointLight()
$$/code



$$code(lang=c++)
void setAttenuation(float constant=2.f, float linear=1.f, float quadratic=0.5f)
$$/code



$$code(lang=c++)
int getType()
$$/code



$$code(lang=c++)
void setAmbientColor(const ofFloatColor &c)
$$/code



$$code(lang=c++)
void setDiffuseColor(const ofFloatColor &c)
$$/code



$$code(lang=c++)
void setSpecularColor(const ofFloatColor &c)
$$/code



$$code(lang=c++)
None getAmbientColor() const 
$$/code



$$code(lang=c++)
None getDiffuseColor() const 
$$/code



$$code(lang=c++)
None getSpecularColor() const 
$$/code



$$code(lang=c++)
int getLightID() const 
$$/code



$$code(lang=c++)
void customDraw()
$$/code



$$code(lang=c++)
void onPositionChanged()
$$/code



$$code(lang=c++)
void onOrientationChanged()
$$/code



