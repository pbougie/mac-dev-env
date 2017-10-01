---
title: Command Line Tools
---

To compile our own software, we need to install the **Command Line Tools** from Apple. Alternatively, you can install **[Xcode](http://developer.apple.com/xcode/)** — Apple's complete development environment for macOS. Xcode is available as a free download from the [App Store](https://en.wikipedia.org/wiki/Mac_App_Store).

First, launch [Terminal](https://en.wikipedia.org/wiki/Terminal_(macOS)) from **Applications ➤ Utilities**.

Install the **Command Line Tools**. This will initiate the installer. Follow the on-screen instructions.

	xcode-select --install

Verify that you have successfully installed the **Command Line Tools**.

	xcode-select -p

This command displays the location where your developer tools are installed.

Once the developer tools are installed, please proceed to [create the required folder structure](/started-folders/).
