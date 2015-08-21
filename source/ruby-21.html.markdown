---
title: Ruby 2.1
---

> **Links:** [Homepage](http://www.ruby-lang.org/) | [Downloads](http://www.ruby-lang.org/en/downloads/)  
> **Dependencies:** [rbenv](/ruby-rbenv/) | [OpenSSL](/openssl/)  
> **Version:** <span id="version">2.1.7</span>


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://cache.ruby-lang.org/pub/ruby/2.1/ruby-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf ruby-VERSION.tar.gz
	cd ruby-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/rbenv/versions/VERSION`.

	./configure \
	  --prefix=/usr/local/rbenv/versions/VERSION \
	  --with-opt-dir=/usr/local/openssl
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
