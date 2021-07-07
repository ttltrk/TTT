
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### JAVASCRIPT

---

```
```

---

* [INTRODUCTION](#INTRODUCTION)
* [WHERE_TO](#WHERE_TO)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### INTRODUCTION

```
JavaScript is the world's most popular programming language.
JavaScript is the programming language of the Web.
JavaScript is easy to learn.
```

##### - JavaScript Can Change HTML Content

One of many JavaScript HTML methods is ```getElementById()```.
The example below "finds" an HTML element (with id="demo"), and changes the element content (innerHTML) to "Hello JavaScript":

```js
document.getElementById("demo").innerHTML = "Hello JavaScript";
```

```html
<!DOCTYPE html>
<html>
<body>

<h2>What Can JavaScript Do?</h2>

<p id="demo">JavaScript can change HTML content.</p>

<button type="button" onclick='document.getElementById("demo").innerHTML = "Hello JavaScript!"'>Click Me!</button>

</body>
</html>
```

JavaScript accepts both double and single quotes:

```js
document.getElementById('demo').innerHTML = 'Hello JavaScript';
```

##### - JavaScript Can Change HTML Attribute Values

In this example JavaScript changes the value of the src (source) attribute of an ```<img>``` tag:

```js
<button onclick="document.getElementById('myImage').src='pic_bulbon.gif'">Turn on the light</button>
<img id="myImage" src="pic_bulboff.gif" style="width:100px">
<button onclick="document.getElementById('myImage').src='pic_bulboff.gif'">Turn off the light</button>
```

```html
<!DOCTYPE html>
<html>
<body>

<h2>What Can JavaScript Do?</h2>

<p>JavaScript can change HTML attribute values.</p>

<p>In this case JavaScript changes the value of the src (source) attribute of an image.</p>

<button onclick="document.getElementById('myImage').src='pic_bulbon.gif'">Turn on the light</button>

<img id="myImage" src="pic_bulboff.gif" style="width:100px">

<button onclick="document.getElementById('myImage').src='pic_bulboff.gif'">Turn off the light</button>

</body>
</html>
```

##### - JavaScript Can Change HTML Styles (CSS)

Changing the style of an HTML element, is a variant of changing an HTML attribute:

```js
document.getElementById("demo").style.fontSize = "35px";
```

```html
<!DOCTYPE html>
<html>
<body>

<h2>What Can JavaScript Do?</h2>

<p id="demo">JavaScript can change the style of an HTML element.</p>

<button type="button" onclick="document.getElementById('demo').style.fontSize='35px'">Click Me!</button>

</body>
</html>
```

##### - JavaScript Can Hide HTML Elements

Hiding HTML elements can be done by changing the display style:

```js
document.getElementById("demo").style.display = "none";
```

```html
<!DOCTYPE html>
<html>
<body>

<h2>What Can JavaScript Do?</h2>

<p id="demo">JavaScript can hide HTML elements.</p>

<button type="button" onclick="document.getElementById('demo').style.display='none'">Click Me!</button>

</body>
</html>
```

##### - JavaScript Can Show HTML Elements

Showing hidden HTML elements can also be done by changing the display style:

```js
document.getElementById("demo").style.display = "block";
```

```html
<!DOCTYPE html>
<html>
<body>

<h2>What Can JavaScript Do?</h2>

<p>JavaScript can show hidden HTML elements.</p>

<p id="demo" style="display:none">Hello JavaScript!</p>

<button type="button" onclick="document.getElementById('demo').style.display='block'">Click Me!</button>

</body>
</html>
```

[^^^](#JAVASCRIPT)

---

#### WHERE_TO

In HTML, JavaScript code is inserted between <script> and </script> tags.

```js
<script>
document.getElementById("demo").innerHTML = "My First JavaScript";
</script>
```

```html
<!DOCTYPE html>
<html>
<body>

<h2>JavaScript in Body</h2>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = "My First JavaScript";
</script>

</body>
</html>
```

##### - JavaScript Functions and Events

A JavaScript function is a block of JavaScript code, that can be executed when "called" for.
For example, a function can be called when an event occurs, like when the user clicks a button.

##### - JavaScript in head or body

You can place any number of scripts in an HTML document.
Scripts can be placed in the ```<body>```, or in the ```<head>``` section of an HTML page, or in both.

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

[^^^](#JAVASCRIPT)

---

####

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

[^^^](#JAVASCRIPT)

---

####

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

[^^^](#JAVASCRIPT)

---

####

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

[^^^](#JAVASCRIPT)

---

####

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

[^^^](#JAVASCRIPT)

---

####

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

```js

```

```html

```

[^^^](#JAVASCRIPT)

---
