---
title: PostgreSQL
---

> **Links:** [Homepage](http://www.postgresql.org/) | [Downloads](http://www.postgresql.org/ftp/source/) | [Documentation](http://www.postgresql.org/docs/9.2/static/)  
> **Dependencies:** None  
> **Version:** <span id="version">9.3.4</span>


**PostgreSQL** is an enterprise-class, open source object-relational database system. It has been in active development for more than 15 years and has a strong reputation for standards compliance, reliability and data integrity.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://ftp.postgresql.org/pub/source/vVERSION/postgresql-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf postgresql-VERSION.tar.gz
	cd postgresql-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/pgsql-VERSION`.

	./configure --prefix=/usr/local/pgsql-VERSION
	make world
	make install-world

Create a symbolic link that points `/usr/local/pgsql` to `/usr/local/pgsql-VERSION`.

	ln -s pgsql-VERSION /usr/local/pgsql


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/pgsql/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/pgsql/share/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Databases

Create a folder that will contain your databases. My databases are located in `/usr/local/var/pgsql`. You can place your databases wherever you'd like but make sure you update the path when mentioned in this article.

	mkdir -p /usr/local/var/pgsql


### Post-Installation

If you are copying the data from a former PostgreSQL installation, you can skip this step. Initialize your database installation.

	initdb --pgdata=/usr/local/var/pgsql


### Manual Start/Stop

To start the PostgreSQL server.

	pg_ctl -D /usr/local/var/pgsql -l /usr/local/var/log/pgsql.log start

To stop the PostgreSQL server.

	pg_ctl -D /usr/local/var/pgsql stop


### Automatically Start the Server at Boot

Create a configuration file for [Launchd](http://en.wikipedia.org/wiki/Launchd).

	nano ~/Library/LaunchAgents/org.postgresql.pgsqld.plist

Copy and paste the following text into the aforementioned file.

	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
	<plist version="1.0">
	  <dict>
	    <key>Label</key>
	    <string>org.postgresql.pgsqld</string>
	
	    <key>ProgramArguments</key>
	    <array>
	      <string>/usr/local/pgsql/bin/postgres</string>
	      <string>-D</string>
	      <string>/usr/local/var/pgsql</string>
	    </array>
	
	    <key>StandardOutPath</key>
	    <string>/usr/local/var/log/pgsql.log</string>
	    <key>StandardErrorPath</key>
	    <string>/usr/local/var/log/pgsql.log</string>
	
	    <key>RunAtLoad</key>
	    <true/>
	    <key>KeepAlive</key>
	    <true/>
	  </dict>
	</plist>

Register with Launchd and start the server.

	launchctl load -w ~/Library/LaunchAgents/org.postgresql.pgsqld.plist

Deregister with Launchd.

	launchctl unload -w ~/Library/LaunchAgents/org.postgresql.pgsqld.plist


### Verify the Installation

Display the **PostgreSQL** server version.

	postgres --version

Show a list of available databases (the server has to be running).

	psql -l
