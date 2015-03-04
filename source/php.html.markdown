---
title: PHP
---

> **Links:** [Homepage](http://php.net/) | [Documentation](http://php.net/manual/en/) | [Downloads](http://php.net/downloads.php)  
> **Dependencies:** [Apache](/apache/) | [LibJPEG](/libjpeg/) | [LibPNG](/libpng/) | [LibMCrypt](/libmcrypt/) | [FreeType](/freetype/)  
> **Version:** <span id="version">5.6.6</span>

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
	  --with-config-file-path=/usr/local/php-VERSION/etc \
	  --enable-bcmath \
	  --enable-mbstring \
	  --enable-sockets \
	  --enable-zip \
	  --with-apxs2=/usr/local/apache/bin/apxs \
	  --with-bz2 \
	  --with-curl \
	  --with-freetype-dir=/usr/local/freetype \
	  --with-gd \
	  --with-imap-ssl \
	  --with-jpeg-dir=/usr/local/libjpeg \
	  --with-mcrypt=/usr/local/libmcrypt \
	  --with-mysql \
	  --with-mysqli \
	  --with-pear \
	  --with-pdo-mysql \
	  --with-pdo-pgsql=/usr/local/postgresql \
	  --with-pgsql=/usr/local/postgresql \
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

Copy a PHP configuration template to the target folder. You can configure any of the [php.ini directives](http://www.php.net/manual/en/ini.list.php) by editing this file.

	cp php.ini-development /usr/local/php/etc/php.ini

Set the location of the `php.ini` configuration file for PECL and PEAR.

	/usr/local/php/bin/pecl config-set php_ini /usr/local/php/etc/php.ini
	/usr/local/php/bin/pear config-set php_ini /usr/local/php/etc/php.ini


### Apache Configuration

Edit Apache's configuration file.

	nano /usr/local/apache/conf/httpd.conf

Copy and paste the following text at the end of the aforementioned file.

	<IfModule mime_module>
	  AddType application/x-httpd-php .php
	</IfModule>
	<IfModule dir_module>
      DirectoryIndex index.html index.php
	</IfModule>


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/php/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/php/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Restart the Web Server

The web server must be restarted for the changes to take effect.

	sudo apachectl restart


### Verify the Installation

Verify that you have successfully installed **PHP**.

	php --version
