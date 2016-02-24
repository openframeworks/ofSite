---
.. title: プロジェクトにアドオンを追加する方法 
.. type: howto
---

## アドオンはどこにあるの?

アドオンは、 oFをインストールした階層の```addons```フォルダに置いてあります。oFをダウンロードした段階で、```addons```フォルダにはいろいろなコアアドオンがみつかるでしょう。あなた自身で開発したアドオンや、[他の人達によって開発されたアドオン](http://ofxaddons.com/)も、ここに入れましょう。

## projectGeneratorを使う (OSX / Windows / Linux)

アドオンをGUIのドロップダウンメニューから選択できます。

![chooseAnAddon](chooseAnAddon.png)

generate ボタンを押すと、アドオンがプロジェクトに追加されます。

![generateAProject](generateAProject.png)

既存のプロジェクトをインポートして、使用するアドオンを追加したり削除して変更することも可能です。

![updateAProject](updateAProject.png)

## Makefileを使用したプロジェクト

プロジェクトをMakefileを使用してコンパイルする場合、```addons.make```というファイルにアドオンの名前を記述して追加します。```addons.make```は、Makefileと一緒に、プロジェクトのルート(先頭の階層)のフォルダに配置する必要があります。```addons.make```は以下のようになります。

```
ofxXmlSettings
ofxGui
```



