---
layout: homepage_layout
priority: 1.0
---

A detailed guide with instructions to compile various software packages to build a web development environment in [macOS 10.12 Sierra](https://en.wikipedia.org/wiki/MacOS_Sierra). Start with the **Getting Started** section, then proceed with installing your desired packages. Some packages need to be installed in a certain order to satisfy dependencies. Each package lists its dependencies at the top of its respective page. Archives for previous versions of macOS can be found at the end of this page.

### Getting Started

- [Command Line Tools](/started-cli/)
- [Create the Folder Structure](/started-folders/)

### Source Code Management

- Git
	- [Autoconf](/autoconf/)
	- [OpenSSL](/openssl/)
	- [Git](/git/)

### Data Stores

- MySQL
	- [CMake](/cmake/)
	- [MySQL](/mysql/)
- [PostgreSQL](/postgresql/)
- [MongoDB](/mongodb/) w/ SSL
- [SQLite](/sqlite/)
- Memcached
	- [Libevent](/libevent/)
	- [Memcached](/memcached/)
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
	- [OpenSSL](/openssl@102/) (1.0.2)
	- [PHP](/php/)
		- [Autoconf](/autoconf/)
		- [MySQL for PHP](/php-mysql/)
		- [PostgreSQL for PHP](/php-postgresql/)
		- [MongoDB for PHP](/php-mongodb/)
		- [SQLite for PHP](/php-sqlite/)
	- [Composer](/composer/)

### Ruby served by Puma-dev

- Ruby
	- [OpenSSL](/openssl@102/) (1.0.2)
	- [Ruby](/ruby/)
- Gems
	- [RubyGems](/rubygems/)
	- [Bundler](/bundler/)
	- [Ruby on Rails](/ruby-on-rails/)
- [Puma-dev](puma-dev/)

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

**Warning:** These instructions are for creating a development environment and therefore security is not considered. For a production system, please refer to each product's respective documentation on how to properly secure each service.

---

If you are attempting to compile a web development environment in a previous version of macOS, check out past versions of the guide:

- [OS X 10.11 El Capitan](http://archives.patrickbougie.com/mac-dev-env/10.11-el-capitan/)
- [OS X 10.10 Yosemite](http://archives.patrickbougie.com/mac-dev-env/10.10-yosemite/)
- [OS X 10.9 Mavericks](http://archives.patrickbougie.com/mac-dev-env/10.9-mavericks/)
- [OS X 10.8 Mountain Lion](http://archives.patrickbougie.com/mac-dev-env/10.8-mountain-lion/)
- [OS X 10.7 Lion](http://archives.patrickbougie.com/mac-dev-env/10.7-lion/)
