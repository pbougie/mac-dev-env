---
title: Command Line Tools
---

To compile our own software, we need to install the **Command Line Tools** from Apple. Alternatively, you can install **[Xcode](http://developer.apple.com/xcode/)** — Apple's complete development environment for OS X. Xcode is available as a free download from the [Mac App Store](http://www.apple.com/mac/app-store/).

First, launch [Terminal](http://en.wikipedia.org/wiki/Terminal_%28OS_X%29) from **Applications ➤ Utilities**.

Install the **Command Line Tools**. This will initiate the installer. Follow the on-screen instructions.

	xcode-select --install

To verify that the **Command Line Tools** are installed.

	xcode-select -p

This command displays the location where your developer tools are installed.

Once you have the developer tools installed, you are ready to begin installing your own custom built packages.