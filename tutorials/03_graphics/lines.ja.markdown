---
.. date: 2016/01/29 10:00:00
.. title: 線を描く 
.. summary: ofPolylineを使った線の描き方
.. author: Davide Prati
.. author_site: http://edapx.com
---

###Contents

* [はじめに...](#introducing)
* [線を描く](#first)
* [ノイズを少し](#noise)
* [線を網のように](#web)
* [動くスムーズな線を作る](#ofNode)

<a name="introducing"></a>
### はじめに ...

このチュートリアルではopenFrameworksでの線の描き方を見ていきます。このチュートリアルのコードの多くは[Zach Lieberman](http://thesystemis.com/)による[この](https://github.com/ofZach/VAW_workshop/tree/master/drawingWorkshop) ワークショップで使われたものです。

線はおそらく最も原始的で抽象的なドローイングの形態です。子供が描く最初のものたちの1つであり、私達が表面に描くのに慣れている最も本能的な方法の1つです。しかし最終的に、線は単に数多くの点がつながったものであり、openFrameworksは点をつなげる線を簡単に描くクラス[ofPolyline](/documentation/graphics/ofPolyline/)を提供します。どのように使うか見てみましょう！

<a name="first"></a>
### 線を描く

この例では単にスクリーン上でマウスをドラッグすることで線を描きます。そのためには、点の入れ物を作ることから始めます。project generatorで新しいアプリをつくり、以下を`App.h`ファイルに追加してください。

```cpp
ofPolyline line;
```

`setup`、`draw`、`mouseDragged`、`mousePressed`メソッドを以下のように修正します。

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

`mouseDragged`メソッドの中で面白いことが起こっています。マウスの左ボタンを押してドラッグすると、マウスの位置に対応した座標に点が`ofPolyline`クラスの`line`インスタンスに追加されていきます。`line.draw()`を呼ぶと、ofPolylineは自動的に点をつなぎ線をスクリーンに描きます。マウスを離すと、`line.clear()`がそれまでに追加した全ての点を消去し、新しい線を描く準備をします。

<a name="noise"></a>
### ノイズを少し 

いったん点を`ofPolyline`に追加すると、それらを描く前に`update`メソッドで編集することができます。点をx軸、y軸方向に1ピクセル上げ下げしてみましょう。`update`メソッドを以下のようにしてください。

```cpp
for (auto &vert : line.getVertices()){
    vert.x += ofRandom(-1,1);
    vert.y += ofRandom(-1,1);
}
```
こんな感じになるはずです。

![IMG](line-noise.gif)

ループ内の`&`に注意してください。もしこれを省略すると頂点の位置を編集することができなくなってしまいます。この`&`はC++に`ofPolyline`に格納された頂点への参照を使うよと伝えていて、`ofPolyline`内の値を編集したいがために参照が必要なのです。単に`ofPolyline`の中の点の値を読みたいだけなら`&`は使わないでください。今回のように編集したい時だけ使ってください。

<a name="web"></a>
### 線を網のように 

もっと複雑なものを試してみましょう。この例では`ofDrawLine`と`ofPoint`を使って線をつくります。project generatorで新しいアプリを作り`ofApp.h`を以下のようにします。

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
このヘッダーファイルでは`Line`という新しいクラスを定義しています。このクラスは単に`a`と`b`の2点からなるもので、この2点は線の始点と終点を定義しています。また、新しい[vectors](/tutorials/11_c++%20concepts/001_stl_vectors_basic/)、`drawnPoints`と`lines`も定義しています。`App.cpp`を見ていくと何故これらが必要か分かるでしょう。

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

`draw()`メソッドはとても簡単ですね。点`a`と`b`の値を得るためにヘッダーファイルで作った`Line`クラスを使い、`ofDrawLine`でつなぎます。`ofDrawLine`は単に点から点へ線を描きます。
`mouseDragged`メソッドはもう少し複雑です。一番簡単な`drawnPoints.push_back(ofPoint(x,y))`から見ていきましょう。マウスをドラッグするごとにマウスの位置を`drawnPoints`vectorに保存しています。このvectorはスクリーン上のマウスの全ての動きの歴史のようなものです。`for (auto point : drawnPoints)`で始まるループを見ていきましょう。このループではマウスの現在の位置`ofPoint mouse`を取得し、過去の全ての位置と比較します。もし現在の位置と以前の位置が30ピクセル以下だった時は、マウスの位置と、`drawnPoints`vector内の距離が30ピクセル以下の点をつなぐ`Line lineTemp`を作ります。`lines` vectorに`Line`を追加したら、スクリーンに描画する準備ができます。
マウスを動かしてみてください。以下のようなものが描けるはずです。

![IMG](web.png)

<a name="ofNode"></a>
### 3D空間を動くスムーズな線を作る

`ofPolyline`の使いかたが分かったところで`ofNode`と合体させ、スクリーン上をスムーズに動く線を描きましょう。`ofNode`は3D空間の点を定義し、別のノードとつなぐことができるクラスです。2つのnode、AとBを作りnode AをBの親として定義すると、node Aを動かすとBも一緒に動きます。では`ofNode`と`ofPolyline`がどのように共演するか見てみましょう。最初に、`App.h`を以下のように編集します。

```cpp
ofNode baseNode;
ofNode childNode;
ofNode grandChildNode;
ofPolyline line;
ofEasyCam cam;
```

`EasyCam`クラスは3D空間でシーンを見るために使われます。マウスをドラッグするとシーン内でカメラを動かせます。今はどうやって動いているかは気にする必要はありません。`EasyCam`が全てやってくれます。では、`App.cpp`を以下のように編集してください。

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

以下の画像のようなものができるでしょう。

![IMG](line-nodes.gif)

コードをよく見てみましょう。`setup`メソッドで3つのnodeのチェーンを作って位置を与えています。`setParent`を使って各nodeは前のnodeの親となります。`update`メソッドでは`baseNode`にy軸を1度回転するように言います。これは他の2つのnodeにも影響します。また`childNode`にはx軸に3度回転するように言います。この2つの回転はチェーンの最後のnodeである`grandChildNode`に流麗な動きを与えます。その後には、点を動きから捕らえ、`ofPolyline`に格納していきます。200点のみ線に保存し、新しい点が追加されたら古い点を消します。値を大きくしてどのように線が変化するか見てみましょう。