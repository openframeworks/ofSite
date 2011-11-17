
//----------------------

##gl##

###ofShader###

__visible: true__

__methods__

ofShader()

~ofShader()

setup(...)

setup(...)

setGeometryInputType(...)

setGeometryOutputType(...)

setGeometryOutputCount(...)

getGeometryMaxOutputCount()

unload()

begin()

end()

setUniformTexture(...)

setUniform1i(...)

setUniform2i(...)

setUniform3i(...)

setUniform4i(...)

setUniform1f(...)

setUniform2f(...)

setUniform3f(...)

setUniform4f(...)

setUniform1iv(...)

setUniform2iv(...)

setUniform3iv(...)

setUniform4iv(...)

setUniform1fv(...)

setUniform2fv(...)

setUniform3fv(...)

setUniform4fv(...)

getAttributeLocation(...)

setAttribute1s(...)

setAttribute2s(...)

setAttribute3s(...)

setAttribute4s(...)

setAttribute1f(...)

setAttribute2f(...)

setAttribute3f(...)

setAttribute4f(...)

setAttribute1d(...)

setAttribute2d(...)

setAttribute3d(...)

setAttribute4d(...)

printActiveUniforms()

printActiveAttributes()

setupShaderFromSource(...)

setupShaderFromFile(...)

linkProgram()

getProgram()

getShader(...)

getUniformLocation(...)

checkProgramInfoLog(...)

checkShaderLinkStatus(...)

checkShaderInfoLog(...)

checkAndCreateProgram()

nameForType(...)

###ofLight###

__visible: true__

__methods__

ofLight()

ofLight(...)

operator=(...)

~ofLight()

setup()

enable()

disable()

getIsEnabled()

setDirectional(...)

getIsDirectional()

setAmbientColor(...)

setDiffuseColor(...)

setSpecularColor(...)

getAmbientColor()

getDiffuseColor()

getSpecularColor()

getLightID()

customDraw()

onPositionChanged()

onOrientationChanged()

###ofMaterial###

__visible: true__

__methods__

ofMaterial()

setColors()

setDiffuseColor()

setAmbientColor()

setSpecularColor()

setEmissiveColor()

setShininess(...)

getDiffuseColor()

getAmbientColor()

getSpecularColor()

getEmissiveColor()

getShininess()

begin()

end()

###ofVbo###

__visible: true__

__methods__

setIndexData(...)

setVertexData(...)

setColorData(...)

setNormalData(...)

setTexCoordData(...)

updateMesh(...)

updateVertexData(...)

updateColorData(...)

updateNormalData(...)

updateTexCoordData(...)

updateIndexData(...)

updateVertexData(...)

updateColorData(...)

updateNormalData(...)

updateTexCoordData(...)

getVertId()

getColorId()

getNormalId()

getTexCoordId()

getIndexId()

getIsAllocated()

getUsingVerts()

getUsingColors()

getUsingNormals()

getUsingTexCoords()

getUsingIndices()

draw(...)

drawElements(...)

bind()

unbind()

clear()

ofVbo()

ofVbo(...)

operator=(...)

~ofVbo()

setMesh(...)

setVertexData(...)

setColorData(...)

setNormalData(...)

setTexCoordData(...)

###ofGLRenderer###

__visible: true__

__methods__

ofGLRenderer(...)

~ofGLRenderer()

draw()

draw(...)

draw(...)

rendersPathPrimitives()

pushView()

popView()

viewport()

viewport(...)

setupScreenPerspective(...)

setupScreenOrtho(...)

getCurrentViewport()

getViewportWidth()

getViewportHeight()

setCoordHandedness()

getCoordHandedness()

pushMatrix()

popMatrix()

translate(...)

translate(...)

scale(...)

rotate(...)

rotateX(...)

rotateY(...)

rotateZ(...)

rotate(...)

setupGraphicDefaults()

setupScreen()

setFillMode()

getFillMode()

setCircleResolution(...)

setRectMode()

getRectMode()

setLineWidth(...)

setLineSmoothing(...)

setBlendMode()

enablePointSprites()

disablePointSprites()

setColor(...)

setColor(...)

setColor(...)

setColor(...)

setColor(...)

setHexColor(...)

getBgColor()

bClearBg()

background(...)

background(...)

background(...)

background(...)

setBackgroundAuto(...)

clear(...)

clear(...)

clearAlpha()

drawLine(...)

drawRectangle(...)

drawTriangle(...)

drawCircle(...)

drawEllipse(...)

drawString(...)

startSmoothing()

endSmoothing()

###ofFbo###

__visible: true__

__methods__

ofFbo()

ofFbo(...)

operator=(...)

~ofFbo()

setup(...)

setupShadow(...)

setup(...)

draw(...)

draw(...)

getWidth()

getHeight()

begin()

end()

getTexture(...)

bind()

unbind()

getNumTextures()

getFbo()

getDepthBuffer()

getStencilBuffer()

checkGLSupport()

maxColorAttachments()

maxDrawBuffers()

maxSamples()

destroy()

checkStatus()

createAndAttachTexture(...)

createAndAttachRenderbuffer(...)

updateTexture(...)

###ofVboMesh###

__visible: true__

__methods__

ofVboMesh()

ofVboMesh(...)

setUsage(...)

draw()

//----------------------

##sound##

###ofBaseSoundPlayer###

__visible: true__

__methods__

ofBaseSoundPlayer()

~ofBaseSoundPlayer()

loadSound(...)

unloadSound()

play()

stop()

setVolume(...)

setPan(...)

setSpeed(...)

setPaused(...)

setLoop(...)

