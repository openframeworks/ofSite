---
.. title: 新規プロジェクトの作成
.. type: howto
---

ほとんどのプラットフォーム (OS X、Windows、Linux) では、新しいProject Generatorを使用できます。

![newGui](newGui.png)

プロジェクトは、openFramewroksのフォルダ内の「apps」フォルダ内に作成することをお薦めします。例えば、simpleSketch というプロジェクトを作成し apps/myApps 内に置くとします、つまりopenFrameworksのルートからのフルパスは apps/myApps/simpleSketch になります。例えばいろいろなプロジェクトに取り組んでいる場合などに、「apps」内に新規にフォルダを作成することも可能です。

openFrameworksをハードディスクのどこに配置したかによって、設定を調整する必要があるかもしません。

![newGuiSettings](newGuiSettings.png)

重要なポイントは、openFramewroksのプロジェクトは相対的に機能するというところです。つまり、プロジェクトはopenFrameworksのライブラリのフォルダを、相対的に参照しています (例 : ../../../libs) 。もし、プロジェクトを作成したら、openFrameworksのルートフォルダからの階層構造を保持したままにしておく必要があります。あるいは、もしフォルダの階層を変えたいのであれば、Project Generatorを使用してアップデートすることも可能です。