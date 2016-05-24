---
title: MySQL
---

> **Links:** [Homepage](http://www.mysql.com/) | [Downloads](http://www.mysql.com/downloads/mysql/) | [Reference Manual](http://dev.mysql.com/doc/refman/5.7/en/index.html)  
> **Dependencies:** [CMake](/cmake/)  
> **Version:** <span id="version">5.7.12</span>

**MySQL** is an open-source relational database management server (RDBMS).


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name --location https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-VERSION.tar.gz

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
	  -DDOWNLOAD_BOOST=ON \
	  -DWITH_BOOST=/usr/local/src/boost \
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

Perform either the upgrade or new installation steps below depending on your situation.

#### Upgrade

Upgrade your database server after the installation.

	mysql_upgrade -u root -p

#### New Installation

Initialize your database server.

	mysqld --initialize --basedir=/usr/local/mysql --datadir=/usr/local/var/mysql

The password from the previous command is temporary. Launch the MySQL client and enter the temporary password.

	mysql -u root -p

After connecting, assign a new root password.

	ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';


### Manual Start/Stop

To start the MySQL server.

	mysqld_safe --datadir=/usr/local/var/mysql --log-error=/usr/local/var/log/mysql.log &

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

Verify that you have successfully installed **MySQL**.

	mysqld --version

Log into the database using the **MySQL** client.

	mysql --user=root --password
