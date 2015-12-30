# openFrameworks site

This repository stores the content and code that generates the [openFrameworks](http://openFrameworks.cc/) website.

## Setting up the site to build locally

To contribute, fork the repository and download to your local machine. You'll need to install Python, lxml and [blogofile 0.8b1](http://blogofile.com/):

	easy_install lxml
	easy_install blogofile

To generate and view the site locally, you have to run:

	blogofile build
	blogofile serve

And access the local site in http://localhost:8080/ 

You can start editing pages right away. In order to see your changes on your local version you'll have always have to run build & serve before.

#### Installing on OS X:

There's a thorough description of the installation procedure on OS X in the [Contributing to the Documentation ](http://www.openframeworks.cc/tutorials/developers/003_contributing_to_the_documentation.html) tutorial.


#### Installing on Debian: 
You can install blogofile from the Debian (Jessie) repositories by running

    sudo sudo apt-get install -y blogofile python-lxml

You can also install it by downloading the [package](http://pypi.python.org/packages/source/B/Blogofile/Blogofile-0.8b1.tar.gz) from the [project's page](http://www.blogofile.com/).
Then inside the blogofile folder run (as root)

	python setup.py install
	
Your may also need to install [asciidoc](http://www.methods.co.nz/asciidoc/manpage.html)


#### Installing on Vanilla Ubuntu 12.04:

	aptitude install build-essential gcc python-dev libxslt1-dev git python-setuptools python-pip 
	easy_install lxml

	git clone https://github.com/EnigmaCurry/blogofile
	cd blogofile
	python setup.py install

	cd ..
	git clone https://github.com/openframeworks/ofSite.git
	blogofile build
	blogofile serve

----

## Documentation-style markdown

The documentation portion of the site is written in Markdown, a wiki-style syntax. See details on [Daringfireball](http://daringfireball.net/projects/markdown/). 

The easiest way to check the syntax is having a look at the many pages already on the site, but here are some useful tips:

To insert code snippets use four tildes followed by curly braces with ".cpp" inside, and ending with four tildes:

	~~~~{.cpp}
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	~~~~


Images are added using normal markdown format:

    ![Image Title](filename.png "alt text")

For a more complete description of how to contribute documentation, please see the [Contributing to the Documentation ](http://www.openframeworks.cc/tutorials/developers/003_contributing_to_the_documentation.html) tutorial.

## Useful Markdown Editors

An alternative to running blogofile locally is to use a Markdown editor that can show you a rendering as you work.

* Mac OSX: [Mou](http://mouapp.com/) (OSX 10.7) or [MarkEdit](http://keshiki.net/markdown-editor/) (OSX 10.6+)
* Windows: [MarkdownPad](http://www.markdownpad.com/)
* Linux: [Writr](http://antrix.net/pages/writr-markdown/), [ReText](http://sourceforge.net/p/retext/home/ReText/), & the [gedit-markdown](http://www.jpfleury.net/en/software/gedit-markdown.php) plugin
* Online: [Dillinger](http://dillinger.io/)

Note: The website utilizes some additions to Markdown itself, so specialized functions such as code syntax highlighting may not be available in the editor, even though it will work fine on the site.


## solution for non askii character related issue
#### `python valueError: unknown locale: UTF-8`, when `blogofile build`:
add export `LC_ALL=en_US.UTF-8`, `export LANG=en_US.UTF-8` to bash_profile<br/>
**with ubuntu, edit `.profile`, not `.bash_profile`**
```
sudo nano ~/.bash_profile
```

add code below
```
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

#### `ascii codec cannot decode byte 0xec in position`, when `blogfile build`:
this is because python related issue

edit _config.py, and add code below:

```
...
import inspect, os
import sys  # add this line
reload(sys) # add this line
sys.setdefaultencoding('utf-8') # add this line
olderVersion = "0.8.4"
...
```
