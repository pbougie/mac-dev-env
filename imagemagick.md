---
layout: default
title: ImageMagick
---

> **Links:** [Homepage](http://www.imagemagick.org/) | [Downloads](http://www.imagemagick.org/script/download.php)  
> **Dependencies:** None   
> **Version:** <span id="version">6.7.5</span>


**ImageMagick** is a library to create, edit, compose or convert bitmap images. It can read and write images in a variety of formats (over 100). ImageMagick can resize, flip, mirror, rotate, distort, shear and transform images, adjust image colors, apply various special effects, or draw text, lines, polygons, ellipses and Bézier curves.


### Get the Code

Switch to `/usr/local/src` and download the pre-compiled binaries.

	cd /usr/local/src
	curl --remote-name http://www.imagemagick.org/download/binaries/ImageMagick-x86_64-apple-darwin11.3.0.tar.gz


### Install

Unpack the binaries into `/usr/local`.

	tar xvfz ImageMagick-x86_64-apple-darwin11.3.0.tar.gz -C ..

Create a symbolic link to `/usr/local/ImageMagick`.

	ln -s ImageMagick-VERSION /usr/local/ImageMagick


### Shell

Add the following lines to your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script to put ImageMagick into your path.

	echo 'export MAGICK_HOME="/usr/local/ImageMagick"' >> ~/.bash_profile
	echo 'export PATH="$MAGICK_HOME/bin:$PATH"' >> ~/.bash_profile
	echo 'export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

To verify that you have correctly installed ImageMagick and your required file formats are available.

	identify -list format
