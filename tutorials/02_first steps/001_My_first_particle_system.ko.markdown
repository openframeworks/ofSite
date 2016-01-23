---
date: 2012/02/24 10:00:00
title: 파티클 시스템을 만들어보는 첫 단계
summary: 첫 단계로 파티클 시스템을 만들어보는것보다 재미난게 있을까요 ?
author: Patricio Gonzalez Vivo
author_site: http://patriciogonzalezvivo.com
---

이 문서에서는, openFrameworks 다운로드와, IDE 셋업 및 프로젝트 예제를 컴파일하는 방법을 이미 읽어보신분에게 적합합니다. 이제 바로 재밌는 것들을 한번 만들어 볼 시간입니다!

## 1. 무언가를 그려보자
뭔가를 그리는것부터 시작해보죠. 만약 뭔가 그리고 싶은게 있다면, 'void ofApp::draw()'함수에 코드를 작성하면 됩니다. 바로 아래의 파일에다가요.

```ofApp.cpp```.
 
그래픽 버전의 "hello World."를 그려보죠. 아래 코드는 파란색 원을 그립니다:

~~~~{.cpp}
	void ofApp::draw(){
		ofBackground(0);
		ofSetColor(0,0,255);
		ofFill();
		ofCircle(100, 100, 30);
	}
~~~~

프로세싱에 대해 조금 알고 계신분들이라면 위 코드가 뭔가 친숙할겁니다. 단지 차이점이라면 "of"라는 접두사가 있다는 점 뿐입니다.

첫번째 라인에서 'ofBackground(0);'이라는 코드로 배경을 검은색으로 채웠습니다. 'ofBackground(76,63,72);'와 같이 RGB값을 입력할 수도 있습니다. 또는 'ofBackground(ofColor::black);'과 같이 직접 색을 입력할 수도 있습니다.

배경을 그린 이후에는 'ofSetColor(int r, int g, int b)'를 작성하여 색을 지정합니다. 이 값는 새로운 값을 지정하기 전까지는 변하지 않습니다. openFrmaworks는 OpenGL의 방식을 기반으로 하는데, OpenGL은 한번 지정된 사항은 다시 변경되기 전까지는 그 상태를 유지합니다. 처음에는 이게 좀 이상하게 느껴질지 모르겠지만, 자꾸 사용하다보면 이것이 속성을 다루는데 있어서 상당히 좋고 효율정인 방법이라는 것을 알아차릴수 있으실 겁니다. ofBackgroundColor와 마찬가지로, 'ofSetColor(ofColor:blue);'라고 지정할 수도 있습니다. 이렇게 하면 원의 색을 바꿉니다.

다음 라인의, 'ofFill();'은 도형의 색을 지정하게 됩니다(도형을 채우는 색). 반대로 'ofNoFill();'은 도형의 외곽선만 그리라는 명령어입니다. 'ofSetlineWidth(4)'라는 명령어를 사용하여 외곽선의 두께를 변경할 수도 있습니다.

배경색과 그릴 도형의 색을 지정한 수, 지름이 30이고, 중심이 '100, 100'인 원을 그립니다.

![Image: coordinates.jpg](001_images/coordinates.png)

아마도 알아차리셨겠지만, 'x'와 'y' 좌표는 화면의 좌측상단을 '0,0'으로 하고 있습니다.

만약에 '1024, 768'의 윈도우가 있고, 화면의 정 중앙에 뭔가를 그리고 싶다면: 'ofCircle(1024/2, 768/2, 30);'라고 작성하면 됩니다. 그런데 만약에 윈도우의 창 크기가 변하게 된다면 어떻게 될까요? 숫자로 직접 입력하였기 때문에 원은 더이상 화면의 중앙에 위치하지 않게됩니다.


'ofGetWindowWidth()'와 'ofGetWindowHeight()은 그래서 아주 유용합니다. 이 함수들은 현재의 윈도우창의 가로와 세로 크기를 리턴해줍니다. 뿐만아니라 'ofGetScreenWidth()'와 'ofGetScreenHeight()'이라는 아주 흡사한 함수도 있습니다. 이 함수들은 윈도우가 아닌 모니터 전체의 가로, 세로 사이즈를 리턴해줍니다.

