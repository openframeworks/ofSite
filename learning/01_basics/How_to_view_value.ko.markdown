---
.. title: 변수의 값 확인하기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

변수의 값을 보는 방법은 여러가지가 있습니다.

## 콘솔 출력

아래의 예제는 콘솔에 출력을 생성하는 방법입니다.

### std::cout 사용하기

아마도 가장 간단한 방법은 [std::cout](http://en.cppreference.com/w/cpp/io/cout)를 사용하는 방법일 것입니다. 또한 이 명령은 다양한 자료형을 문자열과 조함할 수 도 있습니다. ```endl```을 붙이면, line break를 추가해줍니다.

```c++
float value = 0.2;
std::cout << "value: " << value << endl;
```

결과:

```
value: 0.2
```

### std::printf 사용하기

[printf](http://en.cppreference.com/w/cpp/io/c/fprintf)는 서로 다른 다양한 모든 형식을 강제로 출력할 수 있게 합니다. ```%f```는 float 변수를 붙일 수 있는 변경자(placeholder)입니다. ```%.0f``` 그리고 ```%.3f```는 출력될 값의 소수점 위치를 지정할 수 있습니다. ```\n```은 라인변경을 추가합니다. 보다 자세한 사항과 예제들은 [레퍼런스](http://en.cppreference.com/w/cpp/io/c/fprintf)를 참고하시기 바랍니다.

```c++
float value = 0.2;
std::printf("value: %f\n", value);
std::printf("value: %.0f\n", value);
std::printf("value: %.3f\n", value);
```

결과:

```
value: 0.200000
value: 0
value: 0.200
```

### ofLog() 사용하기

오픈프레임웍스의 작업흐름에 맞추는 최선의 방법은 구현된 로깅 함수를 사용하는 것입니다. 다양한 로그 레벨이 있으며 다양한 방법으로 사용이 가능합니다 - [ofLog() 도큐먼트](http://openframeworks.cc/documentation/utils/ofLog/)를 살펴보시기 바랍니다. 예제 하나를 살펴봅시다:

```c++
float value = 0.2;
ofLogNotice() << "value: " << value;
```

결과 :
```
[notice ] value: 0.2
```

또한 로그메시지를 파일로 출력할 수도 있습니다:

```c++
ofLogToFile("myLogFile.txt", true);
// 앞으로 추가될 로그는 myLogFile.txt에 추가됩니다.
```

## 그래픽으로 출력하기

### 텍스트 그리기

텍스트를 화면에 그리는 것은 아래와 같이 아주 간단합니다:

```c++
void draw() {
  ofBackground(ofColor::black);
}

void draw() {
  float value = 0.2;
  ofSetColor(ofColor::white);
  ofDrawBitmapString("value: " + ofToString(value), 10, 10);
}
```

![Screenshot of drawing string to screen](How_to_view_value_drawstring.png)

### ofxGui 사용하기

변수의 값을 확인하면서 동시에 변경할 수 있는 또다른 좋은 방법은 [ofParameter](http://openframeworks.cc/documentation/types/ofParameter/)와 코어 애드온인 [ofxGui](http://openframeworks.cc/documentation/ofxGui/ofxGui/)입니다. 애드온을 추가하는 방법은 [가이드에 없는 링크]()를 읽어보세요.

헤더파일에서, 변수를 [ofParameter](http://openframeworks.cc/documentation/types/ofParameter/)로 감싸주십시오. 이 변수는 여러분이 평소에 사용하던대로 여전히 사용이 가능하며, 이렇게 함으로써 변수에 리스터를 추가하거나 GUI에 해당 변수를 추가해 상호작용 할 수 있게 됩니다.

```c++
//ofApp.h

#include "ofxGui.h"
#include "ofMain.h"

class ofApp : public ofBaseApp {

  ..

  ofParameter<float> value;
  ofxPanel gui;

}
```

구현파일에서는, 해당 변수에 이름을 붙일 수 있으며, (숫자값일 경우) 초기값과 최소/최대 경계도 지정할 수 있습니다. 반드시 GUI를 셋업하고, 값을 추가한 다음, GUI를 그려야 합니다. 이렇게 해야 해당값과 상호작용할 수 있습니다.

```c++
//ofApp.cpp

void setup() {
  value.set("value", 0.2, 0, 1); // 이름, 초기값, 최소, 최대
  gui.setup();
  gui.add(value);
}

void draw(){
  gui.draw();
}

```
![Screenshot of using gui to show and edit value](How_to_view_value_gui.png)
