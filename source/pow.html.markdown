---
title: Pow
---

> **Links:** [Homepage](http://pow.cx/) | [Documentation](http://pow.cx/manual.html)  
> **Dependencies:** None  

Pow is a zero-config Rack server for Mac OS X.


### Configure Pow for use with Apache

This will install Pow to work with Apache. You can skip this section for a standalone installation.

Configure Pow prior to running the installation script.

	echo 'export POW_DST_PORT=88' >> ~/.powconfig
	source ~/.powconfig

Add the following to the Apache configuration file `/usr/local/apache/conf/httpd.conf`.

	LoadModule proxy_module modules/mod_proxy.so
	LoadModule proxy_http_module modules/mod_proxy_http.so

	<VirtualHost *:80>
	  # Passthrough to non-Ruby projects.
	</VirtualHost>

	<VirtualHost *:80>
	  ServerName pow
	  ServerAlias *.dev
	  ServerAlias *.xip.io

	  ProxyPass / http://localhost:20559/
	  ProxyPassReverse / http://localhost:20559/
	  ProxyPreserveHost On
	</VirtualHost>

Restart Apache.

	sudo apachectl restart


### Configure Pow for use with `rbenv`

This will install Pow to work with `rbenv`. You can skip this section if you are not using `rbenv`

	echo 'export PATH=/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH' >> ~/.powconfig
	source ~/.powconfig


### Install or Upgrade

Install or upgrade Pow using the installation script.

	curl get.pow.cx | sh

To add a Rack-based application.

	cd ~/.pow
	ln -s /path/to/appname

Load the application.

	http://appname.dev/


### Uninstall

Uninstall Pow.

	curl get.pow.cx/uninstall.sh | sh
