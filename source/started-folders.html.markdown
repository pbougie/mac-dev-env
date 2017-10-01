---
title: Create the Folder Structure
---

The packages will be installed in `/usr/local/mac-dev-env`. This is different from previous versions of the guide so you may have to make some adjustments.

Create the necessary folders.

	sudo mkdir -p /usr/local/bin
	sudo mkdir -p /usr/local/mac-dev-env
	sudo mkdir -p /usr/local/src
	sudo mkdir -p /usr/local/var/log
	mkdir -p ~/Library/LaunchAgents

Since macOS High Sierra, a security feature called [System Integrity Protection](https://en.wikipedia.org/wiki/System_Integrity_Protection) prevents us from modifying the owner and/or group on `/usr/local/`.

Therefore, we modify the permissions of the sub-folders.

	sudo chown -R $(whoami):staff /usr/local/bin
	sudo chown -R $(whoami):staff /usr/local/mac-dev-env
	sudo chown -R $(whoami):staff /usr/local/src
	sudo chown -R $(whoami):staff /usr/local/var
