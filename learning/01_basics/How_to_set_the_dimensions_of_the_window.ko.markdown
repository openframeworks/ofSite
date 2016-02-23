---
.. title: 윈도우의 크기 지정하기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

#### ```main.cpp``` 파일 에서 :

```ofSetupOpenGL ``` 메소드는 화면상에 프로젝트가 어떻게 보여질 것인지 지정해줄때 사용합니다.

	ofSetupOpenGL(width, height, DISPLAY_MODE);


앞의 두 파라메터는 윈도우의 가로, 세로 크기를 의미합니다:
	ofSetupOpenGL(1024, 768, DISPLAY_MODE);
	
세번째 파라메터에서, 윈도우가 어떻게 보여질 것인지 가능한 모드를 사용하여 설정합니다:

```OF_WINDOW``` 모드는 지정해준 가로, 세로 크기로 떠다니는 윈도우를 생성합니다.

	ofSetupOpenGL(1024, 768, OF_WINDOW);
 
```OF_FULLSCREEN``` 모드는 여러분의 프로젝트를 화면의 좌측 상단부터 지정한 가로, 세로 크기로 보여주며, 나머지 부분은 회색으로 보여지게 됩니다.lid grey.

	ofSetupOpenGL(1024, 768, OF_FULLSCREEN);

#### 또는, ofApp::setup()를 사용하기:

위의 방법 대신, ofApp의 setup함수에서 윈도우의 크기(그리고 위치)를 지정해 줄 수 있습니다. 이 방법을 사용하면 app이 런칭된 직후 호출됩니다.:

```cpp
void ofApp::setup(){
    ofSetWindowShape(500, 500);
    ofSetWindowPosition(10, 10);
}
```
    
