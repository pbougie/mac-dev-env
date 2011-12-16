---
layout: default
title: Xdebug
---


The Xdebug extension helps you debug your PHP scripts. It installs as a PHP extension.


> **Links:** [Homepage](http://xdebug.org/)  
> **Dependencies:** [PHP](php.html)


### Install

Install Xdebug using [PECL](http://pecl.php.net/).

	sudo pecl install xdebug

Add the following line to your PHP configuration file.
	
	sudo sh -c "echo 'zend_extension=/usr/local/php/lib/php/extensions/no-debug-non-zts-20090626/xdebug.so' >> /usr/local/php/php.ini"

Make sure the path to the extension is the same.


### Restart the Web Server

The web server must be restarted for the changes to take effect.

	sudo /usr/local/apache/bin/apachectl -k restart
