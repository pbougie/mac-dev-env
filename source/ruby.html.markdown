---
title: Ruby
---

> **Links:** [Homepage](http://www.ruby-lang.org/) | [Downloads](http://www.ruby-lang.org/en/downloads/)  
> **Dependencies:** [OpenSSL](/openssl/)  
> **Version:** <span id="version">2.4.1</span>


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://cache.ruby-lang.org/pub/ruby/2.4/ruby-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf ruby-VERSION.tar.gz
	cd ruby-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/ruby-VERSION`.

	./configure \
	  --prefix=/usr/local/mac-dev-env/ruby-VERSION \
	  --with-opt-dir=/usr/local/openssl
	make
	make install

Create a symbolic link to `/usr/local/ruby`.

	ln -s mac-dev-env/ruby-VERSION /usr/local/ruby


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/ruby/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/ruby/share/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **Ruby**.

	ruby --version
