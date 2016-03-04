---
.. title: ビデオをロードして再生する
.. type: howto
---

ロードして再生するビデオファイルを選択します。

oFのプロジェクト内の bin/dataフォルダに "movies" と名前をつけた新規フォルダを作成し、そこにビデオファイルを格納します。

#### ```ofApp.h``` ファイル内で :

ロードしたいビデオのために ```ofVideoPlayer```クラスのインスタンス変数を追加します。

 	ofVideoPlayer fingerMovie;

#### ```ofApp.cpp``` ファイル内で :

```setup()``` 関数内で :

```ofVideoPlayer ```クラスの```load()```メソッドを呼び出して、相対パスで指定してビデオをロードします。

	videoName.load("INSERT FILE PATH HERE");
	
ビデオの再生を開始します。

	videoName.play();

例 :

	void ofApp::setup(){
		fingerMovie.load("movies/fingers.mov");
		fingerMovie.play();
	}
	
	
```update()``` 関数内で :


	videoPlayer.update();


例 :

	void ofApp::update(){
		fingerMovie.update();
	}

```draw()``` 関数内で :


	videoPlayer.draw(xPosition, yPosition, width, height);

例 :

	void ofApp::draw(){
		fingerMovie.draw(0, 0, 400, 300);
	}
	
### 詳細な情報

このサンプルを確認してください : ```examples/video/videoPlayerExample```
