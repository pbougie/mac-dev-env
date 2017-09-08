---
title: CMake
---

> **Links:** [Homepage](http://www.cmake.org/) | [Downloads](http://www.cmake.org/cmake/resources/software.html)  
> **Dependencies:** None  
> **Version:** <span id="version">3.9.2</span>

**CMake** is a cross-platform, open-source build system designed to build, test and package software. **CMake** is used to control the software compilation process using platform and compiler independent configuration files.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name https://cmake.org/files/v3.9/cmake-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf cmake-VERSION.tar.gz
	cd cmake-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/cmake-VERSION`.

	./bootstrap --prefix=/usr/local/mac-dev-env/cmake-VERSION
	make
	make install

Create a symbolic link to `/usr/local/cmake`.

	ln -s mac-dev-env/cmake-VERSION /usr/local/cmake


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/cmake/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **CMake**.

	cmake --version
