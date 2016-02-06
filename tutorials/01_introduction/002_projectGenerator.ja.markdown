---
.. date: 2012/10/20 17:00:00
.. title: projectGeneratorで新しいプロジェクトを作成
.. summary: openFrameworks 0072で追加された新しいプロジェクト生成ツールについて
.. author: Jesus Gollonet
.. author_site: http://jesusgollonet.com
---

## 1. projectGeneratorとは何ですか?

openFrameworks 0072 からはprojectGeneratorと呼ばれるアドオンを含めて新しいopenFrameworksのプロジェクトを作成するための新しいツールが入っています。以前のバージョンでは、新しいopenframeworksプロジェクトを作成するには既存のexampleを複製したり、手動でアドオンを追加して作成していました。projectGeneratorを使うとプロジェクトの作成がより早くなり間違いが減ります。

更新されたprojectGeneratorが、openFrameworks 0.9.0でリリースされました。

ちなみに、projectGeneratorはopenFrameworksで作られています。

## 2. Usage

新しいプロジェクトを作成するのはとても簡単です。 projectGeneratorはダウンロードしたopenFrameworksの一番上の階層にあります。

![Image: where is the projectGenerator](new-pg-00.png)

アプリケーションをダブルクリックしてください。これが私たちの新しい仲間です。

![Image: projectGenerator GUI](new-pg-01.png)

新しいアプリケーションを作成するためにに指定するいくつかのオプションがあります。

### 1.  名前:

あなたのプロジェクトに名前をつけてください。

### 2. プロジェクト・パス

projectGeneratorを実行すると、あなたがダウンロードしたディストリビューションの、myAppsフォルダへの絶対パスが設定されており、OS Xでは通常は次のようになっています。

	/Users/username/wherever/you/have/openFrameworks/apps/myApps

これは良い初期設定なのですが、あなたはプロジェクトをopenFrameworksに対してどの位置にでも配置することができ、実行することができます。

openframeworksが自己完結できる構造のために、appsフォルダを使用することをお勧めします。

この方法では、もしもopenFrameworks本体やあなたのプロジェクトが移動したとき、または下位のフォルダー名が変更されたとき、生成されたパスは解除されません。

推奨されるファイル構造はこのようになります。

  /.../apps/myApps/
		/myApp1
		/myApp2
		...
  /.../apps/myBigInstallation
		/myProject1
		/myProject2
		...
  /.../apps/myAddonsTests/
		/ofxGifEncoderTests
		/ofxFlashTests
		...

### 3. アドオン

必要となるアドオンがわかっていれば、addonのフィールドをクリックして、プロジェクトに含めたいアドオンを選択します。

![Image: projectGenerator - selecting addons](new-pg-02.png)

### 4. プラットフォーム

ビルド対象のプラットフォームを指定しています。ここには、ダウンロードした際に設定された、プラットーフォームごとの異なるopenFrameworksのディストリビューションが表示されています。つまり、例えば、OS XのディストリビューションとiOSのディストリビューションがMacに入っていたとします。その際には、作成したいディストリビューションの中にある、projectGeneratorを実行しなくてはなりません。

#### アドオンについての注意

- addonフォルダーの中にあるフォルダーが、openFrameworks以外のフォルダーも含めて、すべて表示されます
- すべてのアドオンは（コア・アドオンではないものは特に）正しい方法でパッケージされているとは限りません。
- まだどのアドオンが必要かがわからなくても気にしなくてかまいません。あとから各プラットフォームの従来の方法でいつでも追加することができます。
- [openframeworks wiki](http://wiki.openframeworks.cc/index.php?title=Main_Page)にはアドオンを各プラットフォームにインストールするための方法があります。これらは最新のリリースでは若干のズレがあるかもしれませんが、上手くいかなかったときには躊躇せず[forum](http://forum.openframeworks.cc/index.php)で質問してください。
- [ofxaddons.com](http://ofxaddons.com)にある多くのアドオンを見てみてください。

### 5. 完了!

generateをクリックするとプロジェクトが作成されます。あなたが選択したアドオンのサイズによって時間がかかる場合があります。完了すると一番下のバーにメッセージがでます。

選んだパスのフォルダーに行けば、あなたのプロジェクトがあなたを待っています。コーディングを始めてください。

## 3. その他の注意事項：

- projectGeneratorについてのより高度な事項、開発者のためのよりフレキシブルなバージョンを含めた更に詳しい情報については、[readme](https://github.com/ofZach/projectGeneratorSimple/tree/master/bin)をみてください。
- このガイドに含まれているスクリーンショットやファイルパスはMac用のものですが、手順はどのプラットフォームでも同じです。もう一度言っておくと、何か間違いがあれば、[forum](http://forum.openframeworks.cc/index.php)で質問してください。
