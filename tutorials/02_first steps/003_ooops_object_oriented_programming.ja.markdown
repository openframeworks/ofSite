---
.. date: 2008/03/20 20:18:00
.. title: Ooops! = オブジェクト指向プログラミング + クラス
.. summary: openFrameworksでオブジェクト指向プログラミングをするための簡単なイントロダクションとクラスを作成するためのHowToガイド
.. author: Rux
.. author_site:
---

## 目次

* [1 概略][2]
* [2 OOPとは何か?][3]
* [3 自分のクラスをどうやって作るのか][4]
* [4 クラスからオブジェクトを生成する][5]
* [5 クラスからオブジェクトを生成する - パート2][6]
* [6 クラスからオブジェクトを生成する - パート2.1][7]
* [7 クラスからオブジェクトを生成する - パート3][8]
* [8 クラスからオブジェクトを生成する - パート4][9]

## Overview

このチュートリアルは、openFrameworksでオブジェクト指向プログラミングをするための簡単なイントロダクションと、自分のクラスを作成するためのHowToガイドです。

サンプルは、Mikkel KoserのofBallクラスを使用しています。[フォーラムのスレッドはこちら][11]   

## OOPとは何か?

オブジェクト指向プログラミングは、オブジェクトの使用とオブジェクト同士のインタラクションを基本としたプログラミングのパラダイムです。

いくつかの定義をみてみましょう：

* クラスはモノ(オブジェクト)の特性を定義し、そのふるまいを記述する。クラスがはまた、性質(プロパティ)と属性(アトリビュート)だけでなく、なにが出来るのかも定義する。
* オブジェクトは、クラスのインスタンス(実体化)である。
* メソッドとはオブジェクトの能力と、それを呼び出す方法である。

連想される例えは、クラスがクッキーの型とすると、オブジェクトはクッキーそのもののことになります。

## 自分のクラスをどうやって作るのか

クラスとオブジェクトは、Flashのムービークリップとムービーインスタンスの考え方に似ていますし、Javaプログラムの基本でもあります。
もしJavaやProcessingのプログラミング経験があるのであれば、また別のチュートリアルがとても役に立つでしょう。[ProcessingユーザーのためのopenFramewroks入門][14]

これが、ヘッダーファイルもしくは宣言(\*.h)でのクラスの定義の方法です。この例では、ファイル名はofBall.hにしています。
[![Image:ex1-ball_h.jpg](Ex1-ball_h.jpg)][15]

~~~~{.cpp}
#ifndef _OF_BALL // if this class hasn't been defined, the program can define it
#define _OF_BALL // by using this if statement you prevent the class to be called more
                 // than once which would confuse the compiler
#include "ofMain.h"
class ofBall {

public:
  // place public functions or variables declarations here
  // methods, equivalent to specific functions of your class objects
  void update(); // update method, used to refresh your objects properties
  void draw(); // draw method, this where you'll do the object's drawing

  // variables
  float x; // position
  float y;
  float speedY; // speed and direction
  float speedX;
  int dim; // size

  // constructor - used to initialize an object, if no properties are passed
  // the program sets them to the default value
  ofBall();

private: // place private functions or variables declarations here

}; // dont't forget the semicolon!!
#endif
~~~~

Ballクラスをヘッダーファイル(これは原材料のリストのようなものです)に宣言しました。では次にその原材料から実際に調理するパートに移りましょう!

