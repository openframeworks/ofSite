## -*- coding: utf-8 -*-
.. title: emscripten

emscriptenセットアップガイド
===========

openFrameworksで作ったプロジェクトをWebで公開したいと思ったことはありませんか？いつもはビデオや写真を撮りますが、UIはどうでしょう？マウスを使ったエフェクトをどうやって見てもらいますか？そこで Emscripten の出番です。EmscriptenはあなたのC++コードをものの数分でJavaScriptに変換してくれるのです！あなたの作ったOFプロジェクトはポートフォリオに「すぐに」公開できます。

このガイドではあなた自身のスケッチをWebページに変換したいときにいつでも再利用できるようなやり方で、openFrameworksのディストリビューションに含まれるexampleプロジェクトのひとつをコンパイルする方法を紹介します。すでにopenFrameworks 0.9をダウンロードしていれば（emscriptenはOFのバージョン0.9以上で動作します）、あとはemscriptenをインストールしてプロジェクトをコンパイルするだけです。ひとつずつ見ていきましょう。

Emscriptenのインストール
------------------

[このページ](https://kripken.github.io/emscripten-site/docs/getting_started/downloads.html)からあなたのOSに対応するSDKをダウンロードしてください。Windowsの場合、いずれかの`.exe`インストーラをダウンロードし、ダブルクリックしてウィザードに従います。MacとLinuxの場合、`Portable Emscripten SDK for Linux and OS X`を見つけてダウンロードします。ダウンロードが終わったらアーカイブを解凍して任意のディレクトリに展開し、ターミナルを開いて以下のコマンドを実行してください。

```bash
# 利用可能なツール群の最新のレジストリをフェッチする
./emsdk update

# 最新のSDKをインストールする
./emsdk install latest

# "latest"のSDKを有効にする
./emsdk activate latest
```

これには少し時間がかかります。終わったら`source ./emsdk_env.sh`と入力・実行してEmscriptenへのパスを通しましょう。次回のセッションのために、このコマンドが出力した変数群をコピーしてあなたの`.profile`ファイルに加えておくのもよいでしょう。

emscriptenを使用してopenFrameworks プロジェクトをコンパイルする
--------------------------------------

ターミナルを開いて任意のexampleフォルダ（例：`examples/3d/3DPrimitivesExample`）に移動したら、次のコマンドを使ってコンパイルします。

```bash
emmake make
```
コンパイルが終わると`examples/3d/3DPrimitivesExample/bin`フォルダの中に`3DPrimitivesExample.html`ができているはずです。次のコマンドでこのファイルを開いてください。

```bash
emrun bin/3DPrimitivesExample.html
```

WebGLに対応していないブラウザでは動作しません。その場合はChromeなどで開いてみましょう。

```bash
emrun --browser chrome bin/3DPrimitivesExample.html
```

すべて上手く動いていればこのような画面が見えるはずです。

![](/setup/emscripten/3dprimitives.png)

このチュートリアルはRegine Flores Mirによる[こちらの記事](http://www.reginafloresmir.com/blog/2015/5/14/openframeworks-on-the-line)をもとにしました。
