---
.. author: 
.. title: 이벤트 리스닝하기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

### 소개

어플리케이션에서 이벤트를 리스닝하기 위해서는 세가지가 필요합니다: 리스너, 이벤트, 그리고 핸들러입니다.
여기선 **리스너**는 어플리케이션에게 특정 이벤트를 수신하라고 말해주는 역할을 합니다. **이벤트**는 잡아내길 원하는 액션을 의미하며, **핸들러**는 해당 이벤트가 감지되었을 때 무엇을 할 것인지 어플리케이션에게 말하는 역할을 합니다.
어플리케이션에 리스너를 추가하려면, `App.cpp`파일의 setup 메소드에 [ofAddListener](/documentation/events/ofEventUtils/#show_ofAddListener) 메소드를 사용하여 작성해주어야 합니다. 

```cpp
ofAddListener(theEventThatImListening , this, &myHandler);
```

App.cpp파일에서, `myHandler`가 무슨 일을 할것인지 작성해주어야 합니다.

```cpp
void myHandler(arguments & event){
  //do something
}
```

### 기본 이벤트들

어떤 오픈프레임웍스 어플리케이션이건, 다양한 이벤트들을 위한 핸들러들이 기본적으로 제공됩니다:

```cpp
void keyPressed(int key);
void keyReleased(int key);
void mouseMoved(int x, int y );
void mouseDragged(int x, int y, int button);
void mousePressed(int x, int y, int button);
void mouseReleased(int x, int y, int button);
void mouseEntered(int x, int y);
void mouseExited(int x, int y);
void windowResized(int w, int h);
void dragEvent(ofDragInfo dragInfo);
void gotMessage(ofMessage msg);
```

이 핸들러들에 대해 별도로 리스너를 추가할 필요가 없습니다, 이미 여러분을 위해 제공되고 있기 때문이죠, 바로 사용하시면 됩니다.

### 리소스

* 만약 (`ofApp.cpp`안에서가 아닌) 여러분의 클래스에 리스너를 생성하고 싶다면, `examples/events/SimpleEventsExample` 예제를 살펴봐주시기 바랍니다. 일반적으로, `examples/events`폴더안에 이벤트와 관련한 다양하고 유용한 리소스들이 있습니다. 뿐만 아니라 커스텀 이벤트를 생성하는 방법도 제공하고 있습니다.
* 오픈프레임웍스 도큐먼트에는 [events](/documentation/events/)섹션이 있습니다.
