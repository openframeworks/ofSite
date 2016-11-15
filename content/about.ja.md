## -*- coding: utf-8 -*-
.. title: about

### openFrameworksは、[オープンソース](license.html)な[C++](https://ja.wikipedia.org/wiki/C%2B%2B)のツールキットで、シンプルで直感的な環境を通して、クリエイテイブな活動を支援するようにデザインされています。
</br>

<div id="myslides">
<img src="/about/0.jpg" />
<img src="/about/1.jpg" />
<img src="/about/2.jpg" />
<img src="/about/3.jpg" />
<img src="/about/4.jpg" />
<img src="/about/5.jpg" />
<img src="/about/6.jpg" />
<img src="/about/7.jpg" />
<img src="/about/8.jpg" />
</div>
<br/>

openFrameworksは、汎用的な「糊」のような役割を果たすようにデザインされていて、下記の一般的に広く利用されているライブラリー群をまとめ上げています。

* グラフィクス：[OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [libtess2](https://code.google.com/p/libtess2/), [cairo](http://cairographics.org/)
* オーディオの入出力と分析：[rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/), [OpenAL](http://http://connect.creativelabs.com/openal), [Kiss FFT](http://kissfft.sourceforge.net/) または [FMOD](http://www.fmod.org/)
* フォント：[FreeType](http://freetype.sourceforge.net/index2.html)
* イメージの読込と保存：[FreeImage](http://freeimage.sourceforge.net/)
* 動画の再生と取込：[Quicktime](http://developer.apple.com/quicktime/),[GStreamer](http://gstreamer.freedesktop.org/), [videoInput](https://github.com/ofTheo/videoInput)
* 様々なユーティリティー：[Poco](http://pocoproject.org/)
* コンピュータビジョン：[OpenCV](http://opencv.org/)
* 3Dモデルの読み込み：[Assimp](http://assimp.sourceforge.net/)

コードは様々なプラットフォームで動作するように書かれています。現在は、5つのOS(Windows, OSX, Linux, iOS, Android)と、4つの開発環境(XCode, Code::Blocks, and Visual Studio, Eclipse)をサポートしています。APIは最小限で把握し易いようデザインされています。

openFrameworksは、[MIT License](license/)で配布されます。これは、誰でも自由にいかなる状況でも (商用/非商用、公式/非公式、オープンソース/クローズソース) 使用できることを意味します。このような自由な方法で、多くのopenFrameworksユーザーが自分の仕事をでコミュニティーに還元しています。貢献によって何らかの責任が発生することはありません。

簡単に言うと、openFrameworksはコードにまつわる様々な事柄をずっと容易にしてくれるツールなのです。わたしたちはこのツールをとても便利だと感じています、きっとあなたもそうなるでしょう。

----------
デザイン哲学
----------

openFrameworksには、いくつかの目標があります。協調的であること、シンプルであること、首尾一貫していて直感的であること、クロスプラットフォーム、強力、そして拡張性があることです。openFrameworksはまた、“みんなでやろう Do It With Others” (DIWO)の精神に基いています。

**協調的**

openFrameworksの開発は、協調的に行われています。[多くの人々](https://github.com/openframeworks/openFrameworks/contributors)の参加、[活発な議論](http://forum.openframeworks.cc/)、[アドオン](http://ofxaddons.com/)と[プロジェクト](../gallery)への貢献によって繁栄しています。わたしたちは、openFrameworksをまず自分自身のために利用し、その後エコシステムに還元することを推奨しています。

openFramewroksは、協同作業によって開発されています。分散バージョン管理システムである、Gitを使用してします。それは、誰もがブランチを作成し、実験して、助言できるということです。Githubのネットワークダイアグラムを見てください。宇宙人によるダイアグラムのように、たくさんのブランチが織りこまれ、お互いにpullしながら一体化されています。世界中に拡がる巨大なコミュニティーがあり、コードの中核を開発しています。バグを修正したり、pullリクエストを処理したり、ツールを作成したり、自分達がやりたい方法で参加しています。これは世界規模のプロジェクトで、アメリカで朝目を覚ますと、アジアやヨーロッパの開発者からの大量のpullリクエストや問題点を指摘するemailでinboxがいっぱになっていることが日常となっています。70人以上が、openFrameworksの中核に直に関わっていて、数百人もの開発者がコードをforkしたり、いろいろな方法で貢献しています。

**シンプルさ**

openFramewroksは、使い易さとシンプルさのバランスをとろうとしています。初期バージョンの頃は、openFrameworksは主にC++とOpenGLの教育のために用いられていました。しかし時が経つにつれ、豊富な実例がより進んだ応用的な内容に最適な学習方法になってきていました。

私たちは、openFrameworksを、特に他の言語や環境に慣れ親しんでいる人たちにとって、限りなくシンプルにしておきたいと考えます。C++は「巨大な」言語で、様々なタイプのC++コードを書くことが可能です。もし書店に行けば、膨大な数のC++の書籍を目にするでしょう。エキスパートになるためのライブラリを作成しようとはしていません。それは書籍などを参照してください。そうではなく、パターンや手法やコードのスタイルが、シンプルで首尾一貫しているようにしたいのです。私たちは、Processingと同等の機能を獲得することに注力しています。多くの機能はよく似ていますので、他のフレームワークからの意向が容易となっています。

**一貫していて直感的**

openFrameworksは、「驚き最小の原則」に基づいています。つまり、openFrameworksの一部を学べば、その他のパートにも容易に応用可能です。初心者はopenFrameworksをプログラミングのパターンの基礎を学ぶために使用できます。さらに進んだユーザーは、他のツールキットや言語で実装したや自分自身の経験をopenFrameworksに応用することが可能です。

学ぶ人を第一に、というのが私たちのモットーです。openframeworksを様々な考え方が目指すのは、5年前、10年前にどのようなツールを使いたかったかということです。コーディングのパターンはできる限りシンプルに、そしてできるだけ簡単に入力できるようにしたいと考えています。例えばビデオ再生などの、“play”や“stop”のように機能説明する名前にもった関数名は、首尾一貫しています。統一性に関しては、できるだけわかり易くなるように、多くの議論が行われてきました。タイピングによって学べること、自動補完が役に立つことなどです。

**クロスプラットフォーム**

openFrameworksは、クロスプラットフォームなツールキットです。openFrameworksは様々な開発環境とオペレーティングシステムを可能な限りサポートします。openFrameworksをダウンロードする際にはプラットフォームと開発環境が選択可能です。そして、様々なサンプルとプロジェクトが付属してきます。移植が困難なコードは主要パートとは別に隔離されていて、アドオンとして提供されます。

openFramewroksは複数のプラットフォームで動作するようにデザインされています。OS X、Windows、Linux、iOS、Android、ARMに拡張されたLinuxなどです。さらに、BlackBerry PlayBookなどの実験的なプラットフォームにも対応しています。openFramewroksの開発者達は、AndroidにおけるJavaや、iOSにおけるObjective-Cなど、他の言語とのインターフェイスを、とても賢く実装しています。

クロスプラットフォームの楽しみは、自分のアイデアをあるプラットームから別のものへ簡単に移行できることです。ラップトップでスケッチして、すぐにスマートフォンで実行することが可能です。プラットフォーム間におこる様々なつまらない作業に悩まされることなく、アイデアを第一にすることができるのです。

openFramewroksは本質的に、OpenGL、Cairo、FreeType、FreeImage、OpenCVといった他のライブラリを包括しています。openFramewroksを、ユーザ側コード(つまりあなたが記述するコード)と、それらのライブラリの間のレイヤーと考えることも可能です。それらのライブラリは異なるスタイル、イデオム、手法を用いています。私たちは、それらを包括してより一環して明快になるようにしているのです。

**パワフル**

openFrameworksはパワフルです。例えばOpenCVのライブラリのようにグラフィクスカードなどのハードウェアを効果的に使用したり、カメラなどの周辺機器に接続したりするような際に効力を発揮します。

私たちがC++を選択したのは、最終的に低レベル(機械に近い側)で動くの言語であるのに関わらず、高レベルな方法でプログラムできるからです。C++は古い言語であるCの拡張なので、オールドスクールなC言語による非常に低レベルな所から、C++の高レベルな部分まで書くことが可能です。openFramewroksでは、シンプルで明快でありながら、コードが強力に動く、という双方の利点を結びつけようとしています。またC++を使用することで、CやC++で書かれた多くの既存のライブラリを他の言語へ移植することなく接続することができます。

**拡張性**

openFrameworksは拡張性があります。もしopenFrameworksに何かが欠けているのき気付いたら、拡張のためのアドオンは簡単に作成可能です。openFramewroksでは一般的に、新規に機能を開発するよりも、アドオンとしてライブラリに組み込まれて使用されます。openFrameworksにライブラリが格納されても、ライブラリは将来のハッキングのために外部に公開されています。

openFramewroksのイメージは、欲しいものを制作する際の足場、もしくは支えとなるものです。可能な限り全てのものを内包するのではなく、中心となる光を維持することが、制作の助けとなります。openFramewroksは、コードやライブラリや手法を付加するための“アドオン(addon)”という仕組みが用意されています。それらは、ユーザー間でシェアーしたり、必要に応じてプロジェクトの中に織り込むことが可能です。

openFramewroksのアドオンは、コードのスニペット(断片)として作成可能です。また、OpenNIやTesseract、Box2dといったより複雑なライブラリのラッパーとしても機能します。アドオンの名前は、openFramewroksのコア機能と区別するために、“ofx”という接頭辞から始まります。また、ofxOpenCvのように多くの人が使いたいと思う一方で、全てのプロジェクトには必要ではない機能を、コア・アドオンとして用意しています。

私たちは http://ofxaddons.com のサイトを通してコミュニティーによるアドオン開発をサポートし組織化しようとしています。このサイトは、Githubのリポジトリから“ofx”がタイトルにあるものを探し出して、自動的に収集されています。現在、1500以上のアドオンが存在しています。

**みんなでやろう Do it with others (DIWO)**

openFramewroksの活動の精神は「みんなでやろう Do it with others (DIWO)」です。私たちは、「自分でやろう Do it yourself (DIY)」の精神を愛しています。その精神は、InstructablesやMakeのようなチュートリアルサイトで盛んに宣伝されてきました。しかし、私たちは「社会的に (みんなで)」という考え方にも魅力を感じています。ワークショップや開発者の集まりハッカソン、ミートアップ、オンラインでは、フォーラムやメーリングリストなどを通じてDIWOを実践しています。ギャングサインもあります。何故なら、ギャングにはギャングサインが必要だからです。重要なのは、あたなは１人ではないということです。コードの創造的な側面を学んだり、教えたり、ハッキングしたり探索する素晴しいグループや人々が存在しているのです。

まだ、グループに参加していないなら、歓迎します!


----------------

faq
--------

**なぜ、多くの既存のライブラリではなく、また別のライブラリを作成したのですか?**

ソフトウェアを簡単に作るためのたくさんのライブラリが、存在します。例えばOpenGLには多くのライブラリ、例えばogre、irrlicht、JUCE、SDL、mxWindowsなどがあります。

openFrameworksは本来、開発の代替手段の「骨組」を提供することを意味していました。我々は、オーディオビジュアルな作品をC++で実現するための最小限の要求を満たすようなライブラリを記述したいと思っていました。

時が経つにつれ、openFrameworksはより強靭なツールキットへと進化していきました。現在、最大の変化は利用者です。我々の未来の利用者は、コンピュータを創作のためや芸術表現、メディア内部の低レベルなデータにアクセスして、操作、分析、探索をしたいと考えているような種類の人々なのです。

**なぜ、これらのライブラリをまとめたのですか?**

わたしたちは、これまでの経験から判断し、最もクリーンでシンプルなAPIを持つもの、最も寛大なライセンスのもの、組み込みが最も簡単なもの、という基準でライブラリ選択しました。

例えば、ウィンドウのためのライブラリにはGLUTを選択しました。なぜなら、GLUTは最も普及していて、ライセンスが緩やかで、コンパイラやプラットフォームによって非互換な部分がほとんどないからです。わたしたちは、その他のウィンドウ関連のライブラリ、例えばglfwやmxWindowsなども使ってきました。実際にそれらをopenFrameworksにくっつけてみたこともありました。しかし、最終的には、最も簡単に取り扱うことのできるGLUTを選択しました。

**最新版のopenFrameworksは、どこにありますか?**

最新版のリリースは、[ダウンロードページ](../downloads)にあります。同じものは、GitHub(https://github.com/openframeworks/openFrameworks/)からも入手可能です。さらに、開発中の最新のスナップショットは、[develop branch](https://github.com/openframeworks/openFrameworks/tree/develop)にあります。GitHubからoFをビルドするための詳細な情報は、[readme](https://github.com/openframeworks/openFrameworks/blob/master/readme.txt)を参照してください。GitHubに参加したい場合は、[oFとGitHubに関する文書](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow)を参照してださい。

**何か助けになることはありますか?**

アドオンを作成すること、ドキュメントを改良すること、チュートリアルやインストラクションを作成などを通じて助けになることが可能です。もしoFを既に使用して興味を持ったなら、できる限りソースや情報やアイデアを投稿してください。まだ初心者なら、どういった部分が難しいのか記録をとってフォーラムに質問したり、他の人達が何をしていて何を考えているのかを知ることで、わたしたちの活動に参加することができます。

**なぜopenFrameworksは、実行ファイルではなく、ソースコードで配布しているのですか?**

色々な理由があります ― 第一に、実践的だからです。openFrameworksはまだ発展途上です。我々は進むべき方向にむかって変化を加えていくでしょう。 コードを閲覧可能にして変更を容易にしておくことで、わたしたち多くの問題や困難についてのフィードバックを得ることができます。第二に、教育的だからです。C++のライブラリと格闘することを学ぶための好奇心を与えることがとても良い出発点になります。第三に、openFrameworksに変化を加えたり、趣味や気のおもむくままに自分にあわせて変更することに対して開かれた環境となっているからです。

**C++を学ぶには?**

わたしたちは、openFrameworksをC++の教育用のツールとしてはとらえていません。しかし、openFrameworksがC++にとりかかるための「最初の一歩」となるのではと考えています。[フォーラム](http://forum.openframeworks.cc/)では活発なコミュニティーを運営していますので、そこで質問すると良いでしょう。

わたしたちは以下のサイトもお薦めします：

* [5日で学ぶCとC++][6] by Philip Machani：これまで見たC++習得のための文書で一番わかり易い資料です
* [ProcessingユーザのためのoFチュートリアル][7] by Zach Gage：Processingのコードから学びたい人へ
* [CユーザのタメのC++チュートリアル][12] ：Cのコードから学びたい人へ
* [Programming Interactivity][8] by Joshua Noble：openFrameworksのバージョン0062だけでなく、ProcessingやArduinoに関してもカバーしています
* [StackOverflow][11]：全般的な質問や、より難解な質問をするのにも適した、素晴しいコミュニティーです
* [C++ FAQ](http://www.parashift.com/c++-faq-lite/index.html) by Marshall Clineと[C++ FQA Lite](http://yosefk.com/c++fqa/index.html) by Yossi Kreinin
* [cppreference.com/wiki/][15]：汎用的なテンプレートのライブラリのリファレンスとして適しています
* [cplusplus.com](http://cplusplus.com)：とても素晴しい[C++言語のチュートリアル][9]と[リファレンス][10]です
* [cprogramming.com][13]：沢山の質問が掲載されています

[0]: http://wiki.openframeworks.cc/index.php?title=Svn
[1]: http://vimeo.com/tag:openFrameworks
[2]: http://www.flickr.com/search/?q=openFrameworks&s=rec&z=t
[3]: http://www.youtube.com/results?search_query=openFrameworks&search=tag&search_sort=video_date_uploaded
[4]: http://search.twitter.com/search?q=openFrameworks
[5]: http://www.creativeapplications.net/?cat=261
[6]: http://www.itee.uq.edu.au/~comp3300/Resources/C_C++_notes.pdf
[7]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users
[8]: http://oreilly.com/catalog/9780596154141/
[9]: http://www.cplusplus.com/doc/tutorial/
[10]: http://www.cplusplus.com/reference/
[11]: http://stackoverflow.com/
[12]: http://www.4p8.com/eric.brasseur/cppcen.html
[13]: http://cprogramming.com/
[14]: http://yosefk.com/C++fqa/
[15]: http://www.cppreference.com/wiki/

----------------
貢献者とサポーター
----------------

openFramewroksは、様々な分野に分散する開発者達を連結する、開発者の[小さなコアチーム](/development/#contributors)によって活発に開発されています。何人かの[セクションリーダー](/development/#contributors)がopenFramewroksの各部門を代表してメンテナンスしています。

多くの組織が、助成金、寄付、国際的な開発者会議のためのホスティングパートナーとして多大な強力をしてきました。開発者会議には、多くの国から参加者が集まり一箇所に何日も滞在するために、多くのリソースを必要とします。

<span class="sponsors">
  <a href="http://amt.parsons.edu"><img alt="sponsor_logo" src="/about/logo-parsons.png" style="display: block; height: 58px;padding-bottom: 3px;"></a>
  <a href="http://www.ycam.jp/en/"><img alt="sponsor_logo" src="/about/logo-ycam.png" style="display: block; height: 69px; /* padding-bottom: 8px; */"></a>
  <a href="http://eyebeam.org/"><img alt="sponsor_logo" src="/about/logo-eyebeam.png" style="display: block; height: 30px; padding-bottom: 18px;"></a>
  <a href="http://studioforcreativeinquiry.org/"><img alt="sponsor_logo" src="/about/logo-sfci.png" style="display: block; height: 69px;"></a>
  <a href="http://www.aec.at/"><img alt="sponsor_logo" src="/about/logo-ars.png" style="display: block; height: 41px; padding-bottom: 14px;"></a>
  <a href="http://www.fordfoundation.org/"><img alt="sponsor_logo" src="/about/logo-fordfoundation.png" style="display: block; height: 42px; padding-bottom: 13px;"></a>
</span>


**[Ars Electronica Festival and Futurelab](http://www.aec.at/)**

Ars Electronica 2008において[Ars Electronica Festival and Futurelab](http://www.aec.at/) にoF Labを支援していただいたことを感謝します。

**[Eyebeam](http://eyebeam.org/)**

**[Ford Foundation](http://www.fordfoundation.org/)**

openFramewroks開発者会議において[Ford Foundation](http://www.fordfoundation.org/) に支援していただいたことを感謝します。

**[Parsons the New School for Design](http://amt.parsons.edu)**

**[Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/)**

[Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/)には、最初のopenFramewroks開発者会議と、openFramewroks開発者のための支援金を提供して頂いたことを感謝します。


**[山口情報芸術センター [YCAM]](http://www.ycam.jp/)**

[YCAM](http://www.ycam.jp/)は、2008年の最初の [OF workshop](http://wiki.openframeworks.cc/index.php?title=OfYcam)の主催や、[LabACT series](http://interlab.ycam.jp/en/projects/labact/eye-tracking-study) におけるEyeWriteの使用の探求のような多くのoFに関連したイベント、また、[ofxTimeline](http://interlab.ycam.jp/projects/guestresearch/vol2) と [mapamok](http://interlab.ycam.jp/projects/guestresearch/vol1)のようなオープンソースのアートエンジニアリングのツールを開発する[ゲスト・リサーチ・プロジェクト](http://interlab.ycam.jp/projects/guestresearch)、最近では、[第3回openFramewroks](http://interlab.ycam.jp/projects/of-devcon2013)開発者会議を主催していただきました。感謝します。

私たちは、多くの有名な施設や組織が、複数日のワークショップと“oF Lab”イベントを開催したことを誇りに思います。([Wiki](http://wiki.openframeworks.cc/index.php?title=Education)により詳細なリストがあります。)

* [Art && Code Festival](http://artandcode.com/)
* [Eyeo festival](http://eyeofestival.com/)
* [Fabrica: The Benetton Group Communications Research Center](http://www.fabrica.it/)
* [Graphic Design Festival Breda](http://www.graphicdesignfestival.nl/en/)
* [iMAL Center for for Digital Cultures and Technology](http://www.imal.org/)
* [MediaLab Prado](http://medialab-prado.es/)
* [New York University Interactive Telecommunication Program](http://itp.nyu.edu/itp/) (ITP)
* [Pratersauna Digital LAB](https://vimeo.com/psdl)
* [Resonate.io Festival](http://resonate.io/)
* [Victoria and Albert Museum](http://www.vam.ac.uk/)
