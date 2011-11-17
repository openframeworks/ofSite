
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

__variables__

mouseX

mouseY

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

__variables__

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

__variables__

bVerbose

bInited

fd

oldoptions

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

__variables__

EDigitalPinChanged

_initialized

bUseDelay

EAnalogPinChanged

_port

connected

ESysExReceived

_portStatus

connectTime

EProtocolVersionReceived

_analogHistoryLength

_servoValue

EFirmwareVersionReceived

_digitalHistoryLength

_temp

EInitialized

_stringHistoryLength

_humidity

EStringReceived

_sysExHistoryLength

_waitForData

_executeMultiByteCommand

_multiByteChannel

_storedInputData

_sysExData

_majorProtocolVersion

_minorProtocolVersion

_majorFirmwareVersion

_minorFirmwareVersion

_firmwareName

_sysExHistory

_stringHistory

_analogHistory

_digitalHistory

_digitalPinMode

_digitalPinValue

_digitalPortValue

_digitalPortReporting

_digitalPinReporting

_analogPinReporting

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

__variables__

height

bChooseDevice

width

deviceID

bUseTexture

tex

bVerbose

bGrabberInited

pixels

bIsFrameNew

ucGrabber

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

__variables__

width

bStarted

height

bPlaying

speed

bPaused

bLoaded

bIsFrameNew

nFrames

gstData

pixels

bIsMovieDone

bHavePixelsChanged

isStream

tex

gstPipeline

bUseTexture

gstSink

allocated

durationNanos

loopMode

posChangingPaused

seek_mutex

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

__variables__

width

myPixels

height

type

bUseTexture

bpp

tex

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

__variables__

texData

anchor

bAnchorIsPct

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

__variables__

bLoadedOk

charOutlines

bAntiAlised

lineHeight

bFullCharacterSet

cps

nCharacters

texNames

fontSize

bMakeContours

border

visibleBorder

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

__variables__

isStreaming

bMultiPlay

bLoop

bLoadedOk

bPaused

pan

volume

internalFreq

speed

length

result

channel

sound

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

__variables__

r

g

b

a

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

__variables__

x

y

z

v

###ofRectangle###

__visible: true__

__methods__

ofRectangle()

ofRectangle(...)

~ofRectangle()

__variables__

x

y

width

height

//----------------------

##math##

//----------------------

##constants##

//----------------------

##events##

###ofEvent###

__visible: true__

__methods__

__variables__

