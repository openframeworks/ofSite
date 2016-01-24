---
.. date: 2012/02/23 10:00:00
.. title: 오픈프레임웍스는 어떻게 동작하는가
.. summary: 오픈프레임웍스 코드의 일반적인 패턴 설명
.. author: Arturo Castro
.. author_site: http://arturocastro.net
---

<!-- openFrameworks is an open source C++ toolkit designed to assist the creative process by providing a simple and intuitive framework for experimentation. The toolkit is designed to work as a general purpose glue, and wraps together several commonly used libraries.  -->
오픈프레임웍스는 오픈소스 C++ 툴킷으로, 실험적인 작업을 위한 간단/집중적인 프레임워크를 제공하여 창의적인 프로세스를 돕도록 디자인되었습니다. 툴킷은 범용적인 접착체의 역할로써 동작하도록 디자인되었으며, 몇가지 범용적인 라이브러리들을 포함합니다.

<!-- openFrameworks uses a few patterns so it's easy to understand how things work. Once you understand what these patterns are, it should be easier to use any of the functionality in openFrameworks. -->
오픈프레임웍스는 몇가지의 패턴을 사용하므로, 어떻게 동작하는지 쉽게 이해할 수 있습니다. 이러한 패턴을 한번 이해하면, 분명 쉽게 다양한 방법으로 오픈프레임웍스를 활용할 수 있을것입니다.
<!-- If you are a developer contributing to OF then this document will also be useful to you, to know how to code your classes so they behave in a consistent way with the rest of openFrameworks -->
만약 오픈프레임웍스 제작에 공헌하고 있는 개발자라면, 이 문서가 많이 도움이 될것입니다. 여러분의 클래스가 코드가 어떻게 사용되는지 이해할 수 있으므로, 오픈프레임웍스의 다른 부분들과 일관적으로 잘 동작할 수 있기 때문입니다.

## setup, update, draw

<!-- Most functionality in openframeworks works using this pattern. In every example ofApp there's also always setup, update and draw methods. -->
오픈프레임웍스에서 대부분의 동작은 이러한 패턴을 갖습니다. 모든 예제의 ofApp에는, setup, update, draw메소드를 갖고 있습니다.

### setup()

<!-- The setup method is called only once at the beginning of the application and it's used to initialize other objects or variables usually declared in `ofApp.h`. -->
setup 메소드는 프로그램의 시작지점에서 한번만 호출되며, 대부분 `ofApp.h`에서 선언된 객체나 변수들을 초기화하는데 사용됩니다.

__ofApp.h__

~~~~{.cpp}
ofVideoPlayer player;
int counter;
~~~~

__ofApp.cpp__

~~~~{.cpp}
void ofApp::setup(){
    player.loadMovie("movie.mov");
    counter = 0;
}
~~~~

<!-- In C++ it's super important to initialize variables since by default they are not initialized. For example, if we don't do `counter = 0;`, `counter` can have any value. -->
C++ 에서는, 변수를 초기화하는것이 매우 중요한데, 기본적으로 초기화되지 않기 때문입니다. 예를들어 `counter = 0;`을 하지 않으면, `counter`변수에는 어떠한 값도 갖고 있지 않습니다.

### update/draw()

<!-- Update and draw are called in an infinite loop one after another in that order, until we finish the application. -->
update와 draw는 프로그램이 종료되기 전까지 매번 무한반복으로 호출됩니다.

<!-- Update is meant to be used for updating the state of our application, do any calculations we need to do and update other objects like video players, grabbers, or any computer vision analysis we might be doing... -->
updatefks, 동작하는 프로그램의 상태를 업데이트할때 사용된다는 의미입니다. 에를들어 vidwo player나 grabber 사용할때, 또는 다른 컴퓨터 비전 분석과 같은 것들을 수행할때 어떤 계산을 하여 이러한 오브젝트들을 업데이트할 필요가 있죠.

<!-- In draw we draw to the screen. -->
draw에서는, 화면에 뭔가를 그립니다.

__ofApp.h__

~~~~{.cpp}
float x;
~~~~

__ofApp.cpp__

~~~~{.cpp}
void ofApp::setup(){
    x = 0;
}

void ofApp::update(){
    x++;
}

void ofApp::draw(){
    ofCircle(x,120,30);
}
~~~~

