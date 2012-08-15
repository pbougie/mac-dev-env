---
layout: default
title: Git
---

> **Links:** [Homepage](http://git-scm.com/) | [Downloads](http://git-scm.com/download)  
> **Dependencies:** None  
> **Version:** <span id="version">1.7.11.4</span>


**Git** is a distributed version control system that was initially designed and developed by Linus Torvalds for Linux kernel development. Every Git working directory is a complete repository with history and revision tracking capabilities.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://git-core.googlecode.com/files/git-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf git-VERSION.tar.gz
	cd git-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/git-VERSION`.

	make configure
	./configure --prefix=/usr/local/git-VERSION
	make all
	make install

Create a symbolic link that points `/usr/local/git` to `/usr/local/git-VERSION`.

	ln -s git-VERSION /usr/local/git


### Documentation

Git can be compiled with the **[Man Pages](http://en.wikipedia.org/wiki/Man_page)** included but it requires dependencies that can be problematic. The maintainers are aware and therefore provide a pre-compiled version available for download.

Switch to `/usr/local/src` and download the documentation.

	cd /usr/local/src
	curl --remote-name http://git-core.googlecode.com/files/git-manpages-VERSION.tar.gz

Extract the documentation to `/usr/local/git/man`.

	mkdir -p /usr/local/git/man
	tar -xzvof git-manpages-VERSION.tar.gz -C /usr/local/git/man


### Shell

Add the following lines to your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script to put Git and its Man Pages into your path.

	echo 'export PATH=/usr/local/git/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/git/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

To verify that you have correctly installed Git, execute the following command. It should display **git version VERSION**.

	git --version
