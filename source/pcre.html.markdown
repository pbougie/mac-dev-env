---
title: PCRE — Perl Compatible Regular Expressions
---

> **Links:** [Homepage](http://pcre.org/)  
> **Dependencies:** None  
> **Version:** <span id="version">8.41</span>

The **PCRE** library is a set of functions that implement regular expression pattern matching using the same syntax and semantics as Perl 5.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf pcre-VERSION.tar.gz
	cd pcre-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/pcre-VERSION`.

	./configure --prefix=/usr/local/mac-dev-env/pcre-VERSION
	make
	make install

Create a symbolic link to `/usr/local/pcre`.

	ln -s mac-dev-env/pcre-VERSION /usr/local/pcre


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/pcre/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **PCRE**.

	pcre-config --version
