## -*- coding: utf-8 -*-
.. title: msys2

[openFrameworks](/) | [Documentation table of contents](table_of_contents.md)

msys2
=====

msys2をインストール
----------------

まず、 [1クリックインストーラー](https://msys2.github.io/) もしくは [リポジトリ](http://sourceforge.net/projects/msys2/files/Base/x86_64/) を直接解凍してMSYS2をインストールします。

もしQtCreatorを使用したいと考えているなら、msys2はデフォルトのインストール場所の c:\msys64 にインストールする必要があります。

**MSYS2 shell** (`C:\msys64\msys2_shell.bat`) を開いて、システムのパッケージをアップデートします。

    pacman --noconfirm  --needed -Sy bash pacman pacman-mirrors msys2-runtime

いちど開いていたshellを閉じ、新規に起動して残りのパッケージをアップデートします。

    pacman --noconfirm -Su

これでopenFrameworksをインストールする準備ができました。


openFrameworksのインストール
-------------------------

**qt creator / msys2** バージョンのopenFrameworksをダウンロードして解凍します。

**MSYS shell** (`C:\msys64\msys2_shell.bat`) を開いて、openFrameworksの依存関係をインストールします。

    cd your_oF_directory/scripts/msys2
    ./install_dependencies.sh`

もし、Qt Creatorの使用を考えているなら、依存関係のインストールスクリプトの実行を終えてから、コンピューターの再起動をお勧めします。再起動によって、システムへの変更が正しく更新されます。

 **MINGW32** shell (`C:\msys64\mingw32_shell.bat`を起動) を開いて、openFrameworksのライブラリーをコンパイルします。 

    cd your_oF_directory/libs/openFrameworksCompiled/project
    make

`make -j4`とすることで複数コアを使った並列ビルドも可能です(数字部分は使いたいコア数に応じて変更してください)。


PATH環境変数の設定
-------------------------

普通install_dependencies.shのスクリプトは、パスの設定を行ってくれるはずです。もしコンピューターを再起動した後でもQt Creatorやコンパイルに関して問題があるようであれば、正しくパスが設定されているか確認することができ、もし正しくない場合は以下の手動で手動で修正可能です。

MSYS2とともにopenFrameworksを使うためにはMSYS2のパッケージマネージャーである`pacman`が提供するいくつかのDLLが必要になります。PATH環境変数はDLLの場所をシステムに教えるためのものです。Windowsでは、実行ファイルはカレントディレクトリ、システム環境変数で定義されたPATH、ユーザー環境変数で定義されたPATHの順に探索されます。

PATH環境変数の設定方法はこちらを参照してください :  http://www.computerhope.com/issues/ch000549.htm

`c:\msys64\mingw32\bin` と `c:\msys64\usr\bin` をPATHに追加する必要があります。2種類の方法があります。

1. 「コントロールパネル > システム > システムの詳細設定」で表示される画面の「環境変数」のボタンを押す
2. WindowsのコマンドプロンプトからPATHを設定

```
setx PATH "c:\msys64\mingw32\bin;c:\msys64\usr\bin;%PATH%"
```

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

IDEとしてQt Creatorを使用することもできます。詳しくは[セットアップガイド](https://openframeworks.cc/ja/setup/qtcreator)を参照してください。

## よくある質問

- exeファイルをダブルクリックすると "TLSv1_1_client_method missing" というエラーが出ます

実行ファイルが見つけたssleay32.dllおよびlibeay32.dllがTLS v1.1をサポートしていないために出るエラーで、Intel iClsソフトウェアでよく起こります。解決するにはyour_msys2_directory\mingw32\binのパスを衝突しているパスより前に移動させます。衝突しているパスがシステム環境変数の中にあり、管理者権限を持っていない場合は、ssleay32.dllとlibeay32.dllをyour_msys2_directory\mingw32\binからexeファイルのあるフォルダにコピーもしくはリンクしてください。

- 会社のネットワークにプロキシが設定されているため、pacmanからパッケージをダウンロードできません

HTTP_PROXYおよびHTTPS_PROXY環境変数を設定する必要があります。コマンドプロンプトで以下のように打ち込んでください。

    From a DOS/CMD prompt :
    set http_proxy=http://your_proxy:your_port
    set http_proxy=http://username:password@your_proxy:your_port
    set https_proxy=https://your_proxy:your_port
    set https_proxy=https://username:password@your_proxy:your_port
パスワードに含まれる特殊文字をエスケープするのをお忘れなく。

ありがとう! oFチームより。

