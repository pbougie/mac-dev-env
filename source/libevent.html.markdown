---
title: Libevent
---

> **Links:** [Homepage](http://libevent.org/)  
> **Dependencies:** None  
> **Version:** <span id="version">2.0.22</span>

**Libevent** is an event notification library.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name --location https://sourceforge.net/projects/levent/files/libevent/libevent-2.0/libevent-VERSION-stable.tar.gz

Extract the archive and move into the folder.

	tar -xzvf libevent-VERSION-stable.tar.gz
	cd libevent-VERSION-stable


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/libevent-VERSION`.

	./configure \
	  --prefix=/usr/local/mac-dev-env/libevent-VERSION \
	  --disable-dependency-tracking \
	  --disable-debug-mode
	make
	make install

Create a symbolic link that points `/usr/local/libevent` to `/usr/local/mac-dev-env/libevent-VERSION`.

	ln -s mac-dev-env/libevent-VERSION /usr/local/libevent
