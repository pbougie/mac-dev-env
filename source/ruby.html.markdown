---
title: Ruby
---

> **Links:** [Homepage](http://www.ruby-lang.org/) | [Downloads](http://www.ruby-lang.org/en/downloads/)  
> **Dependencies:** [OpenSSL](/openssl@102/)  
> **Version:** <span id="version">2.3.3</span>


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://cache.ruby-lang.org/pub/ruby/2.3/ruby-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf ruby-VERSION.tar.gz
	cd ruby-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/ruby-VERSION`.

> Latest release of OpenSSL does not work. Version 1.0.2 required.

	./configure \
	  --prefix=/usr/local/ruby-VERSION \
	  --with-opt-dir=/usr/local/openssl-1.0.2j
	make
	make install

Create a symbolic link that points `/usr/local/ruby` to `/usr/local/ruby-VERSION`.

	ln -s ruby-VERSION /usr/local/ruby


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/ruby/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/ruby/share/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **Ruby**.

	ruby --version
