# openFrameworks 网站

这个仓库是[openFrameworks](http://openFrameworks.cc/)网站的源代码和内容源文件。

## 贡献你的一份力量

修改网站内容原文件时需要先fork到你的github里面，然后在你的github里面将修改的内容通过pull request提交。

大部分内容保存在 `content` 目录里面。

`tutorials` 目录是教程源文件目录的主目录，里面包含着很多子目录，每一个子目录是包含着一个教程系列的教程源文件，每一个教程源文件的格式是 `.markdown` 。 目录结构是：
`/tutorials/教程系列名字/教程.markdown`
每个教程原文件与引用的图片在相同的路径里面，所以写图片路径时要写相对路径。
示例：

```md
![img](image.png)
```

`documentation` 目录里面是所有oF API的参考信息。API信息原文件是用代码生成的，但是里面的 `description` 字段是可以直接用markdown语法编写。

## 在本地设置网站运行环境

这个网站是基于 [nikola](https://getnikola.com)环境生成的. 为了方便搭建环境已经为大家准备好了环境搭建脚本。

1. 首先要安装 Xcode 命令行工具：

  ```bash
  xcode-select --install
  ```
  然后运行以下命令安装python3和pip。如果你的电脑没有brew，请先安装[brew.sh](http://brew.sh/):

  ```bash
  brew install python3
  sudo easy_install pip
  brew linkapps python3
  ```


2. ./install.sh 是安装 `nikola` 和必要的依赖包。现在支持的环境是Linux和Mac OS X。在Mac OS X环境里面运行这个脚本之前需要安装：

  ```bash
  brew install python3
  sudo easy_install pip
  brew linkapps python3
  ```

  然后在 `.bashrc` 或者 `.zhsrc` 里面加入这行代码：

  `export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"`

3. 在安装`install.sh`脚本之前必须要确认`~/nikola/.Python`的符号链接是否是正确的python3路径，如果不是会运行不了这个脚本。

4. `./auto_build.sh` 脚本运行后会检测网站源文件有变化时运行 `nikola` 编译生成网站。在 Mac OS X 出现 `FileNotFoundError: [Errno 2] No such file or directory: 'asciidoctor'` 错误时, 按照[这里](http://asciidoctor.org/docs/install-asciidoctor-macosx/)教程步骤安装`asciidoctor`后在运行脚本。

- `./serve.sh` 会在本地运行网站服务器，这样就可以在浏览器访问本地地址查看网站效果.

修改文档源文件或翻译文档时先运行 `./auto_build.sh`后再运行 `./serve.sh`两个同时运行。这时有任何文件变化时网站会自动更新。

## Markdown 语法

网站一部分文档是使用`markdown`语法。`Markdown`语法是 `wiki-style`.
具体语法请参考： [Daringfireball](http://daringfireball.net/projects/markdown/)。

可以查看网站的其他网页理解语法。
附上几个例子：

插入代码时后面加上`cpp`：

	```cpp
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	```


插入图片时使用`Markdown`语法：

    ![Image Title](filename.png "alt text")

关于贡献文档具体事项请参考, [贡献文档](http://openframeworks.cc/ko/tutorials/10_developers/003_contributing_to_the_documentation/)教程。
