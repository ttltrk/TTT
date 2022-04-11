
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### HTML_FLASH

---

* [WHAT_IS_HTML](#WHAT_IS_HTML)
* [SIMPLE_HTML_CODE](#SIMPLE_HTML_CODE)
* [DOCTYPE](#DOCTYPE)
* [HEADINGS](#HEADINGS)
* [PARAGRAPHS](#PARAGRAPHS)
* [LINKS](#LINKS)
* [ELEMENTS](#ELEMENTS)
* [ATTRIBUTES](#ATTRIBUTES)
* [HEADINGS](#HEADINGS)
* [PARAGRAPHS](#PARAGRAPHS)
* [HORIZONTAL_RULES](#HORIZONTAL_RULES)
* [LINE_BREAKS](#LINE_BREAKS)
* [PRE_ELEMENT](#PRE_ELEMENT)
* [STYLE](#STYLE)
* [TEXT_FROMATTING](#TEXT_FROMATTING)
* [QUOTATIONS](#QUOTATIONS)
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

#### WHAT_IS_HTML

- HTML stands for Hyper Text Markup Language
- HTML is the standard markup language for creating Web pages
- HTML describes the structure of a Web page
- HTML consists of a series of elements
- HTML elements tell the browser how to display the content
- HTML elements label pieces of content such as "this is a heading", "this is a paragraph", "this is a link", etc.

[^^^](#HTML_FLASH)

---

#### SIMPLE_HTML_CODE

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Page Title</title>
  </head>
  <body>

    <h1>My First Heading</h1>
    <p>My first paragraph.</p>

  </body>
</html>
```

[^^^](#HTML_FLASH)

---

#### DOCTYPE

The ```<!DOCTYPE>``` declaration represents the document type, and helps browsers to display web pages correctly.
It must only appear once, at the top of the page (before any HTML tags).
The ```<!DOCTYPE>``` declaration is not case sensitive.

```html
<!DOCTYPE html>
```

[^^^](#HTML_FLASH)

---

#### HEADINGS

HTML headings are defined with the ```<h1>``` to ```<h6>``` tags.

```html
<h1>This is heading 1</h1>
<h2>This is heading 2</h2>
<h3>This is heading 3</h3>
```

[^^^](#HTML_FLASH)

---

#### PARAGRAPHS

HTML paragraphs are defined with the ```<p>``` tag

```html
<p>This is a paragraph.</p>
<p>This is another paragraph.</p>
```

[^^^](#HTML_FLASH)

---

#### LINKS

HTML links are defined with the ```<a>``` tag

```html
<a href="https://www.w3schools.com">This is a link</a>
```

The link's destination is specified in the href attribute.
Attributes are used to provide additional information about HTML elements.

[^^^](#HTML_FLASH)

---

#### ELEMENTS

An HTML element is defined by a start tag, some content, and an end tag.
The HTML element is everything from the start tag to the end tag.

```html
<tagname>Content goes here...</tagname>
```

examples:

```html
<html>, <body>, <h1> and <p>
```

[^^^](#HTML_FLASH)

---

#### ATTRIBUTES

HTML attributes provide additional information about HTML elements.

- All HTML elements can have attributes
- The href attribute of ```<a>``` specifies the URL of the page the link goes to
- The src attribute of ```<img>``` specifies the path to the image to be displayed
- The width and height attributes of ```<img>``` provide size information for images
- The alt attribute of ```<img>``` provides an alternate text for an image
- The style attribute is used to add styles to an element, such as color, font, size, and more
- The lang attribute of the <html> tag declares the language of the Web page
- The title attribute defines some extra information about an element

```html
<a href="https://www.w3schools.com">Visit W3Schools</a>
```

```html
<img src="img_girl.jpg">
```

```html
<img src="img_girl.jpg" width="500" height="600">
```

```html
<img src="img_girl.jpg" alt="Girl with a jacket">
```

```html
<p style="color:red;">This is a red paragraph.</p>
```

```html
<!DOCTYPE html>
<html lang="en-US">
<body>
...
</body>
</html>
```

```html
<p title="I'm a tooltip">This is a paragraph.</p>
```

[^^^](#HTML_FLASH)

---

#### HEADINGS

HTML headings are titles or subtitles that you want to display on a webpage.
HTML headings are defined with the ```<h1>``` to ```<h6>``` tags.
The ```<h1>``` defines the most important heading. <h6> defines the least important heading.

```html
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
```

[^^^](#HTML_FLASH)

---

#### PARAGRAPHS

A paragraph always starts on a new line, and is usually a block of text.
The HTML ```<p>``` element defines a paragraph.
A paragraph always starts on a new line, and browsers automatically add some white space (a margin) before and after a paragraph.

```html
<p>This is a paragraph.</p>
<p>This is another paragraph.</p>
```

With HTML, you cannot change the display by adding extra spaces or extra lines in your HTML code.
The browser will automatically remove any extra spaces and lines when the page is displayed.

[^^^](#HTML_FLASH)

---

#### HORIZONTAL_RULES

The ```<hr>``` tag defines a thematic break in an HTML page, and is most often displayed as a horizontal rule.
The ```<hr>``` element is used to separate content (or define a change) in an HTML page.

```html
<h1>This is heading 1</h1>
<p>This is some text.</p>
<hr>
<h2>This is heading 2</h2>
<p>This is some other text.</p>
<hr>
```

The <hr> tag is an empty tag, which means that it has no end tag.

[^^^](#HTML_FLASH)

---

#### LINE_BREAKS

The HTML ```<br>``` element defines a line break.
Use ```<br>``` if you want a line break (a new line) without starting a new paragraph.

```html
<p>This is<br>a paragraph<br>with line breaks.</p>
```

The ```<br>``` tag is an empty tag, which means that it has no end tag.

[^^^](#HTML_FLASH)

---

#### PRE_ELEMENT

The HTML ```<pre>``` element defines preformatted text.
The text inside a ```<pre>``` element is displayed in a fixed-width font (usually Courier), and it preserves both spaces and line breaks:

```html
<pre>
  My Bonnie lies over the ocean.

  My Bonnie lies over the sea.

  My Bonnie lies over the ocean.

  Oh, bring back my Bonnie to me.
</pre>
```

[^^^](#HTML_FLASH)

---

#### STYLE

The HTML style attribute is used to add styles to an element, such as color, font, size, and more.
Setting the style of an HTML element, can be done with the style attribute.

- Use the style attribute for styling HTML elements
- Use background-color for background color
- Use color for text colors
- Use font-family for text fonts
- Use font-size for text sizes
- Use text-align for text alignment

```html
<body style="background-color:powderblue;">

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
```

```html
<h1 style="color:blue;">This is a heading</h1>
<p style="color:red;">This is a paragraph.</p>
```

```html
<h1 style="font-family:verdana;">This is a heading</h1>
<p style="font-family:courier;">This is a paragraph.</p>
```

```html
<h1 style="font-size:300%;">This is a heading</h1>
<p style="font-size:160%;">This is a paragraph.</p>
```

```html
<h1 style="text-align:center;">Centered Heading</h1>
<p style="text-align:center;">Centered paragraph.</p>
```

[^^^](#HTML_FLASH)

---

#### TEXT_FROMATTING

HTML contains several elements for defining text with a special meaning.

- formatting elements

```html
<b> - Bold text
<strong> - Important text
<i> - Italic text
<em> - Emphasized text
<mark> - Marked text
<small> - Smaller text
<del> - Deleted text
<ins> - Inserted text
<sub> - Subscript text
<sup> - Superscript text
```

[^^^](#HTML_FLASH)

---

#### QUOTATIONS

In this chapter we will go through the ```<blockquote>```,```<q>```, ```<abbr>```, ```<address>```, ```<cite>```, and ```<bdo>``` HTML elements.

```html
<abbr>	Defines an abbreviation or acronym
<address>	Defines contact information for the author/owner of a document
<bdo>	Defines the text direction
<blockquote>	Defines a section that is quoted from another source
<cite>	Defines the title of a work
<q>	Defines a short inline quotation
```

[^^^](#HTML_FLASH)

---

####

```html

```

[^^^](#HTML_FLASH)

---

####

```html

```

[^^^](#HTML_FLASH)

---

####

```html

```

[^^^](#HTML_FLASH)

---

####

```html

```

[^^^](#HTML_FLASH)

---