「\#include」タグに注目してください。これは、コンパイラーにどのファイルを実装のファイルに含めるのかを伝えています。プログラムがコンパイルされると、「\#linclude」タグはそこから参照しているオリジナルのファイルと置き換えられます。
if文(\#ifndef)は、ヘッダーファイルを重複して読みこんでしまうという頻繁に発生する現象を避けるための方法です。プログラムの再帰的な構造が、どのくらい簡単に実現できるかお見せしましょう。

例えば、testAppでビリヤードゲームを作ってるとしましょう。testAppクラスは、ビリヤード台のクラスと玉を弾くキューのクラス、そして、それぞれが独立したBallクラスとして参照され衝突を判定するビリヤードの玉のクラスなどによって成りたっています。
もし「\#ifdef」のif文を使用していなかったら、コンパイラーは、Ballクラスを何度でもコンパイルしようと試み、衝突を生みだすでしょう。

[![Image:ex-ifndef.jpg](ex-ifndef.jpg)][16]

Here's how you can write the class \*.cpp file, the implementation file:

クラスの\*.cppファイル(実装ファイル)は、以下のように記述します。
ss
~~~~{.cpp}
#include "ofBall.h"

ofBall::ofBall() {

  x = ofRandom(0, ofGetWidth());      // give some random positioning
  y = ofRandom(0, ofGetHeight());
  speedX = ofRandom(-1, 1);           // and random speed and direction
  speedY = ofRandom(-1, 1);
  dim = 20;

}

void ofBall::update(){

  if(x < 0 ){
    x = 0;
    speedX *= -1;
  } else if(x > ofGetWidth()){
    x = ofGetWidth();
    speedX *= -1;
  }
  if(y < 0 ){
    y = 0;
    speedY *= -1;
  } else if(y > ofGetHeight()){
    y = ofGetHeight();
    speedY *= -1;
  }
  x+=speedX;
  y+=speedY;

}

void ofBall::draw(){
  // values for R, G, B
  ofSetColor(120,120,120);
  ofCircle(x, y, dim);
}
~~~~

[![Image:ex1-ball_cpp.jpg](Ex1-ball_cpp.jpg)][17]

## クラスからオブジェクトを生成する

クラスを作成することができました。次にリアルなオブジェクトを生成してみましょう!

testApp.h(ヘッダーファイル)の中で、新しいオブジェクトを宣言し、メモリを割り当てなくてはなりません。次のようにします。

[![Image:ex1-h.jpg](Ex1-h.jpg)][19]

~~~~{.cpp}
ofBall myBall;
~~~~

最後に、ボールをスクリーンで跳ねまわるようにしてみましょう!

testApp.cppファイル(実装ファイル)に行きます。既にオブジェクトを作成しました。あとは、オブジェクトのメソッドを呼びだして、drawとupdateを実行するだけです。

update()関数に以下の記述を追加します。

[![Image:ex1-cpp.jpg](Ex1-cpp.jpg)][20]

~~~~{.cpp}    
myBall.update();                                // calling the object's update method
~~~~    

draw()関数にも追加しましょう。

~~~~{.cpp}    
myBall.draw();                                  // call the draw method to draw the object
~~~~    

コンパイルして実行します!
スクリーンを跳ねまわるボールが見えるはずです。すごい!

[ソースコードはここからダウンロード可能です。][21]

## クラスからオブジェクトを生成する - パート2

もしかしたら、ただ跳ねまわるボールをつくるだけなのに、何でこんなにも苦労するのだと自問自答しているかもしれません。クラスを使用しなくても同じことはできます(おそらくやったことがあるでしょう!)。クラスを使用する利点の一つは、同じような個性をもった個々のオブジェクトをたくさん作ることができるという点です。

実際にやってみましょう!

testApp.hにもどって、複数のオブジェクトを生成するだけです。

~~~~{.cpp}   
ofBall myBall1;
ofBall myBall2;
ofBall myBall3;
~~~~    

[![Image:ex2-h.jpg](Ex2-h.jpg)][23]

実装ファイル(l\*.cpp)では、それぞれのオブジェクトに対応するメソッドを呼びだすだけです。

testAppのupdate()関数に以下を記述します。

~~~~{.cpp}
myBall1.update();
myBall2.update();
myBall3.update();
~~~~

draw()関数にも同様に記述します。

~~~~{.cpp}    
myBall1.draw();
myBall2.draw();
myBall3.draw();
~~~~

[![Image:ex2-cpp.jpg](Ex2-cpp.jpg)][24]

[![Image:ex2Ball.jpg](Ex2Ball.jpg)][25]

[source code download here][26]

## クラスからオブジェクトを生成する - パート2.1

わたしたちは、まず3つのオブジェクトを作成しました。しかし、10コ、100コ、さらには1000コと増えた場合どうすれば良いでしょう? ひとつひとつ作成していたのでは、とても時間のかかる苦痛な作業となるでしょう。しかし、オブジェクトの生成と関数の呼びだしを自動化することによって、簡単に解決可能です。あとはループ構造をつかって、この作業をシンプルにクリアにしていくことができるようになるでしょう。

並べてオブジェクトを宣言するのではなく、ofBallの型の配列を生成しましょう。また、別の要素も紹介します - 定数(constant)です。定数は、「\#include」の後に、「\#define 定数の名前」をつけて定義されます。これは、プログラムの中で変更することの一切ない一定の値を宣言する方法です。

~~~~{.cpp}
#define NBALLS 5
~~~~

ここでは、定数の値をオブジェクトの配列のサイズを宣言するために使用しています。

~~~~{.cpp}
ofBall myBall[NBALLS];
~~~~

[![Image:ex21h.jpg](Ex21h.jpg)][28]

実装にもどって、for文でオブジェクトの配列を生成して、メソッドを呼びだしましょう。

update()の中に下記の記述をします。

~~~~{.cpp}
for(int i=0; i<NBALLS; i++) {
  myBall[i].update();
}
~~~~

draw()関数にも記述します。

~~~~{.cpp}
for(int i=0; i<NBALLS; i++) {
  myBall[i].draw();
}
~~~~    	

[![Image:ex21cpp.jpg](Ex21cpp.jpg)][29]

[![Image:ex21Ball.jpg](Ex21Ball.jpg)][30]

[source code download here][31]

## クラスからオブジェクトを生成する - パート3

これまで見てきたように、オブジェクトの変数(場所、早さ、方向、次元)によって決定されるプロパティが、それぞれのオブジェクトにセットされてきました。オブジェクト指向プログラムの別の利点は、オブジェクトガそれぞれのプロパティに別々の値を持つことができるということです。それぞれのオブジェクトをコントロールし易いように、オブジェクトの特性を決めそのプロパティにアクセス可能なコンストラクターを持つことができます。ofBallの定義ファイル(\*.hファイル)の中で、コンストラクターを変更して、オブジェクトのプロパテイ(位置と次元)を含めることにしましょう。

~~~~{.cpp}
ofBall(float x, float y, int dim);
~~~~

コンストラクターを変化させたので、実装(\*.cppファイル)もそれを反映したものに変える必要があります。

~~~~{.cpp}
ofBall::ofBall(float _x, float _y, int _dim) {

  x = _x;
  y = _y;
  dim = _dim;
  speedX = ofRandom(-1, 1);
  speedY = ofRandom(-1, 1);
}
~~~~

この実装の変更によって、これらのオブジェクトを生成する際に、メモリー内に領域を作成する必要がでてきました。それぞれのオブジェクトに対してポインター(メモリの参照)を作成することで、この操作が可能となります。

testApp.h(定義)に戻って、新規のオブジェクトを以下ように宣言するようにしましょう。

~~~~{.cpp}  
ofBall *myBall;  
~~~~  

[![Image:ex3-h.jpg](Ex3-h.jpg)][33]

この星印(\*)は、オブジェクトのためのメモリーの領域を作成したことを意味しています。

testApp.cppでは、setup()関数でオブジェクトを生成し、draw()とupdate()関数では、これまでと違う方法でオブジェクトのメソッドを呼びだす必要があります。

setup()関数：

~~~~{.cpp}
// x-position, y-position, size
myBall = new ofBall(ofRandom(300,400), ofRandom(200,300), ofRandom(10,40));
~~~~

この命令によって、オブジェクトの生成の際に、プロパティーのダイレクトなコントロールが可能となりました。

そして、以下のような方法で、updateとdrawをします。

~~~~{.cpp}
myBall->update();
myBall->draw();
~~~~

[![Image:ex3-cpp.jpg](Ex3-cpp.jpg)][34]

[![Image:ex3Ball.jpg](Ex3Ball.jpg)][35]

[source code download here][36]

## クラスからオブジェクトを生成する - パート4

クラスとオブジェクトに関するチュートリアルの最後となりました。このパートでは、これまで作成してきたクラスから、アニメーションのプロセスを作りだすデモをしたいと思います。パート2.1のところで行なった配列を利用したオブジェクトの生成に若干の変更を加えます。

~~~~{.cpp}
ofBall** myBall;   // an array of pointers of type ofBall
int nBalls;        //variable for the number of balls
~~~~

[![Image:ex4-h.jpg](Ex4-h.jpg)][38]

オブジェクトの配列を生成するには、オブジェクトのポインタだけでなく、ポインタの配列も作成しなくてはなりません。宣言ファイル(\*.hファイル)で2つの星印(\*)を使用している理由は、ポインタの配列を生成しているからなのです。では、実装ファイル(\*.cpp)では、どのようにしてこれらのオブジェクトのメソッドを呼びだすのか見ていきましょう。

~~~~{.cpp}
nBalls = 5; // the number of ball objects we want to create
myBall = new ofBall*[nBalls];   // an array of pointers for the objects

for (int i = 0; i < nBalls; i++) {
  float x = 20+(100*i);     //using the value of the counter variable(i) to differentiate them
  float y = 20+(100*i);
  int dim = 10+(i*10);

  myBall[i] = new ofBall(x,y,dim);  //create each object from the array
 }
~~~~  

同じように、オブジェクトにdraw()とupdate()をしたいときには、配列を通して実行するfor文が必要です。

~~~~{.cpp}    
for (int i = 0; i < nBalls; i++){
  myBall[i]->update();
}

for (int i = 0; i < nBalls; i++){
  myBall[i]->draw();
}
~~~~    

[![Image:ex4-cpp.jpg](Ex4-cpp.jpg)][39]

[![Image:ex4Ball.jpg](Ex4Ball.jpg)][40]

[ソースコードはここからダウンロードしてください。][41]

[0]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#column-one
[1]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#searchInput
[2]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#Overview
[3]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#What_is_OOP
[4]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#How_to_build_your_own_Classes
[5]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#make_objects_from_your_own_Classes
[6]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#make_objects_from_your_own_Classes_-_part_2
[7]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#make_objects_from_your_own_Classes_-_part_2.1
[8]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#make_objects_from_your_own_Classes_-_part_3
[9]: file:///home/arturo/Downloads/ittyeditor-read-only/ittyeditor-example.html#make_objects_from_your_own_Classes_-_part_4
[10]: file:///index.php?title=Ooops%21_%3D_Object_Oriented_Programming_%2B_Classes&action=edit&section=1 "Edit section: Overview"
[11]: http://openframeworks.cc/forum/viewtopic.php?t=428 "http://openframeworks.cc/forum/viewtopic.php?t=428"
[12]: file:///index.php?title=Ooops%21_%3D_Object_Oriented_Programming_%2B_Classes&action=edit&section=2 "Edit section: What is OOP"
[13]: file:///index.php?title=Ooops%21_%3D_Object_Oriented_Programming_%2B_Classes&action=edit&section=3 "Edit section: How to build your own Classes"
[14]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users "http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users"
[15]: file:///index.php?title=Image:Ex1-ball_h.jpg "Image:ex1-ball_h.jpg"
[16]: file:///index.php?title=Image:Ex-ifndef.jpg "Image:ex-ifndef.jpg"
[17]: file:///index.php?title=Image:Ex1-ball_cpp.jpg "Image:ex1-ball_cpp.jpg"
[18]: file:///index.php?title=Ooops%21_%3D_Object_Oriented_Programming_%2B_Classes&action=edit&section=4 "Edit section: make objects from your own Classes"
[19]: file:///index.php?title=Image:Ex1-h.jpg "Image:ex1-h.jpg"
[20]: file:///index.php?title=Image:Ex1-cpp.jpg "Image:ex1-cpp.jpg"
[21]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example1.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example1.zip"
[22]: file:///index.php?title=Ooops%21_%3D_Object_Oriented_Programming_%2B_Classes&action=edit&section=5 "Edit section: make objects from your own Classes - part 2"
[23]: file:///index.php?title=Image:Ex2-h.jpg "Image:ex2-h.jpg"
[24]: file:///index.php?title=Image:Ex2-cpp.jpg "Image:ex2-cpp.jpg"
[25]: file:///index.php?title=Image:Ex2Ball.jpg "Image:ex2Ball.jpg"
[26]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2.zip"
[27]: file:///index.php?title=Ooops%21_%3D_Object_Oriented_Programming_%2B_Classes&action=edit&section=6 "Edit section: make objects from your own Classes - part 2.1"
[28]: file:///index.php?title=Image:Ex21h.jpg "Image:ex21h.jpg"
[29]: file:///index.php?title=Image:Ex21cpp.jpg "Image:ex21cpp.jpg"
[30]: file:///index.php?title=Image:Ex21Ball.jpg "Image:ex21Ball.jpg"
[31]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2-1.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2-1.zip"
[32]: file:///index.php?title=Ooops%21_%3D_Object_Oriented_Programming_%2B_Classes&action=edit&section=7 "Edit section: make objects from your own Classes - part 3"
[33]: file:///index.php?title=Image:Ex3-h.jpg "Image:ex3-h.jpg"
[34]: file:///index.php?title=Image:Ex3-cpp.jpg "Image:ex3-cpp.jpg"
[35]: file:///index.php?title=Image:Ex3Ball.jpg "Image:ex3Ball.jpg"
[36]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example3.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example3.zip"
[37]: file:///index.php?title=Ooops%21_%3D_Object_Oriented_Programming_%2B_Classes&action=edit&section=8 "Edit section: make objects from your own Classes - part 4"
[38]: file:///index.php?title=Image:Ex4-h.jpg "Image:ex4-h.jpg"
[39]: file:///index.php?title=Image:Ex4-cpp.jpg "Image:ex4-cpp.jpg"
[40]: file:///index.php?title=Image:Ex4Ball.jpg "Image:ex4Ball.jpg"
[41]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example4.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example4.zip"
