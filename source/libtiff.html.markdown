---
title: LibTIFF
---

> **Links:** [Homepage](http://www.remotesensing.org/libtiff/)  
> **Dependencies:** None  
> **Version:** <span id="version">4.0.6</span>

**LibTIFF** is a library and utilities for manipulating TIFF images.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://download.osgeo.org/libtiff/tiff-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf tiff-VERSION.tar.gz
	cd tiff-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/libtiff-VERSION`.

	./configure --prefix=/usr/local/libtiff-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/libtiff` to `/usr/local/libtiff-VERSION`.

	ln -s libtiff-VERSION /usr/local/libtiff