setMultiPlay(...)

setPosition(...)

getPosition()

getIsPlaying()

getSpeed()

getPan()

###ofBaseSoundStream###

__visible: true__

__methods__

~ofBaseSoundStream()

listDevices()

setDeviceID(...)

setup(...)

setInput()

setOutput()

start()

stop()

close()

getTickCount()

###ofFmodSoundPlayer###

__visible: true__

__methods__

ofFmodSoundPlayer()

~ofFmodSoundPlayer()

loadSound(...)

unloadSound()

play()

stop()

setVolume(...)

setPan(...)

setSpeed(...)

setPaused(...)

setLoop(...)

setMultiPlay(...)

setPosition(...)

getPosition()

getIsPlaying()

getSpeed()

getPan()

initializeFmod()

closeFmod()

###ofOpenALSoundPlayer###

__visible: true__

__methods__

ofOpenALSoundPlayer()

~ofOpenALSoundPlayer()

loadSound(...)

unloadSound()

play()

stop()

setVolume(...)

setPan(...)

setSpeed(...)

setPaused(...)

setLoop(...)

setMultiPlay(...)

setPosition(...)

getPosition()

getIsPlaying()

getSpeed()

getPan()

getIsPaused()

getSpectrum(...)

initialize()

close()

getSystemSpectrum(...)

threadedFunction()

update(...)

initFFT(...)

getCurrentBufferSum(...)

sfReadFile(...)

sfStream(...)

readFile(...)

stream(...)

createWindow(...)

runWindow(...)

initSystemFFT(...)

###ofRtAudioSoundStream###

__visible: true__

__methods__

ofRtAudioSoundStream()

~ofRtAudioSoundStream()

listDevices()

setDeviceID(...)

setInput()

setOutput()

setup(...)

start()

stop()

close()

getTickCount()

getNumInputChannels()

getNumOutputChannels()

rtAudioCallback(...)

//----------------------

##app##

//----------------------

##communication##

//----------------------

##3d##

###ofMesh###

__visible: true__

__methods__

ofMesh()

ofMesh(...)

~ofMesh()

setMode()

getMode()

clear()

setupIndicesAuto()

getVertex(...)

addVertex(...)

addVertices(...)

addVertices(...)

removeVertex(...)

setVertex(...)

clearVertices()

getNormal(...)

addNormal(...)

addNormals(...)

addNormals(...)

removeNormal(...)

setNormal(...)

clearNormals()

getColor(...)

addColor(...)

addColors(...)

addColors(...)

removeColor(...)

setColor(...)

clearColors()

getTexCoord(...)

addTexCoord(...)

addTexCoords(...)

addTexCoords(...)

removeTexCoord(...)

setTexCoord(...)

clearTexCoords()

getIndex(...)

addIndex()

addIndices(...)

addIndices(...)

removeIndex(...)

setIndex(...)

clearIndices()

getNumVertices()

getNumColors()

getNumNormals()

getNumTexCoords()

getNumIndices()

getVerticesPointer()

getColorsPointer()

getNormalsPointer()

getTexCoordsPointer()

getIndexPointer()

getVertices()

getColors()

getNormals()

getTexCoords()

getIndices()

getFace(...)

setName(...)

haveVertsChanged()

haveColorsChanged()

haveNormalsChanged()

haveTexCoordsChanged()

haveIndicesChanged()

drawVertices()

drawWireframe()

drawFaces()

draw()

###ofEasyCam###

__visible: true__

__methods__

ofEasyCam()

~ofEasyCam()

begin(...)

reset()

setTarget(...)

setTarget()

getTarget()

setDistance(...)

getDistance()

setDrag(...)

getDrag()

mouseDragged(...)

mouseMoved(...)

mousePressed(...)

mouseReleased(...)

enableMouseInput()

disableMouseInput()

getMouseInputEnabled()

setDistance(...)

###ofCamera###

__visible: true__

__methods__

ofCamera()

setFov(...)

setNearClip(...)

setFarClip(...)

enableOrtho()

disableOrtho()

getOrtho()

getImagePlaneDistance(...)

begin(...)

end()

getProjectionMatrix(...)

getModelViewMatrix()

getModelViewProjectionMatrix(...)

worldToScreen(...)

screenToWorld(...)

worldToCamera(...)

cameraToWorld(...)

calcClipPlanes()

###ofNode###

__visible: true__

__methods__

ofNode()

~ofNode()

setParent()

clearParent()

getParent()

getPosition()

getX()

getY()

getZ()

getXAxis()

getYAxis()

getZAxis()

getSideDir()

getLookAtDir()

getUpDir()

getPitch()

getHeading()

getRoll()

getOrientationQuat()

getOrientationEuler()

getScale()

getLocalTransformMatrix()

getGlobalTransformMatrix()

getGlobalPosition()

getGlobalOrientation()

setTransformMatrix(...)

setPosition(...)

setPosition(...)

setGlobalPosition(...)

setGlobalPosition(...)

setOrientation(...)

setGlobalOrientation(...)

setScale(...)

setScale(...)

setScale(...)

move(...)

move(...)

truck(...)

boom(...)

dolly(...)

tilt(...)

pan(...)

roll(...)

rotate(...)

rotate(...)

rotate(...)

rotateAround(...)

rotateAround(...)

lookAt(...)

lookAt(...)

orbit(...)

orbit(...)

transformGL()

restoreTransformGL()

resetTransform()

customDraw()

draw()

createMatrix()

onPositionChanged()

onOrientationChanged()

onScaleChanged()

//----------------------

##application##

###ofDragInfo###

__visible: true__

