---
layout: default
title: LibJPEG
---


Free library for JPEG image compression. Dependency for compiling [PHP](php.html).


> **Links:** [Homepage](http://www.ijg.org/)  
> **Dependencies:** None  
> **Version:** <span id="version">8c</span>


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://www.ijg.org/files/jpegsrc.vVERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf jpegsrc.vVERSION.tar.gz
	cd jpeg-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/libjpeg-VERSION`.

	./configure	--prefix=/usr/local/libjpeg-VERSION
	make
	sudo make install

Create a symbolic link that points `/usr/local/libjpeg` to `/usr/local/libjpeg-VERSION`.

	sudo ln -s libjpeg-VERSION /usr/local/libjpeg
