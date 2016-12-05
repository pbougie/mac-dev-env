---
title: MongoDB for PHP
---

> **Links:** [Homepage](https://docs.mongodb.org/ecosystem/drivers/php/)  
> **Dependencies:** [MongoDB](/mongodb/) | [PHP](/php/)


### Install

Install MongoDB driver for PHP using [PECL](http://pecl.php.net/).

	pecl install mongodb

The extension should be added to your `php.ini` file automatically. If not, follow the on-screen instructions to enable the extension.


### Restart the Web Server

The web server must be restarted for the changes to take effect.

	sudo apachectl restart
