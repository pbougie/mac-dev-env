---
title: LibPNG
---

> **Links:** [Homepage](http://www.libpng.org/pub/png/libpng.html)  
> **Dependencies:** None  
> **Version:** <span id="version">1.6.24</span>

**LibPNG** is the official PNG reference library.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name --location http://download.sourceforge.net/libpng/libpng-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf libpng-VERSION.tar.gz
	cd libpng-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/libpng-VERSION`.

	./configure --prefix=/usr/local/mac-dev-env/libpng-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/libpng` to `/usr/local/mac-dev-env/libpng-VERSION`.

	ln -s mac-dev-env/libpng-VERSION /usr/local/libpng
