---
title: PHP
---


> **Links:** [Homepage](http://www.php.net/) | [Downloads](http://www.php.net/downloads.php)  
> **Dependencies:** [Apache](/apache) | [LibJPEG](/lib-jpeg) | [LibPNG](/lib-png) | [LibMCrypt](/lib-mcrypt)  
> **Version:** <span id="version">5.4.14</span>


**PHP** is a general-purpose server-side scripting language that is especially suited to web development.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --location --output php-VERSION.tar.gz http://ca.php.net/get/php-VERSION.tar.gz/from/this/mirror

Extract the archive and move into the folder.

	tar -xzvf php-VERSION.tar.gz
	cd php-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/php-VERSION`.

	./configure \
		--prefix=/usr/local/php-VERSION \
		--with-config-file-path=/usr/local/php-VERSION \
		--enable-bcmath \
		--enable-mbstring \
		--enable-sockets \
		--enable-zip \
		--with-apxs2=/usr/local/apache/bin/apxs \
		--with-bz2 \
		--with-curl \
		--with-gd \
		--with-imap-ssl \
		--with-jpeg-dir=/usr/local/libjpeg \
		--with-mcrypt=/usr/local/libmcrypt \
		--with-mysql=mysqlnd \
		--with-mysqli=mysqlnd \
		--with-pear \
		--with-pdo-mysql=mysqlnd \
		--with-pgsql \
		--with-png-dir=/usr/local/libpng \
		--with-openssl \
		--with-xmlrpc \
		--with-xsl \
		--with-zlib
	make
	make install

Create a symbolic link that points `/usr/local/php` to `/usr/local/php-VERSION`.

	ln -s php-VERSION /usr/local/php


### PHP Configuration

Copy a PHP configuration template to the target folder.

	cp php.ini-development /usr/local/php/php.ini

You can configure any of the [php.ini directives](http://www.php.net/manual/en/ini.list.php) by editing this file.


### Apache Configuration

Edit Apache's configuration file.

	nano /usr/local/apache/conf/httpd.conf

Copy and paste the following text at the end of the aforementioned file.

	<IfModule mime_module>
		AddType application/x-httpd-php .php
	</IfModule>


### Shell

Add the following lines to your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script to put PHP and its Man Pages into your path.

	echo 'export PATH=/usr/local/php/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/php/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Restart the Web Server

The web server must be restarted for the changes to take effect.

	sudo /usr/local/apache/bin/apachectl -k restart


### Verify the Installation

To verify that you have correctly installed PHP, execute the following command. It should display the version number along with other information.

	php --version