<!-- will draw a circle at y=120 moving from the left to the right of the screen. -->
위 코드는 원 하나를 y=120에 그리며, 이 원은 좌측에서 우측으로 움직이게 됩니다.

## 클래스

<!-- openFrameworks is mostly organized in classes. There's 3 types of classes: -->
오픈프레임웍스는 대부분 클래스로 구성되어 있습니다. 클래스는 3가지 타입이 있습니다:

### 유틸리티 클래스

<!-- These are classes that do something. They are classes like ofVideoGrabber, ofVideoPlayer, ofSoundPlayer, ofImage... Most of these classes work using the setup/update/draw pattern. Of course, for some of them draw won't make sense, e.g. an ofSoundPlayer doesn't have a draw method. -->
이것들은 뭔가를 하는 클래스들입니다. ofVideoGrabber, ofVideoplayer, ofSoundPlayer, ofImage.. 등등의 클래스가 있습니다. 대부분의 이러한 클래스들은 setup/update/draw의 패턴을 사용하여 동작합니다. 당연히, 이들중 몇몇은 그렇지 않은경우가 있는데, 예를 들어 ofSoundPlayer의 경우 draw메소드를 갖고 있지 않습니다.

<!-- These classes also follow a shared pointer pattern. That means that when they are copied the copy is actually what is called a shallow copy. A shallow copy is only a reference to the object, not a copy of its contents. -->
이러한 클래스들은 또한 shared pointer 패턴을 따릅니다. 이 말은, 이것들이 복제될 때에는, 실제로 shallow copy된다는 의미입니다. shallow copy는 객체의 레퍼런스를 의미하는것이지, 그 콘텐츠 자체를 복제한다는 의미가 아닙니다.

<!-- For example, if you copy a video player and then modify the copy somehow that will also modify the original: -->
예를들어, video player하나를 복사하고, 이 복제된 것을 수정할려면 이렇게 하면 됩니다:

__ofApp.h__

~~~~{.cpp}
ofVideoPlayer player;
~~~~

__ofApp.cpp__

~~~~{.cpp}
void ofApp::update(){
    ofVideoPlayer player2 = player;
    player2.setFrame(100);
}
~~~~

<!-- will set the current frame to 100 both in player and player2 since actually both player and player2 are a reference to the same object -->
위 코드는 player와 player2 모두를 100프레임으로 설정하는것입니다. player와 player2는 사실 레퍼런스이므로 같은 오브젝트입니다.

### 자료 컨테이너(Data containers)

<!-- This classes contain data and can do some operations on the data they contain. Examples are classes like ofPixels or ofBuffer. -->
이 클래스들은 데이터를 보관하고, 보관하고 있는 데이터들의 연산을 수행할 수 있습니다. 예로는 ofPixels나 ofBuffer가 있습니다.

<!-- This classes follow an allocate/loadData pattern. Allocate reserves memory in the container to then put data in it using loadData. The names of these functions change depending on the class but the functionality is the same. Copying this classes makes a depth copy, that means that a copy is a whole new object with the same contents as the original so modifying the copy won't touch the original. -->
이 클래스들은 allocate/loadData 패턴을 따릅니다. 할당(allocate)는 컨테이너 내에 메모리를 예약하고 loadData를 사용해 데이터를 넣습니다. 이러한 함수들의 이름은 클래스에 따라 변경되지만, 기능은 동일합니다. 이 클래스를 복제할때는 depth copy를 합니다. 이 말은 복제를 할때 오브젝트 전체를 원본의 내부의 콘텐츠와 동일하게 복사한다는 의미이며, 카피본을 수정해도 원본은 수정되지 않습니다.

__ofApp.h__

~~~~{.cpp}
ofPixels pixels1, pixels2;
ofTexture tex1, tex2;
~~~~

__ofApp.cpp__

~~~~{.cpp}
void ofApp::setup(){
    pixels1.allocate(640,480,OF_IMAGE_COLOR)
    pixels1.set(0);
    pixels2 = pixels1;
    pixels2.setColor(10,10,ofColor(255,255,255));
    
    tex1.allocate(640,480,GL_RGB);
    tex2.allocate(640,480,GL_RGB);
    tex1.loadData(pixels1);
    tex2.loadData(pixels2);
}

void ofApp::draw(){
    tex1.draw(0,0);
    tex2.draw(660,0);
}
~~~~

