# openFrameworks site

This repository stores the content that generates the [openFrameworks](http://openFrameworks.cc/) website.

## Setting up the site to build locally

To contribute, fork the repository and download to your local machine. You'll need to install Python, lxml and blogofile:

	easy_install lxml
	easy_install blogofile

To generate and view the site locally, you have to run:

	blogofile build
	blogofile serve

## Documentation-style markdown

To insert code snippets use four tildes followed by curly braces with ".cpp" inside, and ending with four tildes:

`~~~~{.cpp}`
`for(int i = 0; i < 16; i++) {`
`	ofLog() << i; `
`}`
`~~~~`

Images are added using normal markdown format:

`![Image Title](filename.png "alt text")`
