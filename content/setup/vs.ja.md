## -*- coding: utf-8 -*-
.. title: visual studio

visual studioセットアップガイド
=========================

これは、Visual Studio 2015を使って作業したい人のためのセットアップの解説です。Express for Windows Desktopも、含まれています。

ダウンロード
--------

- [Visual Studio Community 2015をダウンロード][0]

インストール
-------
インストーラーを起動して、設定はデフォルトのままでインストールします。

![](/setup/vs/vs_install.png)

ビデオ・コーデック
-------
openFrameworksの 0.9.0 からは、動画の再生にQuickTimeではなくDirectShowを使用しています。QuickTime形式や、MP4形式の動画に対応するには、使用しているマシンにビデオ・コーデック(Video Codec)をインストールする必要があります。
私たちは、[K-Lite Codec Pack][1]を推奨しています。フリーでダウンロードでき、ほとんどの動画形式をサポートしています。しかし、多くのコーデックはアドウェアがバンドルされています。
以下のリンクは、openFrameworksでテスト済みで、インストーラーがダウンロードする前に自動的にアドウェアを消去してくれます。

- [https://ninite.com/klitecodecs/][2]

Visual Studio向け、openFrameworksプラグイン
---------------------------------------------------
Visua Studioのメニューから、Tools > Extensions and Updates に行きます。online and search を選択して、「openFrameworks」で検索して、プラグインをインストールします。

これにより、File > New > Project... メニューから、新規にopenFrameworksのプロジェクトが生成され、後からアドオンを追加したり消去するためのメニューが用意されます。

さらに詳しい情報は、[Visual Studio Gallery page](https://visualstudiogallery.msdn.microsoft.com/77678909-81b8-494b-b75c-d97dd7a3eaa6) にあります。また、下記のビデオを参照してください。

<iframe src="https://player.vimeo.com/video/143111085" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[0]: https://go.microsoft.com/fwlink/?LinkId=532606&clcid=0x409
[1]: https://en.wikipedia.org/wiki/K-Lite_Codec_Pack
[2]: https://ninite.com/klitecodecs/