자 이제 우리가 방금 배운것들을 사용해볼 시간입니다 :

~~~~{.cpp}
	void ofApp::draw(){
		ofBackground(30,10,30);
		ofSetColor(ofColor::blue);
		ofFill();
		ofCircle( ofGetWindowWidth()*0.5, ofGetWindowHeight()*0.5, 30);
	}
~~~~
자, 이제 윈도우의 창크기를 변화시켜보면, 작은 파란색 원은 계속 화면의 중앙에 위치하게 됩니다. 축하!!

이제 [www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/)에 있는 "Graphics"섹션을 한번 둘러봅시다. 'ofLine()'이나 'ofRect()'와 같이 그리는것과 관련된 엄청나게 많은 메서드(함수)들을 보실 수 있습니다.

openFrameworks의 문서을 보시면, 모든 함수와 클래스들이 일관성있게 동작함을 알아차릴 수 있을것 입니다. 자꾸 시도하고 갖고 놀다보면, "oF 스타일"에 금방 익숙해질 수 있을것입니다.

도전해보세요 : 문서[www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/)를 참조하셔서, 디지털 버젼의 칸딘스키 그림을 한번 그려보십시오. 약간의 고급 팁을 드리자면 'ofEnableSmoothing()'이라는 함수는 모든 경계를 부드럽게 만들어주고, 'ofBackgroundGradient(ofColor::white, ofColor(255, 255, 200), OF_GRADIENT_CIRCULAR);'는 멋진 그라디언트 배경을 그려줍니다.

![Image:kandisky.jpg](001_images/kandinsky.jpg)
 

## 2. 물체를 움직여봅시다. 

지금까지는 아주 좋았습니다만. 아직까지 정적이고 인터랙티브 요소들이 없어서 아마 좀 지루하셨을지도 모르겠습니다. 이제 이것들을 한번 움직여봅시다.

모든 openFrameworks 프로그램은 'mouseX'와 'mouseY' 두 변수를 사용할 수 있습니다. 이전 예제로 돌아가 'ofApp::draw()'안에 이 변수들을 사용해볼까요?

~~~~{.cpp}
	void ofApp::draw(){
		ofBackground(30,10,30);
		ofSetColor(ofColor::blue);
		ofFill();
		ofCircle( mouseX, mouseY, 30);
	}
~~~~

같은방식으로 사각형 ('ofrect(mouseX, mouseY, 30, 30);')에 적용해보면, 사각형의 중심이 마우스 포인터의 위치와 맞지 않음을 알 수 있을것입니다. 이는 기본적으로 사각형을 그릴때 좌상단을 중심점으로 사용하기 때문입니다.

다행이도 이와 관련한 옵션이 있습니다. 앵커 포인트를 도형의 중앙으로 설정하기 위해`ofSetRectMode(OF_RECTMODE_CENTER);`를 사용하면 됩니다.  

아마도 앞으로 "OF_"로 시작하는, 그리고 대문자로만 이루어진 것들을 자주 보실 수 있을겁니다. 이것은 여러분이 미리 지정된 타입과 모드들을 다룬다는것을 의미합니다.
좀더 살펴보고 싶으시다면 여러분이 사용하는 IDE의 자동완성 기능에 나타나는 리스트나, "jump to definition"과 같은 기능들을 사용해 보시기 바랍니다.

지금까지는 'draw()'메서드 만을 사용하고 있습니다만, 더 놀라운 것들을 해보기 위해 'update()'와 'setup()'에 대해 알아봐야 합니다. 자 원의 요소로 사용할 'x'와 'y'변수를 만들어봅시다. 만약 이 변수들을 'draw()'나 'update()'메서드에 사용하면, 매 루프가 끝날때마다 이 변수들은 삭제되고 새로 만들어짐을 반복합니다. 만약 이 변수들을 매 루프마다 살려두고 싶다면 ofApp의 최상단에 지정할 필요가 있습니다. 가장 최상의 위치는 'ofApp.h'파일 내부에 지정하는 것입니다. 아래와 같이요:


~~~~{.cpp}
	class ofApp : public ofBaseApp{
	public:
		void setup();
		void update();
		void draw();

		void keyPressed  (int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);

		float xPos;
		float yPos;
	};
