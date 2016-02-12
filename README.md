# Material APEX
[![Build Status](https://travis-ci.org/vincentmorneau/material-apex.svg?branch=master)](https://travis-ci.org/vincentmorneau/material-apex)
[![Dependency Status](https://david-dm.org/vincentmorneau/material-apex.svg)](https://david-dm.org/vincentmorneau/material-apex)

This is a Material Design Theme for Oracle APEX 5.

[See demo](https://apex.oracle.com/pls/apex/f?p=12192)

## Project Sponsors
Thanks to [Insum Solutions](http://insum.ca/) for sponsoring this project.

## Changelog
See [`CHANGELOG.md`](CHANGELOG.md) for details.

## Install
- **Option 1) Application Import** - *Best for new application*
    - Import the APEX application [demo-app.sql](apex/demo-app.sql) in your workspace.
- **Option 2) Theme Import** - *Best for upgrading existing application*
    - Import the Theme [theme-export.sql](apex/theme-export.sql) in your existing application.
    - Configure Application Substitution Strings
        - `PATH`: `#THEME_IMAGES#`
    - Configure Page 0
        - See [documentation](docs/page-0.md)
- **Option 3) Manual compile** - *Best for customizing the theme*
    - See [documentation](docs/manual-install.md)

---

Inspired by http://materializecss.com/
