## -*- coding: utf-8 -*-
.. title: emscripten

emscriptenセットアップガイド
===========

openFrameworksで作ったプロジェクトをWebで公開したいと思ったことはありませんか？いつもはビデオや写真を撮りますが、UIはどうでしょう？マウスを使ったエフェクトをどうやって見てもらいますか？そこで Emscripten の出番です。EmscriptenはあなたのC++コードをものの数分でJavaScriptに変換してくれるのです！あなたの作ったOFプロジェクトはポートフォリオに「すぐに」公開できます。

このガイドではあなた自身のスケッチをWebページに変換したいときにいつでも再利用できるようなやり方で、openFrameworksのディストリビューションに含まれるexampleプロジェクトのひとつをコンパイルする方法を紹介します。すでにopenFrameworks 0.9をダウンロードしていれば（emscriptenはOFのバージョン0.9以上で動作します）、あとはemscriptenをインストールしてプロジェクトをコンパイルするだけです。ひとつずつ見ていきましょう。

Emscriptenのインストール
------------------

Emscriptenを導入する推奨の方法は、EmscriptenのリポジトリからGitで直接インストールすることです。
emsdkをインストールしたい場所でターミナルを開き、以下のコマンドを実行してください。

```bash
git clone https://github.com/emscripten-core/emsdk
cd emsdk
./emsdk install sdk-1.40.0-64bit
./emsdk activate sdk-1.40.0-64bit
source ./emsdk_env.sh
```

32bitのシステムでは、`-64bit`を`-32bit`に変更してください。

_Note: 現在の`emsdk`スクリプトはPython2を使用しているため、あなたのコンピュータでデフォルトの`python`コマンドがPython3にエイリアスされている場合はエラーが発生するかもしれません。この場合、上記のコマンドを明示的にPython2で実行してみてください。例: `python2 ./emsdk update`_

これには少し時間がかかります。終わったら`source ./emsdk_env.sh`と入力・実行してEmscriptenへのパスを通しましょう。次回のセッションのために、このコマンドが出力した変数群をコピーしてあなたの`.profile`ファイルに加えておくのもよいでしょう。

_Note: 以前にインストールしたemscriptenが残っている場合は、OF_FOLDERにあるコンパイル済みコードを削除したいでしょう。コンパイルを試行する前に、`OF_FOLDER/libs/openFrameworksCompiled/lib/emscripten/`の中にある全てのファイルおよび`obj`フォルダと、プロジェクトフォルダにある全ての`obj/`フォルダを削除してください。_

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
