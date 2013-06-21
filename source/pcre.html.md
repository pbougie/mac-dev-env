---
title: PCRE - Perl Compatible Regular Expressions
---


> **Links:** [Homepage](http://pcre.org/)  
> **Dependencies:** None  
> **Version:** <span id="version">8.33</span>


The **PCRE** library is a set of functions that implement regular expression pattern matching using the same syntax and semantics as Perl 5.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf pcre-VERSION.tar.gz
	cd pcre-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/pcre-VERSION`.

	./configure --prefix=/usr/local/pcre-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/pcre` to `/usr/local/pcre-VERSION`.

	ln -s pcre-VERSION /usr/local/pcre


### Shell

Add the following line to your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script to put PCRE into your path.

	echo 'export PATH=/usr/local/pcre/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

To verify that you have correctly installed PCRE, execute the following command. It should display **VERSION**.

	pcre-config --version
