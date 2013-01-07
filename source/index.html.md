This guide is for compiling a web development environment in OS X. There are easier methods (and faster) to set up a development environment — such as [Homebrew](http://mxcl.github.com/homebrew/), [MacPorts](http://www.macports.org/), [Fink](http://www.finkproject.org/) — but none provide the control I was looking for. These instructions were made for [Mountain Lion](http://en.wikipedia.org/wiki/OS_X_Mountain_Lion) but should be fairly similar for previous versions of OS X.

Start with the **Getting Started** section, then proceed with installing your desired packages. Some packages need to be installed in a certain order to satisfy dependencies. Each package lists its dependencies at the beginning of the instructions.

### Getting Started

- [Command Line Tools](started-cli.html)
- [Create the Folder Structure](started-folders.html)

### Version Control System

- [Git](git.html)

### Databases

- MySQL
	- [CMake](cmake.html)
	- [MySQL](mysql.html)
- [MongoDB](mongodb.html)
- [SQLite](sqlite.html)

### Web Server

- Apache
	- [PCRE](pcre.html)
	- [Apache](apache.html)

### Languages

- Ruby
	- [LibYAML](lib-yaml.html)
	- [rbenv](ruby-rbenv.html)
	- [Ruby](ruby.html)
	- [RubyGems](ruby-gems.html)
	- [Bundler](ruby-bundler.html)
	- [Ruby on Rails](ruby-rails.html)
	- [MySQL Driver for Ruby](ruby-mysql.html)
	- [MongoDB Driver for Ruby](ruby-mongodb.html)
	- [SQLite Driver for Ruby](ruby-sqlite.html)
- PHP
	- [LibJPEG](lib-jpeg.html)
	- [LibPNG](lib-png.html)
	- [LibMCrypt](lib-mcrypt.html)
	- [PHP](php.html)
	- [Autoconf](autoconf.html)
	- [Xdebug](php-xdebug.html)
	- [MySQL Driver for PHP](php-mysql.html)
	- [MongoDB Driver for PHP](php-mongodb.html)
	- [SQLite Driver for PHP](php-sqlite.html)

### Image Processing

- GraphicsMagick
	- [LibJPEG](lib-jpeg.html)
	- [LibPNG](lib-png.html)
	- [GraphicsMagick](graphicsmagick.html)

---
**Warning:** Remember that these instructions are for creating a development environment and therefore security is not considered. For a production system, please refer to each product's respective documentation on how to properly secure each service.
