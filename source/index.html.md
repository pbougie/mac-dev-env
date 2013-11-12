---
priority: 1.0
---

This guide is for compiling a web development environment in OS X. There are easier and faster methods to set up a development environment — such as [Homebrew](http://mxcl.github.com/homebrew/), [MacPorts](http://www.macports.org/), [Fink](http://www.finkproject.org/) — but none provide absolute control. These instructions are for [OS X 10.9 Mavericks](https://en.wikipedia.org/wiki/OS_X_Mavericks). Earlier versions of the guide are available for [10.8 Mountain Lion](http://archives.patrickbougie.com/mac-dev-env/mountain_lion/) and [10.7 Lion](http://archives.patrickbougie.com/mac-dev-env/lion/).

Start with the **Getting Started** section, then proceed with installing your desired packages. Some packages need to be installed in a certain order to satisfy dependencies. Each package lists its dependencies at the beginning of the instructions.

### Getting Started

- [Command Line Tools](/started-cli/)
- [Create the Folder Structure](/started-folders/)

### Source Code Management

- Git
	- [Autoconf](/autoconf/)
	- [Git](/git/)

### Data Stores

- MySQL
	- [CMake](/cmake/)
	- [MySQL](/mysql/)
- [PostgreSQL](/postgresql/)
- [MongoDB](/mongodb/)
- [SQLite](/sqlite/)
- [Redis](/redis/)
	
### PHP served by Apache
- Apache
	- [PCRE](/pcre/)
	- [Apache](/apache/)
- PHP
	- [LibJPEG](/libjpeg/)
	- [LibPNG](/libpng/)
	- [LibMCrypt](/libmcrypt/)
	- [FreeType](/freetype/)
	- [PHP](/php/)
		- [Autoconf](/autoconf/)
		- [Xdebug](/php-xdebug/)
		- [MySQL for PHP](/php-mysql/)
		- [PostgreSQL for PHP](/php-postgresql/)
		- [MongoDB for PHP](/php-mongodb/)
		- [SQLite for PHP](/php-sqlite/)

### Ruby served by Pow

- [Pow](/pow/)
- Ruby
	- [rbenv](/ruby-rbenv/)
		- [rbenv-gem-rehash](/ruby-rbenv-gem-rehash/)
	- Ruby 1.9.3
		- [LibYAML](/libyaml/)
		- [Ruby](/ruby-193/)
	- Ruby 2
		- [OpenSSL](/openssl/)
		- [Ruby](/ruby-2/)
	- [Ruby](/ruby/) (all versions)
		- [RubyGems](/ruby-gems/)
		- [Bundler](/ruby-bundler/)
		- [Ruby on Rails](/ruby-rails/)
		- [MySQL for Ruby](/ruby-mysql/)
		- [PostgreSQL for Ruby](/ruby-postgresql/)
		- [MongoDB for Ruby](/ruby-mongodb/)
		- [SQLite for Ruby](/ruby-sqlite/)

### Node.js

- [Node.js](/nodejs/)
	- [Grunt](/nodejs-grunt/) 
	- [Bower](/nodejs-bower/) 

### Image Processing

- GraphicsMagick
	- [LibJPEG](/libjpeg/)
	- [LibPNG](/libpng/)
	- [LibTIFF](/libtiff/)
	- [GraphicsMagick](/graphicsmagick/)

---
**Warning:** Remember that these instructions are for creating a development environment and therefore security is not considered. For a production system, please refer to each product's respective documentation on how to properly secure each service.
