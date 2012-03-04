---
layout: default
title: ImageMagick
---

> **Links:** [Homepage](http://www.imagemagick.org/) | [Downloads](http://www.imagemagick.org/script/download.php)  
> **Dependencies:** None  
> **Version:** <span id="version">6.7.5-9</span>


**ImageMagick** is a library to create, edit, compose or convert bitmap images. It can read and write images in a variety of formats (over 100). ImageMagick can resize, flip, mirror, rotate, distort, shear and transform images, adjust image colors, apply various special effects, or draw text, lines, polygons, ellipses and Bézier curves.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://www.imagemagick.org/download/ImageMagick-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf ImageMagick-VERSION.tar.gz
	cd ImageMagick-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/imagemagick-VERSION`.

	./configure --prefix=/usr/local/imagemagick-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/imagemagick` to `/usr/local/imagemagick-VERSION`.

	ln -s imagemagick-VERSION /usr/local/imagemagick


### Shell

Add the following line to your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script to put ImageMagick into your path.

	echo 'export PATH=/usr/local/imagemagick/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

To verify that you have correctly installed ImageMagick.

	convert -version
