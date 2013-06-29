---
title: Pow
---


> **Links:** [Homepage](http://pow.cx/) | [Documentation](http://pow.cx/manual.html)  
> **Dependencies:** [None.js](/nodejs)  


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
		ServerName pow
		ServerAlias *.dev
		ServerAlias *.xip.io
	
		ProxyPass / http://localhost:20559/
		ProxyPassReverse / http://localhost:20559/
		ProxyPreserveHost On
	</VirtualHost>
	
	<VirtualHost *:80>
		# Stops Pow from serving requests on port 80
	</VirtualHost>

Restart Apache.

	sudo apachectl restart


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


### Useful

![Anvil](/images/anvil.png)

[Anvil](http://anvilformac.com/) is a menubar app for managing your local websites. Serve your Rack apps and static sites with a simple `.dev` URL. Anvil actually incorporates Pow so you can omit the above installation when using it.