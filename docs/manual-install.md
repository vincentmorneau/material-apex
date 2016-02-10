- Install Material APEX
```bash
git clone https://github.com/vincentmorneau/material-apex.git
cd material-apex
npm install
```
- Install APEX Front-End Boost
```bash
git clone https://github.com/OraOpenSource/apex-frontend-boost.git
cd apex-frontend-boost
npm install
```
- Add the project to APEX Front-End Boost's `config.json`  
```json
{
    "material-apex": {
        "appURL": "https://apex.oracle.com/pls/apex/f?p=12192",
        "srcFolder": "../material-apex/src",
        "distFolder": "../material-apex/dist",
        "sass": {
            "enabled": true,
            "includePath": "../material-apex/node_modules/materialize-css/sass"
        },
        "javascriptConcat": {
            "enabled": false
        }
    }
}
```
- Run the project  
```bash
npm start -- --project=material-apex
```
