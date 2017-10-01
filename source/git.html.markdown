---
title: Git
---

> **Links:** [Homepage](http://git-scm.com/) | [Downloads](http://git-scm.com/download)  
> **Dependencies:** [Autoconf](/autoconf/) | [OpenSSL](/openssl/)  
> **Version:** <span id="version">2.14.2</span>

**Git** is a distributed version control system that was initially designed and developed by Linus Torvalds for Linux kernel development.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name https://www.kernel.org/pub/software/scm/git/git-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf git-VERSION.tar.gz
	cd git-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/git-VERSION`.

	make configure
	./configure \
	  --prefix=/usr/local/mac-dev-env/git-VERSION \
	  --with-openssl=/usr/local/openssl
	make all
	make install

Create a symbolic link to `/usr/local/git`.

	sudo ln -s mac-dev-env/git-VERSION /usr/local/git


### Documentation

Git can be compiled with the **[Man Pages](http://en.wikipedia.org/wiki/Man_page)** included but it requires dependencies that can be problematic. The maintainers are aware and therefore provide a pre-compiled version available for download.

Switch to `/usr/local/src` and download the documentation.

	cd /usr/local/src
	curl --remote-name https://www.kernel.org/pub/software/scm/git/git-manpages-VERSION.tar.gz

Extract the documentation to `/usr/local/git/man`.

	tar -xzvof git-manpages-VERSION.tar.gz -C /usr/local/git/share/man


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/git/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/git/share/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **Git**.

	git --version
