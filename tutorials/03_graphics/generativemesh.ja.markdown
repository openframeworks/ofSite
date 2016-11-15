---
.. date: 2013/11/20 4:00:00
.. title: メッシュのジェネレート
.. summary: 画像からメッシュをジェネレートする基礎
.. author: Michael Hadley
.. author_site: www.mikewesthad.wordpress.com/me
---

##画像からメッシュをジェネレートする基礎

このチュートリアルは*できれば*基本的なチュートリアル（openFrameworksの設定、変数の使い方、ループの作り方等）に問題が無く、3Dを始めてみたいと思っている人向けです。時には冗長に感じられることもあるかもしれませんが、この画像（[Hubble star gallery](http://hubblesite.org/gallery/album/star/)より）を使って、

![Original hubble image](stars_small.png)

このようなものを作ることで理論とコードをご紹介していきます。

![Generative hubble mesh](mesh_small.png)

このチュートリアルは4つのセクションに分かれています。


1. [基礎: ofMeshを使う](#basics)
	* Points
	* Colors
	* Lines
    * Indices
2. [ジェネラティブなメッシュ: 画像を使ってメッシュをジェネレートする](#generative)
	* 画像を読み込む
    * ピクセルからメッシュを作る
    * ofEasyCamを使ってメッシュを操作する
3. [操作: メッシュを変形する効果を加える](#manipulations)
    * ゆらぎを加える
    * 頂点を公転させる
    * インタラクティブな拡大エフェクトを作る
4. [次のステップ](#nextsteps)

<a name="basics"></a>
##基本: ofMeshを使う


メッシュは様々な方法でつなげることができる**頂点** - [points in 3D space](https://en.wikipedia.org/wiki/Vertex_%28computer_graphics%29) - の集合です。頂点をつなぐことによって形作られる形状は**プリミティブ**と呼ばれます。プリミティブはメッシュを形成するために組み立てることのできる最小の積み木です。いくつかの異なる種類のプリミティブを作ることができます。

* 頂点をつながずに点をプリミティブとして描くこともできます。
* 頂点同士をつないで線をプリミティブとして描くこともできます。
* 3つまたは4つの頂点をつないで三角形や四角形（またはポリゴン）をプリミティブとして描くこともできます。

もう少し具体的にするために、下のメッシュを見てみましょう。頂点はオレンジのドットです。頂点は3点で1セットとしてつながり、グレイのプリミティブを形作っています。もっと詳しく知りたい方は、[OpenGL tutorial](/tutorials/03_graphics/opengl/)を参照してください。

![Keenan Crane's public domain cow shown in wireframe](Keenan_Crane_Public_Domain_Cow_Small.png)

プリミティブとしての点と線に注目してみたいと思います。スクリーンに何か描いてみましょう。メッシュを作るときは以下の手順で行います。

1. [ofMesh](/documentation/3d/ofMesh/) 変数を定義します。これをmeshと呼びます。
2. mesh.[setMode()](/documentation/3d/ofMesh/#show_setMode)を使って、頂点をつなげるためにmeshが使用するプリミティブのモード（points、lines等）を指定します。 ここでは点をプリミティブとして扱うので、**OF_PRIMITIVE_POINTS**モードを使います。
3. mesh.[addVertex()](/documentation/3d/ofMesh/#show_addVertex)を使って頂点を追加します。頂点は[ofVec3f](/documentation/math/ofVec3f.html)で、もしこのクラスを使ったことがない場合は、documentation ページのサンプルを参照してください。
4. mesh.[draw()](/documentation/3d/ofMesh/#show_draw)を使ってmeshを描きます。

ではコードに行ってみましょう！

メッシュの変数をヘッダーファイルに追加します(.h, e.g. ofApp.h)。
~~~.h
class ofApp : public ofBaseApp{

    public:
        ofMesh mesh;
    // ...
    // すでにあるコードはそのままにしておいてください。
~~~
ソースファイル(.cpp)の*setup()*と*draw()*関数を以下のように変更します。
~~~.cpp
void ofApp::setup() {
    mesh.setMode(OF_PRIMITIVE_POINTS);

    ofVec3f top(100.0, 50.0, 0.0);
    ofVec3f left(50.0, 150.0, 0.0);
    ofVec3f right(150.0, 150.0, 0.0);

    mesh.addVertex(top);
    mesh.addVertex(left);
    mesh.addVertex(right);
}
void ofApp::draw() {
    ofBackground(0);
    mesh.draw();
}
~~~
プロジェクトをビルド＆ランすると黒の背景の上に三角形を形作る3つの白の点が見えるはずです。

![Triangle Points](TrianglePoints.png)

白じゃつまらない？setupを修正することで色を追加することができます。

~~~.cpp
void ofApp::setup() {
    mesh.setMode(OF_PRIMITIVE_POINTS);
    mesh.enableColors();

    ofVec3f top(100.0, 50.0, 0.0);
    ofVec3f left(50.0, 150.0, 0.0);
    ofVec3f right(150.0, 150.0, 0.0);

    mesh.addVertex(top);
    mesh.addColor(ofFloatColor(1.0, 0.0, 0.0));

    mesh.addVertex(left);
    mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));

    mesh.addVertex(right);
    mesh.addColor(ofFloatColor(1.0, 1.0, 0.0));
}
~~~

はじめにmesh.[enableColors()](/documentation/3d/ofMesh/#show_enableColors)を使って色を使えるようにします 。色はデフォルトで使えるようになっていますが、いい練習になるのでこの行を含めておきましょう。次にmesh.[addColor()](/documentation/3d/ofMesh/#show_addColor)を使って色を追加します。色は赤、青、緑、透明のチャンネルを0.0から1.0のfloatで指定すること以外は[ofColor](/documentation/types/ofColor.html)と似ているofFloatColorを使って指定します（どうしてもofColorを使いたければ*使うことも*できますが、ofFloatColorを使うべきです）。1つ目の色は最初の頂点、2つ目は2つ目というように適用されます。

点じゃ面白くないですか？では線を加えてみましょう。プリミティブモードをlinesに変える必要がありますが、3つの異なるlineプリミティブオプションがあります。setup関数の最初の行を以下のものに変えることでそれぞれ試してみてください。

~~~.cpp
    mesh.setMode(OF_PRIMITIVE_LINES);
    mesh.setMode(OF_PRIMITIVE_LINE_STRIP);
    mesh.setMode(OF_PRIMITIVE_LINE_LOOP);
~~~

![Triangle Points](TriangleLineMode.png)

mesh.[setMode()](/documentation/3d/ofMesh/#show_setMode)のモードはそれぞれ異なる方法で頂点から線をジェネレートします。

* **OF_PRIMITIVE_LINES**はそれぞれの頂点ペアから独立した線を作ります。V<sub>1</sub>、V<sub>2</sub>、V<sub>3</sub>、 V<sub>4</sub>... といった頂点群がある場合、V<sub>1</sub>はV<sub>2</sub>とつながり、V<sub>3</sub>はV<sub>4</sub>と、というようになります。
* **OF_PRIMITIVE_LINE_STRIP**はそれぞれの頂点ペアから*つながった*線を作ります。V<sub>1</sub>はV<sub>2</sub>とつながり、V<sub>2</sub>はV<sub>3</sub>と、というようになります。
* **OF_PRIMITIVE_LINE_LOOP**はOF_PRIMITIVE_LINE_STRIPと同じで、さらに最後の点と最初の点がつながります。

OF_PRIMITIVE_LINE_LOOPだけが完全な三角形の輪郭を描きます。OF_PRIMITIVE_LINESで同じ三角形を描きたい場合は、以下のように頂点を追加するかもしれません。

~~~.cpp
    mesh.addVertex(top);
    mesh.addVertex(left);
    mesh.addVertex(left);
    mesh.addVertex(right);
    mesh.addVertex(right);
    mesh.addVertex(top);
~~~

重複して頂点を追加するのはやり過ぎですか？違うやり方を試してみましょう。

~~~.cpp
void ofApp::setup() {
    mesh.setMode(OF_PRIMITIVE_LINES);
    mesh.enableColors();
    mesh.enableIndices();

    ofVec3f top(100.0, 50.0, 0.0);
    ofVec3f left(50.0, 150.0, 0.0);
    ofVec3f right(150.0, 150.0, 0.0);

    mesh.addVertex(top);
    mesh.addColor(ofFloatColor(1.0, 0.0, 0.0));

    mesh.addVertex(left);
    mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));

    mesh.addVertex(right);
    mesh.addColor(ofFloatColor(1.0, 1.0, 0.0));

    mesh.addIndex(0);
    mesh.addIndex(1);
    mesh.addIndex(1);
    mesh.addIndex(2);
    mesh.addIndex(2);
    mesh.addIndex(0);
}
~~~

インデックスは抽象化レイヤーを追加します。メッシュに追加するそれぞれの頂点は大きな古い配列の最後に付加されます。

つまりそれぞれの頂点は、個別に位置（またはインデックス）を配列の中で指定する番号を持ちます。0番目の頂点、1番目の頂点、2番目などがあり、そのインデックス番号を使って既にある頂点を指すことができるのです。

mesh.[enableIndices()](/documentation/3d/ofMesh/#!show_enableIndices)を呼ぶとき、openFrameworksは空のインデックス配列を作ります。[addIndex()](/documentation/3d/ofMesh/#show_addIndex)を使うときは、値をこの配列の最後に追加します。メッシュがスクリーンに描画されようとするときは、openFrameworksはグラフィカルプリミティブを作るために頂点の配列をループすることはせず、どのようにプリミティブを作るか決定するためにインデックスの配列をループさせます。

モードがOF_PRIMITIVE_LINEの場合、配列のインデックスは{0, 1, 1, 2, 2, 0}となり、0番目の頂点と1番目がつながり、1番目と2番目が繋がり、2番目と0番目がつながります。1つの三角形を作るだけなのに大変な作業量ですが、インデックスのコンセプトは強力で役に立ちます。

もう1つお気づきかもしれません。それは線の色です。これはグラフィックカードの中で起こっている魔法の一部です。点Aは赤、点Bは青でAとBは線でつながるように指定すると、その線を構成するピクセルをスクリーンに描画する際に、グラフィックカードはこれらの色の間を（直線的に）補完します。

このセクション全てを読んでくれたご褒美です。

![Line Mode Smile](LineModeFace.png)

大したご褒美じゃないことは分かっていますが、OF_PRIMITIVE_LINESでできて他の2つのlineプリミティブモードでできないこと - 別々に線をつくること - を見せてくれています。次のセクションでこれを利用していきます。

~~~.cpp
    mesh.setMode(OF_PRIMITIVE_LINES);
    mesh.enableColors();
    mesh.enableIndices();

    ofVec3f eyeLeftTop(50.0, 25.0, 0.0);
    ofVec3f eyeLeftBottom(50.0, 50.0, 0.0);
    ofVec3f eyeRightTop(100.0, 25.0, 0.0);
    ofVec3f eyeRightBottom(100.0, 50.0, 0.0);
    ofVec3f mouthLeft(50.0, 75.0, 0.0);
    ofVec3f mouthMiddle(75.0, 100.0, 0.0);
    ofVec3f mouthRight(100.0, 75.0, 0.0);

    mesh.addVertex(eyeLeftTop);
    mesh.addVertex(eyeLeftBottom);
    mesh.addIndex(0);
    mesh.addIndex(1);
    mesh.addColor(ofFloatColor(0.0, 1.0, 1.0));
    mesh.addColor(ofFloatColor(0.0, 1.0, 1.0));

    mesh.addVertex(eyeRightTop);
    mesh.addVertex(eyeRightBottom);
    mesh.addIndex(2);
    mesh.addIndex(3);
    mesh.addColor(ofFloatColor(0.0, 1.0, 1.0));
    mesh.addColor(ofFloatColor(0.0, 1.0, 1.0));

    mesh.addVertex(mouthLeft);
    mesh.addVertex(mouthMiddle);
    mesh.addVertex(mouthRight);
    mesh.addIndex(4);
    mesh.addIndex(5);
    mesh.addIndex(5);
    mesh.addIndex(6);
    mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));
    mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));
    mesh.addColor(ofFloatColor(0.0, 1.0, 0.0));
~~~

<a name="generative"></a>
##ジェネラティブなメッシュ: 画像を使ってメッシュをジェネレートする

メッシュ！'ジェネラティブ'メッシュを作るための基本的な材料が揃いました。これは*データ*に適用される一連の*ルール*から作られるメッシュの1つのタイプです。

データとルールが必要です。ハッブル望遠鏡からデータを取ってきましょう！


![Original hubble image](stars.png)

HubbleMeshという名前の[新しいopenFrameworksプロジェクト](/tutorials/01_introduction/002_projectGenerator/)を作ります。プロジェクト内にbin/dataディレクトリを作り（'bin'は既にあるかもしれません）上記の画像を'stars.png'としてそこに保存します。

手元にはカラフルなピクセルの素晴らしい物がありますが、このピクセルをメッシュに変換するのにどんなルールを適用したらいいでしょうか？まずは点を描くことから始めて線を描画するまでをやってみます。画像にはたくさんの星がありますので、星が位置している場所に頂点を作っていきましょう。それができたら、蜘蛛の巣のようなものを作るために隣同士の線頂点を線でつなぎます。

はじめのはじめに、画像を読み込みましょう。main.cppファイルでさきほどダウンロードした画像のサイズと合うようにサイズを変更します。

~~~.cpp
    ofSetupOpenGL(800,800,OF_WINDOW);
~~~
次にヘッダーファイル (ofApp.h)に以下を追加します。
~~~.h
    ofImage image;
~~~
最後にソースファイル(ofApp.cpp)に以下を追加します。
~~~.cpp
void ofApp::setup(){
    bool succ = true;
    succ = image.load("stars.png");
    if (!succ) {
       cerr << "loading image failed ...\n";
    }
}

void ofApp::draw(){
    image.draw(0,0);
}
~~~

今のところ[ofImage](/documentation/graphics/ofImage/)専用のチュートリアルは無いので、画像を使ってどんなことができるかもっと知りたい場合は[ProcessingユーザーのためのopenFrameworks](/tutorials/02_first%20steps/002_openFrameworks_for_processing_users/ tutorial)や[openFrameworks 007 プレゼンテーション](/tutorials/02_first%20steps/004_presentations/)をのぞいてみる必要があります。

ただ[load()](/documentation/graphics/ofImage/#show_load)を使って画像を読み込み、[draw(0,0)](/documentation/graphics/ofImage/#show_draw)で画面の左上に描画すればいいのです。

素晴らしい！画像が読み込まれました。次は頂点でメッシュを作りたいですね。単に星の位置に頂点を作りたいだけなら、ピクセルを検索して'明るい'色を探せばいいのです。これを行うにはimage.[getColor(x, y)](/documentation/graphics/ofImage/#show_getColor)を使ってピクセルの色情報にアクセスする必要があります。画像のピクセルを走査し、その色の強さがある値を越えた場合にのみピクセルの位置に頂点を作るという
[threshold](http://en.wikipedia.org/wiki/Thresholding_%28image_processing%29)を適用します。

メッシュをofApp.hに追加します。
~~~.h
    ofMesh mesh;
~~~

以下をofApp.cppに追加します。
~~~.cpp
void ofApp::setup(){
    bool succ = true;
    succ = image.load("stars.png");
    if (!succ) {
       cerr << "loading image failed ...\n";
    }

    mesh.setMode(OF_PRIMITIVE_POINTS);

    float intensityThreshold = 150.0;
    int w = image.getWidth();
    int h = image.getHeight();
    for (int x=0; x<w; ++x) {
        for (int y=0; y<h; ++y) {
            ofColor c = image.getColor(x, y);
            float intensity = c.getLightness();
            if (intensity >= intensityThreshold) {
                ofVec3f pos(x, y, 0.0);
                mesh.addVertex(pos);
                mesh.addColor(c);
            }
        }
    }
}
void ofApp::draw(){
    ofBackground(0,0,255);
    mesh.draw();
}
~~~

![Thresholded Stars Point Mesh](ThresholdedStarsSmall.png)

上記のコードではプリミティブ用に点でメッシュを作りました。次に[getWidth()](/documentation/graphics/ofImage/#show_getWidth)と[getHeight()](/documentation/graphics/ofImage/#show_getHeight))を使って画像のピクセルを走査し、[getLightness()](/documentation/types/ofColor/#!show_getLightness)を使って各ピクセルの色の強さを調べました。その強さが閾値を越えた場合は、そのピクセルの位置に頂点を作り、そのピクセルの色で色をつけています。最後に、頂点をジェネレートするのに使われた画像のピクセルを見ることができるように青の背景にメッシュを描画します。閾値を上げたり下げたりすることで、（それぞれ）頂点の個数を減らしたり増やしたりできます。

[ofBackgroundGradient](/documentation/graphics/ofGraphics/#!show_ofBackgroundGradient)を使って背景よりしっくりくるものにしましょう...

~~~.cpp
void ofApp::draw(){
    ofColor centerColor = ofColor(85, 78, 68);
    ofColor edgeColor(0, 0, 0);
    ofBackgroundGradient(centerColor, edgeColor, OF_GRADIENT_CIRCULAR);
    mesh.draw();
}
~~~

線三昧の時間まであと少し！

メッシュは沢山の頂点を保持しています。その数がいつくか知りたければ[getNumVertices()](/documentation/3d/ofMesh/#show_getNumVertices)を使って調べることができます。

~~~.cpp
    cout << mesh.getNumVertices() << endl;  // It should be ~64,000
~~~
64,000の頂点をそれぞれの近くの頂点につなぐためにループを回すと、かなりの時間がかかってしまいす。画像処理の速度を上げるとても一般的な方法の1つは画像のサイズを小さくすることです。

~~~.cpp
    image.load("stars.png");
    image.resize(200, 200);
~~~

そしてもう画像のピクセルはopenFrameworksのウィンドウのピクセルと1対1ではないので、ループの中の*pos*変数を調整する必要があります。

~~~.cpp
            if (intensity >= intensityThreshold) {
                // 画像を1/4にしたのでピクセルを4倍する必要がある。
                // メッシュでopenFrameworksのウィンドウをカバーするために4倍した位置
                ofVec3f pos(x*4, y*4, 0.0);
                mesh.addVertex(pos);
                mesh.addColor(c);
            }
~~~

妥当な頂点数（2000）となったので、線を作るために頂点をつなげていきます。もしお互いに近い頂点同士のみをつなげたい場合は、全ての可能性のある頂点ペアを走査し、頂点間の距離が特定の値より小さい場合にのみつなげるようにします。

~~~.cpp
    // lines モードに変えることを忘れずに！
    mesh.setMode(OF_PRIMITIVE_LINES);

    // ...
    // わかりやすくするために頂点を作るコードを省略
    // でもあなたのファイルから消さないでください！

    // 線を追加しましょう！
    float connectionDistance = 30;
    int numVerts = mesh.getNumVertices();
    for (int a=0; a<numVerts; ++a) {
        ofVec3f verta = mesh.getVertex(a);
        for (int b=a+1; b<numVerts; ++b) {
            ofVec3f vertb = mesh.getVertex(b);
            float distance = verta.distance(vertb);
            if (distance <= connectionDistance) {
                mesh.addIndex(a);
                mesh.addIndex(b);
            }
        }
    }
~~~

以下のようなものが表示されるはずです（コードが実行されるのに時間がかかりすぎる場合は、頂点数を減らすために*intensityThreshold*を大きくしてみましょう）。

![First Line Mesh](StarLinesFirstMeshSmall.png)

もう一度コードを見てみましょう。

1. 全ての重複しない頂点ペアを取得します。mesh.[getVertex()](/documentation/3d/ofMesh/#show_getVertex)を使ってメッシュの*a*番目の頂点を取得できます。そして全ての頂点ペアを取得するのに2つの for ループを使います。何故2番目のループが*b=a+1*で始まっているのか不思議に思うかもしれません。線を作るために頂点を繋ぐ際には頂点の順番は関係ないので、*b*に大量の値が入るのを値を取り除くことができます。
2. 次に、頂点間の距離を求める必要があります。ofVec3fには正にこれをするための[distance()](/documentation/math/ofVec3f/#show_distance)関数があります。
3. もし頂点同士の距離が*connectionDistance*によってセットされた値より近い場合は、それらを結ぶ線を加える必要があります。線を追加するには単にインデックス*a*と*b*をメッシュのインデックス配列に追加するだけでいいのです。

＼デデーン！／ジェネラティブなメッシュです。これをもっと3D的にするために2つ微調整を加えましょう。はじめにz座標を変えるために色の彩度を使います。

~~~.cpp
            if (intensity >= intensityThreshold) {
                float saturation = c.getSaturation();
                float z = ofMap(saturation, 0, 255, -100, 100);
                ofVec3f pos(x*4, y*4, z);
                mesh.addVertex(pos);
                mesh.addColor(c);
            }
~~~

このコードは[ofMap()](/documentation/math/ofMath/#!show_ofMap)明るい色はプラスz方向により白い色はマイナスz方向に配置しています。ofMapは1つの範囲の値（ここでは0から225）を取り、それを新しい値の範囲（ここでは-100から100）にマップします。

うーん...メッシュは大して変化してないですね？このセクションの最後の微調整としてカメラを追加しましょう。

ヘッダーに以下を追加します。
~~~.h
		ofEasyCam easyCam;
~~~
draw関数を修正します。
~~~.cpp
void ofApp::draw(){
    ofColor centerColor = ofColor(85, 78, 68);
    ofColor edgeColor(0, 0, 0);
    ofBackgroundGradient(centerColor, edgeColor, OF_GRADIENT_CIRCULAR);

    easyCam.begin();
        ofPushMatrix();
            ofTranslate(-ofGetWidth()/2, -ofGetHeight()/2);
            mesh.draw();
        ofPopMatrix();
    easyCam.end();
}
~~~

[ofEasyCam](/documentation/3d/ofEasyCam/)はジェネラティブなメッシュにおける難しい3Dを身近にしてくれる手軽な方法です。[opengl tutorial](/tutorials/03_graphics/opengl/)ではカメラや[ofPushMatrix()](/documentation/graphics/ofGraphics/#!show_ofPushMatrix)、[ofPopMatrix()](/documentation/graphics/ofGraphics/#!show_ofPopMatrix)、[ofTranslate()](/documentation/graphics/ofGraphics/#!show_ofTranslate)について解説しています。このコードはメッシュをカメラビューの中心に配置しています。左クリックとドラッグで回転、右クリックとドラッグでズームができます！

![Line Mesh with Camera](cameraSmall.gif)



<a name="manipulations"></a>
##操作: メッシュを変形する効果を加える

手元にあるのはいかにもメッシュというメッシュなので、一歩進んでメッシュに動きを与えるために幾つかのルールを追加しましょう。

###ゆらぎ

我々のメッシュは顕微鏡の中で見つかりそうな何かのようなので、'オーガニックな'動きを頂点に加えて行きましょう。あなたのコンピュータ上では以下のgifよりだいぶ速く動くでしょう（ブラウザにはgifのフレームレートに制限があるため）が、これからやっていくことへのヒントとなるでしょう。

![Jitter](jitterSmall.gif)

毎フレームごとに、各頂点を少量のランダムの値で動かしていきます。[ofRandom()](/documentation/math/ofMath/#show_ofRandom)を使って頂点を動かす代わりに[パーリンノイズ](https://ja.wikipedia.org/wiki/%E3%83%91%E3%83%BC%E3%83%AA%E3%83%B3%E3%83%8E%E3%82%A4%E3%82%BA)と呼ばれるものをジェネレートする[ofSignedNoise()](/documentation/math/ofMath/#!show_ofSignedNoise)を使っていきます。Daniel Shiffmanのオンライン書籍の[1.6 Perlin Noise (A Smoother Approach)](http://natureofcode.com/book/introduction/#i6-perlin-noise-a-smoother-approach)セクションのPerlin noiseの記述を参照してください。パーリンノイズは時間とともにスムーズに変化するランダムな値を生み出します。ランダムな値とパーリンノイズの違いは[figure 1.5](http://natureofcode.com/book/imgs/intro/intro_05.png) (連続したノイズの値) and [figure 1.6](http://natureofcode.com/book/imgs/intro/intro_06.png) (連続したランダムの値)を見れば雰囲気がつかめるのではないでしょうか。

ofRandom()では、値の範囲を指定するとランダムな値をその範囲内で返します。もし何度も続けて呼び出すと（大概は）都度新しい値を得るでしょう。パーリンノイズはちょっと違う働きをします。ofSignedNoise()は常に-1.0から1.0の値を返しますが、それでも関数に入力値を渡さなければいけません。ofSignedNoise()をグラフ紙に描かれた曲がりくねった線だと考えてみてください。座標、つまりｘの値を渡すと対応するyの値を返します。もしofSignedNoise(3.0)を何回も呼び出しても、毎回同じ値を受け取るでしょう。

動きをジェネレートするためにパーリンノイズを使うときは、現在の時間を入力値（xの値）として渡すのが一般的です。なので、頂点を動かすためには、時間([ofGetElapsedTimef()](/documentation/utils/ofUtils/#!show_ofGetElapsedTimef])を使います)をofSignedNoiseに渡すことで、時間とともにスムーズに変化する値を返してくれます。1つ注意 - 頂点を他の頂点とは独立して動いているように見せたいのですが、全ての頂点に対してフレームごとにofSignedNoiseに同じ時間を渡すと、全ての頂点は同じ方向に動いてしまいます。頂点1を動かすとき、頂点2（頂点3、頂点4、等とも）とは違う時間を使う必要があります。

コードに行ってみましょう。
以下をヘッダーに追加してください。

~~~.h
		vector<ofVec3f> offsets;
~~~

さらに以下の2行をsetup関数に追加します。
~~~.cpp
    // この行を追加する
    ofSetFrameRate(60);

    // わかりやすくするために数行省略していますが、あなたのローカルバージョンではそのままにしておいてください

    for (int x=0; x<w; ++x) {
        for (int y=0; y<h; ++y) {
            ofColor c = image.getColor(x, y);
            float intensity = c.getLightness();
            if (intensity >= intensityThreshold) {
                float saturation = c.getSaturation();
                float z = ofMap(saturation, 0, 255, -100, 100);
                ofVec3f pos(x*4, y*4, z);
                mesh.addVertex(pos);
                mesh.addColor(c);

                // この行を追加します
                // 3つのランダムな値を持つofVec3fを作ります
                // これらによりそれぞれの頂点を独立して動かすことができます
                offsets.push_back(ofVec3f(ofRandom(0,100000), ofRandom(0,100000), ofRandom(0,100000)));
            }
        }
    }
~~~

そして最後に、以下の行をupdate関数に追加します。
~~~.cpp
    int numVerts = mesh.getNumVertices();
    for (int i=0; i<numVerts; ++i) {
        ofVec3f vert = mesh.getVertex(i);

        float time = ofGetElapsedTimef();
        float timeScale = 5.0;
        float displacementScale = 0.75;
        ofVec3f timeOffsets = offsets[i];

	    // いくつかのパラメータとともにパーリンノイズを使った典型的なデザインパターン
	    // ofSignedNoise(time*timeScale+timeOffset)*displacementScale
	    //     ofSignedNoise(time) は時間とともにスムーズに変化するノイズ値を返します
	    //     ofSignedNoise(time*timeScale) はノイズのスムーズさ(smaller timeScale, smoother values)をコントロールします
	    //     ofSignedNoise(time+timeOffset) は復数のものをコントロールするのに同じパーリンノイズ関数を使ってそれらが独立して動いているかのように見せます
	    //     ofSignedNoise(time)*displacementScale は[-1, 1]の間であるノイズの値の範囲を好きなように変更できます
	    // これら全てのパラメータを組み合わせるとノイズをいい感じにコントロールできるでしょう
        vert.x += (ofSignedNoise(time*timeScale+timeOffsets.x)) * displacementScale;
        vert.y += (ofSignedNoise(time*timeScale+timeOffsets.y)) * displacementScale;
        vert.z += (ofSignedNoise(time*timeScale+timeOffsets.z)) * displacementScale;
        mesh.setVertex(i, vert);
    }
~~~

setupでは2つのことを行いました。

1. [ofSetFrameRate(60)](/documentation/application/ofAppRunner/#!show_ofSetFrameRate)を使ってプログラムが60FPSを越えないようにしました。これをしなくてもうまくいくかもしれませんが、時間を使うときにはやっておくと便利です。
2. offsetsという変数を作りました。ランダムな値を持つofVec3fのvectorです。これらの値のおかげで見る限り他の頂点の動きとは独立して頂点をランダムなx、y、zの方向に動かすことができます。

そしてupdateでは以下のことを行っています。

1. mesh.[getVertex()](/documentation/3d/ofMesh/#!show_getVertex)を使って頂点の位置を得て、vertという名前の変数に入れています。
2. ofSignedNoise()と2、3のパラメータを使ってvertのx、y、zの値を動かしています。
3. mesh.[setVertex()](/documentation/3d/ofMesh/#show_setVertex)を使って頂点の位置を更新しています。

素晴らしい！震えるメッシュができました。

###公転

次に回転する公転運動を追加しましょう。元々星が*あった*のだから、ふさわしいように思います。

![Orbit](orbitSmall.gif)

公転運動を作るために三角関数の関数を利用します。入門編としてはThe Nature of Codeの[chapter 3](http://natureofcode.com/book/chapter-3-oscillation/)を参照するとよいでしょう。

z次元のことは今は忘れてx、y次元に注目しましょう。点を決めてそれを円周上に公転させたい時は、角度、sine、cosineを利用します。極座標に関しては[wiki](http://en.wikipedia.org/wiki/Polar_coordinate_system)を参照してください。特に"Converting between polar and Cartesian coordinates"のセクションを見てください。

もし中心から点がどれくらい離れているか知っている場合は、距離と角度（極座標）を用いて空間での位置を定義することができます。その距離と角度を取って、xとyの値（直交座標）に変換するのに使います。

~~~.cpp
    x = distance * cos(angle)
    y = distance * sin(angle)
~~~

その点を円周上に回転させたい場合は、時間とともに角度を大きくしていくだけでよくて、残りは計算がやってくれます。

これをメッシュでやる場合、以下のことをする必要があります。


1. 各頂点が回るための中心点を決めます
2. 頂点が位置する最初の極座標を計算します
3. 時間とともに少しずつ各頂点の極座標の角度を増やしていきます

新しい変数をヘッダーファイルに追加しましょう。

~~~.h
		// これらは公転onとoffを切り替えるのに使います
		ofMesh meshCopy;
		bool orbiting;
		float startOrbitTime;

		// これらの変数は各頂点の極座標を保存するのに使います
		vector<float> distances;
		vector<float> angles;
		ofVec3f meshCentroid;
~~~

以下をsetup関数の最後に追加してください
~~~.cpp
  // メッシュ用に中心点を計算する必要があります
   // ofMeshにはgetCentroid()という全ての頂点の平均の位置を見つけるメソッドがあります
   //    http://en.wikipedia.org/wiki/Centroid
   meshCentroid = mesh.getCentroid();

　　// 重心が分かったので、各頂点と中心との相対的な極座標（距離と角度）を知る必要があります
   // 点を結ぶ距離は分かりましたが、角度に関してはどうでしょうか？
   // ここでatan2の登場です。atan2(y, x)はxとyの引数を取り中心点(0,0)に対する相対角度を返します。もし(x1, y1)と(x2, y2)の2点間を求めたい場合はatan2(y2-y1, x2-x1)を使う必要があります。

for (int i=0; i<numVerts; ++i) {
        ofVec3f vert = mesh.getVertex(i);
        float distance = vert.distance(meshCentroid);
        float angle = atan2(vert.y-meshCentroid.y, vert.x-meshCentroid.x);
        distances.push_back(distance);
        angles.push_back(angle);
    }

    // これらの変数で公転をon/offを切り替えます
    orbiting = false;
    startOrbitTime = 0.0;
    meshCopy = mesh;		// 元の状態のものを再読み込みできるようにメッシュのコピーを保存します

~~~
以下をupdate関数に追加します
~~~.cpp
    if (orbiting) {
        int numVerts = mesh.getNumVertices();
        for (int i=0; i<numVerts; ++i) {
            ofVec3f vert = mesh.getVertex(i);
            float distance = distances[i];
            float angle = angles[i];
            float elapsedTime = ofGetElapsedTimef() - startOrbitTime;

            // 中心に近いものはより距離のあるものより速く回転するように公転の速さを調整しよう
            float speed = ofMap(distance, 0, 200, 1, 0.25, true);

            // 頂点の回転角を求めるために、現在の時間と最初の回転角を使います
            float rotatedAngle = elapsedTime * speed + angle;

            // 距離はメッシュの重心に対して相対的に計算されているので、xとyを重心に追加することで全てをスクリーンの座標に戻す必要があります
            vert.x = distance * cos(rotatedAngle) + meshCentroid.x;
            vert.y = distance * sin(rotatedAngle) + meshCentroid.y;

            mesh.setVertex(i, vert);
        }
    }
~~~
そして以下をkeyPressed関数に追加します
~~~.cpp
    if (key == 'o') {
        orbiting = !orbiting; 			// boolean を反転させます
        startOrbitTime = ofGetElapsedTimef();
        mesh = meshCopy;			//メッシュに元の値を戻します
    }
~~~

これで'o'キーを使って公転のオンオフを切り替えられるようになっているはずです！

もう1点おまけのプログラミングのメモ: *meshCopy*変数は、必要な時に再読み込みできるように元のメッシュのバックアップコピーとして使われていました。setup関数で以下の行を使った時、


One additional programming note: the variable *meshCopy* was used as a backup copy of the original mesh that could be reloaded when needed.  In the setup function, when we used the line:
~~~.cpp
meshCopy = mesh;
~~~

*mesh*変数の別のコピーを作り、それを*meshCopy*変数に入れています。ofMeshクラスはこのインスタンス内にいわゆるディープコピー持つので、*mesh*に何か変更が加えられても*meshCopy*は何も変わりません。注意してください - 全てのオブジェクトがデフォルトでディープコピー機能を持つわけではありません。

###拡大

最後に加える微調整でメッシュに少しインタラクティブ性を追加しましょう。拡大鏡エフェクトを追加します。

![Magnified](magnifierSmall.gif)

技術的にはこれを拡大鏡エフェクトと呼ぶのはおかしいのです。実際には[barrel distortion](https://en.wikipedia.org/wiki/Distortion_(optics))と呼ばれる光学における事象のをベースとしています。このエフェクトをグリッドに沿って適用すると以下のようになります。

![Grid](GridSmall.png)
![BarrelDistortedGrid](BarrelDistortedGridSmall.png)

以下のことをやっていきます。

1. マウスがスクリーン上のどこにあるか求めます。
2. マウスのある点から各頂点への方向を求めます。
3. 各頂点をその方向へマウスの位置から遠ざけます。
    * 頂点がマウスに近い場合、大きく距離を取ります。
    * 頂点がマウスから遠い場合、小さく距離を取ります。

この微調整ではvectorの計算を使うので、もし迷子になったと思ったら[vector tutorial](/tutorials/02_maths/001_vector_maths/)を参照してください。コードに行きます！

ヘッダーに新しい変数を追加します。
~~~.h
        // 公転の微調整の時と同様、これで拡大エフェクトのon/offを切り替えます。
		bool mouseDisplacement;
~~~
setup関数の最後に以下の行を追加します。
~~~.cpp
    // 最初はエフェクトなしの状態にしておきます
    mouseDisplacement = false;
~~~
このコード群をupdate関数の最初に追加します。
~~~.cpp
    if (mouseDisplacement) {
        // マウスの位置を求めます - ofTranslate()コマンドがdraw()内にあるので、スクリーンの中心に相対でなければなりません
        ofVec3f mouse(mouseX, ofGetWidth()-mouseY, 0);

        // 全てのメッシュの頂点を走査してそれらをマウスから遠ざけます
        for (int i=0; i<mesh.getNumVertices(); ++i) {
            ofVec3f vertex = meshCopy.getVertex(i);
            float distanceToMouse = mouse.distance(vertex);

            // マウスへの距離によって移動量を拡縮します
            // マウスへの距離が小さい時は小さい移動になります
            float displacement = ofMap(distanceToMouse, 0, 400, 300.0, 0, true);

            // マウスから現在の頂点への距離を計算します
            ofVec3f direction = vertex - mouse;

            // 方向を正規化して長さ1にする
            // これで後でvertorの長さを簡単に変えられるようになります
            direction.normalize();
            
            // 頂点をマウスからその方向に遠ざけます
            // 距離を移動変数の値と同じにします
            ofVec3f displacedVertex = vertex + displacement*direction;
            mesh.setVertex(i, displacedVertex);
        }
    }
~~~
そして最後にこのコード群をkeyPressed関数の最初に追加します。
~~~.cpp
    if (key == 'm') {
        mouseDisplacement = !mouseDisplacement;  // booleanを反転します
        mesh = meshCopy;  // 元のメッシュの状態に戻します
    }
~~~

これでチュートリアルは全て終わりです！（またはただここまでスクロールダウンしてきただけにしても、それは超多くのスクロールなのでそれ自体は偉業に違いないですね）。

<a name="nextsteps"></a>
##次のステップ

[opengl tutorial](/tutorials/03_graphics/opengl/)をチェックしましょう。そして他のプリミティブモードもいじってみましょう。

他のデータを使いましょう。新しいルールを作りましょう。変なものを作ってフォーラムにシェアしましょう！

どんなものをジェネレートできるかについては以下のプロジェクトを参考にするといいアイデアが浮かぶかもしれません。

Golan Levinは[Segmentation and Symptom](http://www.flong.com/projects/zoo/)で一連の線を作るのにポートレートを使いました。
[![GolanSegmentationAndSymptom](GolanSegmentationAndSymptom.jpg)](http://www.flong.com/projects/zoo/)

Quayolaは[Strata #4](http://www.quayola.com/strata4/)でフランドル美術を探求しました。
[![QuayolaStrata4](QuayolaStrata4.png)](http://www.quayola.com/strata4/)

Marcin Ignacは[Cindermedusae](http://marcinignac.com/projects/cindermedusae/)でジェネラティブなクラゲのような生物をつくりました。
[![IgnacCindermedusae](IgnacCindermedusae.png)](http://marcinignac.com/projects/cindermedusae/)

The Rockwell group[Hall of Fragments](http://lab.rockwellgroup.com/work/venice-biennale.html)はメッシュを変化させるのに人の動きを使いました。
[![RockwellHallOfFragments](RockwellHallOfFragments.png)](http://lab.rockwellgroup.com/work/venice-biennale.html)

Onformativeは[Growing Data](http://www.onformative.com/work/growing-data/)でテキストと戯れました。
[![onformativeGrowingData](onformativeGrowingData.png)](http://www.onformative.com/work/growing-data/)
