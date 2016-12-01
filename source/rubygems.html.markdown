---
title: RubyGems
---

> **Links:** [Homepage](http://rubygems.org/)  
> **Dependencies:** [Ruby](/ruby/)  

**RubyGems** ships with Ruby 1.9+. There is nothing to install. For prior versions of Ruby, see package instructions to install RubyGems.


### Upgrade

To upgrade RubyGems.

	gem update --system


### Documentation

All gems have documentation that is generated when a gem is installed. To start the documentation web server.

	gem server

To view the documentation, point your web browser to [`http://localhost:8808/`](http://localhost:8808/).


### Automatically Start the Documentation Server at Boot

Create a configuration file for [Launchd](http://en.wikipedia.org/wiki/Launchd).

	nano ~/Library/LaunchAgents/org.rubygems.gem.plist

Copy and paste the following text into the aforementioned file. Make sure you update the path in the configuration below.

	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
	<plist version="1.0">
	  <dict>
	    <key>Label</key>
	    <string>org.rubygems.gem</string>

	    <key>ProgramArguments</key>
	    <array>
	      <string>/usr/local/ruby-*RUBY-VERSION*/bin/gem</string>
	      <string>server</string>
	    </array>

	    <key>StandardOutPath</key>
	    <string>/usr/local/var/log/rubygems.log</string>
	    <key>StandardErrorPath</key>
	    <string>/usr/local/var/log/rubygems.log</string>

	    <key>RunAtLoad</key>
	    <true/>
	    <key>KeepAlive</key>
	    <true/>
	  </dict>
	</plist>

Register with Launchd and start the server.

	launchctl load ~/Library/LaunchAgents/org.rubygems.gem.plist

Deregister with Launchd.

	launchctl unload ~/Library/LaunchAgents/org.rubygems.gem.plist
