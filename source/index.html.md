---
priority: 1.0
---

This guide is for compiling a web development environment in OS X. There are easier methods (and faster) to set up a development environment — such as [Homebrew](http://mxcl.github.com/homebrew/), [MacPorts](http://www.macports.org/), [Fink](http://www.finkproject.org/) — but none provide the control I was looking for. These instructions were made for [Mountain Lion](http://en.wikipedia.org/wiki/OS_X_Mountain_Lion) but should be fairly similar for previous versions of OS X.

Start with the **Getting Started** section, then proceed with installing your desired packages. Some packages need to be installed in a certain order to satisfy dependencies. Each package lists its dependencies at the beginning of the instructions.

### Getting Started

- [Command Line Tools](/started-cli)
- [Create the Folder Structure](/started-folders)

### Version Control System

- [Git](/git)

### Databases

- MySQL
	- [CMake](/cmake)
	- [MySQL](/mysql)
- [MongoDB](/mongodb)
- [SQLite](/sqlite)

### Web Server

- Apache
	- [PCRE](/pcre)
	- [Apache](/apache)

### Languages

- Ruby
	- [rbenv](/ruby-rbenv)
	- Ruby 1.9.3
		- [LibYAML](/lib-yaml)
		- [Ruby](/ruby-193)
	- Ruby 2.0.0
		- [OpenSSL](/openssl)
		- [Ruby](/ruby-2)
	- [RubyGems](/ruby-gems)
	- [Bundler](/ruby-bundler)
	- [Ruby on Rails](/ruby-rails)
	- [MySQL Driver for Ruby](/ruby-mysql)
	- [MongoDB Driver for Ruby](/ruby-mongodb)
	- [SQLite Driver for Ruby](/ruby-sqlite)
- PHP
	- [LibJPEG](/lib-jpeg)
	- [LibPNG](/lib-png)
	- [LibMCrypt](/lib-mcrypt)
	- [PHP](/php)
	- [Autoconf](/autoconf)
	- [Xdebug](/php-xdebug)
	- [MySQL Driver for PHP](/php-mysql)
	- [MongoDB Driver for PHP](/php-mongodb)
	- [SQLite Driver for PHP](/php-sqlite)

### Image Processing

- GraphicsMagick
	- [LibJPEG](/lib-jpeg)
	- [LibPNG](/lib-png)
	- [GraphicsMagick](/graphicsmagick)

---
**Warning:** Remember that these instructions are for creating a development environment and therefore security is not considered. For a production system, please refer to each product's respective documentation on how to properly secure each service.
