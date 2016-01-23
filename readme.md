# openFrameworks site

This repository stores the content and code that generates the [openFrameworks](http://openFrameworks.cc/) website.

for other language, please read below.

- korean(한국어) : [readme.ko.md](readme.ko.md)
- japanese(日本語) : [readme.ja.md](readme.ja.md)

## Contributing

To contribute fixes to the webpage or documentation you can usually just fork this repository and send contributions directly from github.

Most of the content is in the `content` folder in markdown folder.

The `tutorials` folder is structured with a first level of folders that represent the category and then a inside them markdown files with the extension `.markdown` and a folder for each of them with the same name as the text file that contains images or any other resource. The final html for each tutorial gets generated at the same level as it's resources so the links have to be relative and without any folder like:

```md
![img](image.png)
```

The `documentation` folder contains the OF API reference and are also in markdown format. This docs are generated from the code but the `description` field in every class, function or var can be edited directly in the markdown files.

## Setting up the site to build locally

This site is based on [nikola](https://getnikola.com). There's some scripts in the root folder to make it easier to install and use.

- ./install.sh will install nikola and all the needed dependencies, by now is only tested on linux but should work in osx once python3, pip and asciidoc are installed in the system

- ./auto_build.sh will run nikola and build the web every time any file is modified

- ./serve.sh will start a local web server that serves the site and opens it in the browser

If you plan to do a big modification like contribute a translation the easiest is to leave the 2 last scripts running and just edit the content files and the site will automatically get refreshed.

## Documentation-style markdown

The documentation portion of the site is written in Markdown, a wiki-style syntax. See details on [Daringfireball](http://daringfireball.net/projects/markdown/).

The easiest way to check the syntax is having a look at the many pages already on the site, but here are some useful tips:

To insert code snippets use four tildes followed by curly braces with ".cpp" inside, and ending with four tildes:

	```cpp
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	```


Images are added using normal markdown format:

    ![Image Title](filename.png "alt text")

For a more complete description of how to contribute documentation, please see the [Contributing to the Documentation ](http://www.openframeworks.cc/tutorials/developers/003_contributing_to_the_documentation.html) tutorial.