~~~~

우리는 이 두 변수에 공의 마지막 위치를 지정해두고, 마우스가 움직일때마다 공이 마우스를 따라가도록 할 것입니다.

~~~~{.cpp}
	void ofApp::setup(){
		// Smooth edges
		ofEnableSmoothing();

	    // Fixed framerate
		ofSetFrameRate(30);

		// Initial x position of the ball
		xPos = ofGetWindowWidth()*0.5;

		// Initial y position of the ball
		yPos = ofGetWindowHeight()*0.5; 
	}

	void ofApp::update(){
		xPos += ( mouseX - xPos )*0.1;
		yPos += ( mouseY - yPos )*0.1;
		// We calculate the x and y distance 
		// of the ball to the mouse position and 
		// add a little portion of it to the x and y 
		// variables
	}

	void ofApp::draw(){
		ofBackgroundGradient(ofColor::gray,ofColor(30,10,30), OF_GRADIENT_CIRCULAR);
		ofSetColor(200,200,124);
		ofFill();
		ofCircle( xPos, yPos, 30);
	}
~~~~

멋지죠? <br/>
아주 흔한 또다른 인터랙션은 키보드를 사용하는 것입니다. openFrameworks는 키보드와 마우스 이벤트를 받기 위한 기본 메서드들을 가지고 있습니다. 'ofApp.cpp'파일의 하단부을 살펴봐 주십시오. 'keyPress()', 'keyRelease()', 'mouseMove()', 'mouseDragged()', mousePressed()', 'mouseReleased()'이벤트들을 보실 수 있을것입니다.

