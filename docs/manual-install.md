# Manual Install

### Install APEX Front-End Boost

To build this project, we've used [APEX Front-End Boost](http://github.oraopensource.com/apex-frontend-boost/). On the official website, you can find detailed documentation on how to install and configure the build tool.

### Install Material APEX Source Files
```bash
git clone https://github.com/vincentmorneau/material-apex.git
cd material-apex
npm install
```

### Configure the material-apex project
Add the project to APEX Front-End Boost's `config.json`  
```json
{
    "material-apex": {
        "appURL": "https://apex.oracle.com/pls/apex/f?p=12192",
        "srcFolder": "../material-apex/src",
        "distFolder": "../material-apex/dist",
        "header": {
            "enabled": true,
            "packageJsonPath": "../material-apex/"
        },
        "sass": {
            "enabled": true,
            "includePath": "../material-apex/node_modules/materialize-css/sass"
        },
        "rtl": {
            "enabled": true
        },
        "imageOptimization": {
           "enabled": true
        }
    }
}
```

You have got to replace the following:
- `appURL` with your own APEX application URL.
- `srcFolder`, `distFolder`, `sass.includePath` with your local path to the material-apex files

### Build the project
- On the command line, go to your APEX Front-End Boost directory.
- Execute:
```bash
npm start -- --project=material-apex
```
