---
layout: default
title: rbenv
---


> **Links:** [Homepage](https://github.com/sstephenson/rbenv)  
> **Dependencies:** None  


### Install

Switch to the `/usr/local` folder.

	cd /usr/local

Check out rbenv into `/usr/local/rbenv`.

	sudo git clone git://github.com/sstephenson/rbenv.git rbenv

rbenv can't be run as root, therefore change the permissions.

	sudo chown -R <owner> /usr/local/rbenv

Where `<owner>` is your Mac OS X short username.


### Shell

Add the following lines to your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script to put rbenv into your path.

	echo 'export PATH=/usr/local/rbenv/bin:$PATH' >> ~/.bash_profile

Add the rbenv root folder configuration to your shell.

	echo 'export RBENV_ROOT=/usr/local/rbenv' >> ~/.bash_profile

Add `rbenv init` to your shell to enable shims and autocompletion.

	echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Install Ruby Versions

To install Ruby versions, check the section on installing [Ruby](ruby.html).


### Upgrading

To upgrade to the latest development version of **rbenv**, use git pull.

	cd /usr/local/rbenv
	git pull
