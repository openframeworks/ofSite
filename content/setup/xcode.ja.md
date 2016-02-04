## -*- coding: utf-8 -*-
.. title: xcode

Xcodeセットアップガイド
==================

最初の準備
----------

1. Xcodeを、[OS XのApp Store](https://itunes.apple.com/ca/app/xcode/id497799835?mt=12)からインストールします。
2. Xcodeのコマンドラインツール（command line tools）をインストールします。

コマンドラインツールをインストールするには、まずXcodeをインストールしてから、ターミナル（Applications/Utilities/Terminal.app にあります）を起動して以下のコマンドを入力してエンターキーを押します。

```
xcode-select --install
```

すると、コマンドラインツールのインストーラーが起動します。「Install」ボタンでインストールを開始します。

![install dialog for the command line tools](/setup/xcode/install-dialog.png)

もし、アップデート・サーバーが利用できないというエラーが出ても、気にしないでください。このエラーは、既にコマンドラインツールがインストールされている際に起こるようです。この場合は、既に準備はできています!

![server error when installing command line tools](/setup/xcode/install-dialog-server-error.png)


セットアップのテスト
------------------

これで、openFrameworksのアプリケーションをビルドする全てが整いました！ openFrameworksに付属してくるサンプルを一つ開いて、テストしてみましょう。

まず始めに、このサイトからダウンロードして圧縮を展開したフォルダーを、どこか適当な場所に移動します。このフォルダーは、あなたのopenFrameworksのルート（OF_ROOTと呼ばれます）として参照されます。このopenFrameworksnのルートフォルダに、いくつかキーとなるサブフォルダーが入っています。

- **apps** は、あなたが作成するアプリケーションを配置することになります。
- **examples** には、ビデオや3Dグラフィクス、サウンド、フォントなど様々な機能をデモするアプリケーションが含まれています。
- **addons** は、[openFrameworksのアドオン（addons）](http://ofxaddons.com/)が含まれます (開発者コミュニティーの貢献による、openFrameworksのコア機能を拡張する機能です)。
- **projectGenerator_osx** には、新規にopenFramworksのプロジェクトを生成するのに便利な、project generatorが入っています。

では、3DPrimitivesExampleを例にして、セットアップをテストしてみましょう。**example** フォルダを開いて、その中の **3d** のさらに中にある **3DPrimitivesExample** フォルダを開きます。この中には2つのフォルダといくつかのファイルが入っています。

![selecting the 3D primitives example](/setup/xcode/example-selecting.png)

openFrameworksのアプリケーションの基本的な構造は以下のようになっています。

- **src** には、アプリケーションのソースファイルが入っています。
- **bin** は、最終的に実行するアプリケーションが配置されます。さらにその中の**data**フォルダには、画像、サウンド、フォントといったアプリケーションのアセット（素材）が入っています。

`.xcodeproj`という拡張子のファイルを、Xcodeで開きます。では、早速開いてみましょう。下記のキャプチャー画像ような画面が表示されるはずです。ウィンドウの左コラムのプロジェクトの項目を展開して、プロジェクトの内容を表示して、この画像のように`ofApp.cpp`まで下がっていきましょう。

（この解説は、Xcodeのバージョン6で書かれています。あなたが未来に生きていない限り、表示は若干異なります。）

![xcode showing an openframeworks example](/setup/xcode/example-open.png)

左側のバーは、プロジェクト内を閲覧する汎用的なブラウザです。プロジェクト内のファイルや、アプリケーションをビルドした際のエラーが表示されます（エラーは三角形のアイコンで表示されます）。小さな画面で作業する際は、Command+0でサイドバーの表示/非表示を切り替えると便利です。Command+1やCommnd+2で、さらに別のタブを表示します。

画面中央がメインのエディターです。このエディター内に、左側のブラウザで選択したファイルが表示されます。通常は、ソースファイル（`.cpp`と`.h`ファイル）のためのテキストエディターとして使用します。しかし、一番上にあるプロジェクトファイルのアイコンを選択すると、プロジェクトの設定画面になります。また、画像/ビデオ/サウンドなどのファイルを選択して内容を調査することが可能です。

右側は、補助的なサイドバーで、あまりopenFrameworksでは関係ありません。右上にあるアイコンの青く表示されたサイドバーの部分をクリックするか、command+option+0で隠すことができます。

画面の上部のツールバーには、大きな「run」ボタンがあります（再生ボタンのような見た目です）。また、Xcodeでビルドするプロジェクトの種類（Xcodeではこれを「スキーム」と呼んでいます）を表示するダイアログでもあります。

**間違ったスキームが選択されていることがよくあります。** Xcodeはアプリケーションのビルドではなく、「openFrameworks」という名前のスキームが選択される傾向にあります。スキームに「openFrameworks」が表示されている場合は、ドロップダウンメニューからアプリケーションの名前のスキームを選択しましょう。もしrunボタンを選択しても何も起こらない場合、ほとんどの場合これが原因になっています。

![selecting the correct scheme in xcode](/setup/xcode/example-scheme.gif)


正しいスキームを選択したら、もう準備は完了です！ 左上のrunボタン（もしくはCommand +r）を押してXcodeにサンプルをビルドして起動するよう命令します。

最初にopenFrameworksのプロジェクトをビルドする際には、openFramworks自体がコンパイルされるので、ビルドには数分かかります。openFramworksをアップデートしたり内部のファイルを編集しない限りは、この処理が必要なのは一度だけです。openFrameworks自体のビルドが完了すると、Xcodeはサンプルをコンパイルし「Build Succeeded」というメッセージが表示されて、サンプルのアプリケーションが開始します。

![example running in a window in front of xcode](/setup/xcode/example-running.png)

サンプルを閉じた後、Xcode画面の下に新たなパネルが開いているのに気づくでしょう。これは「コンソール」といって、`ofLog`のメッセージを表示したり、その他デバッグの際に使用します。このパネルの表示/非表示は、command+shift+yで切り替えられます。

openFrameworksがコンパイルされるとき、いくつかの注意メッセージが表示されます。不吉な感じがしますが、全く問題ありません。

新規プロジェクトの生成
------------------------

セットアップの確認ができました。今度は、新規のプロジェクトをスクラッチから始めてみましょう。**projectGenerator_osx** フォルダーの中に、`projectGenerator.app`があります。これは、openFrameworksの新規プロジェクト生成が簡単に可能なアプリケーションです。アプリケーション名に「firstSketch」という名前に設定し、残りは全て初期設定のままで新規のスケッチを生成し、generateボタンをクリックしましょう。

その後、project generatorを閉じて、**apps/myApps/firstSketch** フォルダに移動します。Xcodeで`firstSketch.xcodeproj`を開いて、左側のブラウザのプロジェクトのアイコンを展開します。さらに、**src** フォルダを展開して`ofApp.cpp`ファイルを選択します。

空の`setup()`、`update()`、`draw()` という関数（その他別のいろいろな空の関数）の入った、空欄のアプリケーションのテンプレートがエディターに表示されるでしょう。

![blank openframeworks project template](/setup/xcode/generate-blank.png)

ウィンドウの左上コーナーにテキストを表示するシンプルなアプリケーションを作成しましょう。`draw()`関数の中に、下記のコードを記入して、command+r（もしくはrunボタンをクリック）でアプリケーションをビルドして起動しましょう。

```
ofDrawBitmapStringHighlight("Everything works!", 20, 20);
```

![filling in the draw function while showing xcode autocomplete](/setup/xcode/generate-text.gif)

タイピングした際に、Xcodeにあなたが既に入力した内容から類推した、自動補完機能によるサジェスチョンが表示されたでしょう。この中で上下矢印のキーで選択をし、enterキーで確定します。

もし、自動補完が表示されない場合は、Xcodeの速度を上げるため、まずクイックビルドを先にする必要があります。command+bを押して、アプリケーションを起動せずにビルドします。

エラーとデバッグ
--------------------

エラーには必然的に遭遇します。コンパイルエラーとランタイムエラーの、2種類のエラーがあります。コンパイルエラーは、通常、タイプミスやビルド設定の間違いで引き起され、アプリケーションがコンパイルの途中のままになります。ランタイムエラーは、アプリケーションが起動した後に発生し、`EXC_BAD_ACCESS`や`SIGSEGV`といった大文字のメッセージで警告してきます。

タイプミスによるコンパイルエラーは、特定の行まで、場合によっては特定の文字まで、たどっていくことが可能です。Xcodeは問題の行を赤くハイライトして、問題と思われる部分に小さな赤い三角形の枠内に文字で表示します。下の例は、forループの中で「+」の文字が多すぎる際の表示です。

![compilation error in xcode](/setup/xcode/errors-compilation.png)

Xcodeはランタイムエラーでも特定の行まで辿ろうとしますが、ちょっと気難しい感じです。正しい場合もありますが、あなたが一切記述していないファイルを指摘してくることもあり、混乱しがちです。下記の例では、アプリケーションのクラッシュの原因となった行を正しく指摘います（間違ったポインタを使おうとしています）。

![runtime error in xcode](/setup/xcode/errors-runtime.png)

もし、Xcodeが指摘した行が、問題箇所ではなさそうな場合、左側のサイドバーから別の場所（番号リストになったアイテム）を試すことができます。

ランタイムエラーは、想定しなかった状態で変数が使われた際（想定したよりも大きな値が`int`に代入されたり、可能と思っていたのにポインタが`NULL`になっていたり）に起こることがあります。Xcodeには便利なデバッガが装備されていて、特定の行でアプリケーションの実行を止める機能（ブレイクポイント）があります。この機能で、全ての変数について、チェックして回ることが可能です。

ブレイクポイントは、テキストエディターの全ての行の左の枠の小さな隙間をクリックすることで設定可能です。青の矢印で表示され、ドラッグして消去することが可能です。

![setting breakpoints](/setup/xcode/errors-breakpoint.gif)

アプリケーションがブレイクポイントに当たると、一時停止して、Xcode下部のデバッグ用の枠に、現状での全ての変数の値を表示します。下記のスクリーンショットは、forループが完了した後の変数`a`と`b`の最終値を表示しています。

![triggering breakpoints](/setup/xcode/errors-breakpoint-triggered.png)

ブレイクポイントのもう一つの使用法として、特定の状況でのみ引き起される状態をセットすることが可能です。下記の画面は、変数`a`が50のときの状況を設定したブレイクポイントです。

![conditional breakpoint being triggered](/setup/xcode/errors-condition.gif)

プロジェクトにファイルを追加する（アドオンなど）
---------------------------------------------

プロジェクトが大きくなってくると、新しくファイルを追加したくなってくるでしょう。追加するファイルは、自分のプロジェクト専用に書かれたものであったり、他の人が作成したアドオンや外部ライブラリだったりします。

新規ファイルの生成は、いくつかの方法で可能です。Xcode内のsrcフォルダを右クリックして、「New File...」を選択するのが一つの方法です。また、Xcodeのメニューから「File > New File..」を選択する方法もあります。

ダイアログボックスが表示されたら、「OS X > Source」に移動して「C++ file」を選択します。Xcodeは`.cpp`と`.h`ファイルのペアを自動的に生成します。ですので、基本となる名前、例えば「myNewClass」だけを指定すれば、残りは処理してくれます。この操作で、Xcodeが新規のファイルをsrcフォルダ以下に生成したことを確認してください。

openFramworksのアドオン（addons）の追加は、もう少し複雑です。しかし、比較的間違いの少ない方法が存在します。もしアドオンにREADMEがある場合は、どのようにアドオンをプロジェクトに追加するのかの説明があります。もしREADMEが無いのであれば、以下の方法が良いでしょう :

- アドオンをopenFrameworksのルートの下にある**addons**フォルダ内に入れます
- Xcodeのプロジェクト内の**addons**フォルダを右クリックします
- 「Add file to (name of your project)...」を選択します。
- ファイルダイアログでアドオンのフォルダまで移動して、追加するアドオンに移動します
- **src** フォルダと **libs** フォルダ（ **libs** フォルダが無い場合もあります）を選択します
- 下記のスクリーンショットのようになります

![adding src and libs folders for an addon](/setup/xcode/files-addons.png)

- 「Add」をクリックします
- Xcodeのプロジェクト内の追加したいフォルダを選択して、右クリックして「New Group from Selection」を選びます
- グループの名前をアドオンの名前に変更します

![renaming addon group](/setup/xcode/files-new-group.gif)

この段階で、プロジェクトのビルドを試しましょう。もしうまくいったなら、めでたく完了です！ もし「file not found」というエラーが出たら、ヘッダーのサーチパスにアドオンのフォルダを追加する必要があります。そのフォルダーは大抵は「include」という名前で、プロジェクトの**src**または**libs**内にあります。

![finding the include folder in ofxjson](/setup/xcode/files-include-folder.png)

もしincludeフォルダのパス（openFrameworksのルートから見た場所）がわかったら、Xcodeの左バーの先頭にあるプロジェクトのビルド設定に移動して「Build Settings"」のタブを選択します。そして、検索欄に「header search paths」と記入して検索します。

![finding the build settings dialog](/setup/xcode/files-finding-build-settings.gif)

正しい設定欄が見付かったら、ダブルクリックで編集します。「+」ボタンをクリックして新規パスを追加して、アドオンの「include」フォルダへのパスを入力します。設定欄の`$(OF_PATH)`というのは、openFrameworksのルートフォルダへのパスをあらわしています。

![adding a header search path to a project](/setup/xcode/files-adding-header-path.gif)

もしアドオンに複数の **include** フォルダがある場合には、この操作をくりかえして行う必要があります。
