---
title: Puma-dev
---

> **Links:** [Homepage](https://github.com/puma/puma-dev) | [Downloads](https://github.com/puma/puma-dev/releases)  
> **Dependencies:** None  
> **Version:** <span id="version">0.10</span>

**Puma-dev** is a tool to manage Rack apps in development with Puma.


### Get the Code

Switch to `/usr/local/src` and download the pre-compiled binary.

	cd /usr/local/src
	curl --remote-name --location https://github.com/puma/puma-dev/releases/download/vVERSION/puma-dev-vVERSION-darwin-amd64.zip


### Install

Unpack the binary into `/usr/local/mac-dev-env/puma-dev-VERSION`.

	mkdir -p ../mac-dev-env/puma-dev-VERSION
	tar -zxvf puma-dev-vVERSION-darwin-amd64.zip -C ../mac-dev-env/puma-dev-VERSION

Create a symbolic link to `/usr/local/puma-dev`.

	ln -s mac-dev-env/puma-dev-VERSION /usr/local/puma-dev


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/puma-dev:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Verify the Installation

Verify that you have successfully installed **Puma-dev**.

	puma-dev -V


### Configuration

This configures the settings that require root access on macOS.

	sudo puma-dev -setup

Enter your system password to continue.

To add a Rack-based application.

	mkdir -p ~/.puma-dev
	cd ~/.puma-dev
	ln -s /path/to/appname

Load the application (must start server first; see below).

	http://appname.dev/


### Manual Start/Stop

To start the **Puma-dev** server.

	puma-dev

Press `CTRL-C` to stop the **Puma-dev** server.


### Configure Puma-dev for use with Apache

Configure **Puma-dev** to start as a service.

	puma-dev -install -install-port 9280 -install-https-port 9283

Add the following to the Apache configuration file `/usr/local/apache/conf/httpd.conf`.

	LoadModule proxy_module modules/mod_proxy.so
	LoadModule proxy_http_module modules/mod_proxy_http.so

	<VirtualHost *:80>
	  # Passthrough for non-Ruby projects.
	</VirtualHost>

	<VirtualHost *:80>
	  ServerName puma
	  ServerAlias *.dev

	  ProxyPreserveHost On
	  ProxyPass / http://localhost:9280/
	  ProxyPassReverse / http://localhost:9280/
	</VirtualHost>

Restart Apache.

	sudo apachectl restart


### Purge

If you have any apps that have stopped responding, you can have `puma-dev` stop all the apps.

	pkill -USR1 puma-dev


### Uninstall

To uninstall **Puma-dev**.

	puma-dev -uninstall

Then remove the following from your filesystem.

	rm /usr/local/puma-dev
	rm ~/Library/Logs/puma-dev.log
	rm -r /usr/local/mac-dev-env/puma-dev-VERSION
	rm -r ~/.puma-dev
	rm -r ~/Library/Application Support/io.puma.dev

Don't forget to remove any **Apache** and **Bash** configurations if applicable.