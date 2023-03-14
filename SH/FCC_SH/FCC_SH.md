

#### echo

```
codeally@da6e51fd166e:~/project$ echo hello terminal
hello terminal
codeally@da6e51fd166e:~/project$

codeally@dd03ae60c37d:~/project/website$ echo hello website
hello website
codeally@dd03ae60c37d:~/project/website$
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

#### mkdir

```
codeally@99d73b93a3f7:~/project$ mkdir website
codeally@99d73b93a3f7:~/project$
```

#### touch (create new file)

```
codeally@dd03ae60c37d:~/project/website$ touch index.html
codeally@dd03ae60c37d:~/project/website$ ls -l
total 0
-rw-r--r-- 1 codeally strove 0 Mar 10 07:31 index.html
codeally@dd03ae60c37d:~/project/website$

codeally@dd03ae60c37d:~/project/website$ touch styles.css
codeally@dd03ae60c37d:~/project/website$ ls -l
total 0
-rw-r--r-- 1 codeally strove 0 Mar 10 07:31 index.html
-rw-r--r-- 1 codeally strove 0 Mar 10 07:32 styles.css
codeally@dd03ae60c37d:~/project/website$

codeally@dd03ae60c37d:~/project/website$ touch .gitignore
codeally@dd03ae60c37d:~/project/website$ ls -l
total 0
-rw-r--r-- 1 codeally strove 0 Mar 10 07:31 index.html
-rw-r--r-- 1 codeally strove 0 Mar 10 07:33 index.js
-rw-r--r-- 1 codeally strove 0 Mar 10 07:32 styles.css
codeally@dd03ae60c37d:~/project/website$

codeally@803128ad6a9b:~/project/website$ touch roboto.font
codeally@803128ad6a9b:~/project/website$ touch lato.font
codeally@803128ad6a9b:~/project/website$ touch menlo.font
codeally@803128ad6a9b:~/project/website$ ls -l
total 0
-rw-r--r-- 1 codeally strove 0 Mar 11 07:39 background.jpg
-rw-r--r-- 1 codeally strove 0 Mar 11 07:39 footer.jpeg
-rw-r--r-- 1 codeally strove 0 Mar 11 07:39 header.png
-rw-r--r-- 1 codeally strove 0 Mar 11 07:39 index.html
-rw-r--r-- 1 codeally strove 0 Mar 11 07:39 index.js
-rw-r--r-- 1 codeally strove 0 Mar 11 07:40 lato.font
-rw-r--r-- 1 codeally strove 0 Mar 11 07:40 menlo.font
-rw-r--r-- 1 codeally strove 0 Mar 11 07:40 roboto.font
-rw-r--r-- 1 codeally strove 0 Mar 11 07:39 styles.css
codeally@803128ad6a9b:~/project/website$

codeally@32dfb6c6adab:~/project/website$ touch CodeRoad.svg
codeally@32dfb6c6adab:~/project/website$ touch freeCodeCamp.svg
codeally@32dfb6c6adab:~/project/website$
codeally@32dfb6c6adab:~/project/website$ ls -l
total 0
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 background.jpg
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 CodeAlly.svg
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 CodeRoad.svg
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 footer.jpeg
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 freeCodeCamp.svg
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 header.png
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 index.html
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 index.js
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 lato.font
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 menlo.font
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 roboto.font
-rw-r--r-- 1 codeally strove 0 Mar 12 16:09 styles.css
codeally@32dfb6c6adab:~/project/website$
```

#### cp

```
codeally@32dfb6c6adab:~/project/website$ cp background.jpg images
codeally@32dfb6c6adab:~/project/website$
```

#### rm

```
codeally@32dfb6c6adab:~/project/website$ rm background.jpg
codeally@32dfb6c6adab:~/project/website$ ls -l
total 4
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 CodeAlly.svg
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 CodeRoad.svg
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 footer.jpeg
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 freeCodeCamp.svg
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 header.png
drwxr-sr-x 2 codeally strove 4096 Mar 12 16:11 images
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 index.html
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 index.js
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 lato.font
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 menlo.font
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 roboto.font
-rw-r--r-- 1 codeally strove    0 Mar 12 16:09 styles.css
codeally@32dfb6c6adab:~/project/website$
```

#### mv (rename)

```
codeally@4d482d2b03b2:~/project/website$ mv roboto.font roboto.woff
codeally@4d482d2b03b2:~/project/website$
codeally@4d482d2b03b2:~/project/website$ ls -l
total 4
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 CodeAlly.svg
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 CodeRoad.svg
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 freeCodeCamp.svg
drwxr-sr-x 2 codeally strove 4096 Mar 13 11:46 images
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 index.html
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 index.js
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 lato.font
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 menlo.font
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 roboto.woff
-rw-r--r-- 1 codeally strove    0 Mar 13 11:46 styles.css
codeally@4d482d2b03b2:~/project/website$
```

#### mv (move)

```
odeally@4d482d2b03b2:~/project/website$ mv roboto.woff fonts
codeally@4d482d2b03b2:~/project/website$
```

#### find (crosscheck the whole tree in the actual dir)

```
codeally@4d482d2b03b2:~/project/website$ find
.
./fonts
./fonts/roboto.woff
./index.html
./images
./images/background.jpg
./images/footer.jpeg
./images/header.png
./freeCodeCamp.svg
./.gitignore
./menlo.otf
./styles.css
./lato.ttf
./index.js
./CodeRoad.svg
./CodeAlly.svg
codeally@4d482d2b03b2:~/project/website$

codeally@6833bc513657:~/project/website$ find
.
./client
./client/src
./client/src/index.html
./client/src/styles.css
./client/src/index.js
./fonts
./fonts/roboto.woff
./fonts/menlo.otf
./fonts/lato.ttf
./images
./images/background.jpg
./images/footer.jpeg
./images/header.png
./freeCodeCamp.svg
./.gitignore
./CodeRoad.svg
./CodeAlly.svg
codeally@6833bc513657:~/project/website$ 
```