__methods__

###ofBaseApp###

__visible: true__

__methods__

gotMessage(...)

windowResized(...)

keyPressed(...)

keyReleased(...)

mouseMoved(...)

mouseDragged(...)

mousePressed(...)

mouseReleased(...)

dragEvent()

setup()

update()

draw()

exit()

windowResized(...)

keyPressed(...)

keyReleased(...)

mouseMoved(...)

mouseDragged(...)

mousePressed(...)

mouseReleased()

mouseReleased(...)

audioReceived(...)

audioRequested(...)

//----------------------

##serial##

###ofSerial###

__visible: true__

__methods__

listDevices()

getDeviceList()

setup(...)

setup(...)

readBytes(...)

writeBytes(...)

writeByte(...)

flush(...)

setVerbose(...)

buildDeviceList()

enumerateDevices()

close()

setup()

setup(...)

setup(...)

readBytes(...)

writeBytes(...)

writeByte(...)

readByte()

flush(...)

available()

setVerbose(...)

//----------------------

##arduino##

###ofArduino###

__visible: true__

__methods__

sendByte(...)

sendValueAsTwo7bitBytes(...)

getPwm(...)

getDigital(...)

getAnalog(...)

getDigitalHistory(...)

getAnalogHistory(...)

getDigitalPinMode(...)

getAnalogPinReporting(...)

getValueFromTwo7bitBytes(...)

sendServo(...)

sendServoAttach(...)

sendServoDetach(...)

getServo(...)

sendDigitalPinReporting(...)

sendDigitalPortReporting(...)

processData(...)

processDigitalPort(...)

processSysExData(...)

sendDigitalPinReporting(...)

processSysExData(...)

connect(...)

setUseDelay(...)

setDigitalHistoryLength(...)

setAnalogHistoryLength(...)

setStringHistoryLength(...)

setSysExHistoryLength(...)

sendDigitalPinMode(...)

sendAnalogPinReporting(...)

sendDigital(...)

sendPwm(...)

sendSysEx(...)

sendString(...)

sendDigitalPortReporting(...)

connect(...)

processData(...)

connect(...)

disconnect()

processDigitalPort(...)

isArduinoReady()

update()

processSysExData(...)

setUseDelay(...)

isInitialized()

sendDigitalPinMode(...)

sendAnalogPinReporting(...)

sendDigital(...)

sendPwm(...)

sendString(...)

sendReset()

sendByte(...)

getPwm(...)

getDigital(...)

getAnalog(...)

getString()

getDigitalPinMode(...)

getAnalogPinReporting(...)

//----------------------

##video##

###ofiPhoneVideoGrabber###

__visible: true__

__methods__

ofiPhoneVideoGrabber()

~ofiPhoneVideoGrabber()

listDevices()

getDeviceList()

initGrabber(...)

isFrameNew()

getPixels()

getPixelsRef()

close()

getHeight()

getWidth()

update()

setDeviceID(...)

setDesiredFrameRate(...)

setPixelFormat()

getPixelFormat()

###ofGstUtils###

__visible: true__

__methods__

ofGstUtils()

~ofGstUtils()

setPipelineWithSink(...)

setPipelineWithSink(...)

play()

stop()

setPaused(...)

isPaused()

isLoaded()

isPlaying()

getPosition()

getSpeed()

getDuration()

getDurationNanos()

getIsMovieDone()

setPosition(...)

setVolume(...)

setLoopState()

getLoopState()

setSpeed(...)

setFrameByFrame(...)

isFrameByFrame()

getPipeline()

getSink()

close()

setSinkListener()

preroll_cb(...)

buffer_cb(...)

eos_cb()

gstHandleMessage()

update(...)

startPipeline()

###ofiPhoneVideoPlayer###

__visible: true__

__methods__

ofiPhoneVideoPlayer()

~ofiPhoneVideoPlayer()

loadMovie(...)

setPixelFormat()

close()

play()

stop()

isFrameNew()

getPixels()

getPixelsRef()

getTexture()

getWidth()

getHeight()

isPaused()

isLoaded()

isPlaying()

update()

getPosition()

getDuration()

getIsMovieDone()

setPaused(...)

setVolume(...)

initWithPath(...)

updateCurrentFrameRef()

###ofQuickTimePlayer###

__visible: true__

__methods__

ofQuickTimePlayer()

~ofQuickTimePlayer()

loadMovie(...)

closeMovie()

close()

update()

play()

stop()

clearMemory()

isFrameNew()

getPixels()

getPixelsRef()

getWidth()

getHeight()

isPaused()

isLoaded()

isPlaying()

getPosition()

getDuration()

getTotalNumFrames()

getSpeed()

getIsMovieDone()

setPosition(...)

setVolume(...)

setLoopState()

setSpeed(...)

setFrame(...)

setPaused(...)

getCurrentFrame()

firstFrame()

nextFrame()

previousFrame()

createImgMemAndGWorld()

start()

###ofDirectShowGrabber###

__visible: true__

__methods__

ofDirectShowGrabber()

~ofDirectShowGrabber()

listDevices()

initGrabber(...)

update()

isFrameNew()

getPixels()

getPixelsRef()

close()

clearMemory()

videoSettings()

getWidth()

getHeight()

setVerbose(...)

setDeviceID(...)

setDesiredFrameRate(...)

###ofGstVideoPlayer###

__visible: true__

__methods__

getHeight()

getWidth()

getGstVideoUtils()

allocate()

on_stream_prepared()

on_message(...)

ofGstVideoPlayer()

~ofGstVideoPlayer()

setPixelFormat()

loadMovie(...)

