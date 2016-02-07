---
.. date: 2012/02/24 10:00:00
.. title: パーティクルシステム入門
.. summary: プログラムの入門としてパーティクルシステムの作成を楽しみませんか?
.. author: Patricio Gonzalez Vivo
.. author_site: http://patriciogonzalezvivo.com
---

ここまで読んだあなたは、openFrameworksのインストール方法、IDEの設定、サンプルプロジェクトのコンパイル方法を理解できているでしょう。 ここでは次のステップに移り、実際にものを作っていきます。このチュートリアルでは、シンプルなボールを描いて、そのボールとマウスの動き(カーソルの動きやキー入力)とどのようにインタラクションするかを説明しようと思います。

## 1. 描画する

早速、何かを描いてみることから始めます。何かを描画したい場合には `ofApp.cpp` の void `ofApp::draw()` に、コードを書くのでした。

"Hello World"プログラムのグラフィック版として、青い円を描いてみましょう。

~~~~{.cpp}
	void ofApp::draw(){
		ofBackground(0);
		ofSetColor(0,0,255);
		ofFill();
		ofDrawCircle(100, 100, 30);
	}
~~~~

Processingの経験があれば、"of"という文字から始まっている点を除いて親しみやすいコードでしょう。

最初の行では `ofBackground(0);` で背景を黒に設定しています。これは、 `ofBackground(76,63,72)` のようにRGBチャンネルでも設定することができます。より直感的に `ofBackground(ofColor::black);` という指定もできます。 背景を描画した後、これから描画するものに対して描画色を指定しています。 ofSetColor(int r, int g, int b) を使って色を指定すると、その部分から再度変更しない限りプログラムの最後まで指定した色が使われます。このような色の指定はopenGLの手法に倣ったものです。一度、定義すると変更しない限り、その定義が使われます。なれないうちはしっくりと来ないかもしれませんが、属性を扱う際には良い方法だという事がわかってくるでしょう。 ofBackground と同じように `ofSetColor(ofColor::blue)`とすることもできます。 次に`ofFill()`で画像を色で塗るかどうかを定義しています。逆に`ofNoFill()`を使えば輪郭のみを描画します。輪郭のみを描画したい場合には`ofSetLineWidth(4)`というコードも試してみて下さい。 背景と描画色を設定したので、`100, 100`に位置する30ピクセルの小さな円を描きます。

![Image: coordinates.jpg](coordinates.png)

図をみるとお分かりの通り、`x`と`y`の座標は原点`0,0`を左上として見たものです。

そのため、`1024,768`というサイズのウィンドウの中央に円を書きたい場合には`ofCircle(1024/2, 768/2, 30)` のように指定します。もし、ウィンドウの大きさが変化したらどうなるでしょう? 直接具体的な数値を指定していまっているので、円の位置は中心からずれてしまいます。

このような場合にはoFのメソッドを使って解決してみましょう。oFでは`ofGetWindowWidth()`と`ofGetWindowHeight()`というウィンドウの高さと幅を返すメソッドが用意されています。何かを描画したい場合にはこのメソッドは重宝します。また、同じようなメソッドとして`ofGetScreenWidth()`、`ofGetScreenHeight()`というスクリーンの高さと幅を返すメソッドもあります。

これらのメソッドを使って、さきほどのプログラムを書き換えてみましょう。

~~~~{.cpp}
	void ofApp::draw(){
		ofBackground(30,10,30);
		ofSetColor(ofColor::blue);
		ofFill();
		ofDrawCircle( ofGetWindowWidth()*0.5, ofGetWindowHeight()*0.5, 30);
	}
~~~~

これで、ウィンドウサイズを変えても小さな青い円はウィンドウの中心に位置するようになりました!

グラフィックに関しては、[ドキュメントのGraphicのセクション](/ja/documentation/graphics/)を見れば、`ofDrawLine()`、`ofDrawRect()`のような他のメソッドを探すことができます。

oFのドキュメントではopenFrameworksの全ての関数とクラスがまとまっています。もっとたくさんのコードを試していくとすぐに「oFのやりかた」がわかるようになり、直感的にプログラムを書くことが出来るようになるでしょう。