여기서는 'ofRandom()'과 'ofNoise()'를 이용하여 랜덤한 인터랙션을 추가할 수 있습니다. 저는 문서를 읽어보시는걸 강력히 추천하고 싶네요([www.openframeworks.cc/documentation/](http://www.openframeworks.cc/documentation/) ) 또한 `openFrameworks/examples/math`에 위치한 Golan의 ofNoise 예제도 한번 확인해보시기 바랍니다. 

자, 뭔가 정말 간단한 것들을 추가해봅시다. 마우스를 누를때마다 공은 랜덤한 위치로 이동합니다.
~~~~{.cpp}
	void ofApp::mousePressed(int x, int y, int button){
		xPos = ofRandom( ofGetWindowWidth() );
		yPos = ofRandom( ofGetWindowHeight() );
	}
~~~~

도전해보세요 : 이제 우리는 클래스의 어디에서나 접근할 수 있는 변수를 만드는 방법을 배웠습니다. 이제 어떤 가능성이 있는지 생각해 볼 필요가 있습니다. 예를들어, 칸딘스키-스타일의 프로젝트에서 마우스를 누를때마다 도형들이 새로운 위치로 이동하도록 할 수 있겠지요. 또한 그것들에 몇가지 간단한 애니메이션을 추가해보시기 바랍니다.

## 3. 클래스가 있어서 정말 다행이야

코드를 작성하다보면 매번 똑같이 반복되는 코드들을 사용해야 하는 상황에 직면하게 됩니다. 운좋게도 컴퓨터에게 반복이란 쉽습니다. <br/>
앞으로 객체 지향프로그래밍(C++의 주요 기능입니다)에 대해서 다룰 예정인데요, 다루기 쉽고, 보다 가독성이 좋으며, 코드의 반복이 적습니다.

공을 한번 상상해보죠.<br/>
공은 위치(position)와 색(color)을 갖는 둥근 물체이며, 움직이는 행위(move)를 합니다. 이러한 함축적인 것들을 이렇게 지정해봅시다:

Ball:
- position (위치/ 속성)
- color (색/ 속성)
- move (함수 또는 메서드)

이것이 바로 오브젝트를 만드는 리스트들이 들어있는 `.h`파일입니다. 우리의 프로젝트들에 두 파일을 한번 추가해봅시다.(방법은 여러분이 사용하는 IDE에 따라 다릅니다). 하나는 `ball.h`라는 `.h`파일이고(여기에 공의 요소들을 정의할 것입니다), 나머지 하나는 `ball.cpp`라는 `.cpp`파일입니다(여기에는 `.h`에서 정의한 요소들이 어떻게 동작하는지를 정의할 것입니다). 

![Image:kandisky.jpg](001_images/newFile.png)

`ball.h`파일은 이렇게 작성되어야 합니다:

~~~~{.cpp}
	#ifndef ball_h
	#define ball_h

	#include "ofMain.h"

	class Ball {
	public:
    		// 생성자
    		Ball();     
    
    		// 메서드(함수)
    		void moveTo();
    		void draw();
    
    		// 속성
    		int x;
    		int y;
    		ofColor color;
	};
	#endif
~~~~

축하합니다! 여러분은 방금 자신만의 클래스를 만들었습니다! 하지만 새로운 몇가지 것들이 있습니다. 첫부분의 두 라인인데요. `#ifndef..`는 컴파일러로 하여금 이 파일을 중복해서 복사하는것을 방지하도록 합니다. 이는 C++에서 사용하는 표준 사용예이고, 여러분은 그냥 내버려 두면 됩니다. 이는 그냥 "야 컴파일러, 이것들 두번 컴파일하지마, 그리고 컴파일할려면 ofMain.h 헤더파일이 필요할거야"라고 말하는 것과 같습니다. `ofMain.h`를 include 하면, openFrameworks에 정의된 모든 오브젝트와 메서드들을 사용할 수 있게 됩니다. 이렇게 되면 당신의 코드들은 단지 C++코드가 아닌, 환상적인 일들이 가능한 oF-based 코드가 됩니다.

오브젝트를 생성하기 위해선 클래스의 생성자를 호출해야 합니다. 생성자 `Ball()`은 Ball클래스를 생성하고, 실행할 때 가장 먼저 실행되는 녀석입니다. 이는 마치 `int i;`라고 작성했을 때 `i`가 자동으로 0으로 초기화 되는것과 같습니다. int의 생성자가 이러한 일을 합니다.<br/>
여기서 속성들은 은 반드시 친숙하게 보입니다만, 새로운 메서드가 있네요, 바로 `draw()`함수입니다.

중요 : 클래스 정의의 끝에 `};`가 보이시나요? 이건 정말로 중요합니다! `;`가 없으면, 추적하기 까다로운 엄청난 에러들을 보실 수 있으실겁니다.

`ball.cpp`파일 내부에, 모든것들을 준비해봅시다:

~~~~{.cpp}
	#include "ball.h"

	Ball::Ball(){
		// 초기 색을 지정합니다
		color.set( ofRandom(255), ofRandom(255), ofRandom(255));
    
		// 공의 x위치를 초기화합니다.
		x = ofRandom( ofGetWindowWidth() ); 
    
		// 공의 y위치를 초기화합니다.
		y = ofRandom( ofGetWindowHeight() ); 
	}

	void Ball::moveTo(){
    
	}

	void Ball::draw(){
		ofSetColor(color);
		ofFill();
		ofCircle( x, y, 30);
	}
~~~~

여기에서 보시다시피, `ball.h`에서 정의된 메서드들을 실제로 구현하고 있습니다.<br/>
우리는 컴파일러에게 두가지를 일러주어야 합니다:

- `#include "ball.h"` : 이는 "ball.h"파일에 대한 코드라는것을 알려줍니다..

- `Ball::` : 컴파일러에게 이 메서드는 `Ball`클래스에 들어있는 것이라고 알려줍니다. tells the compiler that this method is from `Ball` class. 이는 마치 이름의 성과 같다고 생각하시면 됩니다.

마지막으로 해야할일은 `ofApp.h`에 `#include "ball.h"`를 추가하는 것입니다.

~~~~{.cpp}
	#pragma once

	#include "ofMain.h"

	#include "ball.h" // Add this

	class ofApp : public ofBaseApp{
  	public:
    		void setup();
    		void update();
    		void draw();

    		void keyPressed  (int key);
    		void keyReleased(int key);
    		void mouseMoved(int x, int y );
    		void mouseDragged(int x, int y, int button);
    		void mousePressed(int x, int y, int button);
    		void mouseReleased(int x, int y, int button);
    		void windowResized(int w, int h);
    		void dragEvent(ofDragInfo dragInfo);
    		void gotMessage(ofMessage msg);
    
    		Ball theBall;	// 이전의 변수를 새로운 오브젝트로 변경합니다.
							// 새 오브젝트는 이전의 정보들을 담고 있습니다.
	};
~~~~

`ofApp.cpp`에는 이렇게 내용을 추가하여 수정합니다:

~~~~{.cpp}
	void ofApp::setup(){
		// 경계를 부드럽게 한다.
		ofEnableSmoothing();

		// 프레임레이트를 고정한다.
		ofSetFrameRate(30);

		// 공의 위치는 초기화할 필요가 없다.
		// 클래스 Ball의 생성자에서 그 역할을 해주기 때문이다.
	}

	void ofApp::update(){
		theBall.x += ( mouseX - theBall.x )*0.1;    
		theBall.y += ( mouseY - theBall.y )*0.1;
	}

	void ofApp::draw(){
		ofBackgroundGradient(ofColor::gray,ofColor(30,10,30), OF_GRADIENT_CIRCULAR);
    		
		// 우리는 이미 그림을 그리는 역할을 하는 메서드를 클래스 내부에 갖고 있습니다.
		theBall.draw();
	}
~~~~

자 이제 우리는 일반적인 자동으로 랜덤한 값과 함께 생성된 오브젝트를 갖게 되었습니다. 하지만, 만약 우리가 오브젝트의 내부 정보에 접근하기 위해서는 `object.property`나 `object.method()`를 사용해야 합니다. (`오브젝트의 속성` 또는 `오브젝트의 메서드`)<br/>
다시말해서, 매번 새 공을 만들고 싶다면, 그냥 하나 만들고 그리면 되는것입니다! 멋지지 않나요?

마지막으로 어떠한 파라메터들을 오브젝트의 메서드로 전달하는 방법에 대해서 알아봅시다. `ofApp::update()`에서 우리는 `x`와 `y` 속성을 dot-syntax `.`로 변경하고 있습니다. 이건 뭐 나쁘진 않지만, `myBall.moveTo(mouseX, mouseY)`처럼 좀더 이해하기 쉽고, 직관적인 방법으로 작성해보는건 어떨까요?<br/>
한번 `ball.h`와 `ball.cpp`를 변경해봅시다.

~~~~{.cpp}
	void Ball::moveTo(int _xDestiny, int _yDestiny){
		x += ( _xDestiny - x )*0.1;
		y += ( _yDestiny - y )*0.1;
	}
~~~~

ofApp 프로젝트에서는 이렇게 사용합니다.

~~~~{.cpp}
	void ofApp::update(){
    		theBall.moveTo(mouseX,mouseY);
	}
~~~~


## 4. 물리를 적용해봅시다.

앞으로 진행할 파티클 시스템을 만드는 법을 알아보기 전에 알려드릴 좋은 소식이 있습니다. 여러분이 뭔가 멋진 물리적인 효과들을 적용하기 위해 복잡한 수학같은것들을 다룰 필요는 없습니다. openFrameworks는 이런 물리적인 효과들을 쉽게 적용시킬수 있는 아주 멋진 몇몇 함수들을 제공합니다. 만약 좀더 상세한 정보를 원하신다면 Keith가 작성한 튜토리얼인 [Math Tutorials](http://openframeworks.cc/tutorials/maths/001_vector_maths.html)을 살펴보시기 바랍니다. 아마도 엄청나게 멋진 새로운 것들로 여러분께 알려줄 것입니다.

가장 도움이 되는 몇몇 클래스들의 대부분은 ofVectorMath에 들어있습니다. force(물리에서의 힘)와 관련된 작업들을 아주 쉽게 가능케 해주지요. 우리의 `Ball`클래스와 마찬가지로, `ofVec2f`는 `x`와 `y`값을 갖고 있고, `ball.x`나 `ball.y`와 같은 방식으로 x와 y에 접근할 수 있습니다. `ofVec2f`는 또한 `.dot()`과 같은 메서드와 계산을 하기 위한 `+`, `-`, `*`, `/`과 같은 연산자들을 갖고 있습니다.
 
 


