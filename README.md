# openFrameworks site

[English](README.md) | [中文](README-zh.md) | [日本語](README-ja.md) | [한국어](README-ko.md)


This repository stores the content and code that generates the [openFrameworks](http://openFrameworks.cc/) website.

## Contributing

To contribute fixes to the webpage or documentation you can usually just fork this repository and send contributions directly from github.

Most of the content is in the `content` folder in markdown folder.

The `tutorials` folder is structured with a first level of folders that represent the category and then a inside them markdown files with the extension `.markdown` and a folder for each of them with the same name as the text file that contains images or any other resource. The final html for each tutorial gets generated at the same level as it's resources so the links have to be relative and without any folder like:

```md
![img](image.png)
```

The `documentation` folder contains the OF API reference and are also in markdown format. This docs are generated from the code but the `description` field in every class, function or var can be edited directly in the markdown files.

## Setting up the site to build locally using Docker

This site is built using [nikola](https://getnikola.com).
There's some scripts in the `bin/` folder that use Docker
to make it easier to install and use.
(Tested on MacOS).

* Pre-reqs: a working [Docker](https://www.docker.com/get-started/)
  environment and *nix shell
* Build an image (alpine linux, python3, nikola) with
  `./bin/build_docker.sh` (delete the image with `./bin/rm_docker.sh`)
* Build the site and serve it on `http://localhost:8000/` with `./nikola_auto_build.sh`
* (Build the site only with `./nikola_build.sh`)
* (Serve the site on `http://localhost:8000/` with `./nikola_serve.sh`)

## Setting up the site to build locally


4. Finally add the following to your .basrc, .bash_profile or .zshrc file:
  `export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"`

There are two scripts included in the ofSite root to help work with the docs:

**./auto_build.sh** : Runs nikola and builds the site every time any file is modified.

If, on osx, you receive this error: `FileNotFoundError: [Errno 2] No such file or directory: 'asciidoctor'`, you need to install asciidoctor as explained [here](http://asciidoctor.org/docs/install-asciidoctor-macosx/), and then run the script again.

**./serve.sh** : Starts a local web server that serves the site and opens it in the browser.

If you plan to do a big modifications like contribute a translation the easiest is to leave the 2 last scripts running and just edit the content files and the site will automatically get refreshed.

## Documentation-style markdown

The documentation portion of the site is written in Markdown, a wiki-style syntax. See details on [Daringfireball](http://daringfireball.net/projects/markdown/).

The easiest way to check the syntax is having a look at the many pages already on the site, but here are some useful tips:

To insert code snippets use three tildes followed by curly braces with ".cpp" inside, and ending with three tildes:

	```cpp
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	```


Images are added using normal markdown format:

    ![Image Title](filename.png "alt text")

For a more complete description of how to contribute documentation, please see the [Contributing to the Documentation ](http://openframeworks.cc/learning/08_other/contributing/) tutorial.
