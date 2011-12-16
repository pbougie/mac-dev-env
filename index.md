---
layout: default
---

I've used many different methods to install the necessary software used in my web development pursuits including — but not limited to — [Homebrew](http://mxcl.github.com/homebrew/), [MacPorts](http://www.macports.org/), [Fink](http://www.finkproject.org/) or simply enhancing the default packages that come with [Mac OS X](http://www.apple.com/macosx/). However, there was always something missing which is why I prefer to compile my own development environment. This method gives me **complete** control. The other methods will surely be enough for many people but if you want to compile your own environment then continue reading.

This method also allows us to install any required version for a given project. Another benefit of installing custom built packages is to keep them segregated from the rest of the system which prevents future conflicts when performing a [Software Update](http://www.apple.com/softwareupdate/) in Mac OS X. These instructions were made for [Lion](http://en.wikipedia.org/wiki/Mac_OS_X_Lion) but should be fairly similar for previous versions of Mac OS X.

Start with the **Getting Started** section, then proceed with installing your desired packages. Some packages need to be installed in a certain order to satisfy dependencies. Each package lists its dependencies at the beginning of the instructions.

*Good luck and happy coding!*

### Getting Started

- [XCode Developer Tools](started-xcode.html)
- [Create the Folder Structure](started-folders.html)

### Source Code Management

- [Git](git.html)

### Databases

- MySQL
	- [CMake](mysql-cmake.html)
	- [MySQL](mysql.html)
- [MongoDB](mongodb.html)
- [SQLite](sqlite.html)

### Web Servers

- [Apache](apache.html)

### Languages

- Ruby
	- [LibYAML](ruby-libyaml.html)
	- [rbenv](ruby-rbenv.html)
	- [Ruby](ruby.html)
	- [RubyGems](ruby-gems.html)
	- [Ruby on Rails](ruby-rails.html)
	- [MySQL Driver for Ruby](ruby-mysql.html)
	- [MongoDB Driver for Ruby](ruby-mongodb.html)
	- [SQLite Driver for Ruby](ruby-sqlite.html)
- PHP: Hypertext Preprocessor
	- [LibJPEG](php-libjpeg.html)
	- [LibPNG](php-libpng.html)
	- [LibMCrypt](php-libmcrypt.html)
	- [PHP](php.html)
	- [Xdebug](php-xdebug.html)
	- [MySQL Driver for PHP](php-mysql.html)
	- [MongoDB Driver for PHP](php-mongodb.html)
	- [SQLite Driver for PHP](php-sqlite.html)

---
**Note:** Remember these instructions are for creating a development server and therefore security is not considered. For a production system, please refer to each product's respective documentation on how to properly secure each service.