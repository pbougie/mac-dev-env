---
title: MySQL
---

> **Links:** [Homepage](http://www.mysql.com/) | [Downloads](http://www.mysql.com/downloads/mysql/) | [Reference Manual](http://dev.mysql.com/doc/refman/5.6/en/index.html)  
> **Dependencies:** [CMake](/cmake/)  
> **Version:** <span id="version">5.6.23</span>

**MySQL** is an open-source relational database management server (RDBMS).


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name --location https://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf mysql-VERSION.tar.gz
	cd mysql-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mysql-VERSION`.

	cmake \
		-DCMAKE_INSTALL_PREFIX=/usr/local/mysql-VERSION \
		-DCMAKE_CXX_FLAGS="-stdlib=libstdc++" \
		-DDEFAULT_CHARSET=utf8 \
		-DDEFAULT_COLLATION=utf8_general_ci \
		.
	make
	make install

Create a symbolic link that points `/usr/local/mysql` to `/usr/local/mysql-VERSION`.

	ln -s mysql-VERSION /usr/local/mysql


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/mysql/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/mysql/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Databases

Create a folder that will contain your databases. My databases are located in `/usr/local/var/mysql`. You can place your databases wherever you'd like but make sure you update the path when mentioned throughout this article.

	mkdir -p /usr/local/var/mysql


### Post-Installation

If you are copying the data from a former MySQL installation, you can skip these steps.

#### Initialize your Database

Initialize your database before launching the server.

	/usr/local/mysql/scripts/mysql_install_db --basedir=/usr/local/mysql --datadir=/usr/local/var/mysql

#### Secure the Server

The server needs to be running to perform this step which will set a root password and generally secure the server.

	mysql_secure_installation


### Manual Start/Stop

To start the MySQL server.

	mysqld_safe --user=mysql --datadir=/usr/local/var/mysql --log-error=/usr/local/var/log/mysql.log &

To shut down the MySQL server.

	mysqladmin --user=root --password shutdown


### Automatically Start the Server at Boot

Create a configuration file for [Launchd](http://en.wikipedia.org/wiki/Launchd).

	nano ~/Library/LaunchAgents/com.mysql.mysqld.plist

Copy and paste the following text into the aforementioned file.

	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
	<plist version="1.0">
	  <dict>
	    <key>Label</key>
	    <string>com.mysql.mysqld</string>

	    <key>ProgramArguments</key>
	    <array>
	      <string>/usr/local/mysql/bin/mysqld_safe</string>
	      <string>--user=mysql</string>
	      <string>--datadir=/usr/local/var/mysql</string>
	      <string>--log-error=/usr/local/var/log/mysql.log</string>
	    </array>

	    <key>StandardOutPath</key>
	    <string>/usr/local/var/log/mysql.log</string>
	    <key>StandardErrorPath</key>
	    <string>/usr/local/var/log/mysql.log</string>

	    <key>RunAtLoad</key>
	    <true/>
	    <key>KeepAlive</key>
	    <true/>
	  </dict>
	</plist>

Register with Launchd and start the server.

	launchctl load ~/Library/LaunchAgents/com.mysql.mysqld.plist

Deregister with Launchd.

	launchctl unload ~/Library/LaunchAgents/com.mysql.mysqld.plist


### Verify the Installation

Display the **MySQL** server version.

	mysqld --version

Log into the database using the **MySQL** client.

	mysql --user=root --password