課題: ここまで学んできた知識と[ドキュメント](/ja/documentation/)を使って、デジタルなカンディンスキー風のアートワークを作成してみてください。良い結果を得るために`ofEnableSmoothing()`を使ってみてください。グラフィックのエッジや`ofBackgroundGradient(ofColor::white, ofColor(255,255,200), OF_GRADIENT_CIRCULAR);`で生成したグラデーションをスムーズに描画することができます。

![Image:kandisky.jpg](kandinsky.jpg)


## 2. 物体を動かす

さて、ここまでやってたことには、あなたが期待していたであろうインタラクティブ性はありませんでした。物体を動かしてみましょう。

openFrameworkのアプリケーションでは`mouseX`と`mouseY`という2つの変数が利用できます。これらの変数は名前通りマウスの位置を表しています。前述のサンプルコードの `ofApp::draw()`の中身を書き換えてみましょう。

~~~~{.cpp}
	void ofApp::draw(){
		ofBackground(30,10,30);
		ofSetColor(ofColor::blue);
		ofFill();
		ofDrawCircle( mouseX, mouseY, 30);
	}
~~~~

円ではなく、矩形を使いたい場合( `ofDrawRect(mouseX, mouseY, 30, 30);` ) マウスの位置と矩形の中心があっていないことに気付くでしょう。これは矩形が左上から描かれるためです。スクリーンへの描画と同じように行いたい場合には矩形を中心から描く場合は、`ofSetRectMode(OF_RECTMODE_CENTER);`を使って下さい。

大文字で"OF_"から始まる全ての命令は、モードや予め定義されている型を表しています。多くの種類を使うので、使用しているIDEの自動補完で探すか、「Jump to definition」機能を使って調べてみて下さい。

これまでのプログラムでは`draw()`メソッド内だけにコードを書いていましたが、oFの特徴でもある`update()`、`setup()`を使っていきます。まずは円を動かすための2つの変数`x`と`y`を定義します。変数を`draw()`か`update()`メソッド上で定義するとループが終わる度に生成、破棄されます。変数を各ループ上で「保存」しておきたい場合には常に動いているofAppクラスで定義しておかなければなりません。ofAppクラスに変数を定義するには`ofApp.h`を以下の様に記述します。

~~~~{.cpp}
	class ofApp : public ofBaseApp{
	public:
		void setup();
		void update();
		void draw();

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

		float xPos;
		float yPos;
	};
~~~~

この2つの変数はボールの最新の位置を保存しておくために利用し、マウスの位置に追随してボールが動くようにしています。`ofApp.cpp`に以下のコードを記述しましょう。

~~~~{.cpp}
	void ofApp::setup(){
		// 輪郭を滑らかにする
		ofEnableSmoothing();

		// フレームレートを設定
		ofSetFrameRate(30);

		// ボールの初期X座標
		xPos = ofGetWindowWidth()*0.5;

		// ボールの初期Y座標
		yPos = ofGetWindowHeight()*0.5;
	}

	void ofApp::update(){
		xPos += ( mouseX - xPos )*0.1;
		yPos += ( mouseY - yPos )*0.1;
		// ボールからマウスの位置までのx軸とy軸の距離を計算
		// その中の少しの割合だけxとyに加えていく
	}

	void ofApp::draw(){
		ofBackgroundGradient(ofColor::gray,ofColor(30,10,30), OF_GRADIENT_CIRCULAR);
		ofSetColor(200,200,124);
		ofFill();
		ofDrawCircle( xPos, yPos, 30);
	}
~~~~

無事にボールを動かすことができました。別の典型的なインタラクションとして、キーボードを使う方法があります。

プログラムと対話する方法としてはキーボードを使う方法もあります。openFrameworksではマウスとキーボードのイベントを扱うために異なるメソッドが用意されています。ofApp.cppの下の方を見てみると`keyPress()`、`keyRelease()`、`mouseMove()`、`mouseDragged()`、`mousePressed()`、`mouseReleased()`というメソッドがあります。

ここからさらに、`ofRandom()`、`ofNoise()`といったメソッドを使ってランダムな効果を与えることができます。このメソッドについては[ドキュメント](/ja/documentation/)を読むことをおすすめします。また、`openFrameworks/examples/math`にあるGlan Levinによる`ofNoise`に関するサンプルを見ても良いでしょう。

マウスボタンを押すとボールがウィンドウ内のランダムな位置に移動するというシンプルな効果を加えます。

