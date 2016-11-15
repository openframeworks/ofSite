---
.. title: ウィンドウの大きさを指定する
.. type: howto
---

#### ```main.cpp```ファイル内に記述

```ofSetupOpenGL ``` メソッドは、スクリーン上にどのようにプロジェクトを表示するかを指定することができます。

	ofSetupOpenGL(width, height, DISPLAY_MODE);

最初の2つのパラメータは、ウィンドウの幅と高さを指定しています。

	ofSetupOpenGL(1024, 768, DISPLAY_MODE);
	
3つ目のパラメータはウィンドウを表示する3種類のモードを選択できます。

```OF_WINDOW```モードは、指定した幅と高さでフローティング・ウィンドウを生成します。

	ofSetupOpenGL(1024, 768, OF_WINDOW);
 
```OF_FULLSCREEN```モード、指定した幅と高さでスクリーンの左上にプロジェクトを表示します。余白はグレーの背景になります。

	ofSetupOpenGL(1024, 768, OF_FULLSCREEN);

#### ofApp::setup() で指定する方法

別のやり方として、ofAppのsetup関数でウィンドウの大きさ (そして場所) を指定することも可能です。アプリケーションが起動した時に実行されます。

```cpp
void ofApp::setup(){
    ofSetWindowShape(500, 500);
    ofSetWindowPosition(10, 10);
}
```
    
