---
title: GraphicsMagick
---

> **Links:** [Homepage](http://www.graphicsmagick.org/) | [Downloads](http://www.graphicsmagick.org/download.html)  
> **Dependencies:** [LibJPEG](/libjpeg/) | [LibPNG](/libpng/) | [LibTIFF](/libtiff/)  
> **Version:** <span id="version">1.3.30</span>

**GraphicsMagick** provides a comprehensive collection of utilities, programming interfaces, and GUIs, to support file format conversion, image processing, and 2D vector rendering.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --location --output GraphicsMagick-VERSION.tar.gz https://sourceforge.net/projects/graphicsmagick/files/graphicsmagick/VERSION/GraphicsMagick-VERSION.tar.gz/download

Extract the archive and move into the folder.

	tar -xzvf GraphicsMagick-VERSION.tar.gz
	cd GraphicsMagick-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/graphicsmagick-VERSION`.

	./configure CC=clang \
	  LDFLAGS="-L/usr/local/libjpeg/lib -L/usr/local/libpng/lib -L/usr/local/libtiff/lib" \
	  CPPFLAGS="-I/usr/local/libjpeg/include -I/usr/local/libpng/include -I/usr/local/libtiff/include" \
	  --prefix=/usr/local/mac-dev-env/graphicsmagick-VERSION
	make
	make install

Create a symbolic link to `/usr/local/graphicsmagick`.

	sudo ln -s mac-dev-env/graphicsmagick-VERSION /usr/local/graphicsmagick


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/graphicsmagick/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **GraphicsMagick**.

	gm version

To see the list of supported image formats.

	gm convert -list formats
