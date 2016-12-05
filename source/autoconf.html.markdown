---
title: Autoconf
---

> **Links:** [Homepage](http://www.gnu.org/software/autoconf/) | [Downloads](http://ftp.gnu.org/gnu/autoconf/)  
> **Dependencies:** None  
> **Version:** <span id="version">2.69</span>

**Autoconf** creates a configuration script for a package from a template file that lists the operating system features that the package can use.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://ftp.gnu.org/gnu/autoconf/autoconf-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf autoconf-VERSION.tar.gz
	cd autoconf-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/autoconf-VERSION`.

	./configure --prefix=/usr/local/mac-dev-env/autoconf-VERSION
	make
	make install

Create a symbolic link to `/usr/local/autoconf`.

	ln -s mac-dev-env/autoconf-VERSION /usr/local/autoconf


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/autoconf/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **Autoconf**.

	autoconf --version
