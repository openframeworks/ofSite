## -*- coding: utf-8 -*-
.. title: Qt creator

Qt Creator
==========

openFrameworks 0.10.0は、Qt Creatorの4.6.0と4.6.1でテスト済みです。4.6.1の使用をお勧めしますが、それ以降のバージョンは以降で説明するやり方とは別の手順が必要かもしれませんし、想定通りに動かない可能性もあります。

Qt Creatorの全バージョンは下記から閲覧可能です。

[http://download.qt.io/official_releases/qtcreator/](http://download.qt.io/official_releases/qtcreator/)


Linux
-----

LinuxでOFを使うためにはいくらか準備が必要です。まだセットアップが済んでいない場合は[こちらのガイド](https://openframeworks.cc/ja/setup/linux-install)を参照しながらおこなってください。

LinuxでQt Creatorを使用する場合、ディストリビューションのリポジトリに存在するものよりもWebページで配布されているものをインストールすることをおすすめします。ディストリビューションから手に入るバージョン（少なくともUbuntu版）は古くなっている可能性がありますが、Webページからダウンロードできるバージョンでは、デフォルトの静的解析ツールに比べてより正確にエラー箇所を教えてくれるclangプラグインのサポートが得られます。

いったんインストールが済めば、openFrameworks向けのQt Creatorプラグインのインストールができます。`scripts/qtcreator` 内にある `install_template.sh` を実行すれば必要なものがすべてインストールされるでしょう。

Windows
----

まずはじめにmsys2をインストールする必要があります。[セットアップガイド](https://openframeworks.cc/ja/setup/msys2)を参照してください。

セットアップが完了したら、Qt Creatorを試す前にコンピューターの再起動をお勧めします。

ビルドシステムはmsys2がデフォルトのディレクトリ（c:\msys64）にあることを想定しています。もし他の場所にインストールされている場合はプロジェクトファイルの修正が必要になるかもしれません。

msys2とともにQt Creatorを使うには、「ツール > オプション > ビルドと実行 > コンパイラ」に移動して、MinGWコンパイラーがインストールしたmsys2を参照しているか確認します。もしここに無い場合は、the install_dependenciesのスクリプトでPATHの環境変数が正しく設定されなかった場合が多いです。msys2のインストールに戻ってインストールガイドの手順に沿って修正します。もしうまくいった場合は、コンパイラーは c:\msys64\mingw32\bin を参照するようになります。

「ツール > オプション > ビルドと実行」に移動して、キットのタブにあるデスクトップキットを、インストールしたmsys2のmingwツールのcとc++のコンパイラーとデバッガー使用するように設定します。

一度、Kitの設定が正しく設定されれば、Qt CreatorのopenFrameworksのプラグインがダウンロードの際にインストールできるようになります。以下のコマンドを使用します。

- msys2のコンソールから、openFrameworksをダウンロードしたフォルダーの script/qtcreator に移動して ./install_templates.sh を実行します。

もしくは

- scripts/qtcreator/templates のテンプレートを c:\Qt\qtcreator-4.6.1\share\qtcreator\templates にコピーします

macOS
----

Qt Creatorをインストールした後で、「クリエイター > 環境設定 > ビルドと実行」に移動して、gccの代わりにclangを利用するようにDesktop Kitを設定します。もしここから変更できない場合は、Manageもしくはコンパイラーのタブを置いて、clangが利用可能か確認します。もしかしたら、gccの代わりにclangを利用できるようにするために、さらにカスタムの設定が必要となるかもしれません。

いったんインストールが済めば、openFrameworks向けのQt Creatorプラグインのインストールができます。ターミナルから、scripts/qtcreator 内にある install_template.sh を実行すれば必要なものがすべてインストールされるでしょう。

全てのプラットーム
-------------

必要に応じてClangの静的解析ツールを有効にすることができます。これはコーディング中に正確にエラーを発見してくれるものですが、速度の低下につながることもあります。Qtのページから、これを有効化する手順を紹介します。

Clang コードモデル用プラグインの設定

- Help > About Plugins > C++ > ClangCodeModel のメニューからプラグインを有効にします。
- プラグインを有効にするため、Qt Creatorを再起動します。

openFrameworksプラグインをインストールすると、ウィザードに従って新規プロジェクトの作成と公式アドオンの追加がおこなえます。プロジェクトを作成したあとは .qbs ファイル内にある of.addons という配列にアドオンの名前を加えることでそのアドオンを追加することができます。

また、既存のコードからプロジェクトを作成することも可能です。

他のプラットフォームで作成されたプロジェクトも、使用しているアドオンが互換性があり、カスタムのc++のフラッグが使用されていない場合、もしくはきちんと使用されているプラットフォーム向けに動くように設定されている限りは、そのまま動かすことができるでしょう。

<iframe src="https://player.vimeo.com/video/142272907" width="1000" height="563" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
