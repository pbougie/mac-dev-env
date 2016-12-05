---
title: Node.js
---

> **Links:** [Homepage](http://nodejs.org/) | [Downloads](https://nodejs.org/en/download/current/)  
> **Dependencies:** None  
> **Version:** <span id="version">6.5.0</span>

**Node.js** is an open-source, cross-platform runtime environment for developing server-side Web applications in JavaScript.


### Get the Code

Switch to `/usr/local/src` and download the pre-compiled binaries.

	cd /usr/local/src
	curl --remote-name http://nodejs.org/dist/vVERSION/node-vVERSION-darwin-x64.tar.gz


### Install

Unpack the binaries into `/usr/local/mac-dev-env`.

	tar -zxvf node-vVERSION-darwin-x64.tar.gz -C ../mac-dev-env

Create a symbolic link to `/usr/local/node`.

	ln -s mac-dev-env/node-vVERSION-darwin-x64 /usr/local/node


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/node/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/node/share/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **Node.js**.

	node --version
