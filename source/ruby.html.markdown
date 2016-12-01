---
title: Ruby
---

> **Links:** [Homepage](http://www.ruby-lang.org/) | [Downloads](http://www.ruby-lang.org/en/downloads/)  
> **Dependencies:** [rbenv](/ruby-rbenv/) | [OpenSSL](/openssl@102/)  
> **Version:** <span id="version">2.3.1</span>


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://cache.ruby-lang.org/pub/ruby/2.3/ruby-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf ruby-VERSION.tar.gz
	cd ruby-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/rbenv/versions/VERSION`.

> Latest release of OpenSSL does not work. Version 1.0.2 required.

	./configure \
	  --prefix=/usr/local/rbenv/versions/VERSION \
	  --with-opt-dir=/usr/local/openssl-1.0.2j
	make
	make install


### Set Version

Set the global ruby version to **VERSION**.

	rbenv global VERSION

To see all installed versions, use `rbenv versions`.


### Update rbenv

Rehash the rbenv shims.

	rbenv rehash


### Verify the Installation

Verify that you have successfully installed **Ruby**.

	ruby --version
