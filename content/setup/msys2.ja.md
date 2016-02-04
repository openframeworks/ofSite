## -*- coding: utf-8 -*-
.. title: msys2

MSYS2
=====

MSYS2のインストール
----------------

まず[公式ページ](https://msys2.github.io/)か[リポジトリ](http://sourceforge.net/projects/msys2/files/Base/x86_64/)からインストーラーをダウンロードしてインストールします。

Qt Creatorを使うつもりであれば、msys2はデフォルトの場所(c:\msys64)にインストールされている必要があります。

インストールが済んだらMSYS2のシェルを起動してシステムパッケージを更新してください。

    pacman --noconfirm  --needed -Sy bash pacman pacman-mirrors msys2-runtime

シェルを再起動し、残りのパッケージを更新します。

    pacman --noconfirm -Su

これでopenFrameworksをインストールする準備ができました。


openFrameworksのインストール
-------------------------

qt creator / msys2版のoFをダウンロードして解凍してください。

MSYSシェルを起動して依存関係のインストールをおこないます。

    cd your_oF_directory/scripts/msys2
    ./install_dependencies.sh`

**MINGW32シェル（MinGw-w64 Win32 Shell）**を起動してライブラリをコンパイルします。

	cd your_oF_directory/libs/openFrameworksCompiled/project
    make

`make -j4`とすることで複数コアを使った並列ビルドも可能です(数字部分は使いたいコア数に応じて変更してください)。


PATH環境変数の設定
-------------------------

MSYS2とともにopenFrameworksを使うためにはMSYS2のパッケージマネージャーである`pacman`が提供するいくつかのDLLが必要になります。PATH環境変数はDLLの場所をシステムに教えるためのものです。Windowsでは、実行ファイルはカレントディレクトリ、システム環境変数で定義されたPATH、ユーザー環境変数で定義されたPATHの順に探索されます。

PATH環境変数の設定方法は[こちら](http://www.computerhope.com/issues/ch000549.htm)を参照してください。

ここでは your_msys2_directory\mingw32\bin;your_msys2_directory\usr\bin をPATHに加える必要があります。これは通常

	c:\msys64\mingw32\bin;c:\msys64\usr\bin

となるでしょう。

コマンドラインから設定することもできます。コマンドプロンプトを起動してユーザーPATH環境変数を設定しましょう。

	setx PATH "%PATH%;your_msys2_directory\mingw32\bin;your_msys2_directory\usr\bin;"

もし管理者権限を持っていればシステム環境変数の設定も可能です。この場合、すべてのユーザーが恩恵を受けることができるでしょう。

これで完了です。まずはサンプルプロジェクトを楽しんでみてください！

サンプルプロジェクトの実行
----------------
例として3DPrimitivesExampleをコンパイルしてみましょう。

    cd your_oF_directory/examples/3d/3DPrimitivesExample
    make

`make run`と打つかダブルクリックしてアプリケーションを起動してください。


Makefile
--------

すべてのサンプルプロジェクトにはMakefileがあり、config.makeファイルおよびaddons.makeファイルを使用して設定をおこなうことができます。

config.make: 一般的なMakefileの記法を使ってサーチパスやライブラリの追加をおこなうためのファイルです。ファイル内のコメントを参考にしてください。

addons.make: アドオンを使いたい場合は、そのアドオンの名前をこのファイルに書き加えます。

QtCreator
---------

IDEとしてQt Creatorを使用することもできます。詳しくは[セットアップガイド](../qtcreator)を参照してください。

よくある質問
---------------------
- exeファイルをダブルクリックすると "TLSv1_1_client_method missing" というエラーが出ます。

実行ファイルが見つけたssleay32.dllおよびlibeay32.dllがTLS v1.1をサポートしていないために出るエラーで、Intel iClsソフトウェアでよく起こります。解決するにはyour_msys2_directory\mingw32\binのパスを衝突しているパスより前に移動させます。衝突しているパスがシステム環境変数の中にあり、管理者権限を持っていない場合は、ssleay32.dllとlibeay32.dllをyour_msys2_directory\mingw32\binからexeファイルのあるフォルダにコピーもしくはリンクしてください。

- 会社のネットワークにプロキシが設定されているため、pacmanからパッケージをダウンロードできません。

HTTP\_PROXYおよびHTTPS\_PROXY環境変数を設定する必要があります。コマンドプロンプトで以下のように打ち込んでください。

	set http_proxy=http://your_proxy:your_port
	set http_proxy=http://username:password@your_proxy:your_port
	set https_proxy=https://your_proxy:your_port
	set https_proxy=https://username:password@your_proxy:your_port

パスワードに含まれる特殊文字をエスケープするのをお忘れなく。

many thanks!! OFteam
