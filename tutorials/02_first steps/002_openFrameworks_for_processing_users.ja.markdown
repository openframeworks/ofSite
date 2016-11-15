---
.. date: 2008/06/30 14:16:00
.. title: ProcessingユーザーのためのopenFrameworks
.. summary: Processingジャンキーのための、openFrameworksの概観
.. author: Zach Gage
.. author_site: http://www.stfj.net
---

## Contents

*   [1 Processingジャンキーのための、openFrameworksの概観][2]
    *   [1.1 Processingは実際どのように動作しているのか?][3]
        *   [1.1.1 クラスの拡張とは? (基底クラスとサブクラスって何?)][4]
        *   [1.1.2 了解、じゃあProcessingではそれはどうやるの?][5]
    *   [1.2 openFramewroksはどうやって動いているの?][6]
        *   [1.2.1 Main.cppの詳細][7]
    *   [1.3 Java vs. C++ コンパイルのプロセス][8]
    *   [1.4 C++ではクラスはどうやって動かすの? (2つのファイル!?)][9]
        *   [1.4.1 testApp.h][10]
        *   [1.4.2 testApp.cpp][11]
    *   [1.5 なんだ\*&れは? (ポインタの初歩).][12]
        *   [1.5.1 値と参照Value vs. Reference][13]
        *   [1.5.2 &と\*][14]
        *   [1.5.3 どんな状況で使うのか?][15]
        *   [1.5.4 基本のデータ型][16]
            *   [1.5.4.1 Processingの文字列の例外][17]
    *   [1.6 PImage, updatePixels() 対 ofTexture, pixels\[\]][18]
        *   [1.6.1 何故Pixelの値はColorオブジェクトとして格納されていないの?][19]
    *   [1.7 C++に関する既知の問題 / その他のトピックス][20]
        *   [1.7.1 暗黙のデータ変換の期待][21]
        *   [1.7.2 ウィンドウのサイズ変更][22]
        *   [1.7.3 Update()とDraw()?][23]
        *   [1.7.4 コンソールに出力するには?][24]
            *   [1.7.4.1 printf][25]
            *   [1.7.4.2 iostream][26]
        *   [1.7.5 塗り潰しの図形は、スムージングできない?][27]
        *   [1.7.6 ofSetColorに関するビデオ表示の問題][28]
        *   [1.7.7 Processingのbackground() 対 oFのofBackground()][29]
        *   [1.7.8 ofFill() / ofNoFill() 対 Processingのfill() noFill()][30]
        *   [1.7.9 数学関数とそれはどこから来たのか?(ノー・モア Math.\*)][31]
            *   [1.7.9.1 cmath][32]
            *   [1.7.9.2 ofConstants][33]
            *   [1.7.9.3 ofMath][34]
        *   [1.7.10 構造体、何のために、どうやって使うのか?][35]
        *   [1.7.11 メモリ管理][36]
        *   [1.7.12 基本的な論理構造の問題][37]
        *   [1.7.13 Xcodeのブレイクポイントと、何故デバッガが凄いのか][38]

## <a id="How_Processing_Actually_Works"></a> Processingは実際どのように動作しているのか?

もし、あなたがある程度Processingでプログラミングしてきたのなら、あなたは当然クラスを使ったことがあると受けとめて良いですよね? Javaのクラスの特徴一つは、もしかしたら馴染みがないかもしれませんが、多態性(ポリモーフィズム、クラスの継承)です。

###<a id="What_is_class_extending.3F_.28base_and_sub_classes.29.3F"></a> クラスの拡張とは? (基底クラスとサブクラスって何?)

クラスの拡張は、基本となる一つのクラスから、機能を追加したクラスを新規に生成するための方法です。

もし、例えばあなたがビデオゲームのようなものを作っていたとします。あなたは「敵」というクラスを作り、その外観を画像として読みこんだり、その動きを定義したり、スクリーンの望みの場所に描画するとします。そのコードは以下のようになるでしょう。

~~~~{.cpp}
class Enemy
{
  int x; //x座標
  int y; //y座標

  public void init(String pathToEnemyPicture, int startX, int startY)
  {
    //敵の画像をHDから読み込む
    //開始位置をアサイン
  }

  public void move()
  {
    //動いたり、プレーヤを撃ったり
  }

  public void draw()
  {
    //指定した位置に敵の画像を表示
  }
}
~~~~

しかし、もし複数の種類の敵を作りたかったり、それぞれ違う描画のされかたをしたい場合はどうやるのでしょう? こうしたとき、クラスの継承が役立ちます。全ての敵は、依然としてinit()で自身を初期化してmove()でスクリーンを動くようにしていきましょう。わたしたちが変更したい唯一の機能は、それぞれの構成をdraw()関数で描画することです。

Enemyクラスは「基底クラス」と呼ばれる方法で使用しましょう。基底クラス自体は初期化されることはおそらくありません、その代わり継承された別のクラスからのみ初期化されます。何故なら、draw()関数のみがわたしたちが変更したい部分です、init()やmove()は変更する必要はありません。draw()関数を再度宣言することで、我々は関数を再定義できるのです。それは、既に宣言された関数の場所で再度宣言することで行います。結果として、その敵のサブクラスは機能を上書きします。

例えば、Javaであれば

~~~~{.cpp}
class DoubleEnemy extends Enemy
{
  public void draw()
  {
    //もう一度自分自身を描く
  }
}
~~~~

C++ではこう書きます

~~~~{.cpp}
// "DoubleEnemy.h"ファイル

class DoubleEnemy: public Enemy // class[className]:[privacy][extended Class]{}
{
  public void draw();// 実際のコードは"DoubleEnemy.cpp"に書くこと
}; // クラスの最後に";"(セミコロン)をつける
~~~~

DobubeEnemyクラスは抽象的なEnemyクラスを拡張して、Enemyクラスで宣言された全ての機能と変数を継承します。それによって、我々は新たにinit()やmove()を書く必要がなくなるのです。わたしたちはまた、別の特別なEnemyクラスも作成できます。


~~~~{.cpp}
// "TripleEnemy.h" ファイル
class TripleEnemy : public Enemy
{
  public void draw(); //敵を3度描く
};
~~~~

これで自分自身で動きまわり初期化するが、それぞれに別々に表示される2つの敵のタイプができました。この方法の別の利点としては、もしわたしたちが敵の移動や初期化の方法を知らなかったとしても、基底クラスを一度だけ変更すれば、全ての特殊な敵を動かし初期化できるのです。

