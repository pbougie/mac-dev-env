---
layout: default
title: Create the Folder Structure
---

We will be compiling and installing all the packages into `/usr/local`. You may want to verify if these folders already exist and their contents before proceeding. These folders do not exist on a fresh installation of Lion.

Create the necessary folders — `/usr/local` and `/usr/local/src`.

	sudo mkdir -p /usr/local/src

Modify the permissions to the folder `/usr/local/src` to provide full read and write access without having to use **[sudo](http://en.wikipedia.org/wiki/Sudo)**.

	sudo chmod 777 /usr/local/src