update()

getCurrentFrame()

getTotalNumFrames()

firstFrame()

nextFrame()

previousFrame()

setFrame(...)

isStream()

play()

stop()

setPaused(...)

isPaused()

isLoaded()

isPlaying()

getPosition()

getSpeed()

getDuration()

getIsMovieDone()

setPosition(...)

setVolume(...)

setLoopState()

getLoopState()

setSpeed(...)

close()

isFrameNew()

getPixels()

getPixelsRef()

###ofGstAppSink###

__visible: true__

__methods__

on_preroll(...)

on_buffer(...)

on_eos()

on_message(...)

on_stream_prepared()

###ofGstVideoGrabber###

__visible: true__

__methods__

~ofGstVideoGrabber()

setPixelFormat()

videoSettings()

listDevices()

setDeviceID(...)

setDesiredFrameRate(...)

initGrabber(...)

update()

isFrameNew()

getPixels()

getPixelsRef()

getHeight()

getWidth()

close()

setVerbose(...)

getGstVideoUtils()

selectFormat(...)

ofGstVideoGrabber()

###ofGstVideoUtils###

__visible: true__

__methods__

ofGstVideoUtils()

~ofGstVideoUtils()

setPipeline(...)

allocate(...)

isFrameNew()

getPixels()

getPixelsRef()

update()

getHeight()

getWidth()

close()

preroll_cb(...)

buffer_cb(...)

eos_cb()

###ofVideoGrabber###

__visible: true__

__methods__

setGrabber()

getGrabber()

initGrabber(...)

initGrabber(...)

setPixelFormat()

getPixelFormat()

getPixelsRef()

setVerbose(...)

setDeviceID(...)

setDesiredFrameRate(...)

setUseTexture(...)

draw(...)

draw(...)

draw(...)

setAnchorPercent(...)

setAnchorPoint(...)

listDevices()

isFrameNew()

grabFrame()

close()

initGrabber(...)

videoSettings()

getPixels()

getTextureReference()

setVerbose(...)

setDeviceID(...)

setUseTexture(...)

draw(...)

draw(...)

update()

getHeight()

getWidth()

###ofVideoPlayer###

__visible: true__

__methods__

start()

setPlayer()

getPlayer()

loadMovie(...)

setPixelFormat()

getPixelsRef()

setPosition(...)

setVolume(...)

setLoopState()

getLoopState()

setSpeed(...)

setFrame(...)

setUseTexture(...)

draw(...)

draw(...)

draw(...)

setAnchorPercent(...)

setAnchorPoint(...)

setPaused(...)

isPaused()

isLoaded()

isPlaying()

createImgMemAndGWorld()

loadMovie(...)

seek_lock()

closeMovie()

seek_unlock()

close()

gstHandleMessage()

update()

allocate()

idleMovie()

play()

stop()

isFrameNew()

getPixels()

getPosition()

getSpeed()

getDuration()

getIsMovieDone()

setPosition(...)

setVolume(...)

setLoopState(...)

setSpeed(...)

setFrame(...)

setUseTexture(...)

getTextureReference()

draw(...)

draw(...)

setPaused(...)

getCurrentFrame()

getTotalNumFrames()

firstFrame()

nextFrame()

previousFrame()

getHeight()

getWidth()

//----------------------

##graphics##

###ofPath###

__visible: true__

__methods__

ofPath()

clear()

newSubPath()

close()

lineTo(...)

lineTo(...)

lineTo(...)

moveTo(...)

moveTo(...)

curveTo(...)

curveTo(...)

curveTo(...)

bezierTo(...)

bezierTo(...)

bezierTo(...)

quadBezierTo(...)

quadBezierTo(...)

quadBezierTo(...)

arc(...)

arc(...)

arc(...)

setPolyWindingMode()

setFilled(...)

setStrokeWidth(...)

setColor(...)

setHexColor(...)

setFillColor(...)

setFillHexColor(...)

setStrokeColor(...)

setStrokeHexColor(...)

getWindingMode()

isFilled()

getFillColor()

getStrokeColor()

getStrokeWidth()

hasOutline()

draw(...)

draw()

getSubPaths()

getOutline()

getTessellation()

tessellate()

simplify(...)

flagShapeChanged()

setMode()

setCurveResolution(...)

getCurveResolution()

setArcResolution(...)

getArcResolution()

setUseShapeColor(...)

getUseShapeColor()

lastPath()

lastPolyline()

generatePolylinesFromPaths()

###ofPolyline###

__visible: true__

__methods__

ofPolyline()

ofPolyline(...)

clear()

addVertex(...)

addVertex(...)

addVertexes(...)

lineTo(...)

lineTo(...)

arc(...)

arc(...)

arc(...)

curveTo(...)

curveTo(...)

bezierTo(...)

bezierTo(...)

bezierTo(...)

quadBezierTo(...)

quadBezierTo(...)

quadBezierTo(...)

simplify(...)

size()

operator[](...)

setClosed(...)

isClosed()

hasChanged()

getVertices()

getPerimeter()

setCircleResolution(...)

###ofTessellator###

__visible: true__

__methods__

tessellateToMesh(...)

tessellateToMesh(...)

tessellateToOutline(...)

tessellateToOutline(...)

tessellateToCache(...)

performTessellation(...)

init()

clear()

error(...)

vertex(...)

combine(...)

begin(...)

end()

###ofPixelUtils###

__visible: true__

__methods__

crop(...)

cropFromTo(...)

rotate90(...)

mirror(...)

resize(...)

resize(...)

bicubicInterpolate(...)

###ofRendererCollection###

__visible: true__

