---
title: APR
---

> **Links:** [Homepage](https://apr.apache.org/) | [Downloads](https://apr.apache.org/download.cgi)  
> **Dependencies:** None  
> **Version:** <span id="version">1.6.2</span>

**Apache Portable Runtime (APR)**.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://mirror.csclub.uwaterloo.ca/apache//apr/apr-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf apr-VERSION.tar.gz
	cd apr-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/apr-VERSION`.

	./configure --prefix=/usr/local/mac-dev-env/apr-VERSION
	make
	make install

Create a symbolic link to `/usr/local/apr`.

	sudo ln -s mac-dev-env/apr-VERSION /usr/local/apr


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/apr/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **APR**.

	apr-1-config --version
