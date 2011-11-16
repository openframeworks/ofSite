<%inherit file="_templates/docs.mako" />
___ofMesh___
$$code(lang=c++)
vector<  vertices
$$/code



$$code(lang=c++)
vector<  colors
$$/code



$$code(lang=c++)
vector<  normals
$$/code



$$code(lang=c++)
vector<  texCoords
$$/code



$$code(lang=c++)
vector<  indices
$$/code



$$code(lang=c++)
bool bVertsChanged
$$/code



$$code(lang=c++)
bool bColorsChanged
$$/code



$$code(lang=c++)
bool bNormalsChanged
$$/code



$$code(lang=c++)
bool bTexCoordsChanged
$$/code



$$code(lang=c++)
bool bIndicesChanged
$$/code



$$code(lang=c++)
None mode
$$/code



$$code(lang=c++)
string name
$$/code



$$code(lang=c++)
None ofMesh()
$$/code



$$code(lang=c++)
None ofMesh(ofPrimitiveMode mode, const vector< ofVec3f > &verts)
$$/code



$$code(lang=c++)
None ~ofMesh()
$$/code



$$code(lang=c++)
void setMode(ofPrimitiveMode mode)
$$/code



$$code(lang=c++)
None getMode() const 
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
void setupIndicesAuto()
$$/code



$$code(lang=c++)
None getVertex(int i) const 
$$/code



$$code(lang=c++)
void addVertex(const ofVec3f &v)
$$/code



$$code(lang=c++)
void addVertices(const vector< ofVec3f > &verts)
$$/code



$$code(lang=c++)
void addVertices(const ofVec3f *verts, int amt)
$$/code



$$code(lang=c++)
void removeVertex(int index)
$$/code



$$code(lang=c++)
void setVertex(int index, const ofVec3f &v)
$$/code



$$code(lang=c++)
void clearVertices()
$$/code



$$code(lang=c++)
None getNormal(int i) const 
$$/code



$$code(lang=c++)
void addNormal(const ofVec3f &n)
$$/code



$$code(lang=c++)
void addNormals(const vector< ofVec3f > &norms)
$$/code



$$code(lang=c++)
void addNormals(const ofVec3f *norms, int amt)
$$/code



$$code(lang=c++)
void removeNormal(int index)
$$/code



$$code(lang=c++)
void setNormal(int index, const ofVec3f &n)
$$/code



$$code(lang=c++)
void clearNormals()
$$/code



$$code(lang=c++)
None getColor(int i) const 
$$/code



$$code(lang=c++)
void addColor(const ofFloatColor &c)
$$/code



$$code(lang=c++)
void addColors(const vector< ofFloatColor > &cols)
$$/code



$$code(lang=c++)
void addColors(const ofFloatColor *cols, int amt)
$$/code



$$code(lang=c++)
void removeColor(int index)
$$/code



$$code(lang=c++)
void setColor(int index, const ofFloatColor &c)
$$/code



$$code(lang=c++)
void clearColors()
$$/code



$$code(lang=c++)
None getTexCoord(int i) const 
$$/code



$$code(lang=c++)
void addTexCoord(const ofVec2f &t)
$$/code



$$code(lang=c++)
void addTexCoords(const vector< ofVec2f > &tCoords)
$$/code



$$code(lang=c++)
void addTexCoords(const ofVec2f *tCoords, int amt)
$$/code



$$code(lang=c++)
void removeTexCoord(int index)
$$/code



$$code(lang=c++)
void setTexCoord(int index, const ofVec2f &t)
$$/code



$$code(lang=c++)
void clearTexCoords()
$$/code



$$code(lang=c++)
None getIndex(int i) const 
$$/code



$$code(lang=c++)
void addIndex(ofIndexType i)
$$/code



$$code(lang=c++)
void addIndices(const vector< ofIndexType > &inds)
$$/code



$$code(lang=c++)
void addIndices(const ofIndexType *inds, int amt)
$$/code



$$code(lang=c++)
void removeIndex(int i)
$$/code



$$code(lang=c++)
void setIndex(int i, ofIndexType val)
$$/code



$$code(lang=c++)
void clearIndices()
$$/code



$$code(lang=c++)
void addTriangle(ofIndexType index1, ofIndexType index2, ofIndexType index3)
$$/code



$$code(lang=c++)
int getNumVertices() const 
$$/code



$$code(lang=c++)
int getNumColors() const 
$$/code



$$code(lang=c++)
int getNumNormals() const 
$$/code



$$code(lang=c++)
int getNumTexCoords() const 
$$/code



$$code(lang=c++)
int getNumIndices() const 
$$/code



$$code(lang=c++)
None getVerticesPointer()
$$/code



$$code(lang=c++)
None getColorsPointer()
$$/code



$$code(lang=c++)
None getNormalsPointer()
$$/code



$$code(lang=c++)
None getTexCoordsPointer()
$$/code



$$code(lang=c++)
None getIndexPointer()
$$/code



$$code(lang=c++)
const  getVerticesPointer() const 
$$/code



$$code(lang=c++)
const  getColorsPointer() const 
$$/code



$$code(lang=c++)
const  getNormalsPointer() const 
$$/code



$$code(lang=c++)
const  getTexCoordsPointer() const 
$$/code



$$code(lang=c++)
const  getIndexPointer() const 
$$/code



$$code(lang=c++)
vector<  getVertices()
$$/code



$$code(lang=c++)
vector<  getColors()
$$/code



$$code(lang=c++)
vector<  getNormals()
$$/code



$$code(lang=c++)
vector<  getTexCoords()
$$/code



$$code(lang=c++)
vector<  getIndices()
$$/code



$$code(lang=c++)
const vector<  getVertices() const 
$$/code



$$code(lang=c++)
const vector<  getColors() const 
$$/code



$$code(lang=c++)
const vector<  getNormals() const 
$$/code



$$code(lang=c++)
const vector<  getTexCoords() const 
$$/code



$$code(lang=c++)
const vector<  getIndices() const 
$$/code



$$code(lang=c++)
vector< int > & getFace(int faceId)
$$/code



$$code(lang=c++)
None getCentroid() const 
$$/code



$$code(lang=c++)
void setName(string name_)
$$/code



$$code(lang=c++)
bool haveVertsChanged()
$$/code



$$code(lang=c++)
bool haveColorsChanged()
$$/code



$$code(lang=c++)
bool haveNormalsChanged()
$$/code



$$code(lang=c++)
bool haveTexCoordsChanged()
$$/code



$$code(lang=c++)
bool haveIndicesChanged()
$$/code



$$code(lang=c++)
bool hasVertices()
$$/code



$$code(lang=c++)
bool hasColors()
$$/code



$$code(lang=c++)
bool hasNormals()
$$/code



$$code(lang=c++)
bool hasTexCoords()
$$/code



$$code(lang=c++)
bool hasIndices()
$$/code



$$code(lang=c++)
void drawVertices()
$$/code



$$code(lang=c++)
void drawWireframe()
$$/code



$$code(lang=c++)
void drawFaces()
$$/code



$$code(lang=c++)
void draw()
$$/code



$$code(lang=c++)
$$/code



$$code(lang=c++)
void draw(ofPolyRenderMode renderType)
$$/code