__methods__

~ofRendererCollection()

rendersPathPrimitives()

draw()

draw(...)

draw(...)

pushView()

popView()

viewport()

viewport(...)

setupScreenPerspective(...)

setupScreenOrtho(...)

getCurrentViewport()

getViewportWidth()

getViewportHeight()

setCoordHandedness()

getCoordHandedness()

pushMatrix()

popMatrix()

translate(...)

translate(...)

scale(...)

rotate(...)

rotateX(...)

rotateY(...)

rotateZ(...)

rotate(...)

setupGraphicDefaults()

setupScreen()

setColor(...)

setColor(...)

setColor(...)

setColor(...)

setColor(...)

setHexColor(...)

getBgColor()

bClearBg()

background(...)

background(...)

background(...)

background(...)

setBackgroundAuto(...)

clear(...)

clear(...)

clearAlpha()

setRectMode()

getRectMode()

setFillMode()

getFillMode()

setLineWidth(...)

setBlendMode()

setLineSmoothing(...)

setCircleResolution(...)

enablePointSprites()

disablePointSprites()

drawLine(...)

drawRectangle(...)

drawTriangle(...)

drawCircle(...)

drawEllipse(...)

drawString(...)

###ofPixels###

__visible: true__

__methods__

ofPixels()

~ofPixels()

ofPixels(...)

operator=(...)

allocate(...)

allocate(...)

set(...)

setFromPixels(...)

setFromExternalPixels(...)

setFromAlignedPixels(...)

setFromPixels(...)

setFromExternalPixels(...)

setFromAlignedPixels(...)

swapRgb()

clear()

getPixels()

getPixelIndex(...)

getColor(...)

setColor(...)

operator[](...)

isAllocated()

getWidth()

getHeight()

getBytesPerPixel()

getBitsPerPixel()

getImageType()

getGlDataType()

copyFrom(...)

###ofCairoRenderer###

__visible: true__

__methods__

ofCairoRenderer()

~ofCairoRenderer()

setup(...)

close()

draw()

draw(...)

draw(...)

rendersPathPrimitives()

pushView()

popView()

viewport()

viewport(...)

setupScreenPerspective(...)

setupScreenOrtho(...)

getCurrentViewport()

getViewportWidth()

getViewportHeight()

setCoordHandedness()

getCoordHandedness()

setRectMode()

getRectMode()

setFillMode()

getFillMode()

setLineWidth(...)

setBlendMode()

setLineSmoothing(...)

pushMatrix()

popMatrix()

translate(...)

translate(...)

scale(...)

rotate(...)

rotateX(...)

rotateY(...)

rotateZ(...)

rotate(...)

setupGraphicDefaults()

setupScreen()

setColor(...)

setColor(...)

setColor(...)

setColor(...)

setColor(...)

setHexColor(...)

getBgColor()

bClearBg()

background(...)

background(...)

background(...)

background(...)

setBackgroundAuto(...)

clear(...)

clear(...)

clearAlpha()

drawLine(...)

drawRectangle(...)

drawTriangle(...)

drawCircle(...)

drawEllipse(...)

drawString(...)

getCairoContext()

getCairoSurface()

getCairoMatrix()

setCairoMatrix()

transform()

###ofSubPath###

__visible: true__

__methods__

ofSubPath()

getCommands()

addCommand(...)

hasChanged()

close()

isClosed()

size()

###ofImage###

__visible: true__

__methods__

resizePixels(...)

allocate(...)

ofImage(...)

operator=(...)

clone(...)

setUseTexture(...)

isUsingTexture()

bind()

unbind()

loadImage(...)

loadImage(...)

saveImage(...)

saveImage(...)

setCompression()

getPixelsRef()

getColor(...)

setColor(...)

setFromPixels(...)

setImageType()

resize(...)

grabScreen(...)

crop(...)

cropFrom(...)

rotate90(...)

mirror(...)

setAnchorPercent(...)

setAnchorPoint(...)

draw(...)

draw(...)

draw(...)

draw(...)

draw(...)

draw(...)

bAllocated()

reloadTexture()

changeTypeOfPixels()

loadImageIntoPixels(...)

saveImageFromPixels(...)

allocate(...)

changeTypeOfPixels(...)

clear()

resizePixels(...)

getBmpFromPixels(...)

operator=(...)

putBmpIntoPixels(...)

allocatePixels(...)

clone(...)

setUseTexture(...)

swapRgb(...)

getTextureReference()

loadImage(...)

saveImage(...)

getPixels()

setFromPixels(...)

setImageType(...)

resize(...)

grabScreen(...)

update()

draw(...)

draw(...)

getWidth()

getHeight()

###ofTextureData###

__visible: true__

__methods__

ofTextureData()

###ofTexture###

__visible: true__

__methods__

ofTexture(...)

operator=(...)

allocate(...)

allocate(...)

loadData(...)

loadData(...)

loadData()

loadScreenData(...)

setAnchorPercent(...)

setAnchorPoint(...)

draw(...)

draw(...)

draw(...)

draw(...)

draw(...)

draw(...)

draw()

getCoordFromPoint(...)

getCoordFromPercent(...)

setTextureWrap(...)

setTextureMinMagFilter(...)

setCompression()

loadData(...)

ofTexture(...)

operator=(...)

allocate(...)

allocate(...)

clear()

loadData(...)

loadScreenData(...)

draw(...)

draw(...)

bAllocated()

getHeight()

getWidth()

###ofTrueTypeFont###

__visible: true__

__methods__

loadFont(...)

setLineHeight(...)

getLetterSpacing()

setLetterSpacing(...)

