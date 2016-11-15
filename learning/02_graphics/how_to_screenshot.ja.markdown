---
.. title: スクリーンショットを撮る
.. summary: 作品のスクリーンショットを撮る方法
.. type: howto
---

作品のスクリーンショットを撮る方法はとても簡単です。ofImageを初期化して、何かを描いて、描画した内容をキャプチャーする ```img.grabScreen();``` を使います。

### ヘッダーファイル (.h) 内で

「img」と名前をつけたofImageを初期化します。

	ofImage 	img;


### 実装ファイル (.cpp) 内で

何か描きましょう! 簡単な例として、```draw``` 関数内で円を描いてみます。

	void ofApp:draw(){
		ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, 200);
	}

次に、スクリーンをキャプチャーして保存するきっかけを作ります。ここでは、「x」キーを押すと (0, 0) の点から画面の幅 ```ofGetWidth()``` と高さ ```ofGetHeight()``` の矩形で画面をキャプチャーして保存しています。

	void ofApp:keyPressed(int key){
		if(key == 'x'){
			img.grabScreen(0, 0 , ofGetWidth(), ofGetHeight());
			img.save("screenshot.png");
		}
	}


これを追加することで、どのようなアプリケーションでも「x」キーを押した時に、スクリーンショットをアプリケーションのフォルダの bin/data 内に保存するようになります。


![Screenshot of Example)](useCodeToScreenshot.png)
![Screenshot of Example)](screenShot.png)
