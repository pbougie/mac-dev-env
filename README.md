# [Compiling a Web Development Environment on macOS](https://mac-dev-env.patrickbougie.com/)


## Overview

Instructions for compiling/installing your own web development environment in macOS; primary packages include:

- Apache
- Git
- GraphicsMagick
- Memcached
- MongoDB
- MySQL
- Node.js
- PHP
- Redis
- Ruby

This website is built with [Middleman](https://middlemanapp.com/).


## Environment Variables

Environment variables required to build and deploy the website:

- **GAUGES**: Tracking code for [Gauges](https://get.gaug.es/).
- **GOOGLE_ANALYTICS**: Tracking code for [Google Analytics](https://google.com/analytics).


## Rake

Make sure the aforementioned environment variables are available before generating the website.

- Build website: `rake build`
- Deploy website to AWS: `rake deploy`
- Watch website for changes: `rake guard`
- Launch preview server: `rake preview`


# Message

To add a message at the top of any page, add a frontmatter variable named `message` to any Markdown source file.


---

© [Patrick Bougie](https://patrickbougie.com/).
All Rights Reserved.  
Please do not reproduce without written consent.