getSpaceSize()

setSpaceSize(...)

stringWidth(...)

stringHeight(...)

getStringBoundingBox(...)

drawString(...)

drawStringAsShapes(...)

getCharacterAsPoints(...)

drawChar(...)

drawCharAsShape(...)

ofNextPow2(...)

unloadTextures()

reloadTextures()

drawChar(...)

drawCharAsShape(...)

loadFont(...)

ofNextPow2(...)

loadFont(...)

getLineHeight()

setLineHeight(...)

stringWidth(...)

stringHeight(...)

getStringBoundingBox(...)

drawString(...)

drawStringAsShapes(...)

//----------------------

##sound player##

###ofSoundPlayer###

__visible: true__

__methods__

setPlayer()

getPlayer()

loadSound(...)

setVolume(...)

setPan(...)

setSpeed(...)

setPaused(...)

setLoop(...)

setMultiPlay(...)

setPosition(...)

loadSound(...)

unloadSound()

play()

stop()

setVolume(...)

setPan(...)

setSpeed(...)

setPaused(...)

setLoop(...)

setMultiPlay(...)

setPosition(...)

getPosition()

getIsPlaying()

getSpeed()

getPan()

//----------------------

##sound stream##

###ofSoundStream###

__visible: true__

__methods__

ofSoundStream()

~ofSoundStream()

setSoundStream()

listDevices()

setDeviceID(...)

setup(...)

setInput()

setOutput()

start()

stop()

close()

getTickCount()

//----------------------

##utils##

###ofFile###

__visible: true__

__methods__

ofFile()

ofFile(...)

ofFile(...)

operator=(...)

~ofFile()

open(...)

changeMode(...)

close()

create()

exists()

path()

getExtension()

getFileName()

getBaseName()

getEnclosingDirectory()

canRead()

canWrite()

canExecute()

isFile()

isLink()

isDirectory()

isDevice()

isHidden()

setWriteable(...)

setReadOnly(...)

setExecutable(...)

copyTo(...)

moveTo(...)

renameTo(...)

remove(...)

getSize()

getPocoFile()

operator==(...)

operator!=(...)

operator<(...)

operator<=(...)

operator>(...)

operator>=(...)

readToBuffer()

writeFromBuffer()

getFileBuffer()

copyFromTo(...)

moveFromTo(...)

doesFileExist(...)

removeFile(...)

isWriteMode()

openStream(...)

copyFrom(...)

###ofFileDialogResult###

__visible: true__

__methods__

ofFileDialogResult()

getName()

getPath()

###ofThread###

__visible: true__

__methods__

ofThread()

~ofThread()

isThreadRunning()

startThread(...)

lock()

unlock()

stopThread(...)

waitForThread(...)

threadedFunction()

thread(...)

###ofFilePath###

__visible: true__

__methods__

getFileExt(...)

removeExt(...)

addLeadingSlash(...)

addTrailingSlash(...)

removeTrailingSlash(...)

getPathForDirectory(...)

isAbsolute(...)

getFilename(...)

getEnclosingDirectory(...)

getCurrentWorkingDirectory()

###ExtensionComparator###

__visible: true__

__methods__

operator()(...)

###ofBuffer###

__visible: true__

__methods__

ofBuffer()

ofBuffer(...)

ofBuffer(...)

ofBuffer(...)

~ofBuffer()

set(...)

set(...)

writeTo(...)

clear()

allocate(...)

getBinaryBuffer()

getText()

size()

getNextLine()

getFirstLine()

###ofHttpRequest###

__visible: true__

__methods__

ofHttpRequest(...)

getID()

###ofDirectory###

__visible: true__

__methods__

open(...)

close()

create()

exists()

path()

canRead()

canWrite()

canExecute()

isDirectory()

isHidden()

setWriteable(...)

setReadOnly(...)

setExecutable(...)

copyTo(...)

moveTo(...)

renameTo(...)

remove(...)

allowExt(...)

listDir(...)

listDir()

getName(...)

getPath(...)

getFile(...)

reset()

sort()

size()

numFiles()

getPocoFile()

operator==(...)

operator!=(...)

operator<(...)

operator<=(...)

operator>(...)

operator>=(...)

createDirectory(...)

isDirectoryEmpty(...)

doesDirectoryExist(...)

removeDirectory(...)

###ofURLFileLoader###

__visible: true__

__methods__

ofURLFileLoader()

get(...)

getAsync(...)

remove()

threadedFunction()

start()

stop()

update(...)

handleRequest()

###ofHttpResponse###

__visible: true__

__methods__

ofHttpResponse(...)

ofHttpResponse(...)

//----------------------

##types##

###ofBaseVideoPlayer###

__visible: true__

__methods__

ofBaseVideoPlayer()

~ofBaseVideoPlayer()

loadMovie(...)

close()

update()

play()

stop()

isFrameNew()

getPixels()

getTexture()

getWidth()

getHeight()

isPaused()

isLoaded()

isPlaying()

getPosition()

getSpeed()

getDuration()

getIsMovieDone()

setPaused(...)

setPosition(...)

setVolume(...)

setLoopState()

setSpeed(...)

setFrame(...)

getCurrentFrame()

getTotalNumFrames()

getLoopState()

firstFrame()

nextFrame()

previousFrame()

setPixelFormat()

###ofBaseVideoGrabber###

__visible: true__

__methods__

ofBaseVideoGrabber()

~ofBaseVideoGrabber()

listDevices()

initGrabber(...)

update()

isFrameNew()

getPixels()

close()

getHeight()

getWidth()

setVerbose(...)

setDeviceID(...)

