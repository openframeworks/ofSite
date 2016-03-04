---
.. title: 画像のロードと表示
.. type: howto
---

ロードする画像を選択して表示します。画像は、.gif、.jpg、または .png フォーマットが使用可能です。

oFのプロジェクトの bin/data フォルダー内に「image」という名前で新規にフォルダーを作り、画像を格納します。


#### ```ofApp.h``` ファイル内で :

ロードしたい画像のそれぞれに対して、 ```ofImage``` 型のインスタンス変数を追加します。

 	ofImage bikers;
 	ofImage bikeIcon;

#### ```ofApp.cpp``` ファイル内で :

 ```ofImage``` クラスの ```load()``` メソッドを呼びだして、画像をロードします。画像は相対パスで指定します。

	imageName.load("INSERT FILE PATH HERE")

例 :

	void ofApp::setup(){
		bikers.load("images/bikers.jpg");
		bikeIcon.load("images/bike_icon.png");
	}
	
 ```ofImage``` クラスの ``` draw() ``` メソッドを呼びだして、画像を表示します。画面上の水平と垂直の座標上の点を指定して配置します。画像の左上の角が配置の基準点になります。
	
	imageName.draw(xPosition, yPosition)

例 :

	void ofApp::draw(){
		bikers.draw(0, 0);
		bikeIcon.draw(190, 490);
	}

加えて、表示する画像の *幅* と *高さ* を新たに指定してリサイズすることも可能です。

	imageName.getColor(xPosition, yPosition, width, height)
	
例 :
	
	void ofApp::draw(){
		bikeIcon.draw(190, 490, 20, 20);
	}
	
### 詳細な情報

このサンプルを確認してください : ```examples/graphics/imageLoaderExample```

