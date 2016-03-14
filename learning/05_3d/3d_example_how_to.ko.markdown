---
.. title: 3d 모델 불러오기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

3d 모델을 오픈프레임웍스 앱에 불러오려면, `ofxAssimpModelLoader`애드온을 사용해야 합니다. 
이 애드온은 오픈프레임웍스에 기본으로 내장되어 있습니다.

우선, `ofApp.h`에 `ofxAssimpModelLoader`를 include하고 선언해주어야 합니다:
    
```cpp
#include "ofxAssimpModelLoader.h"
ofxAssimpModelLoader yourModel;
```

다음, 아래와 같이 `ofApp.cpp`파일에서 모델을 불러오고 그립니다:

```cpp
void ofApp::setup(){
  yourModel.loadModel("squirrel/NewSquirrel.3ds", 20);
}

void ofApp::draw(){
  yourModel.drawFaces();
}
```

오픈프레임웍스 최상위 폴더에서 `addons/3DModelLoaderExample/`폴더 안에서 완벽하게 동작되는 예제를 살펴볼 수 있습니다.
