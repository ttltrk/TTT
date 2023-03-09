

#### echo

```
codeally@da6e51fd166e:~/project$ echo hello terminal
hello terminal
codeally@da6e51fd166e:~/project$
```

#### pwd

```
codeally@da6e51fd166e:~/project$ pwd
/home/codeally/project
codeally@da6e51fd166e:~/project$
```

#### ls

```
codeally@da6e51fd166e:~/project$ ls
freeCodeCamp  learn-bash-by-building-a-boilerplate
codeally@da6e51fd166e:~/project$
```

#### cd

```
codeally@da6e51fd166e:~/project$ cd freeCodeCamp
codeally@da6e51fd166e:~/project/freeCodeCamp$
```

#### pwd

```
codeally@f3c7a03cf601:~/project/freeCodeCamp/test$ pwd
/home/codeally/project/freeCodeCamp/test
codeally@f3c7a03cf601:~/project/freeCodeCamp/test$
```

#### more

```
codeally@f3c7a03cf601:~/project/freeCodeCamp$ more package.json
{
  "name": "freecodecamp",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "programmatic-test": "mocha --config .mocharc.json",
    "test": "mocha --config .mocharc.json"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "mocha": "^7.2.0",
    "mocha-tap-reporter": "^0.1.3",
    "shell-quote": "^1.7.2"
  }
}
codeally@f3c7a03cf601:~/project/freeCodeCamp$

codeally@5eacbb904d9e:~/project/freeCodeCamp/node_modules/has$ more README.md
# has

> Object.prototype.hasOwnProperty.call shortcut

## Installation

```sh
npm install --save has
```

## Usage

```js
var has = require('has');

has({}, 'hasOwnProperty'); // false
has(Object.prototype, 'hasOwnProperty'); // true
```
codeally@5eacbb904d9e:~/project/freeCodeCamp/node_modules/has$

codeally@99d73b93a3f7:~/project/freeCodeCamp/node_modules/has/src$ more index.js
'use strict';

var bind = require('function-bind');

module.exports = bind.call(Function.call, Object.prototype.hasOwnProperty);
codeally@99d73b93a3f7:~/project/freeCodeCamp/node_modules/has/src$ 
```
