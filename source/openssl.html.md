---
title: OpenSSL
---


> **Links:** [Homepage](http://www.openssl.org/) | [Downloads](http://www.openssl.org/source/)    
> **Dependencies:** None  
> **Version:** <span id="version">1.0.1e</span>


The OpenSSL Project is a collaborative effort to develop a robust, commercial-grade, full-featured, and Open Source toolkit implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1) protocols as well as a full-strength general purpose cryptography library.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://www.openssl.org/source/openssl-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf openssl-VERSION.tar.gz
	cd openssl-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/openssl-VERSION`.

	./configure darwin64-x86_64-cc --prefix=/usr/local/openssl-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/openssl` to `/usr/local/openssl-VERSION`.

	ln -s openssl-VERSION /usr/local/openssl
