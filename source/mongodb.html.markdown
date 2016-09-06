---
title: MongoDB w/ SSL
---

> **Links:** [Homepage](http://www.mongodb.org/) | [Documentation](https://docs.mongodb.com/manual/) | [Downloads](http://www.mongodb.org/downloads)  
> **Dependencies:** None  
> **Version:** <span id="version">3.2.9</span>

**MongoDB** is a free and open-source cross-platform document-oriented database.


### Get the Code

Switch to `/usr/local/src` and download the pre-compiled binaries.

	cd /usr/local/src
	curl --remote-name https://fastdl.mongodb.org/osx/mongodb-osx-ssl-x86_64-VERSION.tgz


### Install

Unpack the binaries into `/usr/local`.

	tar -zxvf mongodb-osx-ssl-x86_64-VERSION.tgz -C ..

Create a symbolic link to `/usr/local/mongodb`.

	ln -s mongodb-osx-x86_64-VERSION /usr/local/mongodb


### Databases

Create a folder that will contain your databases. My databases are located in `/usr/local/var/mongodb`. You can place your databases wherever you'd like but make sure you update the path when mentioned throughout this article.

	mkdir -p /usr/local/var/mongodb


### Configuration File

Create a configuration file to customize your server.

	nano /usr/local/mongodb/mongod.conf

Copy and paste the following text into the aforementioned file.

	# http://docs.mongodb.org/manual/reference/configuration-options/
	storage:
	  dbPath: /usr/local/var/mongodb
	  directoryPerDB: true
	  journal:
	    enabled: true
	  mmapv1:
	    smallFiles: true
	net:
	  bindIp: 127.0.0.1
	  http:
	    enabled: true


> **To configure MongoDB with SSL, see instructions at [Configure mongod and mongos for TLS/SSL](https://docs.mongodb.com/manual/tutorial/configure-ssl/).**


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/mongodb/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Manual Start/Stop

To start the MongoDB server.

	mongod --config /usr/local/mongodb/mongod.conf

Press `CTRL-C` to stop the MongoDB server.


### Automatically Start the Server at Boot

Create a configuration file for [Launchd](http://en.wikipedia.org/wiki/Launchd).

	nano ~/Library/LaunchAgents/org.mongodb.mongod.plist

Copy and paste the following text into the aforementioned file.

	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
	<plist version="1.0">
	  <dict>
	    <key>Label</key>
	    <string>org.mongodb.mongod</string>

	    <key>ProgramArguments</key>
	    <array>
	      <string>/usr/local/mongodb/bin/mongod</string>
	      <string>--config</string>
	      <string>/usr/local/mongodb/mongod.conf</string>
	    </array>

	    <key>StandardOutPath</key>
	    <string>/usr/local/var/log/mongodb.log</string>
	    <key>StandardErrorPath</key>
	    <string>/usr/local/var/log/mongodb.log</string>

	    <key>RunAtLoad</key>
	    <true/>
	    <key>KeepAlive</key>
	    <true/>
	  </dict>
	</plist>

Register with Launchd and start the server.

	launchctl load ~/Library/LaunchAgents/org.mongodb.mongod.plist

Deregister with Launchd.

	launchctl unload ~/Library/LaunchAgents/org.mongodb.mongod.plist


### Verify the Installation

Verify that you have successfully installed **MongoDB**.

	mongod --version

Visit the web status page.

[`http://localhost:28017/`](http://localhost:28017/)
