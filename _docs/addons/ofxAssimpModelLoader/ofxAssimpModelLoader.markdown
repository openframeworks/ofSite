#class ofxAssimpModelLoader


##Description





##Methods



### ~ofxAssimpModelLoader()

<!--

_syntax: ~ofxAssimpModelLoader()_

_name: ~ofxAssimpModelLoader_

_returns: _

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







### ofxAssimpModelLoader()

<!--

_syntax: ofxAssimpModelLoader()_

_name: ofxAssimpModelLoader_

_returns: _

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###bool loadModel(modelName, optimize = true)

<!--

_syntax: loadModel(modelName, optimize = true)_

_name: loadModel_

_returns: bool_

_returns_description: _

_parameters: string modelName, bool optimize=true_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###bool loadModel(&buffer, optimize = true, *extension = "")

<!--

_syntax: loadModel(&buffer, optimize = true, *extension = "")_

_name: loadModel_

_returns: bool_

_returns_description: _

_parameters: ofBuffer &buffer, bool optimize=true, const char *extension=""_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void createEmptyModel()

<!--

_syntax: createEmptyModel()_

_name: createEmptyModel_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void createLightsFromAiModel()

<!--

_syntax: createLightsFromAiModel()_

_name: createLightsFromAiModel_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void optimizeScene()

<!--

_syntax: optimizeScene()_

_name: optimizeScene_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void clear()

<!--

_syntax: clear()_

_name: clear_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void setScale(x, y, z)

<!--

_syntax: setScale(x, y, z)_

_name: setScale_

_returns: void_

_returns_description: _

_parameters: float x, float y, float z_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void setPosition(x, y, z)

<!--

_syntax: setPosition(x, y, z)_

_name: setPosition_

_returns: void_

_returns_description: _

_parameters: float x, float y, float z_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void setRotation(which, angle, rot_x, rot_y, r_z)

<!--

_syntax: setRotation(which, angle, rot_x, rot_y, r_z)_

_name: setRotation_

_returns: void_

_returns_description: _

_parameters: int which, float angle, float rot_x, float rot_y, float r_z_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void setScaleNomalization(normalize)

<!--

_syntax: setScaleNomalization(normalize)_

_name: setScaleNomalization_

_returns: void_

_returns_description: _

_parameters: bool normalize_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void setNormalizationFactor(factor)

<!--

_syntax: setNormalizationFactor(factor)_

_name: setNormalizationFactor_

_returns: void_

_returns_description: _

_parameters: float factor_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###unsigned int getAnimationCount()

<!--

_syntax: getAnimationCount()_

_name: getAnimationCount_

_returns: unsigned int_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void setAnimation(anim)

<!--

_syntax: setAnimation(anim)_

_name: setAnimation_

_returns: void_

_returns_description: _

_parameters: int anim_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void setNormalizedTime(time)

<!--

_syntax: setNormalizedTime(time)_

_name: setNormalizedTime_

_returns: void_

_returns_description: _

_parameters: float time_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void setTime(time)

<!--

_syntax: setTime(time)_

_name: setTime_

_returns: void_

_returns_description: _

_parameters: float time_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###float getDuration(animation)

<!--

_syntax: getDuration(animation)_

_name: getDuration_

_returns: float_

_returns_description: _

_parameters: int animation_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###vector< string > getMeshNames()

<!--

_syntax: getMeshNames()_

_name: getMeshNames_

_returns: vector< string >_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###int getNumMeshes()

<!--

_syntax: getNumMeshes()_

_name: getNumMeshes_

_returns: int_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofMesh getMesh(name)

<!--

_syntax: getMesh(name)_

_name: getMesh_

_returns: ofMesh_

_returns_description: _

_parameters: string name_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofMesh getMesh(num)

<!--

_syntax: getMesh(num)_

_name: getMesh_

_returns: ofMesh_

_returns_description: _

_parameters: int num_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofMesh getCurrentAnimatedMesh(name)

<!--

_syntax: getCurrentAnimatedMesh(name)_

_name: getCurrentAnimatedMesh_

_returns: ofMesh_

_returns_description: _

_parameters: string name_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofMesh getCurrentAnimatedMesh(num)

<!--

_syntax: getCurrentAnimatedMesh(num)_

_name: getCurrentAnimatedMesh_

_returns: ofMesh_

_returns_description: _

_parameters: int num_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofMaterial getMaterialForMesh(name)

<!--

_syntax: getMaterialForMesh(name)_

_name: getMaterialForMesh_

_returns: ofMaterial_

_returns_description: _

_parameters: string name_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofMaterial getMaterialForMesh(num)

<!--

_syntax: getMaterialForMesh(num)_

_name: getMaterialForMesh_

_returns: ofMaterial_

_returns_description: _

_parameters: int num_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofTexture getTextureForMesh(name)

<!--

_syntax: getTextureForMesh(name)_

_name: getTextureForMesh_

_returns: ofTexture_

_returns_description: _

_parameters: string name_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofTexture getTextureForMesh(num)

<!--

_syntax: getTextureForMesh(num)_

_name: getTextureForMesh_

_returns: ofTexture_

_returns_description: _

_parameters: int num_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void drawWireframe()

<!--

_syntax: drawWireframe()_

_name: drawWireframe_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void drawFaces()

