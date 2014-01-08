---
title: MongoDB for PHP
---


> **Links:** [Homepage](http://www.mongodb.org/display/DOCS/PHP+Language+Center)  
> **Dependencies:** [PHP](/php/) | [Autoconf](/autoconf/) | [MongoDB](/mongodb/)


### Install

Install MongoDB driver for PHP using [PECL](http://pecl.php.net/).

	pecl install mongo

Execute the following line to update your `php.ini` file.
	
	echo 'extension=mongo.so' >> /usr/local/php/etc/php.ini


### Restart the Web Server

The web server must be restarted for the changes to take effect.

	sudo apachectl restart
