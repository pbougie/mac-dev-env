# [Compiling a Web Development Environment on Mac OS X](http://mac-dev-env.patrickbougie.com/)


## Overview

Instructions for compiling/installing your own web development environment in OS X; primary packages include:

- Apache
- Git
- GraphicsMagick
- Memcached
- MongoDB
- MySQL
- Node.js
- PHP
- PostgreSQL
- Redis
- Ruby
- SQLite

This website is built with [Middleman](http://middlemanapp.com/).


## Environment Variables

Environment variables required to build and deploy the website:

- **GAUGES**: Tracking code for [Gauges](http://get.gaug.es/).
- **GOOGLE_ANALYTICS**: Tracking code for [Google Analytics](http://www.google.com/analytics/).
- **RSYNC_USER**: Username for deployment via [rsync](http://rsync.samba.org/).
- **RSYNC_HOST**: Hostname for deployment via [rsync](http://rsync.samba.org/).
- **RSYNC_PATH**: Pathname for deployment via [rsync](http://rsync.samba.org/).


## Rake

Make sure the aforementioned environment variables are available before generating the website.

- Launch the preview server: `rake preview`
- Build the website: `rake build`
- Deploy the website: `rake deploy`
- Build and Deploy the website: `rake release`


# Message

To add a message at the top of any page, add a frontmatter variable named `message` to any Markdown source file.


---

© [Patrick Bougie](http://patrickbougie.com/).
All Rights Reserved.
Please do not reproduce without written consent.
