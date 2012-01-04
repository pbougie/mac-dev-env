---
layout: default
title: Create the Folder Structure
---

We will be compiling and installing all the packages into `/usr/local`. You may want to verify if these folders already exist and their contents before proceeding. These folders do not exist on a fresh installation of Mac OS X.

Create the necessary folders — `/usr/local` and `/usr/local/src`.

	sudo mkdir -p /usr/local/src

Modify the ownership to yourself for the folder `/usr/local` and its children.

	sudo chown -R $LOGNAME:staff /usr/local/
