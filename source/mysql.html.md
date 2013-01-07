---
title: MySQL
---

> **Links:** [Homepage](http://www.mysql.com/) | [Downloads](http://www.mysql.com/downloads/mysql/) | [Reference Manual](http://dev.mysql.com/doc/refman/5.5/en/index.html)  
> **Dependencies:** [CMake](cmake.html)  
> **Version:** <span id="version">5.5.29</span>


**MySQL** is an open-source relational database management server (RDBMS).


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://mirror.csclub.uwaterloo.ca/mysql/Downloads/MySQL-5.5/mysql-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf mysql-VERSION.tar.gz
	cd mysql-VERSION


### Databases

Create a folder that will contain your databases. My databases are located in `/usr/local/var/mysql`. You can place your databases wherever you'd like but make sure you update the path when mentioned throughout this article.

	mkdir -p /usr/local/var/mysql

Set the permissions on the folder.

	sudo chown -R mysql /usr/local/var/mysql


### Compile and Install

Configure, compile and install into `/usr/local/mysql-VERSION`.

	cmake \
		-DCMAKE_INSTALL_PREFIX=/usr/local/mysql-VERSION \
		-DDEFAULT_CHARSET=utf8 \
		-DDEFAULT_COLLATION=utf8_general_ci \
		.
	make
	make install

Create a symbolic link that points `/usr/local/mysql` to `/usr/local/mysql-VERSION`.

	ln -s mysql-VERSION /usr/local/mysql


### Shell

Add the following lines to your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script to put MySQL and its Man Pages into your path.

	echo 'export PATH=/usr/local/mysql/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/mysql/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Post-Installation

If you are copying the data from a former MySQL installation, you can skip this step. Initialize your database installation.

	sudo /usr/local/mysql/scripts/mysql_install_db --user=mysql --basedir=/usr/local/mysql --datadir=/usr/local/var/mysql


### Manually Starting and Stopping the Server

To start the MySQL server.

	sudo -b /usr/local/mysql/bin/mysqld_safe --user=mysql --datadir=/usr/local/var/mysql

To shut down the MySQL server.

	sudo /usr/local/mysql/bin/mysqladmin --password shutdown


### Secure the Server

The server needs to be running to perform this step which will set a root password and generally secure the server.

	sudo /usr/local/mysql/bin/mysql_secure_installation


### Automatically Starting the Server at Boot

Create a configuration file for [Launchd](http://en.wikipedia.org/wiki/Launchd).

	sudo nano /Library/LaunchDaemons/com.mysql.mysqld.plist

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
		</array>
		<key>RunAtLoad</key>
		<true/>
		<key>KeepAlive</key>
		<true/>
	</dict>
	</plist>


And finally, execute the following command to register the configuration file with Launchd.

	sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist

If you ever want to stop your MySQL server from automatically starting at boot, issue the following command.

	sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist


### Verify the Installation

Log into the database using the **MySQL** client.

	mysql --user=root --password
