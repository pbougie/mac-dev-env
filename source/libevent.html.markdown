---
title: Libevent
---

> **Links:** [Homepage](http://libevent.org/)  
> **Dependencies:** [OpenSSL](/openssl@102/)  
> **Version:** <span id="version">2.0.22</span>

**Libevent** is an event notification library.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name --location https://github.com/libevent/libevent/releases/download/release-VERSION-stable/libevent-VERSION-stable.tar.gz

Extract the archive and move into the folder.

	tar -xzvf libevent-VERSION-stable.tar.gz
	cd libevent-VERSION-stable


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/libevent-VERSION`.

	./configure \
	  LDFLAGS="-L/usr/local/mac-dev-env/openssl-1.0.2j/lib" \
	  CPPFLAGS="-I/usr/local/mac-dev-env/openssl-1.0.2j/include" \
	  --prefix=/usr/local/mac-dev-env/libevent-VERSION \
	  --disable-dependency-tracking \
	  --disable-debug-mode
	make
	make install

Create a symbolic link that points `/usr/local/libevent` to `/usr/local/mac-dev-env/libevent-VERSION`.

	ln -s mac-dev-env/libevent-VERSION /usr/local/libevent
