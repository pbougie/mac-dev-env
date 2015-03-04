---
title: Xdebug
---

> **Links:** [Homepage](http://xdebug.org/)  
> **Dependencies:** [PHP](/php/) | [Autoconf](/autoconf/)

The Xdebug extension helps you debug your PHP scripts. It installs as a PHP extension.


### Install

Install Xdebug using [PECL](http://pecl.php.net/).

	pecl install xdebug

If the extension is added to your `php.ini` file automatically, **remove** the following line:

	zend_extension_ts="xdebug.so"

And replace it with:

	zend_extension="/usr/local/php/lib/php/extensions/no-debug-zts-20131226/xdebug.so"

**Or** directly from the CLI:

	echo 'zend_extension="/usr/local/php/lib/php/extensions/no-debug-zts-20131226/xdebug.so"' >> /usr/local/php/etc/php.ini


### Restart the Web Server

The web server must be restarted for the changes to take effect.

	sudo apachectl restart
