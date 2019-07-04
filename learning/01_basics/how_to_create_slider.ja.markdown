---
.. title: 変数を操作するGUIスライダーを作る
.. type: howto
---

GUIスライダーは、とても簡単に作れます。GUIのアドオンを追加してプロジェクトを生成し、ofxFloatSliderとguiを初期化し、guiを描画して、スライダーを特定の変数にリンクします。

プロジェクト生成時に、ofxGuiを含めます。

![Screenshot of Example)](newGui.png)

Xcodeでアプリケーションを開くと、ソースファイルの中にGUIのアドオンが入っています。

![Screenshot of Example)](guiClass.png)

### ヘッダーファイル (.h) に記述

"ofxGui.h"ファイルをインクルードします。

	#include "ofxGui.h"

スライダーとパネルを初期化します。ここでは、円の半径をコントロールするのに```ofxFloatSlider radius```を使用してみます。もし、整数値で指定したい場合は、```ofxIntSlider```を使用します。

	ofxFloatSlider radius;
	ofxPanel gui; 


### 実装ファイル (.cpp) に記述

「gui」と名付けたパネルをセットアップして、半径を指定するスライダーを ```gui.add()``` で追加します。ここでは、"radius"という文字列でスライダーのラベルをつけています。初期値は140、スライダーの幅を10から300の範囲で指定できるようにします。

	void ofApp::setup(){
		gui.setup();
		gui.add(radius.setup("radius", 140, 10, 300));
	}

確認のため、```draw()``` 内で円を描いて、「半径」として円を描く3つめのパラメータに値を渡します。


	void ofApp:draw(){
		ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, radius);
		gui.draw();
	}

アプリケーションを実行して、スライダーを前後させると、円の大きさが変化します。

![Screenshot of Example)](finalOutput.png)
