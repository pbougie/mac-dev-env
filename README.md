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


## Install

- Install [Ruby](https://www.ruby-lang.org/) (if missing)
- Install gems : `bundle install --path .bundle`


## Rake

Make sure the aforementioned environment variables are available before generating the website.

- Build website: `bundle exec rake build`
- Watch website for changes: `bundle exec rake guard`
- Launch preview server: `bundle exec rake preview`


## Deploy

Push to **GitHub** to deploy to **[GitHub Pages](https://pages.github.com/)**.

- Build: `GAUGES=<site-id> bundle exec rake build` (replace with Gauge’s site ID.)
- Stage: `git add .` 
- Commit: `git commit -m "Build website for GitHub Pages"`
- Deploy: `git push`


# Message

To add a message at the top of any page, add a frontmatter variable named `message` to any Markdown source file.


---

© [Patrick Bougie](https://patrickbougie.com/).
All Rights Reserved.  
Please do not reproduce without written consent.
