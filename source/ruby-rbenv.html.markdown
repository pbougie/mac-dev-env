---
title: rbenv
---


> **Links:** [Homepage](https://github.com/sstephenson/rbenv)  
> **Dependencies:** None  


Ruby version manager that lets you easily switch between multiple versions of Ruby.


### Install

Check out rbenv into `/usr/local/rbenv`.

	git clone git://github.com/sstephenson/rbenv.git /usr/local/rbenv


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/rbenv/bin:$PATH' >> ~/.bash_profile

Add the rbenv root folder configuration to your shell.

	echo 'export RBENV_ROOT=/usr/local/rbenv' >> ~/.bash_profile

Add `rbenv init` to your shell to enable shims and autocompletion.

	echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Install Ruby Versions

To install Ruby versions, check the sections on installing [Ruby](/ruby/).


### Upgrade

To upgrade to the latest version of **rbenv**, use git pull.

	cd /usr/local/rbenv
	git pull
