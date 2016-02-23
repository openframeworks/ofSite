---
.. title: 스크린샷 찍기
.. summary: How to take a screenshot of your work
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

스크린샷을 찍는것은 아주 쉽습니다. 단순히 ofImage를 초기화하고, 뭔가를 그린다음, ```img.grabScreen();```를 사용하여 그린것들을 캡쳐하면 됩니다.

### 헤더파일에서(.h)

img라는 이름의 ofImage를 초기화합니다.

	ofImage 	img;


### 구현파일에서(.cpp)

뭔가를 그립니다! 예제에서는, ```draw()```함수에서 원을 그립니다.

	void ofApp:draw(){
		ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, 200);
	}

다음으로, 언제 화면을 가져올지를 결정합니다. 여기서는 "x"키가 눌렸을 때, 윈도우의 (0,0)에서부터 가로 세로를 각각 ```ofGetWidth()```와 ```ofGetHeight()```로 하는 영역을 가져와 저장합니다. (역자 주 : ```ofGetWidth()```는 윈도우의 가로 크기를, ```ofGetheight()```은 윈도우의 세로 크기를 의미합니다.)

	void ofApp:keyPressed(int key){
		if(key == 'x'){
			img.grabScreen(0, 0 , ofGetWidth(), ofGetHeight());
			img.saveImage("screenshot.png");
		}
	}

이후 이 코드를 여러분의 아무 앱에 추가해둔 다음, "x"키를 눌러 스크린샷을 찍으면 여러분의 app폴더내의 bin >> data 폴더에 저장됩니다.

![Screenshot of Example)](useCodeToScreenshot.png)
![Screenshot of Example)](screenShot.png)
