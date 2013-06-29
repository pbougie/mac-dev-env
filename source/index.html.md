---
priority: 1.0
---

This guide is for compiling a web development environment in OS X. There are easier methods (and faster) to set up a development environment — such as [Homebrew](http://mxcl.github.com/homebrew/), [MacPorts](http://www.macports.org/), [Fink](http://www.finkproject.org/) — but none provide the control I was looking for. These instructions were made for [Mountain Lion](http://en.wikipedia.org/wiki/OS_X_Mountain_Lion) but should be fairly similar for previous versions of OS X.

Start with the **Getting Started** section, then proceed with installing your desired packages. Some packages need to be installed in a certain order to satisfy dependencies. Each package lists its dependencies at the beginning of the instructions.

### Getting Started

- [Command Line Tools](/started-cli)
- [Create the Folder Structure](/started-folders)

### Source Code Management

- [Git](/git)

### Databases

- MySQL
	- [CMake](/cmake)
	- [MySQL](/mysql)
- [PostgreSQL](/postgresql)
- [MongoDB](/mongodb)
- [SQLite](/sqlite)
	
### PHP served by Apache
- Apache
	- [PCRE](/pcre)
	- [Apache](/apache)
- PHP
	- [LibJPEG](/lib-jpeg)
	- [LibPNG](/lib-png)
	- [LibMCrypt](/lib-mcrypt)
	- [FreeType](/lib-freetype)
	- [PHP](/php)
		- [Autoconf](/autoconf)
		- [Xdebug](/php-xdebug)
		- [MySQL for PHP](/php-mysql)
		- [PostgreSQL for PHP](/php-postgresql)
		- [MongoDB for PHP](/php-mongodb)
		- [SQLite for PHP](/php-sqlite)

### Ruby served by Pow

- [Pow](/pow)
- Ruby
	- [rbenv](/ruby-rbenv)
		- [rbenv-gem-rehash](/ruby-rbenv-gem-rehash)
	- Ruby 1.9.3
		- [LibYAML](/lib-yaml)
		- [Ruby](/ruby-193)
	- Ruby 2
		- [OpenSSL](/openssl)
		- [Ruby](/ruby-2)
	- [Ruby](/ruby) (all versions)
		- [RubyGems](/ruby-gems)
		- [Bundler](/ruby-bundler)
		- [Ruby on Rails](/ruby-rails)
		- [MySQL for Ruby](/ruby-mysql)
		- [PostgreSQL for Ruby](/ruby-postgresql)
		- [MongoDB for Ruby](/ruby-mongodb)
		- [SQLite for Ruby](/ruby-sqlite)

### Node.js

- [Node.js](/nodejs)
	- [Grunt](/nodejs-grunt) 
	- [Bower](/nodejs-bower) 

### Image Processing

- GraphicsMagick
	- [LibJPEG](/lib-jpeg)
	- [LibPNG](/lib-png)
	- [LibTIFF](/lib-tiff)
	- [GraphicsMagick](/graphicsmagick)

---
**Warning:** Remember that these instructions are for creating a development environment and therefore security is not considered. For a production system, please refer to each product's respective documentation on how to properly secure each service.