setDesiredFrameRate(...)

videoSettings()

setPixelFormat()

getPixelFormat()

###ofBaseRenderer###

__visible: true__

__methods__

~ofBaseRenderer()

draw()

draw(...)

draw(...)

pushView()

popView()

viewport()

viewport(...)

setupScreenPerspective(...)

setupScreenOrtho(...)

getCurrentViewport()

getViewportWidth()

getViewportHeight()

setCoordHandedness()

getCoordHandedness()

pushMatrix()

popMatrix()

translate(...)

translate(...)

scale(...)

rotate(...)

rotateX(...)

rotateY(...)

rotateZ(...)

rotate(...)

setupGraphicDefaults()

setupScreen()

setRectMode()

getRectMode()

setFillMode()

getFillMode()

setLineWidth(...)

setBlendMode()

setLineSmoothing(...)

setCircleResolution(...)

enablePointSprites()

disablePointSprites()

setColor(...)

setColor(...)

setColor(...)

setColor(...)

setColor(...)

setHexColor(...)

getBgColor()

bClearBg()

background(...)

background(...)

background(...)

background(...)

setBackgroundAuto(...)

clear(...)

clear(...)

clearAlpha()

drawLine(...)

drawRectangle(...)

drawTriangle(...)

drawCircle(...)

drawEllipse(...)

drawString(...)

rendersPathPrimitives()

###ofBaseSoundOutput###

__visible: true__

__methods__

audioOut(...)

audioOut(...)

audioRequested(...)

###ofBaseImage###

__visible: true__

__methods__

###ofBaseSoundInput###

__visible: true__

__methods__

audioIn(...)

audioIn(...)

audioReceived(...)

###ofColor###

__visible: true__

__methods__

ofColor()

ofColor(...)

ofColor(...)

ofColor(...)

set(...)

set(...)

set()

setHex(...)

getHex()

clamp()

invert()

normalize()

lerp(...)

getClamped()

getInverted()

getNormalized()

getLerped(...)

getHue()

getSaturation()

getBrightness()

getLightness()

getHsb(...)

setHue(...)

setSaturation(...)

setBrightness(...)

setHsb(...)

setHsb(...)

operator=()

operator=(...)

operator==()

operator!=()

operator+()

operator+(...)

operator+=()

operator+=(...)

operator-()

operator-(...)

operator-=()

operator-=(...)

operator*()

operator*(...)

operator*=()

operator*=(...)

operator/()

operator/(...)

operator/=()

operator/=(...)

operator[](...)

fromHsb(...)

fromHex(...)

~ofColor()

###ofRectangle###

__visible: true__

__methods__

ofRectangle()

ofRectangle(...)

set(...)

set(...)

set()

setFromCenter(...)

setFromCenter(...)

getCenter()

inside()

inside(...)

operator=()

operator==()

operator!=()

ofRectangle(...)

~ofRectangle()

###ofSerialDeviceInfo###

__visible: true__

__methods__

ofSerialDeviceInfo(...)

ofSerialDeviceInfo()

getDevicePath()

getDeviceName()

getDeviceID()

###ofPoint###

__visible: true__

__methods__

~ofPoint()

ofPoint(...)

ofPoint(...)

set(...)

operator-()

operator==(...)

operator!=(...)

operator=(...)

operator=(...)

operator+(...)

operator+(...)

operator+=(...)

operator+=(...)

operator-(...)

operator-(...)

operator-=(...)

operator-=(...)

operator*(...)

operator*(...)

operator*=(...)

operator*=(...)

operator/(...)

operator/(...)

operator/=(...)

operator/=(...)

//----------------------

##math##

###ofMatrix4x4###

__visible: true__

__methods__

getLookAt(...)

decompose()

postMult(...)

operator*(...)

preMult(...)

setRotate(...)

setTranslation(...)

setTranslation(...)

rotate(...)

rotateRad(...)

rotate(...)

translate(...)

translate(...)

scale(...)

scale(...)

glRotate(...)

glRotateRad(...)

glRotate(...)

glTranslate(...)

glTranslate(...)

glScale(...)

glScale(...)

getRotate()

getTranslation()

getScale()

operator*=(...)

postMultTranslate(...)

postMultScale(...)

postMultRotate(...)

postMultTranslate(...)

postMultRotate(...)

postMultScale(...)

preMultScale(...)

preMultTranslate(...)

preMultRotate(...)

newIdentityMatrix(...)

newScaleMatrix(...)

newScaleMatrix(...)

newTranslationMatrix(...)

newTranslationMatrix(...)

newRotationMatrix(...)

newRotationMatrix(...)

newRotationMatrix(...)

newRotationMatrix(...)

newRotationMatrix(...)

getInverseOf(...)

getTransposedOf(...)

getOrthoNormalOf(...)

newOrthoMatrix(...)

newOrtho2DMatrix(...)

newFrustumMatrix(...)

newPerspectiveMatrix(...)

newLookAtMatrix(...)

transform3x3(...)

ofMatrix4x4()

ofMatrix4x4(...)

ofMatrix4x4(...)

ofMatrix4x4(...)

~ofMatrix4x4()

operator()(...)

getRowAsVec3f(...)

getRowAsVec4f(...)

isValid()

isNaN()

operator=(...)

set(...)

set(...)

set(...)

set(...)

getPtr()

isIdentity()

makeIdentityMatrix()

makeScaleMatrix(...)

makeScaleMatrix(...)

makeTranslationMatrix(...)

makeTranslationMatrix(...)

makeRotationMatrix(...)

makeRotationMatrix(...)

makeRotationMatrix(...)

