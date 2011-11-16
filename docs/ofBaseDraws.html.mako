<%inherit file="_templates/docs.mako" />
___ofBaseDraws___
$$code(lang=c++)
None ~ofBaseDraws()
$$/code



$$code(lang=c++)
void draw(float x, float y)=0
$$/code



$$code(lang=c++)
void draw(float x, float y, float w, float h)=0
$$/code



$$code(lang=c++)
void draw(const ofPoint &point)
$$/code



$$code(lang=c++)
void draw(const ofRectangle &rect)
$$/code



$$code(lang=c++)
float getHeight()=0
$$/code



$$code(lang=c++)
float getWidth()=0
$$/code



$$code(lang=c++)
void setAnchorPercent(float xPct, float yPct)
$$/code



$$code(lang=c++)
void setAnchorPoint(float x, float y)
$$/code



$$code(lang=c++)
void resetAnchor()
$$/code



