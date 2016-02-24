---
.. title: ファイルの保存/エクスポート
.. type: howto
---

openFrameworksは、他のファイルパスを指定しない限りは、bin/dataフォルダにデータが保存されます。


![File location bin/data](How_to_save_a_file_output_whereTo.png)

もし大量のファイルを保存したい場合は、それぞれに別々のファイル名をつける必要があります。簡単な方法は、現在の時刻を利用するやり方です。なぜなら、絶対に同じ名前にはならないからです。```"myFile.xml" ```と名付ける代わりに、保存するたびに```"myFile_" + ofGetTimestampString() + ".xml"```とすると、それぞれのファイルに別々のファイル名が付加されます。

![using timeStamps versus not](How_to_save_a_file_usingTimeStamps.png)

アプリケーションからどこにでもファイルは保存できますが、特定のタイミングでファイルの保存を実行したい時もあるでしょう。特定のキーを押したときにファイルをセーブしたい場合は、以下のように記述します。

	void ofApp::keyPressed  (int key){
		if(key == 's'){
		// ここでファイルを保存!!
		}
	}

アプリケーションを終了したタイミングで保存したい場合は、以下のようになります。

	void ofApp::exit (){
		// ここでファイルを保存!!
	}

注意: exit() はアプリケーションを閉じるか終了した時、自動的に実行されます。しかし、IDEからアプリケーションをストップした際には実行されません。


## テキストファイル

### ヘッダーファイル (.h) に記述

```ofFile myTextFile;```

### 実装ファイル (.cpp) に記述

setup内でファイルを生成。

```myTextFile.open("text.txt",ofFile::WriteOnly);```

もし既存のファイルに追加したい場合、以下のように記述し

```myTextFile.open("text.txt",ofFile::Append);```

テキストを追加します。

```myTextFile << "some text"```

これで自動的に保存されます。ですので、保存するための関数を呼び出す必要はありません。

## XML設定ファイル

### ヘッダーファイル (.h) に記述
	
XMLのアドオンをInclude the XML addon at the top:

```#include "ofxXmlSettings.h"```

変数を初期化

```ofxXmlSettings XML;```
	
### 実装ファイル (.cpp) に記述
	
XMLファイルに何かデータを追加

```XML.setValue("settings:number", 11);```

保存する!

```XML.saveFile("mySettings.xml");```

より詳細な使用方法は、examples/utils/xmlExample を参照してください。

## 画像

### ヘッダーファイル (.h) に記述

```ofImage img;```

### 実装ファイル (.cpp) に記述

画像を作成します。画像を生成する方法はいろいろあります! カメラからキャプチャー、ピクセル単位で生成、FBOから取得するなどです。ここでは1つのやり方として、スクリーンに描画してそれをキャプチャーしてイメージファイルにする方法を紹介します。

	//draw関数内で
	ofSetColor(255,130,0);
	ofFill();
	ofDrawCircle(100,100,50);   
	// keyPressed関数内で
	img.grabScreen(0,0,300,300);

この後、任意の場所に保存するきっかけを作ります。おそらく、keyPressedやexit関数になるでしょう。.png もしくは .jpg 形式で保存が可能です。

```img.save("myPic.jpg");```

追加のパラメータを指定して、保存するイメージの品質を指定することも可能です。

```img.save("myPic.jpg",OF_IMAGE_QUALITY_LOW);```

デフォルトの値は ```OF_IMAGE_QUALITY_BEST```です。選択できるオプションは、 ```OF_IMAGE_QUALITY_BEST, OF_IMAGE_QUALITY_HIGH, OF_IMAGE_QUALITY_MEDIUM, OF_IMAGE_QUALITY_LOW, OF_IMAGE_QUALITY_WORST``` があります。

以下の画像は、この方法で出力されました。

![image of outpu](How_to_save_a_file_output.jpg)

より詳細な使用方法は、examples/graphics/imageSaverExample を参照してください。