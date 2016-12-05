---
title: FreeType
---

> **Links:** [Homepage](http://www.freetype.org/) | [Downloads](http://www.freetype.org/download.html)  
> **Dependencies:** None  
> **Version:** <span id="version">2.7</span>

**FreeType** is a freely available software library to render fonts.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name --location http://download.savannah.gnu.org/releases/freetype/freetype-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf freetype-VERSION.tar.gz
	cd freetype-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/freetype-VERSION`.

	./configure --prefix=/usr/local/mac-dev-env/freetype-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/freetype` to `/usr/local/mac-dev-env/freetype-VERSION`.

	ln -s mac-dev-env/freetype-VERSION /usr/local/freetype
