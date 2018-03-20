---
.. title: サウンドの読み込みと再生
.. type: howto
---

音の読み込みと再生はとても簡単です。ofSoundPlayerを初期化して、サウンドファイルを読み込んで、再生するだけです。

まず最初に、サウンドファイルを、bin/dataフォルダ内に入れてください。

![Screenshot of Example)](screenshot.png)

### ヘッダーファイル(.h)内で

ofSoundPlayerを初期化します。

	ofSoundPlayer 	mySound;


### 実装ファイル(.cpp)内で

setupメソッド内で、サウンドファイルを読み込みます。.mpr、.wavなど、様々な種類のサウンドファイルを読み込むことができます。

	void ofApp:setup(){
		mySound.load("fileName.mp3");
	}

次に、サウンドファイルを再生します。もし、setupメソッドに下記のコードを加えると、サウンドはアプリケーションを開始した際に1回だけ再生されます。もし、継続して再生したい場合は、ループ再生するように設定することも可能です。


	void ofApp:setup(){
		mySound.load("fileName.mp3");
		mySound.play();
	}

マウスボタンを押した際や、キー入力、マウスドラッグなどの際に再生をトリガーすることも可能です。例えば、以下のように記述します。

	void testApp::keyPressed  (int key){
		if(key == "p"){
			mySound.play();
		}
	}

### 詳細な情報

oFでサウンドを扱うより詳細な方法は、oF Bookの[sound chapter](http://openframeworks.cc/ofBook/chapters/sound.html)を、参照してください。

