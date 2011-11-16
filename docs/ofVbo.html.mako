<%inherit file="_templates/docs.mako" />
___ofVbo___
$$code(lang=c++)
GLuint indexId
$$/code



$$code(lang=c++)
GLuint vertId
$$/code



$$code(lang=c++)
GLuint colorId
$$/code



$$code(lang=c++)
GLuint normalId
$$/code



$$code(lang=c++)
GLuint texCoordId
$$/code



$$code(lang=c++)
bool bAllocated
$$/code



$$code(lang=c++)
bool bUsingVerts
$$/code



$$code(lang=c++)
bool bUsingTexCoords
$$/code



$$code(lang=c++)
bool bUsingColors
$$/code



$$code(lang=c++)
bool bUsingNormals
$$/code



$$code(lang=c++)
bool bUsingIndices
$$/code



$$code(lang=c++)
GLsizei vertStride
$$/code



$$code(lang=c++)
GLsizei colorStride
$$/code



$$code(lang=c++)
GLsizei normalStride
$$/code



$$code(lang=c++)
GLsizei texCoordStride
$$/code



$$code(lang=c++)
int vertSize
$$/code



$$code(lang=c++)
int totalVerts
$$/code



$$code(lang=c++)
int vertUsage
$$/code



$$code(lang=c++)
int colorUsage
$$/code



$$code(lang=c++)
int normUsage
$$/code



$$code(lang=c++)
int texUsage
$$/code



$$code(lang=c++)
None ofVbo()
$$/code



$$code(lang=c++)
None ofVbo(const ofVbo &mom)
$$/code



$$code(lang=c++)
None operator=(const ofVbo &mom)
$$/code



$$code(lang=c++)
None ~ofVbo()
$$/code



$$code(lang=c++)
void setMesh(const ofMesh &mesh, int usage)
$$/code



$$code(lang=c++)
void setVertexData(const ofVec3f *verts, int total, int usage)
$$/code



$$code(lang=c++)
void setVertexData(const ofVec2f *verts, int total, int usage)
$$/code



$$code(lang=c++)
void setColorData(const ofFloatColor *colors, int total, int usage)
$$/code



$$code(lang=c++)
void setNormalData(const ofVec3f *normals, int total, int usage)
$$/code



$$code(lang=c++)
void setTexCoordData(const ofVec2f *texCoords, int total, int usage)
$$/code



$$code(lang=c++)
void setIndexData(const ofIndexType *indices, int total, int usage)
$$/code



$$code(lang=c++)
void setVertexData(const float *vert0x, int numCoords, int total, int usage, int stride=0)
$$/code



$$code(lang=c++)
void setColorData(const float *color0r, int total, int usage, int stride=0)
$$/code



$$code(lang=c++)
void setNormalData(const float *normal0x, int total, int usage, int stride=0)
$$/code



$$code(lang=c++)
void setTexCoordData(const float *texCoord0x, int total, int usage, int stride=0)
$$/code



$$code(lang=c++)
void updateMesh(const ofMesh &mesh)
$$/code



$$code(lang=c++)
void updateVertexData(const ofVec3f *verts, int total)
$$/code



$$code(lang=c++)
void updateVertexData(const ofVec2f *verts, int total)
$$/code



$$code(lang=c++)
void updateColorData(const ofFloatColor *colors, int total)
$$/code



$$code(lang=c++)
void updateNormalData(const ofVec3f *normals, int total)
$$/code



$$code(lang=c++)
void updateTexCoordData(const ofVec2f *texCoords, int total)
$$/code



$$code(lang=c++)
void updateIndexData(const ofIndexType *indices, int total)
$$/code



$$code(lang=c++)
void updateVertexData(const float *ver0x, int total)
$$/code



$$code(lang=c++)
void updateColorData(const float *color0r, int total)
$$/code



$$code(lang=c++)
void updateNormalData(const float *normal0x, int total)
$$/code



$$code(lang=c++)
void updateTexCoordData(const float *texCoord0x, int total)
$$/code



$$code(lang=c++)
GLuint getVertId()
$$/code



$$code(lang=c++)
GLuint getColorId()
$$/code



$$code(lang=c++)
GLuint getNormalId()
$$/code



$$code(lang=c++)
GLuint getTexCoordId()
$$/code



$$code(lang=c++)
GLuint getIndexId()
$$/code



$$code(lang=c++)
bool getIsAllocated()
$$/code



$$code(lang=c++)
bool getUsingVerts()
$$/code



$$code(lang=c++)
bool getUsingColors()
$$/code



$$code(lang=c++)
bool getUsingNormals()
$$/code



$$code(lang=c++)
bool getUsingTexCoords()
$$/code



$$code(lang=c++)
bool getUsingIndices()
$$/code



$$code(lang=c++)
void draw(int drawMode, int first, int total)
$$/code



$$code(lang=c++)
void drawElements(int drawMode, int amt)
$$/code



$$code(lang=c++)
void bind()
$$/code



$$code(lang=c++)
void unbind()
$$/code



$$code(lang=c++)
void clear()
$$/code



