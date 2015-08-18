---
title: SQLite
---

> **Links:** [Homepage](http://www.sqlite.org/) | [Downloads](http://www.sqlite.org/download.html)  
> **Dependencies:** None  
> **Version:** <span id="version">3081101</span>

**SQLite** is a self-contained, serverless, zero-configuration, transactional SQL database engine.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://www.sqlite.org/2015/sqlite-autoconf-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf sqlite-autoconf-VERSION.tar.gz
	cd sqlite-autoconf-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/sqlite-VERSION`.

	./configure --prefix=/usr/local/sqlite-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/sqlite` to `/usr/local/sqlite-VERSION`.

	ln -s sqlite-VERSION /usr/local/sqlite


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/sqlite/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **SQLite**.

	sqlite3 -version
