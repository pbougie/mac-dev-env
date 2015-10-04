---
title: Create the Folder Structure
---

We will be compiling and installing all the packages into `/usr/local`. You may want to verify if this folder already exists and its contents before proceeding. The folder `/usr/local` does exist on a fresh installation of OS X El Capitan — but not in previous versions of OS X.

Create the necessary folders.

	sudo mkdir -p /usr/local/src
	sudo mkdir -p /usr/local/var/log
	mkdir -p ~/Library/LaunchAgents

Modify the ownership of `/usr/local` and its children to make yourself the owner.

	sudo chown -R $LOGNAME:staff /usr/local

**Important:** Since OS X El Capitan, a new feature called [System Integrity Protection](https://en.wikipedia.org/wiki/System_Integrity_Protection) protects certain system processes, files and folders from being modified or tampered — including `/usr/local`. You may have to update this folder's permissions after system updates by issuing the following command.

	sudo chown $LOGNAME:staff /usr/local
