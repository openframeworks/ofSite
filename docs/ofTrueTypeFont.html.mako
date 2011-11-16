<%inherit file="_templates/docs.mako" />
___ofTrueTypeFont___
$$code(lang=c++)
bool bLoadedOk
$$/code



$$code(lang=c++)
bool bAntiAliased
$$/code



$$code(lang=c++)
bool bFullCharacterSet
$$/code



$$code(lang=c++)
int nCharacters
$$/code



$$code(lang=c++)
vector<  charOutlines
$$/code



$$code(lang=c++)
float lineHeight
$$/code



$$code(lang=c++)
float letterSpacing
$$/code



$$code(lang=c++)
float spaceSize
$$/code



$$code(lang=c++)
vector<  cps
$$/code



$$code(lang=c++)
int fontSize
$$/code



$$code(lang=c++)
bool bMakeContours
$$/code



$$code(lang=c++)
int border
$$/code



$$code(lang=c++)
string filename
$$/code



$$code(lang=c++)
None texAtlas
$$/code



$$code(lang=c++)
bool binded
$$/code



$$code(lang=c++)
None stringQuads
$$/code



$$code(lang=c++)
None ofTrueTypeFont()
$$/code



$$code(lang=c++)
None ~ofTrueTypeFont()
$$/code



$$code(lang=c++)
bool loadFont(string filename, int fontsize, bool _bAntiAliased=true, bool _bFullCharacterSet=false, bool makeContours=false, float simplifyAmt=0.3, int dpi=0)
$$/code



$$code(lang=c++)
bool isLoaded()
$$/code



$$code(lang=c++)
bool isAntiAliased()
$$/code



$$code(lang=c++)
bool hasFullCharacterSet()
$$/code



$$code(lang=c++)
int getSize()
$$/code



$$code(lang=c++)
float getLineHeight()
$$/code



$$code(lang=c++)
void setLineHeight(float height)
$$/code



$$code(lang=c++)
float getLetterSpacing()
$$/code



$$code(lang=c++)
void setLetterSpacing(float spacing)
$$/code



$$code(lang=c++)
float getSpaceSize()
$$/code



$$code(lang=c++)
void setSpaceSize(float size)
$$/code



$$code(lang=c++)
float stringWidth(string s)
$$/code



$$code(lang=c++)
float stringHeight(string s)
$$/code



$$code(lang=c++)
None getStringBoundingBox(string s, float x, float y)
$$/code



$$code(lang=c++)
void drawString(string s, float x, float y)
$$/code



$$code(lang=c++)
void drawStringAsShapes(string s, float x, float y)
$$/code



$$code(lang=c++)
int getNumCharacters()
$$/code



$$code(lang=c++)
None getCharacterAsPoints(int character)
$$/code



$$code(lang=c++)
vector<  getStringAsPoints(string str)
$$/code



$$code(lang=c++)
void bind()
$$/code



$$code(lang=c++)
void unbind()
$$/code



$$code(lang=c++)
void setGlobalDpi(int newDpi)
$$/code



$$code(lang=c++)
void drawChar(int c, float x, float y)
$$/code



$$code(lang=c++)
void drawCharAsShape(int c, float x, float y)
$$/code



$$code(lang=c++)
void unloadTextures()
$$/code



$$code(lang=c++)
void reloadTextures()
$$/code