###<a id="Ok.2C_so_what_does_this_have_to_do_with_Processing.3F"></a> 了解、じゃあProcessingではそれはどうやるの?

しかしながら、プロセッシングはこうした方法をコンパイラから隠しています。Processingは実際基底クラス(pApplet)を動かしています。あなたが記述したプログラムはすべて、もちろんクラスも含め、Processingのアプリケーション内部では、自動的に動作してるProcessingエンジンの基底クラスを派生させています。あなたがdraw()やsetup()関数を書いた時、実際にはProcessingの基底クラスの中になるdraw()やsetup()関数を再定義しているのです。


## <a id="How_OpenFrameworks_Works."></a>openFramewroksはどうやって動いているの?

openFrameworksは、Processingとよく似た方法で作られています。ただ、煩雑な部分もそのまま隠していません。しかし、testApp.hを開いてみると\#include "ofMain.h" という行のすぐ下に、"class TestApp : public ofSimpleApp{"という記述がみられます。

これは、Processingと同様に、testAppクラスがofSimpleAppクラスを拡張していることを意味します。すぐ下の"Public:"という記述以下は、Processingと同様に、ofSimpAppから継承したtestAppで再度記述するの全ての関数となっています。

全てのC++のアプリケーションは、プログラムの開始地点を定義するためにmain()関数を使用しています。Javaも同様です。しかしProcessingではこの事実は隠されています、なぜなら、あなたはmain関数から呼びだされる派生したクラスさえ定義すれば良いからです。

しかし、C++はmain()関数からスタートしなくてはなりません。これは「エントリーポイント」と呼ばれ、あなたのプログラムの出発点なのです。

main.cppはmain()関数を含んでいます。この中にはスクリーンサイズを設定したり、プログラムのなかで動作させる無限ループを開始したりしています。もし、より詳しく知りたいのであれば、2.1のセクションを読んでみてください。しかし、これは現在のところ混乱を招きかねないので、必須ではありません。


### <a id="Main.cpp_In-depth"></a>Main.cppの詳細

oFのサンプルプログラムのどれをみても、main.cppファイルには一番上に2つの\#includeの宣言が含まれているのがわかります。これは、Processingが行なっている方法と一緒です。

最初の記述、


~~~~{.cpp}
#include "ofMain.h"
~~~~

これは、全てのopenFrameworksのライブラリをmain.cppに加えます。これによりmainクラスで2つの重要なoFの機能を実行できるようになります。ofSetupOpenGL()はアプリケーションのウィンドウを生成します、ofRunApp()はアプリケーションを起動します。

注意してみると、ofRunApp()はパラメータを渡しています。

~~~~{.cpp}
new testApp()
~~~~