~~~~{.cpp}
	void ofApp::mousePressed(int x, int y, int button){
		xPos = ofRandom( ofGetWindowWidth() );
		yPos = ofRandom( ofGetWindowHeight() );
	}
~~~~

課題: クラス内の全てのメソッドからアクセスすることができる変数を作る方法を学んだので、データを保存し、それを再利用する方法が分かりました。カンディンスキーのプロジェクトで、ウィンドウ内をクリックすると全ての要素の位置が変わる様にしてみて下さい。カンディンスキーメーカーです。慣れてきたら、動きにアニメーションを加えても良いでしょう。

## 3. クラスの存在を神に感謝

先程の課題では、最終的に似たようなコードを繰り返し書かなければならないことがわかります。ここで、もっと簡単にして、プログラムをより読み易く反復を省いていくために、オブジェクト指向プログラミング(C++の基本的な機能です)に触れてみましょう。

「ボール」をイメージしてみましょう。この丸い物体は、位置や色といったいくつかの「属性」をもっています。さらに、移動するなどいくつかの「動作」をします。これらの抽象化されたアイテムは、下記のようにまとめられます。

Ball:

- position (属性)

- color (属性)

- move (関数またはメソッド)

`.h`ファイル(ヘッダーファイル)はまさにオブジェクトを作るためのこれらのリストを定義するファイルなのです。新たに2つのファイルをプロジェクトに加えてみましょう(ファイルの作成方法は使用しているIDEによって異なります)。`ball.h`(ボールを構成する要素を定義する)と`ball.cpp`(ボールを構成する要素が互いにどのようにふるまうかを定義する)です。

![Image:kandisky.jpg](newFile.png)

`ball.h`は以下の様にします。

~~~~{.cpp}
	#ifndef BALL_H
	#define BALL_H

	#include "ofMain.h"

	class Ball {
	public:
		// Constructor
		Ball();

		// Methods
		void moveTo();
		void draw();

		// Properties
		int x;
		int y;
		ofColor color;
	};
	#endif
~~~~

自作のクラスを作成できました! いくつか新しい内容が出てきました。まず最初の2行(`#ifdef...` で始まる部分)は、コンパイラーが「インクルーディング (including)」を複数行うことを防いでいます。この部分を削除してしまいたいと思うかもしれませんが、これは、C++では標準的な方法です。コンパイラーに、「まだ`BALL_H`と名付けた変数(正確には定数)がまだ存在していない場合のみ処理しなさい。コンパイルする際には`ofMain.h`が必要です」と伝えているのです。その結果、変数`BALL_H`が生成され、最後の`#ENDIF`までのコードがコンパイルされます。もし、再度このファイルがコンパイラーに読み込まれても、`BALL_H`変数が既に存在しているの、再度このクラスがコンパイルされることはありません。`ofMain.h`は、openFrameworkの全てのメソッドやオブジェクトへのアスセスを可能にします。これにより、単なるC++ではなく、oFスタイルのコードになります。ここから魔法が生まれるのです。

オブジェクトを作るにはクラスの関数を呼び出し、それをコンストラクタに渡す必要があります。コンストラクタ`Ball()`はオブジェクトを作成するときに初期化を行うための関数です。例えば`int i`と書いて、iを自動的に0に初期化したいという場合です。こうした処理は、コンストラクタが行います。このプロパティーは、既に馴染みにものです。さらにそこに`draw()`関数を追加しています。

重要: クラスを定義する際には末尾の};に注意して下さい。これを忘れるとエラーになります。

`ball.cpp`のファイルに移動して、全てを準備してしまいましょう。

~~~~{.cpp}
	#include "ball.h"

	Ball::Ball(){
		// 色の初期値を設定する
		color.set( ofRandom(255), ofRandom(255), ofRandom(255));

		// ボールのx座標の初期位置
		x = ofRandom( ofGetWindowWidth() );

		// ボールのy座標の初期位置
		y = ofRandom( ofGetWindowHeight() );
	}

	void Ball::moveTo(){

	}

	void Ball::draw(){
		ofSetColor(color);
		ofFill();
		ofDrawCircle( x, y, 30);
	}
~~~~

ここで、`ball.h`で定義したメソッドの実装を行っています。コンパイラーには以下の2つを伝えています。

