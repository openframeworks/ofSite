
##application##

###ofBaseApp###

__visible: true__

__advanced: false__

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

__advanced: true__

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

###ofAppGlutWindow###

__visible: true__

__advanced: true__

__methods__

ofAppGlutWindow()

exitApp()

~ofAppGlutWindow()

display(...)

setupOpenGL(...)

mouse_cb(...)

initializeWindow()

motion_cb(...)

runAppViaInfiniteLoop(...)

passive_motion_cb(...)

hideCursor()

idle_cb(...)

showCursor()

keyboard_cb(...)

setFullscreen(...)

keyboard_up_cb(...)

toggleFullscreen()

special_key_cb(...)

setWindowTitle(...)

special_key_up_cb(...)

setWindowPosition(...)

resize_cb(...)

setWindowShape(...)

getWindowPosition()

getWindowSize()

getScreenSize()

getWindowMode()

getFrameNum()

getFrameRate()

setFrameRate(...)

enableSetupScreen()

disableSetupScreen()

__variables__

##serial##

###ofSerial###

__visible: true__

__advanced: false__

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

##arduino##

###ofArduino###

__visible: true__

__advanced: false__

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

sendServo(...)

setDigitalHistoryLength(...)

sendServoAttach(...)

setAnalogHistoryLength(...)

sendServoDetach(...)

setStringHistoryLength(...)

getServo(...)

setSysExHistoryLength(...)

sendDigitalPinMode(...)

sendAnalogPinReporting(...)

sendDigital(...)

sendPwm(...)

sendSysEx(...)

sendString(...)

sendProtocolVersionRequest()

sendFirmwareVersionRequest()

sendReset()

sendSysExBegin()

sendSysExEnd()

sendByte(...)

sendValueAsTwo7bitBytes(...)

getPwm(...)

getDigital(...)

getAnalog(...)

getSysEx()

getString()

getMajorProtocolVersion()

getMinorProtocolVersion()

getMajorFirmwareVersion()

getMinorFirmwareVersion()

getFirmwareName()

getDigitalHistory(...)

getAnalogHistory(...)

getSysExHistory()

getStringHistory()

getDigitalPinMode(...)

getAnalogPinReporting(...)

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

###ofStandardFirmata###

__visible: true__

__advanced: false__

__methods__

__variables__

##video##

###ofVideoGrabber###

__visible: true__

__advanced: false__

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

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

getHeight()

getWidth()

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

__advanced: false__

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

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

setPaused(...)

getCurrentFrame()

getTotalNumFrames()

firstFrame()

nextFrame()

previousFrame()

getHeight()

getWidth()

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

##graphics##

###ofImage###

__visible: true__

__advanced: false__

__methods__

ofImage()

loadImageIntoPixels(...)

~ofImage()

saveImageFromPixels(...)

allocate(...)

changeTypeOfPixels(...)

clear()

resizePixels(...)

ofImage(...)

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

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

draw(...)

draw(...)

getWidth()

getHeight()

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

__advanced: false__

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

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

draw(...)

draw(...)

bind()

unbind()

bAllocated()

getTextureData()

getHeight()

getWidth()

__variables__

texData

anchor

bAnchorIsPct

###ofTrueTypeFont###

__visible: true__

__advanced: false__

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

###ofTTFContour###

__visible: true__

__advanced: true__

__methods__

__variables__

pts

###ofTTFCharacter###

__visible: true__

__advanced: true__

__methods__

__variables__

contours

##sound player##

###ofSoundPlayer###

__visible: true__

__advanced: false__

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

##sound stream##

##utils##

###ofUtils###

__visible: false__

__advanced: false__

__methods__

__variables__

##types##

###ofBaseVideo###

__visible: true__

__advanced: true__

__methods__

~ofBaseVideo()

getPixels()

close()

__variables__

###ofColor###

__visible: true__

__advanced: false__

__methods__

ofColor()

~ofColor()

__variables__

r

g

b

a

###ofTypes###

__visible: false__

__advanced: false__

__methods__

__variables__

###ofPoint###

__visible: true__

__advanced: false__

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

###ofStyle###

__visible: true__

__advanced: true__

__methods__

ofStyle()

~ofStyle()

__variables__

color

polyMode

rectMode

bFill

blending

smoothing

circleResolution

lineWidth

###ofBaseHasPixels###

__visible: true__

__advanced: true__

__methods__

~ofBaseHasPixels()

getPixels()

__variables__

###ofBaseDraws###

__visible: true__

__advanced: true__

__methods__

~ofBaseDraws()

draw(...)

draw(...)

getHeight()

getWidth()

setAnchorPercent(...)

setAnchorPoint(...)

resetAnchor()

__variables__

###ofBaseUpdates###

__visible: true__

__advanced: true__

__methods__

~ofBaseUpdates()

update()

__variables__

###ofBaseHasTexture###

__visible: true__

__advanced: true__

__methods__

~ofBaseHasTexture()

getTextureReference()

__variables__

###ofRectangle###

__visible: true__

__advanced: false__

__methods__

ofRectangle()

ofRectangle(...)

~ofRectangle()

__variables__

x

y

width

height

##math##

##constants##

##events##

###ofEvent###

__visible: true__

__advanced: true__

__methods__

__variables__

###ofKeyEventArgs###

__visible: true__

__advanced: false__

__methods__

__variables__

key

###ofEventArgs###

__visible: true__

__advanced: false__

__methods__

__variables__

###ofAudioEventArgs###

__visible: true__

__advanced: false__

__methods__

__variables__

buffer

bufferSize

nChannels

###ofMouseEventArgs###

__visible: true__

__advanced: false__

__methods__

__variables__

x

y

button

###ofCoreEvents###

__visible: true__

__advanced: false__

__methods__

disable()

enable()

__variables__

setup

update

draw

exit

windowResized

keyPressed

keyReleased

mouseMoved

mouseDragged

mousePressed

mouseReleased

audioReceived

audioRequested

###ofResizeEventArgs###

__visible: true__

__advanced: false__

__methods__

__variables__

width

height

