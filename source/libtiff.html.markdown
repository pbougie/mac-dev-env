---
title: LibTIFF
---

> **Links:** [Homepage](http://simplesystems.org/libtiff/)  
> **Dependencies:** None  
> **Version:** <span data-version>4.0.9</span>

**LibTIFF** is a library and utilities for manipulating TIFF images.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://download.osgeo.org/libtiff/tiff-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf tiff-VERSION.tar.gz
	cd tiff-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/libtiff-VERSION`.

	./configure --prefix=/usr/local/mac-dev-env/libtiff-VERSION
	make
	make install

Create a symbolic link to `/usr/local/libtiff`.

	sudo ln -s mac-dev-env/libtiff-VERSION /usr/local/libtiff
