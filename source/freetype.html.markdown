---
title: FreeType
---


> **Links:** [Homepage](http://www.freetype.org/) | [Downloads](http://www.freetype.org/download.html)  
> **Dependencies:** None  
> **Version:** <span id="version">2.5.3</span>


**FreeType** is a freely available software library to render fonts.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name --location http://sourceforge.net/projects/freetype/files/freetype2/VERSION/freetype-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf freetype-VERSION.tar.gz
	cd freetype-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/freetype-VERSION`.

	./configure --prefix=/usr/local/freetype-VERSION --without-png
	make
	make install

Create a symbolic link that points `/usr/local/freetype` to `/usr/local/freetype-VERSION`.

	ln -s freetype-VERSION /usr/local/freetype


### Temporary Fix

The folder structure has changed recently for include files and is causing problems when compiling certain packages (namely PHP). To fix the problem, create this symbolic link.

	ln -s /usr/local/freetype/include/freetype2 /usr/local/freetype/include/freetype2/freetype
