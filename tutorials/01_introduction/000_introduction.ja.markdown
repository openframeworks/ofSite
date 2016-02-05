---
.. author: Jeff Crouse <jeff@crouse.cc>
.. title: ofTutorials - イントロダクション
.. date: 2013/09/01 10:00:00
.. author_site: http://www.jeffcrouse.info
.. summary: openFrameowrksの紹介と、最初のプロジェクトを開始するための準備
---

この章では、openFrameowrksの紹介と、最初のプロジェクトを開始するための準備について紹介します。

## openFrameworksって何?

>openFrameworksは、シンプルで先端的なフレームワークによって創作活動を支援するための[オープンソース](/about/license.html)のC++ツールキットです。ツールキットは、以下のリストあげたよく利用されるライブラリー群をまとめて汎用的な「糊」のような役割を果たすようにデザインされています。

- グラフィクス：[OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [libtess2](https://code.google.com/p/libtess2/), [cairo](http://cairographics.org/)
- オーディオの入出力と分析：[rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/) or [FMOD](http://www.fmod.org/), [Kiss FFT](http://kissfft.sourceforge.net/)
- フォント：[FreeType](http://freetype.sourceforge.net/index2.html)
- イメージの読込と保存：[FreeImage](http://freeimage.sourceforge.net/)
- 動画の再生と取込：[Quicktime](http://developer.apple.com/quicktime/), [videoInput](https://github.com/ofTheo/videoInput)
- 様々なユーティリティー：[Poco](http://pocoproject.org/)

コードは様々なプラットフォームで動作するように書かれています。現在は、5つのOS(Windows, OSX, Linux, iOS, Android)と、4つの開発環境(XCode, Code::Blocks, and Visual Studio, Eclipse)をサポートしています。APIは最小限で把握し易いようデザインされています。

簡単に言うと、openFrameworksはコードにまつわる様々な事柄をずっと容易にしてくれるツールなのです。わたしたちはこのツールをとても便利と感じています、きっとあなたもそうなるでしょう。

openFrameworksは[ザック・リーバーマン(Zach Lieberman)](http://thesystemis.com/)、[セオドア・ワトソン(Theodore Watson)](http://muonics.net/), [アルトロ・カストロ(Arturo Castro)](http://arturocastro.net/)を中心にして、[OFコミュニティー](../community/)とともに開発されています。openFramewokrsは以下2つの先駆的なプロジェクトの恩恵を受けています。

* [Processing](http://processing.org/)：[ケーシー・リーズ(Casey Reas)](http://reas.com/)と[ベン・フライ(Ben Fry)](http://benfry.com/)を中心に開発された開発環境
* ACUツールキット：ベン・フライらによって[MITメディアラボのAesthetics and Computation Group](http://acg.media.mit.edu/)で開発されたC++ライブラリ

パッケージのいくつかは(例えばOpenGLのように)他のドキュメントにより詳細に説明されているものもあります。またパッケージの多くは、あまり心配しなくてもバックグラウンドで勝手に動いてくれます。ライブラリのそれぞれは、独自の文法や慣習や癖を持っていたりします。しかし、openFrameworksの美点はそうしたことを気にしなくて良いところです。oFは、提供されたライブラリの機能に対する、単一の一貫したインターフェイスを提供してくれるのです。

#### Q&A

- **プログラムなのですか?**   oFはそれ自体は[プログラム](http://ja.wikipedia.org/wiki/%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%A0_(%E3%82%B3%E3%83%B3%E3%83%94%E3%83%A5%E3%83%BC%E3%82%BF))や、[アプリケーション](http://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3)ではありません。しかし、oFを使用して自分自身のプログラムやアプリケーションを作成することが可能です。

- **プログラミング言語なのですか?**   oFはそれ自身が独自の[プログラミング言語](http://ja.wikipedia.org/wiki/%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E8%A8%80%E8%AA%9E)で構成されているわけではありません。oFでプログラムを書く際に用いる言語は、[C++](http://ja.wikipedia.org/wiki/C%2B%2B)です。


- **では、ライブラリなのですか?**   oFは実際、多くの[ライブラリ](http://ja.wikipedia.org/wiki/%E3%83%A9%E3%82%A4%E3%83%96%E3%83%A9%E3%83%AA%E3%83%BC)から構成されています。しかし、ライブラリを統合する特定の方法は「ソフトウェアフレームワーク」と呼ぶほうがより相応しいでしょう。

- **ソフトウェアフレームワークって何?**   [ソフトウェアフレームワーク](http://ja.wikipedia.org/wiki/%E3%82%BD%E3%83%95%E3%83%88%E3%82%A6%E3%82%A7%E3%82%A2%E3%83%95%E3%83%AC%E3%83%BC%E3%83%A0%E3%83%AF%E3%83%BC%E3%82%AF)とは、プログラマーがアプリケーションに動作させたい内容を高レベルで詳細をカスタマイズできる一方で、アプリケーションに必要な全ての低レベルの機能を提供するようにデザインされた、ある種のプレハブ構造のソフトウェアの基盤のようなものです。ライブラリを使用することとフレームワークの違いの一つは、[制御の反転](http://ja.wikipedia.org/wiki/%E5%88%B6%E5%BE%A1%E3%81%AE%E5%8F%8D%E8%BB%A2)です。ライブラリは、全般的なタスクの集合としてコードを直接コントロールします。フレームワークではイベントに対するコードの応答は、フレームワークによってコントロールされます。またフレームワークは、他のライブラリの機能へのアクセスのインタフェイスとして使用されます。

複雑に聞こえますか?

あまり明確でないこともありますが、多くのマルチメディアオーサリング環境は実際にこの手法をとっています。

大雑把なたとえで考えてみてください。あなたは映画制作会社で自身の映画を制作監督しています。制作会社は場所を用意し、全てのインフラを提供し、カメラクルーや照明監督、サウンドエンジニアなどの重要なスタッフを探してくれます。全ての人達は、あなたを含め、必要なときに時間通りに一斉に仕事をします。openFrameworksは、あなたのプログラムに対する制作会社のようなものです。openFramewroksは、事務的な部分やロジスティックな詳細はケアしてくれて、あなたを創造的な視点に集中させてくれます。

## C++プログラミング言語

前のセクションで学んだように、openFrameworks自体はプログラミング言語ではなく、[C++](http://ja.wikipedia.org/wiki/C%2B%2B)で書かれたソフトウェアプログラムです。では、C++とは何でしょう?

注意：この文書は、openFrameworksのガイドを目的としています。その間に、C++という言語に慣れていくでしょう。しかし、非常に深い部分からボトムアップでC++の導入をすることは、この文書の目的を越えています。この文書を読んだ後で、最後にあげた参考文献のサイトのリストを参考にすると良いでしょう。

C++は、1979年にベル研究所で開発された[C言語](http://ja.wikipedia.org/wiki/C%E8%A8%80%E8%AA%9E)の拡張です。これらは共に汎用的なプログラミング言語で、世界中のほとんどのコンピューティングプラットフォームで動作可能です。C++プログラムの多くは以下のような体裁をしています。

```cpp
// 初めてのC++プログラム

#include <iostream>
using namespace std;

int main()
{
  cout << "Hello World!\n";
  return 0;
}
```

※このプログラムの各行ごとの細かな分析は、[Structure of a program](http://www.cplusplus.com/doc/tutorial/program_structure/)のチュートリアルを参照してください。

コンパイラでビルドすると、このコードは完全な実行可能なプログラムを生成します。これはとても単純なコマンドラインプログラムで、コンソールにただ「Hello World!」と出力するだけです。以下のステップの手順に従って、実際に挑戦してみましょう。

注意：この手順はプラットフォームに依存することがあります。下記の解説はMac OSでの動作です。実行するにはXCodeがインストールされている必要があります。

### 初めてのC++プグラムをコンパイルする

![IMG](PlainText.png)

- 先程のコードのテキストをコピー＆ペーストして、テキストファイルとしてデスクトップに「hello.cpp」という名前で保存。
-  もしテキストエディットを使用している場合は、「リッチテキスト」などのフォーマットではなく、「標準テキスト」で保存するように注意してください。
- 「アプリケーション」→「ユーティリティ」にある「ターミナル.app」を起動します。
- 下記の記述を、各行でenterを入れながら、ターミナルのウィンドウ内にタイプしていきます。

```bash
cd Desktop
g++ -o hello hello.cpp
./hello
```

- デスクトップ(Desktop)に移動
- [g++](http://gcc.gnu.org/)プログラムを使用して、hello.cpp(プログラムのソースコード)をコンパイルし、"hello"という名前で出力
- たった今生成した、"hello"プログラムを実行

結果は下記のようになるでしょう。

![IMG](HelloWorld.png)

おめでとう、あなたは最初のC++プログラムを作成し実行できました! デスクトップには下記のようなものが出来ているでしょう。

![IMG](hello.png)

これは、普段見慣れているような、グラフィクスを使用したウィンドウを起動する派手なアイコンのプログラムとはちょっと違っているかもしれません。しかし、これもプログラムなのです。実際、あなたのコンピュータの全てのプログラムは、掘り下げてみれば、結局は今作成した「hello」プログラムのようなものなのです。

※重要：現時点では、ちょっと混乱してしまう人もいるかもしれません。でも心配しないでください! oFを使い初めたら、もっと刺激的な内容になります。このサンプルは、あくまでC++の基礎の低レベルな部分の説明でした。幸い、もうコマンドラインでコンパイルしてコマンドラインで表示するような必要はありません。

### What is a compiler? and an IDE?

### コンパイラって何? IDE(統合開発環境)って何?

もしFlashやProcessingのようなプログラムを使ったことがあるのなら、何かコードを書いて、その動きを観るために「再生」ボタンを押すというプロセスになじみがあるでしょう。このことを「コンパイル」と呼び、先程のセクションでやってきたことです。もしビデオ編集になじみがあるのなら、コンパイルはレンダリングのようなものです。コンパイルのアイデアとは、人間が読解可能なコードをコンピュータが実行可能なものに翻訳するということです。CやC++、Java、Objective-C、Fortran、Lisp、Pascalといったプログラミング言語は皆、[コンパイル言語](http://en.wikipedia.org/wiki/Compiled_language)です。それらの言語は人間に読解可能にできています。それらは人間によって書かれ、読むことができ、理解できるように作られています。しかしどの言語で始めようと、最終的には、コンピュータが理解する何らかのものに翻訳されます。大抵は[機械語](http://ja.wikipedia.org/wiki/%E6%A9%9F%E6%A2%B0%E8%AA%9E)が用いられます。

※注：PHPやPythonのような言語は「スクリプト言語」として知られています。コンパイルが必要ですが、プログラムが実行される際に行われます。

コードを機械語に翻訳する仕事をするプログラムを「コンパイラ」と呼びます。[GCC](http://gcc.gnu.org/)は、もっとも有名なコンパイラの一つです。CGGは様々な言語をコンパイルすることが可能です。GCCはとても良いコンパイラなのですが、自分自身でやりたいこと正確にどのように正確にプログラムに伝えるのは頭の痛いフラストレーションが溜る問題です。先程のセクションでは、私達は単純に"g++ -o hello hello.cpp"というコマンドを用いました。しかし、様々なライブラリを使用したり、プロセッサに最適化させたり、画像などのリソースを含めたアプリケーションを作成しようといったことは、全ては無効となります。そこそこの複雑さのopenFramewroksのプロジェクトであっても、コンパイルの情報をCGGに伝える内容は、何百行もの難解な文法といくつものヘルパーツールが必要です。とても複雑です。

その代わり、多くの開発者はコードプロジェクトを作成し構成するために[IDE(統合開発環境)](http://ja.wikipedia.org/wiki/%E7%B5%B1%E5%90%88%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83)を使用しています。多くのIDEは、テキストエディター、ファイル構成機能、コンパイラ、様々なオプションやコンパイルのプロセスをカスタマイズするためのGUIインタフェイスを備えています。[有名なIDE](http://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments)には、XCode、Visual Studio、CodeBlocks、Eclipse、NetBeansなどが挙げられます。ほとんど全てのOSや言語にはIDEが存在します。IDEには特定の言語専用のものもあれば、多くの言語をサポートしているものもあります。

Flash、Processing、VVVV、Max/MSPのような開発環境では、コンパイルに関する内容から離れていれられるかもしれません。IDEは白紙状態であるという違いがあります。IDEは特定の機能から成り立っているわけではありません。一方、ある目的に特化した機能を搭載したツールもあります。例えば、FlashはWebで動くためのプログラムのコンパイラであり、Processingは素早くプロトタイピングするためのツールです。

openFramewroksは、多くの機能から成り立っています。openFrameworksは、自前のIDEから構成されてはいないという違いがあります。技術的には、openFrameworksのプロジェクトを生成するのにどのようなIDEも使用できます。しかし、コンパイラと結びつける作業は難解です。IDEの中で様々な複雑さをもったプロジェクトを設定するプロセスは、難解で退屈です。openFrameworksの優れた点は、3つのプラットフォームでの、いくつかのIDEでのスタートポイントを提供しているところです。3つのメジャーなプラットフォームで3種類のIDEのプロジェクトテンプレートが作成済みです。ですから、ダウンロードさえすればコーディングが開始できるのです。

openFramewroksでの開発を始めるにあたり、[ここ](/download)からOSごとにIDEをダウンロードしてインストールする必要があります。インストールのガイドは下記を参照してください。

### openFrameworksで、何が作れるようになるの?

下記のプロジェクトのコレクションは、openFrameworksを用いた様々な種類のプロジェクトの多用さを描き出すことを目的としています。

### Puppet Parade

by Emily Gobeille and Theo Watson

Puppet ParadeはDesign I/OのEmily GobeilleとTheo Watsonによるインタラクティブなインスタレーションで、前方の壁にプロジェクションされた生き物のパペット(操り人形)を、子供達が腕をつかって操作することが可能です。二重のインタラクティブな仕掛けにより、子供達がパペットと一緒に演じることも可能で、「観客」とパペットとの境界線をぼかし、空間内の子供達とパペットを操作する子供達との間に尽きることのない楽しい対話を生み出します。

<iframe src="http://player.vimeo.com/video/34824490?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

[詳細な情報](http://www.creativeapplications.net/openframeworks/puppet-parade-openframeworks/)


### Interactive Wall at UD

デイトン大学のアドミッションセンターの36フィートの壁が、将来の学生と大学の学生生活を紹介するビデオとを結びつけます。壁の表示は、壁の前にいる人々の動きに反応して、生成的な表現によって常にパターンを変化させています。

立方体のフィールドは、活動による波によって動かされています。そして、観客の存在が立方体を回転させ、学生生活の映像を表示します。壁の前を歩き回ることで、様々な映像の断片を探し出し探索するこごが可能です。観客が一緒に立つと、シルエットが結合してさらに多くの映像が現われます。もし誰もインタラクションするエリアにいなければ、ダイナミックに変化するグラフィックパターンの上で、文字によるアニメーションが表示されます。

より詳細な映像記録やデザインと開発の細かな内容は、[ケーススタディー](http://www.flightphase.com/main_wp/case-studies/ud-interactive-wall)を参照してください。

<iframe src="http://player.vimeo.com/video/27500054?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

[詳細な情報](http://www.flightphase.com/main_wp/expanded-media/interactive-wall-at-ud)

### Scramble Suit

by Arturo Castro and Kyle McDonald

openFrameworksの素晴しい点の一つは、C++の様々なライブラリを簡単に取り入れられることです。ArturoとKyleは、[Jason Saragih氏によるFace Tracker library](http://web.mac.com/jsaragih/FaceTracker/FaceTracker.html)を、フィリップ・K・ディックの1977年の小説「暗闇のスキャナー」に登場した架空の技術にインスパイアーされて「スクランブル・スーツ」を生みだすために活用しました。これは、記憶することを不可能にすることで、装着している人のアイデンティティーを隠すマントです。

<iframe src="http://player.vimeo.com/video/29391633?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

## 何故openFrameworkを使うのか?

openFrameworksだけが、創造的なコーディングのフレームワークというわけではありません。では、何故openFrameworksを使うべき(もしくは使うべきでない)のでしょう?

- ポータブルだから : 書いたコードは、Mac、Linux、Windowsで動きます。また、ちょっと調整すれば、Androidや。いおにアプリケーションを移植することも可能です。さらに、0.9のリリースからは、Webブラウザでスケッチを表示することも可能となりました。
- 様々な分野をカバーする汎用性 : 2次元や3次元のグラフィクス、コンピュータ・ビジョン、サウンドや音楽、ディープラーニングなど。1つのツールを使うことで、様々な分野のものを、様々なやりかたによって実現できます。
- 多くのハードウェアーをサポート : 直接操作したりコアなアドオンを利用するだけでなく、誰かがあなたが探しているハードウェアを作動させるアドオンとして提供している可能性が高いです。あなたのプロジェクトをサポートする巨大でアクティブなコミュニティーがあるのです。

## 参考資料

* [About openFrameworks](http://www.openframeworks.cc/about/)：デザインの方法論を含めた、openFrameworksについてのより詳しい情報
* [Official Documentation](http://www.openframeworks.cc/documentation/)：openFrameworksを構成するクラスや関数の解説
* [oF Forum](http://forum.openframeworks.cc/)：おそらく質問に答えてもらえる一番の場所
* [Programming Interactivity](http://www.amazon.com/Programming-Interactivity-Designers-Processing-Openframeworks/dp/0596154143)：openFrameworks、Processing、Arduinoなどについて解説した素晴しい本
* [Creative Applications](http://www.creativeapplications.net/)
