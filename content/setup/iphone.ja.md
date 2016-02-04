## -*- coding: utf-8 -*-
.. title: iOS

ios setup
===========

ofxiPhoneやその開発については、数多くのチュートリアルがあります。私たちはあなたがコードを作りiPhone上でできるだけ手早く実行できるように、チュートリアルを可能な限り簡易なものにするよう努めてきましたが、網羅しなくてはならない情報が大変多いのです。もしあなたがこのチュートリアルより多くの助けが必要ならば、他のチュートリアルを見るか、openFrameworksフォーラムのiPhoneセクションをチェックするようにしてください。

- [Memo Akten's simple openFrameworks application on an iPhone tutorial][0]

- [Memo Akten's tutorial for getting started with ofxiPhone][1]

- [Zach Gage's comprehensive overview of ofxiPhone][2]

- [Jeff Crouse's oF-iPhone tutorial][3]

/////////////////////////////////////////

**ofxiPhone 「クイック」スタート　チュートリアル**

XcodeとアップルのマシンであなたのiPhoneをセットアップすることは、とても簡単なことになるのか、完全な悪夢になるかのどちらかです。アップルは最近になって手順をスムーズにするために数多くの変更を行なってきました。このドキュメントは、うまくいけば、手順をさらに簡単にする助けになるでしょう。アップルはこの手順を「いつでも」変更して更新するかもしれないと言っておいたほうがよいでしょう、ですからあなたが読んでいる時に100%正確ではないかもしれませんが、うまくいけば必要十分には当たっているでしょう。そうでなければ、いつでも助けになるフォーラムがありますし、googleがあります。

まず最初のちょっとしたチュートリアルは、あなたがまだアップルからプロビジョニングプロファイルを取得していない場合のためのものです。すでにセットアップが出来ているならば、 [ここ][4] をクリックしてこのパートを飛ばしてください。

まず　[developer.apple.com][6]に行き、まだアカウントを持っていなければ作成し、ライセンスを受けたiPhone開発者になる申し込みをします。

$99の料金を支払った後、アクティベーションコードの入ったメールを受け取ります。メールに記載されているコードをクリックすれば、このページにやってきます。

![1](/setup/iphone/1.jpg)

おそらくあなたのアクティベーションコードは自動的にテキストボックスに入っていますが、もし入っていなければ、コピー／ペーストして、Activateをクリックします。

次に　developer.apple.com　のページに戻ってきたら、このように見えているでしょう。サイドバーにあるiPhone Developer Program Portalのリンクをクリックします。

![2](/setup/iphone/2.jpg)

するとウェブサイトのプロビジョニングプロファイルのセクションにやってきます。ここであなたの有効なプロビジョニングプロファイルを準備します。プロビジョニングプロファイルは、あなたの選択したデバイスにデジタル署名を行ったり、プログラムをapp storeで、またはアドホックな配布によってリリースできるようにするものです。ひとまず、コードをあなたのデバイスに取得するための手順を説明します（あなたのアプリを販売するステップについての説明は別の機会にします）。

Launch Assistantボタンをクリックして、プロビジョニングアシスタントを開始します。

![3](/setup/iphone/3.jpg)

内容を読んで、continueをクリックします。

![4](/setup/iphone/4.jpg)

App IDの名前を入力します。この名前は単にあなたがプロファイルを特定するために参照するものですから、あなたの好きなようにつけることができます。

![5](/setup/iphone/5.jpg)

次にテストするデバイスの情報を入力する必要があります（あなたのアプリをインストールするiPhoneかiPod Touch）。後から複数のデバイスを登録することができますが、まずここで１つ登録することを求められます。説明の欄には好きなことをなんでも入力できます。その電話の名前を入力することをお勧めします。デバイスIDはXcodeのデバイスIDについての説明欄の下にあります。デバイスIDを知る他の方法はあなたのデバイスをiTunesに差し込み、概要ページにある'serial number'の場所をクリックします。これでUDID#が表示されますが、番号をコピー／ペーストすることができないので、良い方法ではありません。

![6](/setup/iphone/6.jpg)

デバイスIDをXcodeから取得するならば、オーガナイザーウィンドウのこの様に見えているところがそうです：

![7](/setup/iphone/7.jpg)

次はcertificate signingの要求を生成しなくてはなりません。ここはちょっと面倒です。

![8](/setup/iphone/8.jpg)

まずキーチェーンアクセスを起動します。ここにあります。

![9](/setup/iphone/9.jpg)

そして、Keychain Access / Certificate Assistant / Request a Certificate Authority　を選択します。

![10](/setup/iphone/10.jpg)

![11](/setup/iphone/11.jpg)

'saved to disk'ボタンの選択を確認し、CAメールアドレスの入力を不要にします。

![12](/setup/iphone/12.jpg)

残りの内容を入力し終えたら、continueをクリックして、コンピューター上の覚えやすいところに証明書を保存してください。それからプロビジョニングアシスタントに戻ります。

![13](/setup/iphone/13.jpg)

ブラウズボタンをクリックして、今保存したばかりの証明書を探します。成功したら、プロビジョニングプロファイルに名前をつける必要があります。ここでも、どのような名前でもつけることができます。[自分の名前] dev と名前をつけるのをお勧めします。これがあなたの開発プロファイルになります。完了したら Generateをクリックしてください。

![14](/setup/iphone/14.jpg)

プロファイルが表示されたら、ダウンロードします。ダウンロードが完了したら、それをダブルクリックします。

![15](/setup/iphone/15.jpg)

ダブルクリックするとXcodeが起動してプロファイルをあなたのデバイスに追加します、もしXcodeが開かなければ、Xcodeのプロビジョニングのところまでドラッグします。もし、あなたのデバイスに追加が行われなければ、あなたがデバイスUDIDをミスタイプしている可能性があります。それはこのチュートリアルを中断してプログラムポータルまで戻ってから'devices'タブへ行き、そこでIDを変更して、distributionタブでprofileを再ダウンロードすることで直すことができます。

![16](/setup/iphone/16.jpg)

ここでもう一度、プロビジョニングアシスタントに戻ります！continueをクリックします。

![17](/setup/iphone/17.jpg)

Development certificateをダウンロードして、覚えやすいところに保存します。

![18](/setup/iphone/18.jpg)

continueをアシスタントが終了するまでクリックします。もうすぐです！

![19](/setup/iphone/19.jpg)

'Done'をクリックします。今あなたはプログラムポータルの中にいるはずです。左のサイドバーある 'App ID's'タブをクリックします。

![20](/setup/iphone/20.jpg)

この欄が見えるまでスクロールします：

![21](/setup/iphone/21.jpg)

Descriptionの下にあるランダムな英数字をコピーします。（* の部分はコピーしないでください、文字と数字だけです、これはあとのステップで重要になります）

さあ、iPhone開発ディストリビューションを[openframeworks.cc/download][5]からダウンロードしましょう。

![22](/setup/iphone/22.jpg)

開きます。

![23](/setup/iphone/23.jpg)

「ターゲット」の横にある矢印をクリックして、'iPhone oF'をダブルクリックします。

![24](/setup/iphone/24.jpg)

このようなウィンドウが開いて見えるはずです。上にある「Build」をクリックします。

![25](/setup/iphone/25.jpg)

このウィンドウでは、Configurationをクリックして、All Configurationsを選びます。

![26](/setup/iphone/26.jpg)

Code Signing Identityの行まで行きます。Any iPhone OS Deviceの、iPhone Developer: Mehmet Akten というところをクリックします。

![27](/setup/iphone/27.jpg)

'iPhone Developer' をAutomatic Profile Selectorsの中から選びます。こうしておくと現在のあなたのプロファイルを自動で選択してくれます。

![28](/setup/iphone/28.jpg)

ここでプロジェクトの名前を変更したくなるかもしれません。とくにタイトルに空白を含んだ名前に変たいと思うかもしれません。私達がofxiPhoneをリリースしてから、アップルは空白文字のアプリタイトルへの使用について変更しました（使うことができません）のでスペースを削除せずにコンパイルをするとエラーが発生します。（今は'oF iPhone'から'oFiPhone'へ名前を変更します）

![32](/setup/iphone/32.jpg)

ウィンドウをとじて、データフォルダーの横の三角アイコンをクリックします。info.plistファイルをダブルクリックします。

![29](/setup/iphone/29.jpg)

'com.msavisuals'と書かれているところを、ずっと前の手順でプログラムポータルからコピーしたランダムな数字と文字に置き換えます。

![30](/setup/iphone/30.jpg)

あなたが思い出せないとしたら、それはこのように見えていたのです。

![21](/setup/iphone/21.jpg)

![31](/setup/iphone/31.jpg)

ここまでできたら、保存してplistファイルを閉じます、そしてコンパイルを実行します。上手く行けば、動くはずです！あなたがSnow Leopardで新しいSDKを使っていて、私たちがまだサンプルを更新してなければbase SDKを発見できるようにするために設定を3.0へと変更する必要があるかもしれません。これはターゲット設定で行います。また上のスクリーンショットのように'device -- 2.2 | debug'となっている箇所をクリックして、Device -- 3.0 | Debug　に変える必要があります。

すべてが上手くいけば、Xcodeはキーチェーンからcodesignを使用することを要求します。 'Always Allow'をクリックしてください。

![33](/setup/iphone/33.jpg)

どうでしょうか、悪くないですね、さあ素晴らしい何かを作ってください！

[0]: http://www.memo.tv/openframeworks_on_iphone_sample_1
[1]: http://www.memo.tv/ofxiphone
[2]: http://wiki.openframeworks.cc/index.php?title=OfxiPhone_comprehensive_guide
[3]: http://www.jeffcrouse.info/uncategorized/openframeworks-on-iphone/
[4]: http://personal-editor.com/#skipProvisioning
[5]: /download
[6]: http://developer.apple.com
