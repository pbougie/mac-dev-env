---
title: Ruby 2.0.0
---


> **Links:** [Homepage](http://www.ruby-lang.org/) | [Downloads](http://www.ruby-lang.org/en/downloads/)  
> **Dependencies:** [rbenv](/ruby-rbenv/) | [OpenSSL](/openssl/)  
> **Version:** <span id="version">2.0.0-p353</span>


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://ftp.ruby-lang.org/pub/ruby/ruby-VERSION.tar.gz

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


### Verify the Installation

To verify that you have correctly installed this version of Ruby.

	ruby --version