<!--

_syntax: drawFaces()_

_name: drawFaces_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void drawVertices()

<!--

_syntax: drawVertices()_

_name: drawVertices_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void enableTextures()

<!--

_syntax: enableTextures()_

_name: enableTextures_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void disableTextures()

<!--

_syntax: disableTextures()_

_name: disableTextures_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void enableNormals()

<!--

_syntax: enableNormals()_

_name: enableNormals_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void enableMaterials()

<!--

_syntax: enableMaterials()_

_name: enableMaterials_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void disableNormals()

<!--

_syntax: disableNormals()_

_name: disableNormals_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void enableColors()

<!--

_syntax: enableColors()_

_name: enableColors_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void disableColors()

<!--

_syntax: disableColors()_

_name: disableColors_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void disableMaterials()

<!--

_syntax: disableMaterials()_

_name: disableMaterials_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void draw(renderType)

<!--

_syntax: draw(renderType)_

_name: draw_

_returns: void_

_returns_description: _

_parameters: ofPolyRenderMode renderType_

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofPoint getPosition()

<!--

_syntax: getPosition()_

_name: getPosition_

_returns: ofPoint_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofPoint getSceneCenter()

<!--

_syntax: getSceneCenter()_

_name: getSceneCenter_

_returns: ofPoint_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###float getNormalizedScale()

<!--

_syntax: getNormalizedScale()_

_name: getNormalizedScale_

_returns: float_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###ofPoint getScale()

<!--

_syntax: getScale()_

_name: getScale_

_returns: ofPoint_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void calculateDimensions()

<!--

_syntax: calculateDimensions()_

_name: calculateDimensions_

_returns: void_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###const aiScene * getAssimpScene()

<!--

_syntax: getAssimpScene()_

_name: getAssimpScene_

_returns: const aiScene *_

_returns_description: _

_parameters: _

_access: public_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void loadGLResources()

<!--

_syntax: loadGLResources()_

_name: loadGLResources_

_returns: void_

_returns_description: _

_parameters: _

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void updateAnimation(animationIndex, time)

<!--

_syntax: updateAnimation(animationIndex, time)_

_name: updateAnimation_

_returns: void_

_returns_description: _

_parameters: unsigned int animationIndex, float time_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void updateGLResources()

<!--

_syntax: updateGLResources()_

_name: updateGLResources_

_returns: void_

_returns_description: _

_parameters: _

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void getBoundingBoxWithMinVector(*min, *max)

<!--

_syntax: getBoundingBoxWithMinVector(*min, *max)_

_name: getBoundingBoxWithMinVector_

_returns: void_

_returns_description: _

_parameters: struct aiVector3D *min, struct aiVector3D *max_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







###void getBoundingBoxForNode(*nd, *min, *max, *trafo)

<!--

_syntax: getBoundingBoxForNode(*nd, *min, *max, *trafo)_

_name: getBoundingBoxForNode_

_returns: void_

_returns_description: _

_parameters: const struct aiNode *nd, struct aiVector3D *min, struct aiVector3D *max, struct aiMatrix4x4 *trafo_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_constant: False_

_static: no_

_visible: True_

_advanced: False_



-->

_description: _







##Variables



###const aiScene * scene

<!--

_name: scene_

_type: const aiScene *_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###bool hasAnimations

<!--

_name: hasAnimations_

_type: bool_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###int currentAnimation

<!--

_name: currentAnimation_

_type: int_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###float animationTime

<!--

_name: animationTime_

_type: float_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###string modelFolder

<!--

_name: modelFolder_

_type: string_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###float lastAnimationTime

<!--

_name: lastAnimationTime_

_type: float_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###bool normalizeScale

<!--

_name: normalizeScale_

_type: bool_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###aiVector3D scene_min

<!--

_name: scene_min_

_type: aiVector3D_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###aiVector3D scene_max

<!--

_name: scene_max_

_type: aiVector3D_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###aiVector3D scene_center

<!--

_name: scene_center_

_type: aiVector3D_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###double normalizedScale

<!--

_name: normalizedScale_

_type: double_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###vector< float > rotAngle

<!--

_name: rotAngle_

_type: vector< float >_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###vector< ofPoint > rotAxis

<!--

_name: rotAxis_

_type: vector< ofPoint >_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###ofPoint scale

<!--

_name: scale_

_type: ofPoint_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###ofPoint pos

<!--

_name: pos_

_type: ofPoint_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###string filepath

<!--

_name: filepath_

_type: string_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###vector< ofLight > lights

<!--

_name: lights_

_type: vector< ofLight >_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###ofxAssimpMeshHelper modelMeshes

<!--

_name: modelMeshes_

_type: ofxAssimpMeshHelper_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###bool bUsingTextures

<!--

_name: bUsingTextures_

_type: bool_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###bool bUsingNormals

<!--

_name: bUsingNormals_

_type: bool_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###bool bUsingColors

<!--

_name: bUsingColors_

_type: bool_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###bool bUsingMaterials

<!--

_name: bUsingMaterials_

_type: bool_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







###float normalizeFactor

<!--

_name: normalizeFactor_

_type: float_

_access: protected_

_version_started: 007_

_version_deprecated: _

_summary: _

_visible: True_

_constant: True_

_advanced: False_



-->

_description: _







