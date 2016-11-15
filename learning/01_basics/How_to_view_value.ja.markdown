---
.. title: 変数の値を見る
.. type: howto
---

変数の値を表示する方法は、いくつかあります。

## コンソールに出力

下記のサンプルは、コンソールに出力する方法について説明しています。

### std::cout を使う

おそらく、一番簡単な方法は、[std::cout](http://en.cppreference.com/w/cpp/io/cout) を使うやり方でしょう。このコマンドは、異なる型の値を文字列として連結させることができます。```endl``` を追加すると改行します。

```c++
float value = 0.2;
std::cout << "value: " << value << endl;
```

出力 :

```
value: 0.2
```

### std::printf を使う

[printf](http://en.cppreference.com/w/cpp/io/c/fprintf) は、あらゆる種類の出力フォーマットで出力させることができます。```%f```はfloat型の値を追加する場所になります。```%.0f``` や ```%.3f``` は、小数点以下の数を指定します。```\n```は改行です。詳細は、[リファンレンス](http://en.cppreference.com/w/cpp/io/c/fprintf) と下記のサンプルを参照してください。

```c++
float value = 0.2;
std::printf("value: %f\n", value);
std::printf("value: %.0f\n", value);
std::printf("value: %.3f\n", value);
```
出力 :

```
value: 0.200000
value: 0
value: 0.200
```

### ofLog() を使用する

openFrameworksのワークフローとの統合で最適な方法は、ログ用に実装された関数を使うことです。様々なログのレベルといくつかの使用法があります。詳細は [ofLog() documentation](http://openframeworks.cc/documentation/utils/ofLog/) を参照してください。以下のように使用します。

```c++
float value = 0.2;
ofLogNotice() << "value: " << value;
```
出力 :

```
[notice ] value: 0.2
```

ログのメッセージをファイル出力することもできます。

```c++
ofLogToFile("myLogFile.txt", true);
// 以下全てのログは、myLogFile.txtに追加されます
```

## グラフィカルな出力

### テキストを描画する

スクリーンにテキストを描画する方法は簡単です。

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

### ofxGui を使う

変数の値を表示する別の方法として、[ofParameter](http://openframeworks.cc/documentation/types/ofParameter/) とコア・アドオンの [ofxGui](http://openframeworks.cc/documentation/ofxGui/ofxGui/) を組み合せる方法があります。[プロジェクトにアドオンを追加する方法](http://openframeworks.cc/ja/learning/01_basics/how_to_add_addon_to_project/)にofxGuiをどのようにプロジェクトに追加するのかの詳細があります。

ヘッダーファイルで、[ofParameter](http://openframeworks.cc/documentation/types/ofParameter/) をつかって変数をラップ(別の型に包括)します。これまでと同じように、この変数を使うことが可能です。それだけでなく、変数のリスナーを追加したり、変数の値に呼応するGUIを追加することができます。

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

このソースのように、変数に名前をつけて、デフォルト値と最大/最小の範囲(変数が数値の場合)を決めることができます。GUIを表示するには、setupをして値を追加する必要があります。これで、変数の値に呼応させることができます。

```c++
//ofApp.cpp

void setup() {
  value.set("value", 0.2, 0, 1); // name, default value, min, max
  gui.setup();
  gui.add(value);
}

void draw(){
  gui.draw();
}

```
![Screenshot of using gui to show and edit value](How_to_view_value_gui.png)
