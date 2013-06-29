---
title: Xdebug
---


> **Links:** [Homepage](http://xdebug.org/)  
> **Dependencies:** [PHP](/php/) | [Autoconf](/autoconf/)


The Xdebug extension helps you debug your PHP scripts. It installs as a PHP extension.


### Install

Install Xdebug using [PECL](http://pecl.php.net/).

	pecl install xdebug

Add the following line to your PHP configuration file.
	
	echo 'zend_extension=/usr/local/php/lib/php/extensions/no-debug-zts-20121212/xdebug.so' >> /usr/local/php/etc/php.ini

Make sure the path to the extension is the same.


### Restart the Web Server

The web server must be restarted for the changes to take effect.

	sudo /usr/local/apache/bin/apachectl -k restart
