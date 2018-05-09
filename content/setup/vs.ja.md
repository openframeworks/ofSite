## -*- coding: utf-8 -*-
.. title: visual studio

Visual Studioセットアップガイド
=========================
これは、Visual Studio Community 2017を使って作業したい人のためのセットアップの解説です。

ダウンロード
--------
> [Download Visual Studio Community 2017][0]

インストール
-------
インストーラーを起動して、設定はデフォルトのままでインストールします。

![](vs_install.png)

## ビデオ・コーデック

openFrameworksの 0.9.0 からは、動画の再生にQuickTimeではなくDirectShowを使用しています。QuickTime形式や、MP4形式の動画に対応するには、使用しているマシンにビデオ・コーデック(Video Codec)をインストールする必要があります。 私たちは、[K-Lite Codec Pack - Version 12.1.0 Full April 18th 2016][1] を推奨しています。フリーでダウンロードでき、ほとんどの動画形式をサポートしています。しかし、多くのコーデックはアドウェアがバンドルされています。 以下のリンクは、openFrameworksでテスト済みで、インストーラーがダウンロードする前に自動的にアドウェアを消去してくれます。

## Visual Studio向けopenFrameworksプラグイン

Visual StudioでopenFrameworksを使用する前に、Common Tools for Visual C++ 2017をインストールしておく必要があります。そうでないと、後でエラーメッセージが発生してしまいます。インストールするには、File > New > Projectに移動して、インストールされたテンプレートのセクションからVisual C++を選択します。オプションのインストールツールが表示されます。選択して「OK」ボタンを押して指示に従ってください。

Visua Studioのメニューから、Tools > Extensions and Updates に行きます。online and search を選択して、「openFrameworks」で検索して、プラグインをインストールします。

これにより、File > New > Project... メニューから、新規にopenFrameworksのプロジェクトが生成され、後からアドオンを追加したり消去するためのメニューが用意されます。

さらに詳しい情報は、 [Visual Studio Gallery page](https://visualstudiogallery.msdn.microsoft.com/77678909-81b8-494b-b75c-d97dd7a3eaa6)にあります。また、下記のビデオを参照してください。

<iframe src="https://player.vimeo.com/video/143111085" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[0]: https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Community&amp;rel=15
[1]: http://filehippo.com/download_klite_codec_pack/67445/
