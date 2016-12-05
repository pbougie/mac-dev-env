---
title: OpenSSL
---

> **Links:** [Homepage](http://www.openssl.org/) | [Downloads](http://www.openssl.org/source/)  
> **Dependencies:** None  
> **Version:** <span id="version">1.0.2j</span>

The OpenSSL Project is a collaborative effort to develop a robust, commercial-grade, full-featured, and Open Source toolkit implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1) protocols as well as a full-strength general purpose cryptography library.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name https://www.openssl.org/source/openssl-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf openssl-VERSION.tar.gz
	cd openssl-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/openssl-VERSION`.

	./configure darwin64-x86_64-cc --prefix=/usr/local/mac-dev-env/openssl-VERSION shared
	make depend
	make
	make install


### Certificates

Execute the following lines to install the certificates.

	security find-certificate -a -p /Library/Keychains/System.keychain > /usr/local/mac-dev-env/openssl-VERSION/ssl/cert.pem
	security find-certificate -a -p /System/Library/Keychains/SystemRootCertificates.keychain >> /usr/local/mac-dev-env/openssl-VERSION/ssl/cert.pem


### Verify the Installation

Verify that you have successfully installed **OpenSSL**.

	/usr/local/mac-dev-env/openssl-VERSION/bin/openssl version -a
