# [Compiling a Web Development Environment on Mac OS X](http://mac-dev-env.patrickbougie.com/)

## Overview

Insctuctions for compiling your own web development environment in OS X; primary packages include:

- Apache
- Git
- MongoDB
- MySQL
- PHP
- Ruby
- SQLite


## Environment Variables

Environment variables required to build and deploy the site:

- **GAUGES**: Tracking code for [Gauges](http://get.gaug.es/).
- **GOOGLE_ANALYTICS**: Tracking code for [Google Analytics](http://www.google.com/analytics/).
- **RSYNC_USER**: Username for deployment via [rsync](http://rsync.samba.org/).
- **RSYNC_HOST**: Hostname for deployment via [rsync](http://rsync.samba.org/).
- **RSYNC_PATH**: Pathname for deployment via [rsync](http://rsync.samba.org/).


## Build/Deploy

Make sure the environment variables are available before proceeding.

- To build the static site: `bundle exec middleman build --clean`
- To deploy via [rsync](http://rsync.samba.org/): `bundle exec middleman deploy`


---
© 2011–2013 [Patrick Bougie](http://patrickbougie.com/). All Rights Reserved.
Please do not reproduce without written consent.