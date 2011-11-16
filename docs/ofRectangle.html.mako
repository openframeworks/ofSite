<%inherit file="_templates/docs.mako" />
___ofRectangle___
$$code(lang=c++)
float x
$$/code



$$code(lang=c++)
float y
$$/code



$$code(lang=c++)
float width
$$/code



$$code(lang=c++)
float height
$$/code



$$code(lang=c++)
None ofRectangle()
$$/code



$$code(lang=c++)
None ~ofRectangle()
$$/code



$$code(lang=c++)
None ofRectangle(float _x, float _y, float _w, float _h)
$$/code



$$code(lang=c++)
None ofRectangle(ofPoint pos, float w, float h)
$$/code



$$code(lang=c++)
None ofRectangle(ofRectangle const &r)
$$/code



$$code(lang=c++)
void set(float px, float py, float w, float h)
$$/code



$$code(lang=c++)
void set(ofPoint pos, float w, float h)
$$/code



$$code(lang=c++)
void set(ofRectangle const &rect)
$$/code



$$code(lang=c++)
void setFromCenter(float px, float py, float w, float h)
$$/code



$$code(lang=c++)
void setFromCenter(ofPoint pos, float w, float h)
$$/code



$$code(lang=c++)
None getCenter()
$$/code



$$code(lang=c++)
bool inside(ofPoint p)
$$/code



$$code(lang=c++)
bool inside(float px, float py)
$$/code



$$code(lang=c++)
None operator=(const ofRectangle &rect)
$$/code



$$code(lang=c++)
bool operator==(ofRectangle const &r)
$$/code



$$code(lang=c++)
bool operator!=(ofRectangle const &r)
$$/code



$$code(lang=c++)
None operator+(const ofPoint &point)
$$/code



