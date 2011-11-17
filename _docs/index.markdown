
//----------------------

##application##

###ofBaseApp###

__visible: true__

__methods__

ofBaseApp()

~ofBaseApp()

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

###ofAppBaseWindow###

__visible: true__

__methods__

ofAppBaseWindow()

~ofAppBaseWindow()

setupOpenGL(...)

initializeWindow()

runAppViaInfiniteLoop(...)

hideCursor()

showCursor()

setWindowPosition(...)

setWindowShape(...)

getFrameNum()

getFrameRate()

getWindowPosition()

getWindowSize()

getScreenSize()

setFrameRate(...)

setWindowTitle(...)

getWindowMode()

setFullscreen(...)

toggleFullscreen()

enableSetupScreen()

disableSetupScreen()

//----------------------

##serial##

###ofSerial###

__visible: true__

__methods__

ofSerial()

~ofSerial()

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

ofStandardFirmata()

sendDigitalPinReporting(...)

ofArduino()

processSysExData(...)

~ofStandardFirmata()

sendDigitalPortReporting(...)

~ofArduino()

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

sendServo(...)

setDigitalHistoryLength(...)

sendServoAttach(...)

setAnalogHistoryLength(...)

sendServoDetach(...)

setStringHistoryLength(...)

getServo(...)

setSysExHistoryLength(...)

sendSysEx(...)

sendProtocolVersionRequest()

sendFirmwareVersionRequest()

sendSysExBegin()

sendSysExEnd()

sendValueAsTwo7bitBytes(...)

getSysEx()

getMajorProtocolVersion()

getMinorProtocolVersion()

getMajorFirmwareVersion()

getMinorFirmwareVersion()

getFirmwareName()

getDigitalHistory(...)

getAnalogHistory(...)

getSysExHistory()

getStringHistory()

getValueFromTwo7bitBytes(...)

//----------------------

##video##

###ofVideoGrabber###

__visible: true__

__methods__

ofVideoGrabber()

~ofVideoGrabber()

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

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

###ofVideoPlayer###

__visible: true__

__methods__

ofVideoPlayer()

start()

~ofVideoPlayer()

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

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

//----------------------

##graphics##

###ofImage###

__visible: true__

__methods__

ofImage()

loadImageIntoPixels(...)

~ofImage()

saveImageFromPixels(...)

allocate(...)

changeTypeOfPixels(...)

clear()

resizePixels(...)

getBmpFromPixels(...)

operator=(...)

putBmpIntoPixels(...)

clone(...)

allocatePixels(...)

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

ofImage(...)

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

###ofTexture###

__visible: true__

__methods__

ofTexture()

~ofTexture()

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

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

bind()

unbind()

getTextureData()

###ofTrueTypeFont###

__visible: true__

__methods__

ofTrueTypeFont()

drawChar(...)

~ofTrueTypeFont()

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

getCharacterAsPoints(...)

//----------------------

##sound player##

###ofSoundPlayer###

__visible: true__

__methods__

ofSoundPlayer()

initializeFmod()

~ofSoundPlayer()

closeFmod()

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

//----------------------

##utils##

//----------------------

##types##

###ofColor###

__visible: true__

__methods__

ofColor()

~ofColor()

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

###ofRectangle###

__visible: true__

__methods__

ofRectangle()

ofRectangle(...)

~ofRectangle()

//----------------------

##math##

//----------------------

##constants##

//----------------------

##events##

###ofEvent###

__visible: true__

__methods__

