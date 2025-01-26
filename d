[1mdiff --git a/BackEnd/controllers/homeController.js b/BackEnd/controllers/homeController.js[m
[1mindex 0c2e1e9..240a04a 100644[m
[1m--- a/BackEnd/controllers/homeController.js[m
[1m+++ b/BackEnd/controllers/homeController.js[m
[36m@@ -13,4 +13,12 @@[m [mexports.getHome = ((req, res) => {[m
 })[m
 [m
 exports.postHome = ((req, res) =>{[m
[32m+[m[41m    [m
[32m+[m[32m    const home = new homeModel()[m
[32m+[m[32m    const ola = home.ola()[m
[32m+[m
[32m+[m[32m    res.send(`[m
[32m+[m[32m        <h1> batendo na controller</h1>[m
[32m+[m[32m        <p> ${ola}</p>[m
[32m+[m[32m    `)[m
 })[m
[1mdiff --git a/BackEnd/index.js b/BackEnd/index.js[m
[1mindex 9dea4bd..951f4ce 100644[m
[1m--- a/BackEnd/index.js[m
[1m+++ b/BackEnd/index.js[m
[36m@@ -1,8 +1,10 @@[m
 const express = require('express')[m
 const app = express()[m
[32m+[m[32m// const cors = require("cors")[m
 [m
[31m-const homeRouter = require('./routes/home')[m
[32m+[m[32mconst homeRouter = require('./routes/homeRoutes')[m
 [m
[32m+[m[32m// app.use(cors)[m
 app.use(homeRouter)[m
 [m
 app.get('/', (req,res)=>{  //caminho, requisição, resposta[m
[1mdiff --git a/BackEnd/package-lock.json b/BackEnd/package-lock.json[m
[1mindex daf6367..b85aed9 100644[m
[1m--- a/BackEnd/package-lock.json[m
[1m+++ b/BackEnd/package-lock.json[m
[36m@@ -9,7 +9,10 @@[m
       "version": "1.0.0",[m
       "license": "ISC",[m
       "dependencies": {[m
[31m-        "express": "^4.21.2"[m
[32m+[m[32m        "cors": "^2.8.5",[m
[32m+[m[32m        "express": "^4.21.2",[m
[32m+[m[32m        "mysql": "^2.18.1",[m
[32m+[m[32m        "nodemon": "^3.1.9"[m
       }[m
     },[m
     "node_modules/accepts": {[m
[36m@@ -25,12 +28,52 @@[m
         "node": ">= 0.6"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/anymatch": {[m
[32m+[m[32m      "version": "3.1.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/anymatch/-/anymatch-3.1.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-KMReFUr0B4t+D+OBkjR3KYqvocp2XaSzO55UcB6mgQMd3KbcE+mWTyvVV7D/zsdEbNnV6acZUutkiHQXvTr1Rw==",[m
[32m+[m[32m      "license": "ISC",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "normalize-path": "^3.0.0",[m
[32m+[m[32m        "picomatch": "^2.0.4"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/array-flatten": {[m
       "version": "1.1.1",[m
       "resolved": "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz",[m
       "integrity": "sha512-PCVAQswWemu6UdxsDFFX/+gVeYqKAod3D3UVm91jHwynguOwAvYPhx8nNlM++NqRcK6CxxpUafjmhIdKiHibqg==",[m
       "license": "MIT"[m
     },[m
[32m+[m[32m    "node_modules/balanced-match": {[m
[32m+[m[32m      "version": "1.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-3oSeUO0TMV67hN1AmbXsK4yaqU7tjiHlbxRDZOpH0KW9+CeX4bRAaX0Anxt0tx2MrpRpWwQaPwIlISEJhYU5Pw==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/bignumber.js": {[m
[32m+[m[32m      "version": "9.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/bignumber.js/-/bignumber.js-9.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-t/OYhhJ2SD+YGBQcjY8GzzDHEk9f3nerxjtfa6tlMXfe7frs/WozhvCNoGvpM0P3bNf3Gq5ZRMlGr5f3r4/N8A==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": "*"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/binary-extensions": {[m
[32m+[m[32m      "version": "2.3.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/binary-extensions/-/binary-extensions-2.3.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-Ceh+7ox5qe7LJuLHoY0feh3pHuUDHAcRUeyL2VYghZwfpkNIy/+8Ocg0a3UuSoYzavmylwuLWQOf3hl0jjMMIw==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      },[m
[32m+[m[32m      "funding": {[m
[32m+[m[32m        "url": "https://github.com/sponsors/sindresorhus"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/body-parser": {[m
       "version": "1.20.3",[m
       "resolved": "https://registry.npmjs.org/body-parser/-/body-parser-1.20.3.tgz",[m
[36m@@ -55,6 +98,28 @@[m
         "npm": "1.2.8000 || >= 1.4.16"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/brace-expansion": {[m
[32m+[m[32m      "version": "1.1.11",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz",[m
[32m+[m[32m      "integrity": "sha512-iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "balanced-match": "^1.0.0",[m
[32m+[m[32m        "concat-map": "0.0.1"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/braces": {[m
[32m+[m[32m      "version": "3.0.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/braces/-/braces-3.0.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-yQbXgO/OSZVD2IsiLlro+7Hf6Q18EJrKSEsdoMzKePKXct3gvD8oLcOQdIzGupr5Fj+EDe8gO/lxc1BzfMpxvA==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "fill-range": "^7.1.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/bytes": {[m
       "version": "3.1.2",[m
       "resolved": "https://registry.npmjs.org/bytes/-/bytes-3.1.2.tgz",[m
[36m@@ -93,6 +158,36 @@[m
         "url": "https://github.com/sponsors/ljharb"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/chokidar": {[m
[32m+[m[32m      "version": "3.6.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/chokidar/-/chokidar-3.6.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-7VT13fmjotKpGipCW9JEQAusEPE+Ei8nl6/g4FBAmIm0GOOLMua9NDDo/DWp0ZAxCr3cPq5ZpBqmPAQgDda2Pw==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "anymatch": "~3.1.2",[m
[32m+[m[32m        "braces": "~3.0.2",[m
[32m+[m[32m        "glob-parent": "~5.1.2",[m
[32m+[m[32m        "is-binary-path": "~2.1.0",[m
[32m+[m[32m        "is-glob": "~4.0.1",[m
[32m+[m[32m        "normalize-path": "~3.0.0",[m
[32m+[m[32m        "readdirp": "~3.6.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 8.10.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "funding": {[m
[32m+[m[32m        "url": "https://paulmillr.com/funding/"[m
[32m+[m[32m      },[m
[32m+[m[32m      "optionalDependencies": {[m
[32m+[m[32m        "fsevents": "~2.3.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/concat-map": {[m
[32m+[m[32m      "version": "0.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-/Srv4dswyQNBfohGpz9o6Yb3Gz3SrUDqBH5rTuhGR7ahtlbYKnVxw2bCFMRljaA7EXHaXZ8wsHdodFvbkhKmqg==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
     "node_modules/content-disposition": {[m
       "version": "0.5.4",[m
       "resolved": "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.4.tgz",[m
[36m@@ -129,6 +224,25 @@[m
       "integrity": "sha512-QADzlaHc8icV8I7vbaJXJwod9HWYp8uCqf1xa4OfNu1T7JVxQIrUgOWtHdNDtPiywmFbiS12VjotIXLrKM3orQ==",[m
       "license": "MIT"[m
     },[m
[32m+[m[32m    "node_modules/core-util-is": {[m
[32m+[m[32m      "version": "1.0.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-ZQBvi1DcpJ4GDqanjucZ2Hj3wEO5pZDS89BWbkcrvdxksJorwUDDZamX9ldFkp9aw2lmBDLgkObEA4DWNJ9FYQ==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/cors": {[m
[32m+[m[32m      "version": "2.8.5",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/cors/-/cors-2.8.5.tgz",[m
[32m+[m[32m      "integrity": "sha512-KIHbLJqu73RGr/hnbrO9uBeixNGuvSQjul/jdFvS/KFSIH1hWVd1ng7zOHx+YrEfInLG7q4n6GHQ9cDtxv/P6g==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "object-assign": "^4",[m
[32m+[m[32m        "vary": "^1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/debug": {[m
       "version": "2.6.9",[m
       "resolved": "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz",[m
[36m@@ -277,6 +391,18 @@[m
         "url": "https://opencollective.com/express"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/fill-range": {[m
[32m+[m[32m      "version": "7.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/fill-range/-/fill-range-7.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-YsGpe3WHLK8ZYi4tWDg2Jy3ebRz2rXowDxnld4bkQB00cc/1Zw9AWnC0i9ztDJitivtQvaI9KaLyKrc+hBW0yg==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "to-regex-range": "^5.0.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/finalhandler": {[m
       "version": "1.3.1",[m
       "resolved": "https://registry.npmjs.org/finalhandler/-/finalhandler-1.3.1.tgz",[m
[36m@@ -313,6 +439,20 @@[m
         "node": ">= 0.6"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/fsevents": {[m
[32m+[m[32m      "version": "2.3.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/fsevents/-/fsevents-2.3.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-5xoDfX+fL7faATnagmWPpbFtwh/R77WmMMqqHGS65C3vvB0YHrgF+B1YmZ3441tMj5n63k0212XNoJwzlhffQw==",[m
[32m+[m[32m      "hasInstallScript": true,[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "optional": true,[m
[32m+[m[32m      "os": [[m
[32m+[m[32m        "darwin"[m
[32m+[m[32m      ],[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": "^8.16.0 || ^10.6.0 || >=11.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/function-bind": {[m
       "version": "1.1.2",[m
       "resolved": "https://registry.npmjs.org/function-bind/-/function-bind-1.1.2.tgz",[m
[36m@@ -359,6 +499,18 @@[m
         "node": ">= 0.4"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/glob-parent": {[m
[32m+[m[32m      "version": "5.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/glob-parent/-/glob-parent-5.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-AOIgSQCepiJYwP3ARnGx+5VnTu2HBYdzbGP45eLw1vr3zB3vZLeyed1sC9hnbcOc9/SrMyM5RPQrkGz4aS9Zow==",[m
[32m+[m[32m      "license": "ISC",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "is-glob": "^4.0.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/gopd": {[m
       "version": "1.2.0",[m
       "resolved": "https://registry.npmjs.org/gopd/-/gopd-1.2.0.tgz",[m
[36m@@ -371,6 +523,15 @@[m
         "url": "https://github.com/sponsors/ljharb"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/has-flag": {[m
[32m+[m[32m      "version": "3.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/has-flag/-/has-flag-3.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-sKJf1+ceQBr4SMkvQnBDNDtf4TXpVhVGateu0t918bl30FnbE2m4vNLX+VWe/dpjlb+HugGYzW7uQXH98HPEYw==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/has-symbols": {[m
       "version": "1.1.0",[m
       "resolved": "https://registry.npmjs.org/has-symbols/-/has-symbols-1.1.0.tgz",[m
[36m@@ -423,6 +584,12 @@[m
         "node": ">=0.10.0"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/ignore-by-default": {[m
[32m+[m[32m      "version": "1.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ignore-by-default/-/ignore-by-default-1.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-Ius2VYcGNk7T90CppJqcIkS5ooHUZyIQK+ClZfMfMNFEF9VSE73Fq+906u/CWu92x4gzZMWOwfFYckPObzdEbA==",[m
[32m+[m[32m      "license": "ISC"[m
[32m+[m[32m    },[m
     "node_modules/inherits": {[m
       "version": "2.0.4",[m
       "resolved": "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz",[m
[36m@@ -438,6 +605,54 @@[m
         "node": ">= 0.10"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/is-binary-path": {[m
[32m+[m[32m      "version": "2.1.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/is-binary-path/-/is-binary-path-2.1.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-ZMERYes6pDydyuGidse7OsHxtbI7WVeUEozgR/g7rd0xUimYNlvZRE/K2MgZTjWy725IfelLeVcEM97mmtRGXw==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "binary-extensions": "^2.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/is-extglob": {[m
[32m+[m[32m      "version": "2.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/is-extglob/-/is-extglob-2.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-SbKbANkN603Vi4jEZv49LeVJMn4yGwsbzZworEoyEiutsN3nJYdbO36zfhGJ6QEDpOZIFkDtnq5JRxmvl3jsoQ==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=0.10.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/is-glob": {[m
[32m+[m[32m      "version": "4.0.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-4.0.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-xelSayHH36ZgE7ZWhli7pW34hNbNl8Ojv5KVmkJD4hBdD3th8Tfk9vYasLM+mXWOZhFkgZfxhLSnrwRr4elSSg==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "is-extglob": "^2.1.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=0.10.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/is-number": {[m
[32m+[m[32m      "version": "7.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/is-number/-/is-number-7.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-41Cifkg6e8TylSpdtTpeLVMqvSBEVzTttHvERD741+pnZ8ANv0004MRL43QKPDlK9cGvNp6NZWZUBlbGXYxxng==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=0.12.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/isarray": {[m
[32m+[m[32m      "version": "1.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-VLghIWNM6ELQzo7zwmcg0NmTVyWKYjvIeM83yjp0wRDTmUnrM678fQbcKBo6n2CJEF0szoG//ytg+TKla89ALQ==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
     "node_modules/math-intrinsics": {[m
       "version": "1.1.0",[m
       "resolved": "https://registry.npmjs.org/math-intrinsics/-/math-intrinsics-1.1.0.tgz",[m
[36m@@ -507,12 +722,45 @@[m
         "node": ">= 0.6"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/minimatch": {[m
[32m+[m[32m      "version": "3.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/minimatch/-/minimatch-3.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-J7p63hRiAjw1NDEww1W7i37+ByIrOWO5XQQAzZ3VOcL0PNybwpfmV/N05zFAzwQ9USyEcX6t3UO+K5aqBQOIHw==",[m
[32m+[m[32m      "license": "ISC",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "brace-expansion": "^1.1.7"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": "*"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/ms": {[m
       "version": "2.0.0",[m
       "resolved": "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz",[m
       "integrity": "sha512-Tpp60P6IUJDTuOq/5Z8cdskzJujfwqfOTkrwIwj7IRISpnkJnT6SyJ4PCPnGMoFjC9ddhal5KVIYtAt97ix05A==",[m
       "license": "MIT"[m
     },[m
[32m+[m[32m    "node_modules/mysql": {[m
[32m+[m[32m      "version": "2.18.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/mysql/-/mysql-2.18.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-Bca+gk2YWmqp2Uf6k5NFEurwY/0td0cpebAucFpY/3jhrwrVGuxU2uQFCHjU19SJfje0yQvi+rVWdq78hR5lig==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "bignumber.js": "9.0.0",[m
[32m+[m[32m        "readable-stream": "2.3.7",[m
[32m+[m[32m        "safe-buffer": "5.1.2",[m
[32m+[m[32m        "sqlstring": "2.3.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/mysql/node_modules/safe-buffer": {[m
[32m+[m[32m      "version": "5.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
     "node_modules/negotiator": {[m
       "version": "0.6.3",[m
       "resolved": "https://registry.npmjs.org/negotiator/-/negotiator-0.6.3.tgz",[m
[36m@@ -522,6 +770,75 @@[m
         "node": ">= 0.6"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/nodemon": {[m
[32m+[m[32m      "version": "3.1.9",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/nodemon/-/nodemon-3.1.9.tgz",[m
[32m+[m[32m      "integrity": "sha512-hdr1oIb2p6ZSxu3PB2JWWYS7ZQ0qvaZsc3hK8DR8f02kRzc8rjYmxAIvdz+aYC+8F2IjNaB7HMcSDg8nQpJxyg==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "chokidar": "^3.5.2",[m
[32m+[m[32m        "debug": "^4",[m
[32m+[m[32m        "ignore-by-default": "^1.0.1",[m
[32m+[m[32m        "minimatch": "^3.1.2",[m
[32m+[m[32m        "pstree.remy": "^1.1.8",[m
[32m+[m[32m        "semver": "^7.5.3",[m
[32m+[m[32m        "simple-update-notifier": "^2.0.0",[m
[32m+[m[32m        "supports-color": "^5.5.0",[m
[32m+[m[32m        "touch": "^3.1.0",[m
[32m+[m[32m        "undefsafe": "^2.0.5"[m
[32m+[m[32m      },[m
[32m+[m[32m      "bin": {[m
[32m+[m[32m        "nodemon": "bin/nodemon.js"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10"[m
[32m+[m[32m      },[m
[32m+[m[32m      "funding": {[m
[32m+[m[32m        "type": "opencollective",[m
[32m+[m[32m        "url": "https://opencollective.com/nodemon"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/nodemon/node_modules/debug": {[m
[32m+[m[32m      "version": "4.4.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/debug/-/debug-4.4.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-6WTZ/IxCY/T6BALoZHaE4ctp9xm+Z5kY/pzYaCHRFeyVhojxlrm+46y68HA6hr0TcwEssoxNiDEUJQjfPZ/RYA==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "ms": "^2.1.3"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "peerDependenciesMeta": {[m
[32m+[m[32m        "supports-color": {[m
[32m+[m[32m          "optional": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/nodemon/node_modules/ms": {[m
[32m+[m[32m      "version": "2.1.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-6FlzubTLZG3J2a/NVCAleEhjzq5oxgHyaCU9yYXvcLsvoVaHJq/s5xXI6/XXP6tz7R9xAOtHnSO/tXtF3WRTlA==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/normalize-path": {[m
[32m+[m[32m      "version": "3.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/normalize-path/-/normalize-path-3.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=0.10.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/object-assign": {[m
[32m+[m[32m      "version": "4.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-rJgTQnkUnH1sFw8yT6VSU3zD3sWmu6sZhIseY8VX+GRu3P6F7Fu+JNDoXfklElbLJSnc3FUQHVe4cU5hj+BcUg==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=0.10.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/object-inspect": {[m
       "version": "1.13.3",[m
       "resolved": "https://registry.npmjs.org/object-inspect/-/object-inspect-1.13.3.tgz",[m
[36m@@ -561,6 +878,24 @@[m
       "integrity": "sha512-RA1GjUVMnvYFxuqovrEqZoxxW5NUZqbwKtYz/Tt7nXerk0LbLblQmrsgdeOxV5SFHf0UDggjS/bSeOZwt1pmEQ==",[m
       "license": "MIT"[m
     },[m
[32m+[m[32m    "node_modules/picomatch": {[m
[32m+[m[32m      "version": "2.3.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/picomatch/-/picomatch-2.3.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-JU3teHTNjmE2VCGFzuY8EXzCDVwEqB2a8fsIvwaStHhAWJEeVd1o1QD80CU6+ZdEXXSLbSsuLwJjkCBWqRQUVA==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8.6"[m
[32m+[m[32m      },[m
[32m+[m[32m      "funding": {[m
[32m+[m[32m        "url": "https://github.com/sponsors/jonschlinkert"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/process-nextick-args": {[m
[32m+[m[32m      "version": "2.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-2.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-3ouUOpQhtgrbOa17J7+uxOTpITYWaGP7/AhoR3+A+/1e9skrzelGi/dXzEYyvbxubEF6Wn2ypscTKiKJFFn1ag==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
     "node_modules/proxy-addr": {[m
       "version": "2.0.7",[m
       "resolved": "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.7.tgz",[m
[36m@@ -574,6 +909,12 @@[m
         "node": ">= 0.10"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/pstree.remy": {[m
[32m+[m[32m      "version": "1.1.8",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/pstree.remy/-/pstree.remy-1.1.8.tgz",[m
[32m+[m[32m      "integrity": "sha512-77DZwxQmxKnu3aR542U+X8FypNzbfJ+C5XQDk3uWjWxn6151aIMGthWYRXTqT1E5oJvg+ljaa2OJi+VfvCOQ8w==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
     "node_modules/qs": {[m
       "version": "6.13.0",[m
       "resolved": "https://registry.npmjs.org/qs/-/qs-6.13.0.tgz",[m
[36m@@ -613,6 +954,39 @@[m
         "node": ">= 0.8"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/readable-stream": {[m
[32m+[m[32m      "version": "2.3.7",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.7.tgz",[m
[32m+[m[32m      "integrity": "sha512-Ebho8K4jIbHAxnuxi7o42OrZgF/ZTNcsZj6nRKyUmkhLFq8CHItp/fy6hQZuZmP/n3yZ9VBUbp4zz/mX8hmYPw==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "core-util-is": "~1.0.0",[m
[32m+[m[32m        "inherits": "~2.0.3",[m
[32m+[m[32m        "isarray": "~1.0.0",[m
[32m+[m[32m        "process-nextick-args": "~2.0.0",[m
[32m+[m[32m        "safe-buffer": "~5.1.1",[m
[32m+[m[32m        "string_decoder": "~1.1.1",[m
[32m+[m[32m        "util-deprecate": "~1.0.1"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/readable-stream/node_modules/safe-buffer": {[m
[32m+[m[32m      "version": "5.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/readdirp": {[m
[32m+[m[32m      "version": "3.6.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/readdirp/-/readdirp-3.6.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-hOS089on8RduqdbhvQ5Z37A0ESjsqz6qnRcffsMU3495FuTdqSm+7bhJ29JvIOsBDEEnan5DPu9t3To9VRlMzA==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "picomatch": "^2.2.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8.10.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/safe-buffer": {[m
       "version": "5.2.1",[m
       "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz",[m
[36m@@ -639,6 +1013,18 @@[m
       "integrity": "sha512-YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==",[m
       "license": "MIT"[m
     },[m
[32m+[m[32m    "node_modules/semver": {[m
[32m+[m[32m      "version": "7.6.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/semver/-/semver-7.6.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-oVekP1cKtI+CTDvHWYFUcMtsK/00wmAEfyqKfNdARm8u1wNVhSgaX7A8d4UuIlUI5e84iEwOhs7ZPYRmzU9U6A==",[m
[32m+[m[32m      "license": "ISC",[m
[32m+[m[32m      "bin": {[m
[32m+[m[32m        "semver": "bin/semver.js"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/send": {[m
       "version": "0.19.0",[m
       "resolved": "https://registry.npmjs.org/send/-/send-0.19.0.tgz",[m
[36m@@ -771,6 +1157,27 @@[m
         "url": "https://github.com/sponsors/ljharb"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/simple-update-notifier": {[m
[32m+[m[32m      "version": "2.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/simple-update-notifier/-/simple-update-notifier-2.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-a2B9Y0KlNXl9u/vsW6sTIu9vGEpfKu2wRV6l1H3XEas/0gUIzGzBoP/IouTcUQbm9JWZLH3COxyn03TYlFax6w==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "semver": "^7.5.3"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/sqlstring": {[m
[32m+[m[32m      "version": "2.3.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/sqlstring/-/sqlstring-2.3.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-ooAzh/7dxIG5+uDik1z/Rd1vli0+38izZhGzSa34FwR7IbelPWCCKSNIl8jlL/F7ERvy8CB2jNeM1E9i9mXMAQ==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/statuses": {[m
       "version": "2.0.1",[m
       "resolved": "https://registry.npmjs.org/statuses/-/statuses-2.0.1.tgz",[m
[36m@@ -780,6 +1187,45 @@[m
         "node": ">= 0.8"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/string_decoder": {[m
[32m+[m[32m      "version": "1.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-n/ShnvDi6FHbbVfviro+WojiFzv+s8MPMHBczVePfUpDJLwoLT0ht1l4YwBCbi8pJAveEEdnkHyPyTP/mzRfwg==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "safe-buffer": "~5.1.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/string_decoder/node_modules/safe-buffer": {[m
[32m+[m[32m      "version": "5.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/supports-color": {[m
[32m+[m[32m      "version": "5.5.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-5.5.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-QjVjwdXIt408MIiAqCX4oUKsgU2EqAGzs2Ppkm4aQYbjm+ZEWEcW4SfFNTr4uMNZma0ey4f5lgLrkB0aX0QMow==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "has-flag": "^3.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/to-regex-range": {[m
[32m+[m[32m      "version": "5.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/to-regex-range/-/to-regex-range-5.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-65P7iz6X5yEr1cwcgvQxbbIw7Uk3gOy5dIdtZ4rDveLqhrdJP+Li/Hx6tyK0NEb+2GCyneCMJiGqrADCSNk8sQ==",[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "is-number": "^7.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=8.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/toidentifier": {[m
       "version": "1.0.1",[m
       "resolved": "https://registry.npmjs.org/toidentifier/-/toidentifier-1.0.1.tgz",[m
[36m@@ -789,6 +1235,15 @@[m
         "node": ">=0.6"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/touch": {[m
[32m+[m[32m      "version": "3.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/touch/-/touch-3.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-r0eojU4bI8MnHr8c5bNo7lJDdI2qXlWWJk6a9EAFG7vbhTjElYhBVS3/miuE0uOuoLdb8Mc/rVfsmm6eo5o9GA==",[m
[32m+[m[32m      "license": "ISC",[m
[32m+[m[32m      "bin": {[m
[32m+[m[32m        "nodetouch": "bin/nodetouch.js"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/type-is": {[m
       "version": "1.6.18",[m
       "resolved": "https://registry.npmjs.org/type-is/-/type-is-1.6.18.tgz",[m
[36m@@ -802,6 +1257,12 @@[m
         "node": ">= 0.6"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/undefsafe": {[m
[32m+[m[32m      "version": "2.0.5",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/undefsafe/-/undefsafe-2.0.5.tgz",[m
[32m+[m[32m      "integrity": "sha512-WxONCrssBM8TSPRqN5EmsjVrsv4A8X12J4ArBiiayv3DyyG3ZlIg6yysuuSYdZsVz3TKcTg2fd//Ujd4CHV1iA==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
     "node_modules/unpipe": {[m
       "version": "1.0.0",[m
       "resolved": "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz",[m
[36m@@ -811,6 +1272,12 @@[m
         "node": ">= 0.8"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/util-deprecate": {[m
[32m+[m[32m      "version": "1.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-EPD5q1uXyFxJpCrLnCc1nHnq3gOa6DZBocAIiI2TaSCA7VCJ1UJDMagCzIkXNsUYfD1daK//LTEQ8xiIbrHtcw==",[m
[32m+[m[32m      "license": "MIT"[m
[32m+[m[32m    },[m
     "node_modules/utils-merge": {[m
       "version": "1.0.1",[m
       "resolved": "https://registry.npmjs.org/utils-merge/-/utils-merge-1.0.1.tgz",[m
[1mdiff --git a/BackEnd/package.json b/BackEnd/package.json[m
[1mindex ae1b13c..ee4a885 100644[m
[1m--- a/BackEnd/package.json[m
[1m+++ b/BackEnd/package.json[m
[36m@@ -4,14 +4,15 @@[m
   "main": "index.js",[m
   "scripts": {[m
     "start": "node index.js",[m
[31m-    "dev" : "nodemon index.js"[m
[31m-    [m
[32m+[m[32m    "dev": "nodemon index.js"[m
   },[m
   "author": "",[m
   "license": "ISC",[m
   "description": "",[m
   "dependencies": {[m
[32m+[m[32m    "cors": "^2.8.5",[m
     "express": "^4.21.2",[m
[31m-    "nodemon" : "^3.1.9" [m
[32m+[m[32m    "mysql": "^2.18.1",[m
[32m+[m[32m    "nodemon": "^3.1.9"[m
   }[m
 }[m
[1mdiff --git a/BackEnd/routes/home.js b/BackEnd/routes/home.js[m
[1mdeleted file mode 100644[m
[1mindex 2ce7fc2..0000000[m
[1m--- a/BackEnd/routes/home.js[m
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-const express = require('express')[m
[31m-const router =  express.Router()[m
[31m-const homeController = require('../controllers/homeController')[m
[31m-[m
[31m-router.get('/home', homeController.getHome)[m
[31m-[m
[31m-[m
[31m-module.exports = router[m
\ No newline at end of file[m
[1mdiff --git a/README.md b/README.md[m
[1mindex 0686afc..ab9d504 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -4,7 +4,8 @@[m [mTeste de programação[m
 ## O que foi feito de inicio [m
       $ npm install express --save[m
       $ npm install -g nodemon[m
[31m-   [m
[32m+[m[32m      $ npm i cors[m[41m   [m
[32m+[m[32m      $ npm i mysql[m
 [m
 ## Linguagem usadas[m
 [m