ofRunApp()は、testAppクラスのインスタンスを渡します、main.cppの2つめのincludeの記述(\#include "testApp.h")でおこなわれています。

ofRunAppは、ofSimpleAppの種類をパラメータを渡さなくてはなりません。これがわたしたちがまず最初にtestApp.hを見た理由です。このクラスはofSimpAppを継承していることに注意してください。

くり返すと、

* main.cppは、ofMainとtestAppを内包しています
* ofMainは、スクリーンサイズを設定し、ofRunAppを呼びだします
* testAppもまた、ofMainを内包します
* testAppに書かれた全てのコードは、openFrameworksのライブラリの恩恵を受けることが可能となります

あなたが自分自身でクラスを書くようになるまでは、testApp.hとtestApp.cppはProcessingのメインウィンドウのように考える助けとなるかもしれません。あなたの記述する全てのコードは、この2つのファイルに含まれます。その気がなければ、その他のXcodeに入っているコードは見る必要はないのです。

## <a id="Java_vs._C.2B.2B_Compile_Processes"></a>Java vs. C++ コンパイルのプロセス

JavaとC++では、コンパイルのプロセスが大きく異なります。C++のコンパイルのプロセスをステージごとに理解しることは、吐きださせる様々なタイプのエラーの内容を理解する上でとても重要です。どの段階でどのようなエラーがあるのかという知識によって、プロジェクトのデバッグの助けになります。

Javaではコンパイルのたびにプログラムの全てを走査しバイトコードへと変換します。プログラムを実行すると、Javaインタプリタが、プログラムが作動するようにランタイムコンパイルします。

C++の場合はより複雑です。

* はじめに、コンパイラがまずプログラムをプリプロセスします。全ての\#include宣言をたどっていき作成たコードをコピー＆ペーストして一つの大きなファイルを作成します。(C++の全ての\#がついた宣言はプリプロセッサの対象です)
* 第2に、コンパイラはコード全体をパースします。コードの全てに意味があるのか確認し、パースツリーの中にコードを分類し、アセンブラ(とても低レベルの言語)に翻訳されます。
* 第3に、アセンブラは、オブジェクトファイルの中で機械語に翻訳されます。
* 最後に、オブジェクトファイルは結びあわされ、.exeや.appなどの実行ファイルを生成します。    

この方法の利点は、一度コンパイルしたセクションは再コンパイルする必要はないので、C++のコンパイラのスタイルは巨大なプログラム(例えば、openFrameworksのアプリケーション本体)に向いているという点であるとすぐに理解できでしょう。これは、実際にサンプルプログラムを開いてコンパイルしてみるとわかります。最初のコンパイルは30秒から1分ほどかかるかもしれません。もし、testApp.cppに変更を加えて再度コンパイルすると、コンパイルはずっと早く終わるはずです。これは、XCodeはopenFrameworksの全てのライブラリをもうコンパイルする必要がなく、修正した少量のコード変化だけを再コンパイルすれば良いからです。


## <a id="How_Classes_Work_in_C.2B.2B_.28Two_Files.21.3F.29"></a>C++ではクラスはどうやって動かすの? (2つのファイル!?)

C++のクラスは2つのファイルから構成されています。
この2つは、レシピだと思うと理解しやすいでしょう。

ヘッダーファイル(.h)は、原材料と含有物のリストです。

* ヘッダーの宣言が重なるのを防ぐためのプリプロセッサ宣言
* 他のクラスを読みこむためのinclude宣言
* クラスの継承の宣言
* クラス変数
* クラスに含まれる関数のプロトタイプ
* それらの属性に対するセキュリティ設定 (public, private, protected, など).

実装ファイル(.cpp)は、材料に何をするのかの説明です。

* 全てのーinclude宣言が、.hファイルを読みこみます
* 全てのコードはファンクション・プロトタイプで定義した全ての関数

これらを確認するために、testApp.cppとtestApp.をみてみましょう。

### <a id="testApp.h"></a>testApp.h

testApp.hの全てのコードは、もし\#ifndefを宣言をすると全体を囲むことがきる。この宣言はコンパイルのプリプロセッサのステージのためのものです。基本的にコンパイラがコード全体をコンパイルする前に、全てのinclude宣言が機能するようにコードをコピー＆ペーストします。もし複数の場所に同じヘッダーが呼びだされてしまった場合、コンパイルの際に問題を引きおこします。\#ifndefは任意の変数名をつけてコンパイラに伝えます。例えば\_TEST\_APPのような名前が既にどこかのコードで使用されていたら、再度定義することはできなくなります。この手法は、コードの構造を簡単にするハックの一種で、自分でカスタムのクラスを生成した際にも実践できます(違う変数名をつけてあげれば良いのです)。

その後で\#includeを使用して、全てのopenFrameworksの機能を呼びだします。

つぎの行にくる「class testApp : public ofSimpleApp{ ...」はJavaの記述の構造によく似ています。2つを比較してみましょう。

C++ : class \[className\] : \[privacy\] \[extendedClass\]
JAVA/P5 : \[privacy\] class \[className\] extends \[extendedClass\]

そこに続くクラス定義は、クラスそのものです。クラスはプライバシー単位でのブロックに分かれています。場合によっては、public:ブロックしかない場合もあります。しかし、private:やprotected:のグループを望みに応じて追加することが可能です。Javaではpublicやpriveteな関数や変数をどの場所にも定義できました。しかし、c++の場合にはグループごとにブロック分けしておかなければなりません。

C++では実際に使用する前にヘッダー内でクラスについて定義しなくてはなりません(クラスのローカル変数に似ています)。これはプロトタイピングと呼ばれます。始めはわずらわしく感じるかもしれません、しかし慣れてくると全ての関数と変数がヘッダーファイルの中で簡単に読むことができて、クラスに関するドキュメンテーションのように活用することもできます。特にopenFrameworksの他の誰かのクラスを学ぼうとする際にとても有用なものです。

クラスの最後は、ただの括弧ではなく、括弧の後ろにセミコロン"};"が付いていることに注意してください。また、\#endifが最後にあり、先頭の\#ifndefと対応していることにも注意してください。

より詳細なC++のクラスについての情報は以下を参照してください：
[http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html][48]

### <a id="testApp.cpp"></a>testApp.cpp

ここにあなたの実際のコードの実装を記述します。クラスの関数の書式はProcessingとはちょっと異なります。
C++ :  \[ReturnType\] \[class\] :: \[functionName\] ( \[type\]\[variableName\]..etc )
JAVA/P5 : \[ReturnType\] \[functionName\] ( \[type\]\[variableName\]..etc )

## <a id="What_the_Fu.2A.26.3F_.28a_very_basic_introduction_to_pointers.29."></a>なんだ\*&れは? (ポインタの初歩).

Pointerは間違いなく、C++のもっとも困難でがっかりさせられる部分でしょう。

わたしはポインタの入門解説をここでしようと思いました。ポインタとは何なのかということだけでなく、それがどのようにJavaと関連しているのかというところまでです。しかし、ポインタに関して、それが何なのか、何のために使われるのかといった完全な内容は下記の重厚なチュートリアルを参考にしてください。

[http://www.cplusplus.com/doc/tutorial/pointers.html][51]

C++とJavaの最も大きな違いは、Javaは基本的なデータ型(byte, short, int, long, float, double, boolean, and char)を除いて、全ての値は参照渡しされます。ひとつ重要な注意点としては、Processingでは文字列(String)は値で渡されます。それに対して、C++は全てのクラスに見られるように値をコピーします。


### <a id="Value_vs._Reference"></a>値と参照

値と参照の違いを理解するには、まずコンピュータがRAMの中に値をどのように記録しているのかを知るべきです。

Processingに以下のように書いたとしましょう。

~~~~{.cpp}
int num = 5;
~~~~

ここでコンピュータがやっているのは、メモリの中に入っていき整数型のデータを記憶します。メモリの中で整数型で必要となる分の空の場所を選択して、そこに5という数値置いています。その後、"num"変数にはデータを入れた場所のアドレスを送っています。

メモリの中では、numは5という数字を格納している箱を参照していると考えるとわかりやすいでしょう。

5
// 値を格納

2591
// メモリ内でのアドレス

そしてnumはその箱のアドレスによって知られています。

num:
2591
// メモリ内でのアドレス

Processingはあなたがintを値として代入していることを知っているので、もしnumが何かを知りたければ print(num) とすれば良い。numが参照しているアドレスの値が表示される。

このコードをProcessingで試してみましょう。

~~~~{.cpp}
void setup()
{
  int num = 1;
  addOne(num);
  print(num);
}

void addOne(int num)
{
  num++;
}
~~~~

当然のことながら、プログラムは"1"を出力する。なぜなら、numを別の関数に渡した際に、関数はnumのコピーを作成するのでオリジナルのデータは変更しないからです。この方法を「値渡し」と呼びます。

では、別のサンプルを見てみましょう。整数を渡す代わりに、整数を含むクラスを渡してみましょう。下記のコードを入力します。  

~~~~{.cpp}
class Test
{
    int num=0;
}

void setup()
{
    Test test = new Test();
    test.num=1;
    addOne(test);
    print(test.num);
}

void addOne(Test test)
{
    test.num++;
}
~~~~

このコードは"2"を出力します。いった何が起こっているのでしょうか?

これはTestクラスに起因しています。Processingはこれを基本のデータタイプとは見なしません(たとえクラスが持っている値が基本のデータ型のintであっても)。そしてそれを関数に参照として渡します。参照とはTestオブジェクト全体複製をaddOn関数に渡すのではなく、Testクラスがメモリのどこに配置されたかというアドレスしか渡していないのです。

もう一度みてみましょう。

test:
52498
// メモリのアドレス

52498:
1
// test.num

testがaddOne()に渡されたときには、それは実際には52498、もしくは実際のメモリ上のアドレスを渡しているのです。そういったわけで、もしtestのnumに数字を足すと、実際に値が変化するのです。複製は一切つくられません。

オブジェクトにまつわる全てを渡していたのでは動作が遅くなっていまうので、このようにしているのです。基本データタイプは値で渡せるだけ小さいのですが、それ以外の全ては参照でわたされます。

### <a id=".26_and_.2A"></a>&と\*

C++はJavaとは違って、渡しているものが値なのか参照なのかを明確に表明しなくてはなりません。また、変数が実際の値を入れるためのものなのかデータの位置を指し示しているだけなのか、そのふるまいを定義することもできるのです。int型を先程Testクラスでやったときのようにふるまうように作成することも可能です。それらの操作は全て&(参照)と\*(参照外し)の2つの記号で行います。

&記号は変数や関数のメモリ上でのアドレスを取得します。例えば：

~~~~{.cpp}
 b=1;
 a = &b;
~~~~


この操作は、変数aは、変数b(値ではなく)のメモリ上のアドレスと等しくなります。この際に、


~~~~{.cpp}
 a++;
~~~~

この操作は、bの格納されているメモリ上のアドレスの次の値になります。

\*記号は、アドレスに格納されている値を取得するのに使用されます。つまり、

~~~~{.cpp}
 *a++;
~~~~

この操作は、aに格納されている値に1を足します、つまりbが2になります。

しかし、どのようにしてアドレスを指ししめす変数を定義できるのでしょうか?
こうした用途に、\*記号をつかいます。この変数を「ポインタ」と読んでいます。様々な型の変数が、特定の数値を保持しています。ポインタを宣言するときには、そのポインタが指し示す変数型と同じにする必要があります。例えば、int型のポインタがintを指し、float型のポインタがfloatを指すといったような感じです。

例:

~~~~{.cpp}
 int x;
 int *ptr;

 x=5;
 ptr = &x;
 *ptr = 10;
 //xは10になる
~~~~

### <a id="So_Where_Do_I_use_This.3F"></a>どんな状況で使うのか?

最初に、関数同士で配列をやりとりしたいのであればポインタを使うと便利です。例えば、movieGrabberExampleで実例を見ることが可能です。ここではポインタは、取得したビデオのピクセルにアクセスするためにポインタを使っています。

~~~~{.cpp}
 (unsigned char * videoInverted;)
~~~~

このコードが正しく作動するのは、いかなる配列でも、その配列がメモリのアドレスを参照しているのでない限り、\[\]の記号を使用しなくても参照可能です。\[\]は、参照外しをした演算子や"\*"で行うことができるのです。

動作中には、プロセッサーはデータ型に応じたバイト数だけかけ算された数値が\[\]の内部に設定されています。そのためどれだけメモリをジャンブすれば次の配列のインデックスに届くのか簡単にわかるのです。

そのため、C++では配列を関数に渡す際には\[\]記号をつけずに渡します、そして受信側の関数はポインタとして受信します。

~~~~{.cpp}
 [functionName] ( [variable type] * [varName]){
 }
~~~~    

ポインタについてより詳細に学ぶのであれば、下記のサイトをみてください。わたしはこのサイトの冒頭部分を参照しました。
( [http://www.cplusplus.com/doc/tutorial/pointers.html][51] )

### <a id="Basic_Data-types"></a>基本のデータ型

JavaとC++は多くの基本データ型を共有しています。

「byte、shor、int、long、float、double、char」などです。
(BooleanもC++にあります、同じように機能するのですが、Processingと違い「bool」と呼ばれます。)

しかし、C++には「unsigned」というさらに別のデータ型が存在します。
unsigned byte、unsigned short、unsigned int、unsigned long、unsigned float、unsigned double、unsigned char
unsignedはプラスとマイナスの値(例えば、charは-128から127の値をもつ)の代わりに、プラスマイナス記号のない変数(unsigned charは0ー255の値を持つ)を意味します。

## <a id="PImage.2C_updatePixels.28.29_vs._ofTexture.2C_pixels.5B.5D"></a>PImage, updatePixels() 対 ofTexture, pixels\[\]

OpenGLに描画する際に(oFではOpenGLを使用したGLUTライブラリを使って描画しています。ProcessingではオプションでOpenGLの描画を選びます。使用するかどうかはウィンドウサイズを宣言するところで決定します)、画面に表示しようとしているいかなるピクセルデータも描画前にRAMにプレロードされている必要があります。ピクセル(ビットマップ)データをRAMにロードすることを、イメージをテクスチャにすると呼びます。

Processingではいくつかの方法でこのテクスチャ問題を回避していて、あなたは実際に何が起っているのかは知る必要がありません。

最初の例は、PImageオブジェクトです。PImageはピクセルが保持しているカラーの配列を持ったtextureオブジェクトです。そのためイメージを読みこむとピクセルの一つ一つにアクセス可能です。画像は自分自身で正確に描画できません。その代わりにimage()関数を使います。

~~~~{.java}
PImage myPImage; // 変数の領域を確保
// RAMに格納するピクセルの領域を確保、Jpegをデコード、デコードされたsample.jpgのピクセルデータをロードする
myPImage = loadImage("sample.jpg");
image(myPImage,100,100); // 100,100の位置にテクスチャを描画
~~~~

_image()関数は実はピクセルをPImageではなくRAMに読みこむことができることを指摘しておきます。しかし、しかし私はProcessingの背景テクノロジーに関してそこまで詳しくないので、それが確かかどうかはわかりません。_

もしスクリーンの個々のピクセルにアクセスしたいのであれば、しかしながら、別の関数を使うでしょう。最初にloadPixels()を使います、これによってピクセルが変化します。もしupdatePixel()を呼びだせば変化した部分に対応します。

この方法はちょっと混乱します。なぜなら、実際に起っていることは、最初にPImageでやったことと一緒だからです。Processingはスクリーンからのピクセルを読み込んでtextureにしています。その後でtextureをスクリーンに描画しています。しかし、何かしらの理由で同じ関数は使用しないように決めました。

openFrameworksの取り扱いかたはちょっと違います(そして、より良い方法とわたしは思います)。2つの異なるメソッドを共存させるのではなく、ofImageオブジェクトはファイルからの画像の読み込みに加えて、スクリーンのイメージも同様に扱えます。さらにofImageは自分自身も別々の関数に分けたりせずに共有できます。

例えば、以下のoFのコードは、ofImageをつかって画像を表示しています。

~~~~{.cpp}
ofImage myImage; //変数の領域を確保
myImage.loadImage("sample.jpg"); //RAMに領域を確保しピクセルを読み込み
myImage.draw(100,100);
~~~~

もしスクリーンに表示されたピクセルを変更したければ、同様にofImageを使用できます。

~~~~{.cpp}
ofImage theScreen; //変数を宣言
theScreen.grabScreen(0,0,1024,768); // 0,0 から1024x768のサイズのスクリーンをキャプチャー、loadPixel()と同じはたらき
// ここでピクセル情報を操作する
theScreen.draw(0,0); // updatePixels(); と同じ
~~~~

しかし、どのようにしたらRAMにあるピクセルの内容を編集できるのでしょうか? 簡単に言えば、できません。一度RAM(つまり、ofTextureに)格納してしまうと、もうそこにアクセスできなくなってしまいます。

ofImageはピクセルを操作できます、なぜならofImageは2つのデータ構造を持っているからです。その1つは、unsignedのchar型で、全てのピクセルの色情報を持っています。もう1つはofTextureで、変更後のピクセル情報をRAMにアップロードします。

もしスクリーンにロードした情報を今後描画する必要がないとわかっている場合、メモリの節約のためofImageのテクスチャーを切ることも可能です。もしイメージのピクセルの色情報のみが必要なようなときに、またはスクリーンショットをとって画面には描画せずそのままハードディスクに保存するといったときに、この方法は役にたつでしょう。


see: [http://www.openframeworks.cc/documentation\#ofImage-setUseTexture][58]

### <a id="How_are_pixel_values_stored_without_a_Color_object.3F"></a>何故Pixelの値はColorオブジェクトとして格納されていないの?

ピクセル値は、unsignedのchar型の連なりとして表現されています。unsignedのchar型は、0から255の範囲内に値を格納するさいにとても良い方法です。ピクセルの配列を返す(getPixels())oFの全てのオブジェクトは、unsignedのchar型の配列で値を返します。なぜなら色を表現するには3種類(red, green, blueの3つのチャンネル)のunsigned char型があれば良いからです。この配列の長さは全てのピクセルの数に3を掛けた数になり、下記のような構造で格納されています。

~~~~{.cpp}
    {pixel_1_Red, pixel_1_Green, pixel_1_Blue, pixel_2_Red, pixel_2_Green, pixel_2_Blue....}
~~~~

特定のピクセルにアクセスするには、以下のようにします。

~~~~{.cpp}
unsigned char *	myPixels; //unsigned char型のためのポインタを作成
myPixels = myOFImage.getPixels(); //ピクセルの配列の先頭をポインタで指定
int colorIndex = y*(myOFImage.width*3)+x*3; // yPos * width * 3 + xPos * 3 = 赤色のチャンネンルの場所
ofSetColor(myPixels[colorIndex],myPixels[colorIndex+1],myPixels[colorIndex+2]);
//赤色に続く2つの配列の値をとりだして、それぞれの色のチャンネンルをセット
~~~~

## <a id="Common_Problems_With_C.2B.2B_.2F_Misc._Topics"></a>C++に関する既知の問題 / その他のトピックス

### <a id="Expecting_implicit_data_conversion.3F"></a>暗黙のデータ変換の期待

C++で最初に驚かされる事の一つは、暗黙にデータ変換をしてくれないことです。
下記の整数型を表示しようとしてるコードが良い例です。


~~~~{.cpp}
int num = 5;
printf(num +"\n");
~~~~

これはエラーになります。

これは、printf()がstring型かchar型しか出力してくれないことが原因です。numはこのどちらでもないからです。string型やchar型でない変数をstring型に変換するにはofToString()を使います。

### <a id="Changing_window_size"></a>ウィンドウのサイズ変更

ウィンドウのサイズはmain.cooで直感的に設定可能です。main.cppをみれば、コメントにどのようにしてウィンドウのサイズを変更するのか、フルスクリーンにするか否かの説明があり、すぐに理解できると思います。

### <a id="Update.28.29_and_Draw.28.29.3F"></a>Update()とDraw()?

Processingと違って、openFrameworksはプログラムのループ構造の中でupdate()とdraw()という2つのメソッドがあります。
全ての計算をupdate()関数の中でするようにして、draw()関数は単純にその結果を表示するようにするように練習すると良いでしょう。このことによって、draw()関数が込み入り過ぎているためスピードが低下してしまうのを避けることができます。画面がちらついたりイメージの半分しか描画されないようなときには、単純にフレームレートを下げるべきです。

加えて、もしプロジェクトの中でなにか付加のかかる処理(画像のローディングや、なんらかのデータをファイルから読みこむときなど)をするときには、それらの処理はsetup()関数の中で行うべきです。update()やdraw()関数はループのなかで動作するので、その中では毎フレームで行う処理のみを含めるようにすべきです。一度だけ実行すれば良いものは、setup()の中に置かれるべきでしょう。

### <a id="How_in_the_world_do_I_print_to_the_console.3F"></a>コンソールに出力するには?

コンソールに出力するには、2つの方法があります。最初の1つはprintfで、とても強固ですがやや複雑です。openFramewroksに標準で含まれています。

2つ目は、iostreamを使用する方法です。より単純ですが、その代わりやや強固さに欠けます。標準ではopenFrameworksには含まれていません。

#### <a id="printf"></a>printf

もしコンソールへの出力にprintfを使いたいのであれば、下記にとても良いチュートリアルがあります。

[http://www.cplusplus.com/reference/clibrary/cstdio/printf.html][66]


#### <a id="iostream"></a>iostream

もう一つのコンソールに出力するオプションはiostreamです。とても古いC++のライブラリで、、コンソールへとても簡単に出力が可能で、様々な変数の型を暗黙に変換してくれます。ofToString()を使う必要もありません。

iostreamを使うには、まずはじめに.cppファイルの先頭にincludeする必要があります。

~~~~{.cpp}
#include <iostream>
~~~~

コンパイラによっては、特に古いコンパイラでは、 <iostream.h\>の代わりに<iostream\>をつかう環境もあります。これは、C++のstandard language library (std)が最近になって更新されたことに起因しています。より詳細な解説は下記を参照してください。

[http://members.gamedev.net/sicrane/articles/iostream.html][68]

実際、iostreamの使用法はとても簡単です。

たとえば、processingのコードでは下記のようなものがあったとします。

~~~~{.java}
int i = 10;
String s = "Hello!";
boolean b = false;

println(i+" "+s+" "+b); // 変数を出力して改行
print(i+" "+s+" "+b); // 変数を出力して改行は無し
~~~~

これは、以下のメッセージをコンソールに出力します。

~~~~{.java}
10 Hello! false
10 Hello! false
~~~~

同じことをC++のコードで記述すると以下のようになります。

~~~~{.cpp}
int i = 10;
string s = "Hello!";
bool b = false;

cout<<i<<" "<<s<<" "<<b<<endl; // 変数を出力して改行
cout<<i<<" "<<s<<" "<<b;       // 変数を出力して改行はなし
~~~~


これは以下の出力をします。

~~~~{.cpp}
10 Hello! 0
10 Hello! 0
~~~~

iostreamではProcessingと違ってbool型のfalseは「false」ではなく「0」になります、またtrueは「1」になることに注意してください。

もう一つの注意点として、Javaでは改行を入れるかどうかはprint()かprintln()のどちらの関数を選ぶかによって決まっていました。C++のiostreamでは、改行の有無はcoutの末尾に「endl」というキーワードをいれるかどうかで決まります。

### <a id="Smoothing_not_working_on_filled_shapes.3F"></a>塗り潰しの図形は、スムージングできない?

もし塗り潰しの図形(例えばofBegenShape()などで)を描こうとすると、ofEnableSmoothing()を使用したとしても図形のエッジがスムースに処理されていないことに気が付くでしょう。これはoFがOpenGLを扱うために使用しているGLUTに起因しています。GLUTはフルスクリーンのグラフィックに対応していませんでした。そのため、形をスムースにするためのフルスクリーン・アンチエイリアシングもできません。

一番簡単な解決法は2度形を描くことです。最初に塗り潰しの図形を描いて、次に輪郭線を描くのです。oFはソフトウェアでアンチエイリアスされた線を描くことができます。

~~~~{.cpp}
ofFill();
ofBeginShape(); //形
    ofVertex( 1,1 );
    ofVertex( 5,5 );
    ofVertex( 1,10 );
    ofVertex( 1,1 );
ofEndShape();

ofNoFill();
ofBeginShape(); //なめらかなエッジ
    ofVertex( 1,1 );
    ofVertex( 5,5 );
    ofVertex( 1,10 );
    ofVertex( 1,1 );
ofEndShape();
~~~~

### <a id="Displaying_video_problem.2Ffeature_related_to_ofSetColor"></a>ofSetColorに関するビデオ表示の問題

ofTextureを使用した全ての図形に関して、スクリーンの描画する際の問題(特徴)があります。わたしが最初にofVideGravverでこの問題に総合しました。これはおそらく多くの人が陥りやすいことなので、videoにまつわる問題(もしくは特徴)として挙げておきたいと思います。

基本的にofTextureは構成されたものです、そのためofSetColor()によって色付けされています。何が起こっているのか知ってさえいれば素晴しい機能です。しかし、遭遇したときは混乱して驚くかもしれません。特に背景の色を黒にしていて下記のような指定をしてしまった場合です。

~~~~{.cpp}
ofSetColor(0,0,0);
~~~~

このコードでは、ofTextureを使用したいかなる図形も表示されなくなってしまいます。

解決法はとてもシンプルです。ofTextureを使用した図形を描画する前に、ofSetColor()を使用して描画色を白に、もしくは自分が着色したい色に設定されていることを確認することです。

### <a id="Processing_background.28.29_vs._OF_ofBackground.28.29"></a>Processingのbackground() 対 oFのofBackground()

Processingではbackground()命令によってProcessingに望んだ色で背景を設定するようになっています。

oFでは自動的にリフレッシュされます。これは背景色の関数とは切り離されていて以下のような命令を使います。

~~~~{.cpp}
ofSetBackgroundAuto(true);
~~~~

この関数は最後にofBackground()したときの設定で背景を自動的にリフレッシュします。draw()関数の中で毎回呼びだす必要はありません。

もし背景を再描画せずに画像を生成したいときには以下のようにしてください。

~~~~{.cpp}
ofSetBackgroundAuto(false);
~~~~  

これによって、oFは画面をリフレッシュすることなく、毎フレーム描画していきます。

### <a id="ofFill.28.29_.2F_ofNoFill.28.29_vs._processing_fill.28.29_noFill.28.29"></a>ofFill() / ofNoFill() 対 Processingのfill() noFill()

Processingでは、塗り潰しとストロークを以下の命令で切り替えます。

fill(), noFill.
stroke(), noStroke.

openFrameworksでは、塗り潰しとストロークはそれぞれどちらか選択しなくてはなりません。

C++ | JAVA/P5
------------|---------
ofFill();   | fill(); noStroke();
ofNoFill(); | noFill(); stroke(1);

### <a id="Math_functions.2C_and_where_they_come_from_.28no_more_Math..2A.29"></a>数学関数とそれはどこから来たのか?(ノー・モア Math.\*)

openFrameworksの数学関数は3種類のファイルからなりたっています。

#### <a id="cmath"></a>cmath

複素数に関する数学関数です。(trigonometric, hyperbolic, exponential, logarithmic, power, rounding, absolute value and remainder functions)。これらはcmathライブラリ(math.h)から来ていて、oFで標準でインクルードされています。

これらの関数の一覧は下記を参照してください。
[http://www.cplusplus.com/reference/clibrary/cmath/][75]

#### <a id="ofConstants"></a>ofConstants

また別の基本的な数学関数として、ofConstantsから提供されているものがあります。

以下のものを含みます。

定数：

*   PI;
*   TWO\_PI;
*   M\_TWO\_PI;
*   FOUR\_PI;
*   HALF\_PI;

関数：

*   DEG\_TO\_RAD();
*   RAD\_TO\_DEG();
*   MIN(x,y);
*   MAX(x,y);
*   CLAMP(val,min,max);
*   ABS(\[絶対値を取得した数学関数\]);

#### <a id="ofMath"></a>ofMath

さらに、ofMath()はランダムな値を取得したいときに使います。

[http://www.openframeworks.cc/documentation\#ofMath-about][78]

### <a id="Structs.2C_what_are_they_for.2C_and_how_can_we_use_them.3F"></a>構造体、何のために、どうやって使うのか?

構造体は、クラスがミニチュアになったようなもので、メソッドを持ちません。基本的にはカスタムのデータ構造を扱うオブジェクトです。

構造体が便利なのは、クラスファイルと別に外部に生成する必要がないところです(実際にはクラスでも必要はありませんが…)。

基本的に、構造体はLinked Listとして実装されます(JavaのArrayListに似ています)。Linked Listはおそらく私が一番すきな構造なのですが、ここでチュートリアルを記述するにはすこし込み入りすぎているので、書きません。

Linked Listに関する包括的なチュートリアルは、下記のリンクから参照可能です。
[http://richardbowles.tripod.com/cpp/linklist/linklist.htm][80]

いずれにせよ、一般的な構造体は以下のようなフォーマットになっています。
~~~~{.cpp}
struct [name]
{
  [varType] varName;
  [varType] varName;
  [varType] varName;
  [etc...]
};
~~~~

### <a id="Memory_Management_and_You"></a>メモリ管理

JavaやProcessingでは、ガベージコレクションが作動します、これによって短いサイクルで、ポインタが参照していない使用済みの全てのオブジェクトをインタプリタがRAMの中から探しだし、消去してくれます。

もし下記のように宣言したとします。

~~~~{.java}
myCustomDataType temp = new myCustomDataType();
temp = null;
~~~~

tempは新規に生成されたmyCustomDataTypeを参照しました。その後、tempにnullが代入されています。この操作はRAMからmyCustomDataTypeを消去はしてくれません。しかし、Javaのガベージコレクションは生成したmyCustomDataTypeが既に参照されていないことを検知して、消去します。

JavaやProcessingと違って、C++は自動化されたガベージコレクションを持っていません。このことは、もしオブジェクトを宣言してそれを消去したいとすると、あなたは自分自身で消去しなければいけないということを意味します。ポインタにNULLを代入するだけでは十分ではありません。

このようなコードを呼びだすと、C++はポインタは消去しRAM配置されていたポインタのメモリを消去します、そして永遠に失われます。これはメモリーリークと呼ばれます。これはバットを振った瞬間(プログラムを起動した瞬間)には影響ありません。メモリーリークは利用可能な全てのメモリを全て食べつくし、最後にクラッシュします。メモリーリークは、再現するまでに時間がかかり、しかもコードのどこがリークしているのか見付けることができないため、デバッグの際にとてもフラストレーションが溜ります。

幸運なことに、プログラムを慎重に設計することで簡単にこの問題は避けられます。作成したオブジェクトを消去する正しい方法は、deleteというキーワードを使います。

~~~~{.cpp}
delete temp;
~~~~

### <a id="Basic_Logic_Problems"></a>基本的な論理構造の問題

ザック・リーバーマンが論理演算のエラーについて少し含めてほしいということなので、ここで書いていきたい。

もっとも一般的な論理演算のエラーは、&&(かつ)や||(または)を使ったif文の中で、引数を再度使うのを忘れてしまうことです。

例えば、

~~~~{.cpp}
int x = 5;
if(x < 0 || > 10) {
    return true;
}
else {
    return false;
}
~~~~

この文はつねにtrueを返します。なぜなら( \> 10)は常にtrueだからです。正しくは以下のようにすべきでしょう。

~~~~{.cpp}
int x = 5;

if(x < 0 || x > 10){
  return true;
 } else {
  return false;
 }
~~~~

ただしく使うようにするには、以下のように考えてください。

xは、0より大きく、10より小さい

こう問いかけてください：
xは0より小さい、または、**xは** 10より大きい

### <a id="accidental_breakpoints_in_Xcode_and_Why_Having_a_Debugger_Rocks"></a>Xcodeのブレイクポイントと、何故デバッガが凄いのか

![Image:BkPt.jpg](BkPt.jpg)

ブレイクポイントは、エディターの左側にあるコラムをクリックすることで挿入できます。

![Image:BuildConf.jpg](BuildConf.jpg)

もしデバッグモードでデバッグすると、プログラムはブレイクポイントにさしかかったところで実行を止め、変数や現在作動しているプロセスを見ることのできるデバッグ用のコンソールを起動します。以下のようになるでしょう。
![Image:HilightedVar.jpg](HilightedVar.jpg)

これは、本当に便利なデバッグプログラムです。しかし、どのようにしてプログラムの停止を維持しているのか知らないと、とまどうことになるかもしれません。

ブレイクポイントを消去するには、クリックしたままドラッグしてウィンドウの外へもっていってください。

[0]: #column-one
[1]: #searchInput
[2]: #An_overview_of_OpenFrameworks_for_processing_junkies.
[3]: #How_Processing_Actually_Works
[4]: #What_is_class_extending.3F_.28base_and_sub_classes.29.3F
[5]: #Ok.2C_so_what_does_this_have_to_do_with_Processing.3F
[6]: #How_OpenFrameworks_Works.
[7]: #Main.cpp_In-depth
[8]: #Java_vs._C.2B.2B_Compile_Processes
[9]: #How_Classes_Work_in_C.2B.2B_.28Two_Files.21.3F.29
[10]: #testApp.h
[11]: #testApp.cpp
[12]: #What_the_Fu.2A.26.3F_.28a_very_basic_introduction_to_pointers.29.
[13]: #Value_vs._Reference
[14]: #.26_and_.2A
[15]: #So_Where_Do_I_use_This.3F
[16]: #Basic_Data-types
[17]: #The_Processing_String_Exception
[18]: #PImage.2C_updatePixels.28.29_vs._ofTexture.2C_pixels.5B.5D
[19]: #How_are_pixel_values_stored_without_a_Color_object.3F
[20]: #Common_Problems_With_C.2B.2B_.2F_Misc._Topics
[21]: #Expecting_implicit_data_conversion.3F
[22]: #Changing_window_size
[23]: #Update.28.29_and_Draw.28.29.3F
[24]: #How_in_the_world_do_I_print_to_the_console.3F
[25]: #printf
[26]: #iostream
[27]: #Smoothing_not_working_on_filled_shapes.3F
[28]: #Displaying_video_problem.2Ffeature_related_to_ofSetColor
[29]: #Processing_background.28.29_vs._OF_ofBackground.28.29
[30]: #ofFill.28.29_.2F_ofNoFill.28.29_vs._processing_fill.28.29_noFill.28.29
[31]: #Math_functions.2C_and_where_they_come_from_.28no_more_Math..2A.29
[32]: #cmath
[33]: #ofConstants
[34]: #ofMath
[35]: #Structs.2C_what_are_they_for.2C_and_how_can_we_use_them.3F
[36]: #Memory_Management_and_You
[37]: #Basic_Logic_Problems
[38]: #accidental_breakpoints_in_Xcode_and_Why_Having_a_Debugger_Rocks
[39]: file:///index.php?title=OF_for_Processing_users&action=edit&section=1 "Edit section: An overview of OpenFrameworks for processing junkies."
[40]: file:///index.php?title=OF_for_Processing_users&action=edit&section=2 "Edit section: How Processing Actually Works"
[41]: file:///index.php?title=OF_for_Processing_users&action=edit&section=3 "Edit section: What is class extending? (base and sub classes)?"
[42]: file:///index.php?title=OF_for_Processing_users&action=edit&section=4 "Edit section: Ok, so what does this have to do with Processing?"
[43]: file:///index.php?title=OF_for_Processing_users&action=edit&section=5 "Edit section: How OpenFrameworks Works."
[44]: file:///index.php?title=OF_for_Processing_users&action=edit&section=6 "Edit section: Main.cpp In-depth"
[45]: file:///index.php?title=OF_for_Processing_users&action=edit&section=7 "Edit section: Java vs. C++ Compile Processes"
[46]: file:///index.php?title=OF_for_Processing_users&action=edit&section=8 "Edit section: How Classes Work in C++ (Two Files!?)"
[47]: file:///index.php?title=OF_for_Processing_users&action=edit&section=9 "Edit section: testApp.h"
[48]: http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html "http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html"
[49]: file:///index.php?title=OF_for_Processing_users&action=edit&section=10 "Edit section: testApp.cpp"
[50]: file:///index.php?title=OF_for_Processing_users&action=edit&section=11 "Edit section: What the Fu*&? (a very basic introduction to pointers)."
[51]: http://www.cplusplus.com/doc/tutorial/pointers.html "http://www.cplusplus.com/doc/tutorial/pointers.html"
[52]: file:///index.php?title=OF_for_Processing_users&action=edit&section=12 "Edit section: Value vs. Reference"
[53]: file:///index.php?title=OF_for_Processing_users&action=edit&section=13 "Edit section: & and *"
[54]: file:///index.php?title=OF_for_Processing_users&action=edit&section=14 "Edit section: So Where Do I use This?"
[55]: file:///index.php?title=OF_for_Processing_users&action=edit&section=15 "Edit section: Basic Data-types"
[56]: file:///index.php?title=OF_for_Processing_users&action=edit&section=16 "Edit section: The Processing String Exception"
[57]: file:///index.php?title=OF_for_Processing_users&action=edit&section=17 "Edit section: PImage, updatePixels() vs. ofTexture, pixels[]"
[58]: http://www.openframeworks.cc/documentation#ofImage-setUseTexture "http://www.openframeworks.cc/documentation#ofImage-setUseTexture"
[59]: file:///index.php?title=OF_for_Processing_users&action=edit&section=18 "Edit section: How are pixel values stored without a Color object?"
[60]: file:///index.php?title=OF_for_Processing_users&action=edit&section=19 "Edit section: Common Problems With C++ / Misc. Topics"
[61]: file:///index.php?title=OF_for_Processing_users&action=edit&section=20 "Edit section: Expecting implicit data conversion?"
[62]: file:///index.php?title=OF_for_Processing_users&action=edit&section=21 "Edit section: Changing window size"
[63]: file:///index.php?title=OF_for_Processing_users&action=edit&section=22 "Edit section: Update() and Draw()?"
[64]: file:///index.php?title=OF_for_Processing_users&action=edit&section=23 "Edit section: How in the world do I print to the console?"
[65]: file:///index.php?title=OF_for_Processing_users&action=edit&section=24 "Edit section: printf"
[66]: http://www.cplusplus.com/reference/clibrary/cstdio/printf.html "http://www.cplusplus.com/reference/clibrary/cstdio/printf.html"
[67]: file:///index.php?title=OF_for_Processing_users&action=edit&section=25 "Edit section: iostream"
[68]: http://members.gamedev.net/sicrane/articles/iostream.html "http://members.gamedev.net/sicrane/articles/iostream.html"
[69]: file:///index.php?title=OF_for_Processing_users&action=edit&section=26 "Edit section: Smoothing not working on filled shapes?"
[70]: file:///index.php?title=OF_for_Processing_users&action=edit&section=27 "Edit section: Displaying video problem/feature related to ofSetColor"
[71]: file:///index.php?title=OF_for_Processing_users&action=edit&section=28 "Edit section: Processing background() vs. OF ofBackground()"
[72]: file:///index.php?title=OF_for_Processing_users&action=edit&section=29 "Edit section: ofFill() / ofNoFill() vs. processing fill() noFill()"
[73]: file:///index.php?title=OF_for_Processing_users&action=edit&section=30 "Edit section: Math functions, and where they come from (no more Math.*)"
[74]: file:///index.php?title=OF_for_Processing_users&action=edit&section=31 "Edit section: cmath"
[75]: http://www.cplusplus.com/reference/clibrary/cmath/ "http://www.cplusplus.com/reference/clibrary/cmath/"
[76]: file:///index.php?title=OF_for_Processing_users&action=edit&section=32 "Edit section: ofConstants"
[77]: file:///index.php?title=OF_for_Processing_users&action=edit&section=33 "Edit section: ofMath"
[78]: http://www.openframeworks.cc/documentation#ofMath-about "http://www.openframeworks.cc/documentation#ofMath-about"
[79]: file:///index.php?title=OF_for_Processing_users&action=edit&section=34 "Edit section: Structs, what are they for, and how can we use them?"
[80]: http://richardbowles.tripod.com/cpp/linklist/linklist.htm "http://richardbowles.tripod.com/cpp/linklist/linklist.htm"
[81]: file:///index.php?title=OF_for_Processing_users&action=edit&section=35 "Edit section: Memory Management and You"
[82]: file:///index.php?title=OF_for_Processing_users&action=edit&section=36 "Edit section: Basic Logic Problems"
[83]: file:///index.php?title=OF_for_Processing_users&action=edit&section=37 "Edit section: accidental breakpoints in Xcode and Why Having a Debugger Rocks"
[84]: file:///index.php?title=Image:BkPt.jpg "Image:BkPt.jpg"
[85]: file:///index.php?title=Image:BuildConf.jpg "Image:BuildConf.jpg"
[86]: file:///index.php?title=Image:HilightedVar.jpg "Image:HilightedVar.jpg"
