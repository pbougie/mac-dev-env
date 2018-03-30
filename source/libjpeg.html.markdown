---
title: LibJPEG
---

> **Links:** [Homepage](http://www.ijg.org/)  
> **Dependencies:** None  
> **Version:** <span id="version">9c</span>

Free library for JPEG image compression.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://www.ijg.org/files/jpegsrc.vVERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf jpegsrc.vVERSION.tar.gz
	cd jpeg-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/libjpeg-VERSION`.

	./configure --prefix=/usr/local/mac-dev-env/libjpeg-VERSION
	make
	make install

Create a symbolic link to `/usr/local/libjpeg`.

	sudo ln -s mac-dev-env/libjpeg-VERSION /usr/local/libjpeg