- `#include "ball.h"` このファイルは`ball.h`ファイルと呼応しています
- `Ball::` は、コンパイラーに、このメソッドが`Ball`クラスのものであることを伝えています。これは、例えば名字のようなものです。

最後に、`ofApp.h`に`#include "ball.h"`の記述を加えて、クラスを追加します。

~~~~{.cpp}
	#pragma once

	#include "ofMain.h"

	#include "ball.h" // Add this

	class ofApp : public ofBaseApp{
	public:
		void setup();
		void update();
		void draw();

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

		Ball theBall;	// Replaces the previous variables
						// with a new object that contains
						// the previous information
	};
~~~~

`ofApp.cpp`で、以下のように変更を加えます(`ofApp::mousePressed()`は空になっています)。

~~~~{.cpp}
	void ofApp::setup(){
		// Smooth edges
		ofEnableSmoothing();

		// Fixed framerate
		ofSetFrameRate(30);

		// No need to define the initial position of the ball
		// because the Ball constructor does it for you
	}

	void ofApp::update(){
		theBall.x += ( mouseX - theBall.x )*0.1;
		theBall.y += ( mouseY - theBall.y )*0.1;
	}

	void ofApp::draw(){
		ofBackgroundGradient(ofColor::gray,ofColor(30,10,30), OF_GRADIENT_CIRCULAR);

		// Now we have a method that does the drawing stuff
		theBall.draw();
	}
~~~~

ランダムな値から自動的にボールが生成され、必要に応じて`object.property`や`object.method()`で内部の情報にアクセス可能な、汎用的なオブジェクトが作成できました。いつでも好きなときに、新たなBallを作成して描画するこができるのです! 素晴しいと思いませんか?

最後に、オブジェクトのメソッドに引数を渡す方法について解説します。`ofApp::update()`を見ると、`x`と`y`のプロパティをドットシンタックス(`.`)によって、変更しています。この方法は悪くはないですが、例えば`myBall.moveTo(mouseX,mouseY)`というように、より可読性の高いものにしたいものです。

`ball.h`のメソッドを変更していきましょう。

~~~~{.cpp}
	// メソッド
	void moveTo(int _xDestiny, int _yDestiny);
	void draw();
~~~~

そして `ball.cpp`

~~~~{.cpp}
	void Ball::moveTo(int _xDestiny, int _yDestiny){
		x += ( _xDestiny - x )*0.1;
		y += ( _yDestiny - y )*0.1;
	}
~~~~

そして、ofAppプロジェクトに以下のように加えます。

~~~~{.cpp}
	void ofApp::update(){
			theBall.moveTo(mouseX,mouseY);
	}
~~~~

これで、プロパティー`Ball::x`と`Ball::y` は、外部の誰かから直接操作されることは無くなりました。このような場合、クラスの定義(`ball.h`ファイル)で"private"にしておくのが良いでしょう。

~~~~{.cpp}
	#ifndef BALL_H
	#define BALL_H

	#include "ofMain.h"

	class Ball {
	private:
		// プロパティー
		int x;
		int y;

	public:
		// コンストラクター
		Ball();

		// メソッド
		void moveTo();
		void draw();

		// プロパティー
		ofColor color;
	};
	#endif
~~~~

"private"内に書かれたプロパティーは、クラスの内部からしか変更できなくなりました。この方法は、コードをいつどのように変更するのかをコントロールする良いやりかたです

## 4. 物理法則を使う

これまでの方法でパーティクルシステムの作成を続けていく前に、良いニュースがあります! 物理法則をベースにした効果を作るために、本格的な数学を処理する必要はありません。openFrameworkはもっと簡単にできる機能が提供されています。もし、それでも数学的に処理していきたいと考えるなら、Kiethによる[数学チュートリアル](/ja/tutorials/maths/001_vector_maths.html)をみてみると良いでしょう。すばらしい新たな世界に導いてくれます。

多くの有益なクラスが、`ofVectorMath`の中に含まれています。簡単に力を扱うことをができるようになります。Ballクラスを作ったことを思い出して下さい。ofVec2fクラスのオブジェクトはそれぞれxとyの値を持ち、ball.x、ball.yと同じようにアクセスすることができます。また.dot()のような便利なメソッドを持ち、+、-、* 、/のような演算子を使って計算を行うこともできます。
