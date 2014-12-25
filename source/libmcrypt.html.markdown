---
title: LibMCrypt
---

> **Links:** [Homepage](http://mcrypt.sourceforge.net/) | [Downloads](http://sourceforge.net/projects/mcrypt/files/Libmcrypt/)  
> **Dependencies:** None  
> **Version:** <span id="version">2.5.8</span>

**LibMCrypt** is a standardized library to [MCrypt](http://mcrypt.sourceforge.net/) — which replaced the old Unix crypt() package.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name --location http://downloads.sourceforge.net/project/mcrypt/Libmcrypt/VERSION/libmcrypt-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf libmcrypt-VERSION.tar.gz
	cd libmcrypt-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/libmcrypt-VERSION`.

	./configure --prefix=/usr/local/libmcrypt-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/libmcrypt` to `/usr/local/libmcrypt-VERSION`.

	ln -s libmcrypt-VERSION /usr/local/libmcrypt
