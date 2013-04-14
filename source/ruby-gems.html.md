---
title: RubyGems
---


> **Links:** [Homepage](http://rubygems.org/)  
> **Dependencies:** [Ruby](/ruby)  


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

	sudo nano /Library/LaunchDaemons/org.rubygems.gem.plist

Copy and paste the following text into the aforementioned file. The path to the `gem` executable cannot use the `rbenv` shim binary because the environment in your startup script never gets set up. Pick your primary version of Ruby and use an absolute path to the `gem` executable. Make sure you update the path in the configuration below.

	<?xml version="1.0" encoding="UTF-8"?>
	<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
	<plist version="1.0">
	<dict>
		<key>Label</key>
		<string>org.rubygems.gem</string>
		<key>ProgramArguments</key>
		<array>
			<string>/usr/local/rbenv/versions/*RUBY-VERSION*/bin/gem</string>
			<string>server</string>
			<string>--daemon</string>
		</array>
		<key>RunAtLoad</key>
		<true/>
		<key>KeepAlive</key>
		<true/>
	</dict>
	</plist>

Register the configuration file with Launchd and start the server.

	sudo launchctl load -w /Library/LaunchDaemons/org.rubygems.gem.plist

Stop the server and deregister with Launchd. This action stops the server immediately and at boot.

	sudo launchctl unload -w /Library/LaunchDaemons/org.rubygems.gem.plist