<!-- will draw a completely black image in the left of the screen and a black image with a white pixel at 10,10 in the right. When we call `pixels2 = pixels1`,  `pixels2` is allocated with the same size and number of channels as `pixels1` and the data in `pixels1` is copied to `pixels2`. -->
위 코드는 화면 좌측에 완전히 까만 이미지를 그리고, 우측에는 10,10에 흰 픽샐이 있는 까만 이미지를 그립니다. `pixels2 = pixels1` 호출할때, `pixels2`는 `pixels1`과 완전히 동일한 크기와 채널갯수를 할당받습니다. 이후 `pixels1`의 데이터가 `pixels2`로 복사됩니다.

### GL 데이터 컨테이너(GL Data containers)

<!-- GL data containers are a special case of data containers. The functionality is pretty similar to other data containers and they also follow the allocate/loadData pattern. These are classes like ofTexture, ofFbo, ofVbo or ofVboMesh. All of them are in the gl folder, although not everything in the gl folder is a data container, like ofShader or ofLight, which are GL utility classes and usually behave exactly the same as other utility classes. -->

GL 데이터 컨테이너는 데이터 컨테이너의 특별한 케이스입니다. 기능은 다른 데이터 컨테이너와 매우 흡사하며, 마찬가지로 allocate/loadData패턴을 따릅니다. 이러한 클래스들의 예로는 ofTexture, ofFbo, ofVbo, ofVboMesh등이 있습니다. 이러한 것들은 gl폴더에 담겨있으며, ofShare나 oflight같이 다른 유틸리티 클래스처럼 동작하는 GL 유틸리티 클래스들도 함께 같은 위치에 담겨있습니다.

<!-- The main difference between GL data containers and other data containers is that GL data containers follow a shallow copy pattern. The main reason for this is performance, making a copy of resources in the GPU is usually slow so we don't copy them by default. -->
이러한 GL 데이터 컨테이너와 다른 데이터 컨테이너의 주 차이점은, GL 데이터 컨테이너는 shallow copy 패턴을 갖는다는 것입니다. 이는 퍼포먼스 때문인데, GPU상에서 자원을 복사하는것은 일반적으로 매우 느리기 때문입니다.

<!-- For example: -->
예를 들어봅시다:

__ofApp.h__

~~~~{.cpp}
ofTexture tex1, tex2;
~~~~

__ofApp.cpp__

~~~~{.cpp}
void ofApp::setup(){
    tex1.allocate(640,480,GL_RGB);
    ofPixels pixels;
    pixels.allocate(640,480,OF_IMAGE_COLOR);
    pixels.set(0);
    tex1.loadData(pixels);
    tex2 = tex1;
    pixels.setColor(10,10,ofColor(255,255,255));
    tex2.loadData(pixels);
}

void ofApp::draw(){
    tex1.draw(0,0);
    tex2.draw(660,0);
}
~~~~

<!-- will draw a black rectangle with a white pixel at 10,10 in both left and right sides of the screen. This is because in this case we are copying the GL resource, which is actually just a reference to the texture ID of the first texture, not a full copy, so when modifying it we are also modifying the original. -->
위 코드를 실행하면 10,10에 흰 픽셀을 갖는 검은 사각형이 좌우 모두에 그려집니다. 이는 GL 리소스를 복사할 때, full copy가 아닌, 텍스쳐 ID 레퍼런스를 사용하기 때문입니다. 따라서 복사본을 수정 하면, 원본도 함께 변경됩니다.

### 데이터 타입

<!-- These are classes that represent types in openFrameworks like ofRectangle, ofVec3f or ofMatrix4x4. -->
이런 클래스들은 타입을 나타내는 클래스로 오픈프레임웍스에서는 ofRectangle, ofVec3f, ofMatrix4x4등이 있습니다.

## 함수

<!-- Some functionality in openFrameworks is provided through plain C functions. This are usually utility functions like ofToString(), ofRandom(), ofDrawBitmapString() and simple draw functions like ofCircle(), ofDrawRectangle(). -->
오픈프레임웍스에서 일부 기능들은 순수 C함수로 제공됩니다. 이것들은 일반적으로 ofToString(), ofRandom(), ofDrawBitmapString()과 같은 유틸리티 함수들 및  ofcircle(), ofDrawRectangle()과 같은 단순한 그리기 관련 함수들입니다.
