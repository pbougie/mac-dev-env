---
title: MongoDB
---

> **Links:** [Homepage](http://www.mongodb.org/) | [Downloads](http://www.mongodb.org/downloads)  
> **Dependencies:** None  
> **Version:** <span id="version">2.4.5</span>


**MongoDB** is a scalable, high-performance, open source, schema-free, document-oriented database. MongoDB was created by [10gen](http://www.10gen.com/) and they have been kind enough to provide pre-compiled binaries for various platforms including OS X.


### Get the Code

Switch to `/usr/local/src` and download the pre-compiled binaries.

	cd /usr/local/src
	curl --remote-name http://fastdl.mongodb.org/osx/mongodb-osx-x86_64-VERSION.tgz


### Install

Unpack the binaries into `/usr/local`.

	tar -zxvf mongodb-osx-x86_64-VERSION.tgz -C ..

Create a symbolic link to `/usr/local/mongodb`.

	ln -s mongodb-osx-x86_64-VERSION /usr/local/mongodb


### Databases

Create a folder that will contain your databases. My databases are located in `/usr/local/var/mongodb`. You can place your databases wherever you'd like but make sure you update the path when mentioned throughout this article.

	mkdir -p /usr/local/var/mongodb


### Configuration File

Create a configuration file so you can make changes to your database configuration without messing around with command line arguments.

	nano /usr/local/mongodb/mongod.conf

Copy and paste the following text into the aforementioned file.

	# Location of MongoDB databases
	dbpath = /usr/local/var/mongodb
	# Location of log files
	logpath = /var/log/mongod.log
	# Only accept local connections
	bind_ip = localhost
	# Enable journaling
	journal = true
	# Enable REST
	rest = true
	# Enable smaller default file sizes
	# (saves space on development servers)
	smallfiles = true


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/mongodb/bin:$PATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Manual Start/Stop

Start the server to test your installation.

	sudo mongod --config=/usr/local/mongodb/mongod.conf

To shut down the MongoDB server, press `CTRL-C`.


### Automatically Start the Server at Boot

Create a configuration file for [Launchd](http://en.wikipedia.org/wiki/Launchd).

	sudo nano /Library/LaunchDaemons/org.mongodb.mongod.plist

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
			<string>--config=/usr/local/mongodb/mongod.conf</string>
		</array>
		<key>RunAtLoad</key>
		<true/>
		<key>KeepAlive</key>
		<true/>
	</dict>
	</plist>

Register with Launchd and start the server.

	sudo launchctl load -w /Library/LaunchDaemons/org.mongodb.mongod.plist

Deregister with Launchd.

	sudo launchctl unload -w /Library/LaunchDaemons/org.mongodb.mongod.plist


### Verify the Installation

To verify that you have correctly installed and started your MongoDB server, point your web browser to [`http://localhost:28017/`](http://localhost:28017/) to load the MongoDB console.
