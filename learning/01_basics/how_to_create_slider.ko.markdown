---
.. title: 변수 컨트롤을 위해 GUI 슬라이더를 만드는 방법
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

GUI 슬라이더를 만드는 것은 아주 간단합니다. GUI 애드온을 포함시켜 프로젝트를 생성하고, ofxFloatSlider와 gui를 초기화하고, gui를 그린 다음, 슬라이더를 특정 변수에 연결하면 됩니다.

프로젝트를 생성할때, ofxGui 애드온을 포함시킵니다.

![Screenshot of Example)](newGui.png)

xCode에서 여러분의 프로젝트를 열 때, gui 애드온의 소스파일을 이곳에서 보실 수 있습니다:

![Screenshot of Example)](guiClass.png)

### 헤더파일에서 (.h)

"ofxGui.h" 파일을 include합니다.

	#include "ofxGui.h"

슬라이더와 패널을 초기화합니다. 여기서 원의 크기를 조절하기 위해 ```ofxFloatSlider radius```를 사용할 겁니다. 만약 int형 정수를 사용하려면, ```ofxIntSlider```를 사용합니다.

	ofxFloatSlider radius;
	ofxPanel gui; 


### 구현파일에서 (.cpp)

패널의 이름을 `gui`로 설정하고, ```gui.add()```를 사용해 radius 슬라이더를 추가합니다. 여기서 슬라이더를 "radius"문자열로 라벨링하고, 초기값으로 140의 값을 준 뒤, 슬라이더의 범위를 10에서 300으로 지정해줍니다.

	void ofApp::setup(){
		gui.setup();
		gui.add(radius.setup("radius", 140, 10, 300));
	}

예제에서, ```draw()```함수 내에서 원을 그리며, 이때 `radius`변수를 세번째 파라메터로 전달합니다.

	void ofApp:draw(){
		ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, radius);
		gui.draw();
	}

앱을 실행하면, radius슬라이더를 앞뒤로 움직여 원의 크기를 변경시킬 수 있습니다.

![Screenshot of Example)](finalOutput.png)
