# openFrameworksサイト

このリポジトリは、[openFrameworks](http://openFrameworks.cc/)のWebサイトのコンテンツと、サイトを生成するコードを保持しています。

他の言語でこの文書を閲覧するには、下記のリンクを参照してください

- English : [readme.md](readme.md)
- Korean(한국어) : [readme_ko-KR.md](readme_ko-KR.md)

## 貢献

Webページやドキュメントの修正に協力するには、このリポジトリをforkして、githubのシステムから直接送信してください。

ほとんどのコンテンツは、 `content` フォルダ内にMarkdown形式で入っています。

第１階層にある `tutorials` フォルダは、tutorialsカテゴリーを代表しています。tutorialsフォルダ内には`.markdown`という拡張子のMarkdownファイルが中に入っていて、それぞれのファイルと同じ名前のフォルダに画像などのリソースが格納されています。チュートリアルの最終的なHTMLファイルは、リソースと同じ階層に生成されます。ですので、リンクにはフォルダなどの相対パスは必要ありません。例えば以下のようになります。

```md
![img](image.png)
```

`documentation`フォルダは、oF APIのリファレンスがMarkdown形式で格納されています。これらのドキュメントは、コードから自動生成されます。しかし、それぞれのクラスの`description` フィールドの関数や変数の記述に関しては、Markdownファイルを直接編集することができます。

## サイトをセットアップしてローカル環境に構築する

このサイトは、[nikola](https://getnikola.com)を使用しています。先頭の階層に、nikolaを簡単にインストールして使用することが可能ないくつかのスクリプトが用意してあります。

- ./install.sh は、nikolaをインストールして必要な依存関係を構築します。現状ではLinuxでしかテストしていませんが、osxでもpython3とpipとasciidocをシステムにインストールすれば動作するはずです。

- ./auto_build.sh はnikolaを起動して、毎回更新したファイルのみをwebにビルドします。

- ./serve.sh は、サイトを表示するためのローカルにwebサーバーを起動し、ブラウザで表示します。

もし翻訳のような大量の更新を予定しているなら、最後の2つのスクリプトを起動したままにしてコンテントを編集します。サイトは自動的にリフレッシュされるでしょう。

## ドキュメントスタイルのMarkdown

サイトのドキュメントパートは、wiki-styleの文法のMarkdownで記述されます。詳しくは [Daringfireball](http://daringfireball.net/projects/markdown/) を参照してください。

文法を確認する簡単な方法は、既にサイトにあるページを参照することです。ただし、いくつかのTipsがあります。

コードスニペットを挿入するには、以下のように ".cpp" の記述を明示します。

	```cpp
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	```

画像は通常のMarkdownのフォーマットを使用します。

    ![Image Title](filename.png "alt text")

どのようにドキュメンテイションに貢献するかのより詳細な説明は、 [Contributing to the Documentation ](http://www.openframeworks.cc/tutorials/developers/003_contributing_to_the_documentation.html)のチュートリアルを参照してください。
