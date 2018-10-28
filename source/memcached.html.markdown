---
title: Memcached
---

> **Links:** [Homepage](http://memcached.org/) | [Downloads](http://memcached.org/downloads) | [Wiki](https://github.com/memcached/memcached/wiki)  
> **Dependencies:** [Libevent](/libevent/)  
> **Version:** <span data-version>1.5.11</span>

**Memcached** is an in-memory key-value store for small chunks of arbitrary data.


### Get the Code

Switch to `/usr/local/src` and download the source package.

	cd /usr/local/src
	curl --remote-name http://www.memcached.org/files/memcached-VERSION.tar.gz

Extract the archive and move into the folder.

	tar -xzvf memcached-VERSION.tar.gz
	cd memcached-VERSION


### Compile and Install

Configure, compile and install into `/usr/local/mac-dev-env/memcached-VERSION`.

	./configure \
	  --prefix=/usr/local/mac-dev-env/memcached-VERSION \
	  --with-libevent=/usr/local/libevent
	make
	make install

Create a symbolic link to `/usr/local/memcached`.

	sudo ln -s mac-dev-env/memcached-VERSION /usr/local/memcached


### Shell

Execute the following lines to update your [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29) startup script.

	echo 'export PATH=/usr/local/memcached/bin:$PATH' >> ~/.bash_profile
	echo 'export MANPATH=/usr/local/memcached/share/man:$MANPATH' >> ~/.bash_profile

Load the new shell configurations.

	source ~/.bash_profile


### Manual Start/Stop

To start the Memcached server.

	memcached -l 127.0.0.1 -vv

Press `CTRL-C` to stop the Memcached server.


### Automatically Start the Server at Boot

Create a configuration file for [Launchd](http://en.wikipedia.org/wiki/Launchd).

	nano ~/Library/LaunchAgents/org.memcached.memcached.plist

Copy and paste the following text into the aforementioned file.

	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
	<plist version="1.0">
	  <dict>
	    <key>Label</key>
	    <string>org.memcached.memcached</string>

	    <key>ProgramArguments</key>
	    <array>
	      <string>/usr/local/memcached/bin/memcached</string>
	      <string>-l</string>
	      <string>127.0.0.1</string>
	      <string>-vv</string>
	    </array>

	    <key>StandardOutPath</key>
	    <string>/usr/local/var/log/memcached.log</string>
	    <key>StandardErrorPath</key>
	    <string>/usr/local/var/log/memcached.log</string>

	    <key>RunAtLoad</key>
	    <true/>
	    <key>KeepAlive</key>
	    <true/>
	  </dict>
	</plist>

Register with Launchd and start the server.

	launchctl load ~/Library/LaunchAgents/org.memcached.memcached.plist

Deregister with Launchd. Kill the process manually.

	launchctl unload ~/Library/LaunchAgents/org.memcached.memcached.plist


### Verify the Installation

Verify that you have successfully installed **Memcached**.

	memcached -V


### Using the Memcached Telnet Interface

You can connect to the Memcached server with [Telnet](http://en.wikipedia.org/wiki/Telnet).

	telnet localhost 11211

To test if everything is working correctly, set a cache item.

	set foo 0 900 5
	hello

To retrieve the cache item.

	get foo

To exit the Telnet session.

	quit

For more information on using [Memcached Telnet commands](http://blog.elijaa.org/?post/2010/05/21/Memcached-telnet-command-summary).


### Invalidate All Cache Items

To flush the contents of your Memcached server. Useful in a development environment.

	echo 'flush_all' | nc localhost 11211
