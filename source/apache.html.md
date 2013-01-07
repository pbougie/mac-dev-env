---
title: Apache
---


> **Links:** [Homepage](http://httpd.apache.org/) | [Downloads](http://httpd.apache.org/download.cgi) | [Documentation](http://httpd.apache.org/docs/2.4/)  
> **Dependencies:** [PCRE](/pcre)  
> **Version:** <span id="version">2.4.3</span>


The **Apache HTTP Server** is an open-source web server that was released in 1995. It has been the most popular web server on the Internet since April 1996. It is estimated to serve over 60% of all websites.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://mirror.csclub.uwaterloo.ca/apache/httpd/httpd-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf httpd-VERSION.tar.gz
	cd httpd-VERSION


### Compile and Install

There are some broken references when attempting to compile using the Command Line Tools. This symbolic link temporarily fixes the problem. You can delete `/Applications/Xcode` once you are done.

	mkdir -p /Applications/Xcode.app/Contents/Developer/Toolchains/OSX10.8.xctoolchain/usr/bin
	ln -s /usr/bin/cc /Applications/Xcode.app/Contents/Developer/Toolchains/OSX10.8.xctoolchain/usr/bin/cc

Configure, compile and install into `/usr/local/apache-VERSION`.

	./configure --prefix=/usr/local/apache-VERSION
	make
	make install

Create a symbolic link that points `/usr/local/apache` to `/usr/local/apache-VERSION`.

	ln -s apache-VERSION /usr/local/apache


### Configuration File

Edit Apache's configuration file.

	nano /usr/local/apache/conf/httpd.conf

Copy and paste the following text at the end of the aforementioned file. Make sure you replace the `<username>` string (3 times) with your OS X short username. This configuration only allows access from your local computer; all outside access is blocked.

	ServerName dev.local
	User <username>
	Group staff

	DocumentRoot "/Users/<username>/Sites"
	<Directory "/Users/<username>/Sites">
		Options All
		AllowOverride All
		IndexOptions NameWidth=*

		Require host localhost
		Require host 127.0.0.1
	</Directory>


### Web Root

Create a folder that will contain your web sites and applications; such as `~/Sites` You can place your projects wherever you'd like but make sure you update the path when mentioned in this article.

	mkdir -p ~/Sites


### Shell

Add the following lines to your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script to put Apache and its Man Pages into your path.

	echo 'export PATH=/usr/local/apache/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/apache/man:$MANPATH' >> ~/.bash_profile

You can also create the following shortcuts if you'd like.

	echo 'alias apache-start="sudo /usr/local/apache/bin/apachectl -k start"' >> ~/.bash_profile
	echo 'alias apache-stop="sudo /usr/local/apache/bin/apachectl -k graceful-stop"' >> ~/.bash_profile
	echo 'alias apache-restart="sudo /usr/local/apache/bin/apachectl -k graceful"' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Automatically Starting the Server at Boot

Create a configuration file for [Launchd](http://en.wikipedia.org/wiki/Launchd).

	sudo nano /Library/LaunchDaemons/org.apache.apache2.plist

Do not name the file *org.apache.httpd.plist* as it collides with a similarly named file for loading the OS X web server.

Copy and paste the following text into the aforementioned file.

	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
	<plist version="1.0">
	<dict>
		<key>Label</key>
		<string>org.apache.apache2</string>
		<key>ProgramArguments</key>
		<array>
			<string>/usr/local/apache/bin/httpd</string>
			<string>-D</string>
			<string>FOREGROUND</string>
		</array>
		<key>RunAtLoad</key>
		<true/>
		<key>KeepAlive</key>
		<true/>
		<key>WorkingDirectory</key>
		<string>/usr/local/apache</string>
	</dict>
	</plist>


And finally, execute the following command to register the configuration file with Launchd.

	sudo launchctl load -w /Library/LaunchDaemons/org.apache.apache2.plist

If you ever want to stop your Apache server from automatically starting at boot, issue the following command.

	sudo launchctl unload -w /Library/LaunchDaemons/org.apache.apache2.plist


### Verify the Installation

To verify that you have correctly installed and started your Apache server, point your web browser to [`http://localhost/`](http://localhost/) to load a webpage.
