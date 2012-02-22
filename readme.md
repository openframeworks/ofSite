# openFrameworks site

This repository stores the content that generates the [openFrameworks](http://openFrameworks.cc/) website.

## Setting up the site to build locally

To contribute, fork the repository and download to your local machine. You'll need to install Python, lxml and [blogofile](http://blogofile.com/):

	easy_install lxml
	easy_install blogofile

To generate and view the site locally, you have to run:

	blogofile build
	blogofile serve

## Documentation-style markdown

The documentation portion of the site is written in Markdown, a wiki-style syntax. See details here: http://daringfireball.net/projects/markdown/

To insert code snippets use four tildes followed by curly braces with ".cpp" inside, and ending with four tildes:

`~~~~{.cpp}`

`for(int i = 0; i < 16; i++) {`

`	ofLog() << i; `

`}`

`~~~~`

Images are added using normal markdown format:

`![Image Title](filename.png "alt text")`

## Useful Markdown Editors

An alternative to running blogofile locally is to use a Markdown editor that can show you a rendering as you work.

* Mac OSX: [Mou](http://mouapp.com/)
* Windows: [MarkdownPad](http://www.markdownpad.com/)
* Linux: [Writr](http://antrix.net/pages/writr-markdown/) & [ReText](http://sourceforge.net/p/retext/home/ReText/)

Note: The website utilizes some additions to Markdown itself, so specialized functions such as code syntax highlighting may not be available in the editor, even though it will work fine on the site.
