---
.. title: 3Dモデルを読み込む
.. type: howto
---

openFrameworksのアプリケーションに3Dのモデルを読み込むには、`ofxAssimpModelLoader`アドオンを使用しなくてはなりません。このアドオンはopenFrameworksをインストールした際に付属されています。

まず初めに、`ofApp.h`内で、`ofxAssimpModelLoader`をインクルードして宣言します。
    
```cpp
#include "ofxAssimpModelLoader.h"
ofxAssimpModelLoader yourModel;
```

そして、`ofApp.cpp`のファイル内で、モデルを読み込んで描画します。

```cpp
void ofApp::setup(){
  yourModel.loadModel("squirrel/NewSquirrel.3ds", 20);
}

void ofApp::draw(){
  yourModel.drawFaces();
}
```

openFramworksの`addons/3DModelLoaderExample/`フォルダの中に、完成された作動するサンプルが入っています。

