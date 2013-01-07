---
title: MongoDB Driver for PHP
---


> **Links:** [Homepage](http://www.mongodb.org/display/DOCS/PHP+Language+Center)  
> **Dependencies:** [PHP](/php) | [Autoconf](/autoconf) | [MongoDB](/mongodb)


### Install

Install MongoDB Driver for PHP using [PECL](http://pecl.php.net/).

	pecl install mongo

Add the following line to your PHP configuration file.
	
	echo 'extension=mongo.so' >> /usr/local/php/php.ini


### Restart the Web Server

The web server must be restarted for the changes to take effect.

	sudo /usr/local/apache/bin/apachectl -k restart