makeRotationMatrix(...)

makeRotationMatrix(...)

makeInvertOf(...)

makeOrthoNormalOf(...)

makeFromMultiplicationOf(...)

getInverse()

makeOrthoMatrix(...)

makeOrtho2DMatrix(...)

makeFrustumMatrix(...)

makePerspectiveMatrix(...)

makeLookAtMatrix(...)

makeLookAtViewMatrix(...)

getOrtho(...)

getFrustum(...)

getPerspective(...)

###ofQuaternion###

__visible: true__

__methods__

getRotate(...)

getRotate(...)

getEuler()

slerp(...)

ofQuaternion()

ofQuaternion(...)

ofQuaternion(...)

ofQuaternion(...)

ofQuaternion(...)

operator=(...)

operator==(...)

operator!=(...)

operator<<(...)

operator>>(...)

asVec4()

asVec3()

set(...)

set(...)

get()

operator[](...)

x()

y()

z()

w()

zeroRotation()

operator*(...)

operator*=(...)

operator*(...)

operator*=(...)

operator/(...)

operator/=(...)

operator/(...)

operator/=(...)

operator+(...)

operator+=(...)

operator-(...)

operator-=(...)

operator-()

length()

length2()

conj()

inverse()

makeRotate(...)

makeRotate(...)

makeRotate(...)

makeRotate(...)

makeRotate_original(...)

###ofVec4f###

__visible: true__

__methods__

ofVec4f(...)

ofVec4f(...)

set(...)

set(...)

getPtr()

operator[](...)

operator==(...)

operator!=(...)

match(...)

operator+(...)

operator+=(...)

operator-(...)

operator-=(...)

operator-(...)

operator-=(...)

operator+(...)

operator+=(...)

operator-()

operator*(...)

operator*=(...)

operator*(...)

operator*=(...)

operator/(...)

operator/=(...)

operator/(...)

operator/=(...)

getScaled(...)

scale(...)

distance(...)

squareDistance(...)

getInterpolated(...)

interpolate(...)

getMiddle(...)

middle(...)

average(...)

getNormalized()

normalize()

getLimited(...)

limit(...)

length()

squareLength()

dot(...)

rescaled(...)

rescale(...)

normalized()

limited(...)

lengthSquared()

distanceSquared(...)

interpolated(...)

middled(...)

###ofVec3f###

__visible: true__

__methods__

ofVec3f(...)

ofVec3f(...)

getPtr()

operator[](...)

set(...)

set(...)

operator==(...)

operator!=(...)

match(...)

align(...)

alignRad(...)

operator+(...)

operator+=(...)

operator-(...)

operator-=(...)

operator*(...)

operator*=(...)

operator/(...)

operator/=(...)

operator-()

operator+(...)

operator+=(...)

operator-(...)

operator-=(...)

operator*(...)

operator*=(...)

operator/(...)

operator/=(...)

getScaled(...)

scale(...)

getRotated(...)

getRotatedRad(...)

rotate(...)

rotateRad(...)

getRotated(...)

getRotatedRad(...)

rotate(...)

rotateRad(...)

getRotated(...)

rotate(...)

getRotatedRad(...)

rotateRad(...)

getMapped(...)

map(...)

distance(...)

squareDistance(...)

getInterpolated(...)

interpolate(...)

getMiddle(...)

middle(...)

average(...)

getNormalized()

normalize()

getLimited(...)

limit(...)

getCrossed(...)

cross(...)

getPerpendicular(...)

perpendicular(...)

length()

squareLength()

angle(...)

angleRad(...)

dot(...)

rescaled(...)

rescale(...)

rotated(...)

rotated(...)

normalized()

limited(...)

crossed(...)

perpendiculared(...)

lengthSquared()

mapped(...)

distanceSquared(...)

interpolated(...)

middled(...)

rotated(...)

###ofVec2f###

__visible: true__

__methods__

ofVec2f(...)

ofVec2f(...)

getPtr()

operator[](...)

set(...)

set(...)

operator==(...)

operator!=(...)

match(...)

align(...)

alignRad(...)

operator+(...)

operator+=(...)

operator-(...)

operator-=(...)

operator*(...)

operator*=(...)

operator/(...)

operator/=(...)

operator+(...)

operator+=(...)

operator-(...)

operator-=(...)

operator-()

operator*(...)

operator*=(...)

operator/(...)

operator/=(...)

getScaled(...)

scale(...)

getRotated(...)

getRotatedRad(...)

rotate(...)

rotateRad(...)

getRotated(...)

rotate(...)

getRotatedRad(...)

rotateRad(...)

getMapped(...)

map(...)

distance(...)

squareDistance(...)

getInterpolated(...)

interpolate(...)

getMiddle(...)

middle(...)

average(...)

getNormalized()

normalize()

getLimited(...)

limit(...)

getPerpendicular()

perpendicular()

length()

squareLength()

angle(...)

angleRad(...)

dot(...)

rescaled(...)

rescale(...)

rotated(...)

normalized()

limited(...)

perpendiculared()

lengthSquared()

interpolated(...)

middled(...)

mapped(...)

distanceSquared(...)

rotated(...)

###ofMatrix3x3###

__visible: true__

__methods__

ofMatrix3x3(...)

set(...)

operator[](...)

transpose()

transpose(...)

determinant()

determinant(...)

invert()

inverse(...)

operator+(...)

operator+=(...)

operator-(...)

operator-=(...)

operator*(...)

operator*=(...)

operator*=(...)

operator*(...)

operator/(...)

operator/=(...)

operator/=(...)

//----------------------

##constants##

