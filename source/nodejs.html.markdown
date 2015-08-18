---
title: Node.js
---

> **Links:** [Homepage](http://nodejs.org/) | [Downloads](http://nodejs.org/download/)  
> **Dependencies:** None  
> **Version:** <span id="version">0.12.7</span>

**Node.js** is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. **Node.js** uses an event-driven, non-blocking I/O model that makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.


### Get the Code

Switch to `/usr/local/src` and download the pre-compiled binaries.

	cd /usr/local/src
	curl --remote-name http://nodejs.org/dist/vVERSION/node-vVERSION-darwin-x64.tar.gz


### Install

Unpack the binaries into `/usr/local`.

	tar -zxvf node-vVERSION-darwin-x64.tar.gz -C ..

Create a symbolic link to `/usr/local/node`.

	ln -s node-vVERSION-darwin-x64 /usr/local/node


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/node/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/node/share/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **Node.js**.

	node --version
