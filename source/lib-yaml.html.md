---
title: LibYAML
---


> **Links:** [Homepage](http://pyyaml.org/wiki/LibYAML)  
> **Dependencies:** None  
> **Version:** <span id="version">0.1.4</span>


YAML parser and emitter.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://pyyaml.org/download/libyaml/yaml-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf yaml-VERSION.tar.gz
	cd yaml-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/yaml-VERSION`.

	./configure --prefix=/usr/local/libyaml-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/libyaml` to `/usr/local/libyaml-VERSION`.

	ln -s libyaml-VERSION /usr/local/libyaml
