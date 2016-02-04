## -*- coding: utf-8 -*-
---
.. date: 2016/01/29 10:00:00
.. title: 선 그리기
.. summary: 선을 그리기위한 ofPolyline 사용법
.. author: Davide Prati
.. author_site: http://edapx.com
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

###Contents

* [소개...](#introducing)
* [선 그리기](#first)
* [약간의 노이즈A bit of noise](#noise)
* [거미줄 그리기](#web)
* [움직일때 선을 부드럽게 그리기](#ofNode)

<a name="introducing"></a>
### 소개 ...

이 튜토리얼에서는 오픈프레임웍스로 선을 어떻게 그리는지 살펴봅니다. 튜토리얼의 대부분의 코드는 [Zach Lieberman](http://thesystemis.com/)에 의해 진행된 워크샵의 결과인 [이곳](https://github.com/ofZach/VAW_workshop/tree/master/drawingWorkshop) 에서 가져왔습니다.
선은 아마도 가장 기초적인 드로잉의 요소일 것입니다. 또한 아이들이 그림을 그릴때 가장 먼저 하는 것이며, 여전히 표면에 뭔가를 그릴때 사용되는 가장 직관적인 방법중 하나이지요. 하지만 선이라는 것은 결국 무한한 점들을 연결하는 것입니다; 오픈프레임웍스는 아주 쉽게 점을 연결해 선을 그리는 클래스를 제공하고 있습니다: [ofPolyline](/ko/documentation/graphics/ofPolyline/)이지요. 자 어떻게 이 클래스를 사용하는지 살펴보도록 합시다!

<a name="first"></a>
### 선 그리기

이 예제에서는 아주 단순히 마우스를 드래그하여 화면에 원을 그려봅니다. 이렇게 하기 위해서는, 우선 점들을 담는 컨테이너를 만드는 것으로 시작할 것입니다. 
프로젝트생성기로 새 앱을 만들고 `App.h` 파일에 아래 코드를 추가햅니다:

```cpp
ofPolyline line;
```

이제 `setup`, `draw`, `mouseDragged`, 그리고 `mousePressed`에 아래와 같이 코드를 작성합니다:

```cpp
void ofApp::setup(){
    ofBackground(0,0,0);
}

void ofApp::draw(){
    line.draw();
}

void ofApp::mouseDragged(int x, int y, int button){
    ofPoint pt;
    pt.set(x,y);
    line.addVertex(pt);
}

void ofApp::mousePressed(int x, int y, int button){
    line.clear();
}
```

여기서 주목해야 할 것은 `mouseDragged` 메소드에서 실제로 일이 벌어진다는 것입니다. 마우스 왼쪽버튼을 누르고 드래그하면, 마우스의 위치에 대응되는 위치의 점이 `ofPolyline` 클래스의 `line` 인스턴스에 추가됩니다. `line.draw()`를 호출하면, ofPolyline은 자동으로 점들을 연결하여 화면에 선을 그립니다. 마우스를 떼면, `line.clear()` 메소드가 이전에 추가되었던 모든 점들을 삭제하고, 새 선을 그릴 준비를 합니다.

<a name="noise"></a>
### 약간의 노이즈

`ofPolyline`안에 점들을 갖게 되면, 우리는 이것들을 실제로 그리기 전에, `update`메소드 안에서 변경할 수 있습니다. 자 이 점들을 x, y축으로 각각 1 픽셀씩 위아래로 움직여봅시다. `update`메소드를 아래와 같이 편집해보세요:

```cpp
for (auto &vert : line.getVertices()){
    vert.x += ofRandom(-1,1);
    vert.y += ofRandom(-1,1);
}
```

다 작성하고 나면 아래와 같이 보일것입니다:

![IMG](line-noise.gif)

반복문 안의 `&`에 주의하세요. 만약 이것을 빼먹게 되면, 버텍스들의 위치를 편집할 수 없게 됩니다. `&`은 c++에게 `ofPolyline`이 담고 있는 버텍스들의 레퍼런스를 사용하겠다 라는 의미입니다. 실제로 우리는 `ofPolyline`안의 값들을 변경해야 하므로 레퍼런스를 사용해야 하지요. `ofPolyline`안의 점들의 값을 읽기만 할 경우에는, `&`은 필요하지 않습니다. 하지만 이것의 값을 변경하거나 편집할때에는, 반드시 사용해주어야 합니다.

<a name="web"></a>
### 거미줄 그리기

좀더 복잡한 것을 시도해보겠습니다. 이 예제에서는 `ofDrawLine`과 `ofPoint`를 사용해서 선을 그릴것입니다. 프로젝트생성기를 사용하여 새로운 앱을 만드시고 `ofApp.h`에 아래와 같이 작성하십시오:

```cpp
#include "ofMain.h"

class Line {
public: 
    ofPoint a;
    ofPoint b;
};

class ofApp : public ofBaseApp{

  public:
    // ...
    //leave everything as it is
    // ...
    vector < ofPoint > drawnPoints;
    vector < Line > lines;
};
```

이 헤더파일에서 우리는 새로운 클래스인 `Line`클래스를 정의했습니다. 이 클래스는 단순히 2개의 점 `a` 와 `b`로 구성되어 있습니다. 이 두 점은 선의 시작점과 끝나는 점을 정의하고 있죠. `App.cpp` 파일에서 왜 이것들이 필요한지 보실 수 있을것입니다:

```cpp
void ofApp::setup(){
    ofBackground(255,255,255);
}

void ofApp::draw(){
    ofEnableAlphaBlending();
    ofSetColor(30,30,30,30);
    
    for (auto line : lines) {
        ofDrawLine(line.a, line.b);
    }
}

void ofApp::mouseDragged(int x, int y, int button){
    for (auto point : drawnPoints){
        ofPoint mouse;
        mouse.set(x,y);
        float dist = (mouse - point).length();
        if (dist < 30){
            Line lineTemp;
            lineTemp.a = mouse;
            lineTemp.b = point;
            lines.push_back(lineTemp);
        }
    }
    drawnPoints.push_back(ofPoint(x,y));
}
```

`draw()`메소드는 상당히 쉽습니다. 헤더파일에서 정의한 `Line`클래스를 통해 점 `a`와 `b`점의 값을 얻고, `ofDrawLine`을 사용하여 이 두 점을 연결합니다. `ofDrawLine`은 단순히 하나의 점에서 다른 점으로 선을 그리는 함수입니다.
`mouseDragged`메소드는 조금더 복잡합니다. 우선 가장 쉬운 부분인 `drawPoints.push_back(ofPoint(x,y))`부터 시작해보도록 합시다. 마우스를 드래그할 때마다, 마우스의 위치를 `drawnPoints`벡터에 저장합니다. 이 벡터는 화면상의 마우스의 움직임의 히스토리와 같은것이죠. 이제 `for(auto point : drawnPoints)`로 시작하는 반복문을 살펴봅시다. 이 반복문안에서는 마우스의 현재 위치인 `ofPoint mouse`를 취해서, 이것과 모든 이전의 위치를 대응하게 합니다. 만약 현재 위치와 이전의 마우스위치의 거리가 30픽셀 이하이면, 히스토리 벡터의 이전 위치부터 현재의 위치를 연결하는 `Line lineTemp`를 생성합니다. 이 `Line`을 `lines`벡터에 push하고 나면, 화면에 그려질 준비가 된 것입니다.

마우스를 이리저리 움직여보시면, 아래와 같은 결과가 보일것입니다.

![IMG](web.png)

<a name="ofNode"></a>

### 3D공간에서 움직일때 선을 부드럽게 그리기

이제 `ofPolyline`의 사용법을 알았으니, `ofNode`와 조합하여, 화면에서 부드럽게 웁직이는 선을 그릴 수 있습니다. `ofNode`는 3D공간의 점을 선언하는 클래스로, 다른 노드(node)들과 연결될 수 있습니다. 만약 2개의 노드 A와 B를 만들면, 이것을 nodeA를 nodeB의 부모로 정의합니다. A 노드가 웁직이면 노드 B도 같이 움직이는 것이죠. `ofNode`와 `ofPolyline`이 어떻게 함께 움직이는지 살펴봅시다. 우선 `App.h`파일을 아래와 같이 작성합니다:


```cpp
ofNode baseNode;
ofNode childNode;
ofNode grandChildNode;
ofPolyline line;
ofEasyCam cam;
```

`EasyCam` 클래스는 3D 공간을 바라보는데에 사용됩니다. 마우스를 드래그하면 화면씬을 바라보는 카메라를 움직일 수 있습니다. 이것이 어떻게 동작하는지 고민한 필요가 없습니다, `EasyCam`이 알아서 다 해주죠. 자 이제, `App.cpp`파일을 아래와 같이 작성합니다:

```cpp
void ofApp::setup(){
    ofEnableDepthTest();
    baseNode.setPosition(0, 0, 0);
    childNode.setParent(baseNode);
    childNode.setPosition(0, 0, 200);
    grandChildNode.setParent(childNode);
    grandChildNode.setPosition(0,50,0);
}

//--------------------------------------------------------------
void ofApp::update(){
    baseNode.pan(1);
    childNode.tilt(3);
    
    line.addVertex(grandChildNode.getGlobalPosition());
    if (line.size() > 200){
        line.getVertices().erase(
                                 line.getVertices().begin()
                                 );
    }
}

//--------------------------------------------------------------
void ofApp::draw(){
    cam.begin();
    //uncomment these 3 lines to understand how nodes are moving
    //baseNode.draw();
    //childNode.draw();
    //grandChildNode.draw();
    line.draw();
    cam.end();
}
```
실행해보면 아래와 같은 결과가 보일것입니다:

![IMG](line-nodes.gif)

자 코드를 살펴봅시다. `setup`메소드에서 3개의 노드 체인을 만들고 각 노드에 위치를 할당해 주었습니다. 각 노드는 `setParent`를 사용하여 이전의 노트의 부모로 만들어 주었습니다. `update`메소드에서 `baseNode`를 y축을 기준으로 1도씩 회전하게 했습니다. 이는 다른 2개의 노드에도 영향이 가해집니다. 또한 ` childNode`에게 x축을 기준으로 3도씩 회전하게 했습니다. 이 두가지 회전은 체인의 마지막 노드 `grandChildnode` 까지 미치는데에는 충분합니다, 두 노드들이 우아한 움직임을 보이죠. 이어지는 코드라인들에서, 이 움직이는 점들을 `ofPolyline`에 집어넣습니다. 200개의 점만을 유지할것이므로, 새 점이 추가(push)될때마다 오래된 점은 삭제합니다. 이 값을 증가시켜서 라인이 어떻게 변하는지 살펴보십시오.


