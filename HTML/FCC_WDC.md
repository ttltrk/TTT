
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### FCC_WDC

---

```
Responsive Web Design Certification
```

[link](https://www.freecodecamp.org/learn/2022/responsive-web-design/)

---

- Learn HTML by Building a Cat Photo App

* [01_STEP_1](#01_STEP_1)
* [02_STEP_2](#02_STEP_2)
* [03_STEP_3](#03_STEP_3)
* [04_STEP_4](#04_STEP_4)
* [05_STEP_5](#05_STEP_5)
* [06_STEP_6](#06_STEP_6)
* [07_STEP_7](#07_STEP_7)
* [08_STEP_8](#08_STEP_8)
* [09_STEP_9](#09_STEP_9)
* [10_STEP_10](#10_STEP_10)
* [11_STEP_11](#11_STEP_11)
* [12_STEP_12](#12_STEP_12)
* [13_STEP_13](#13_STEP_13)
* [14_STEP_14](#14_STEP_14)
* [15_STEP_15](#15_STEP_15)
* [16_STEP_16](#16_STEP_16)
* [17_STEP_17](#17_STEP_17)
* [18_STEP_18](#18_STEP_18)
* [19_STEP_19](#19_STEP_19)
* [20_STEP_20](#20_STEP_20)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### 01_STEP_1

HTML elements have opening tags like ```<h1>``` and closing tags like ```</h1>```.
The text for an element goes between its opening and closing tags.

```html
<h1>CatPhotoApp</h1>
```

[^^^](#FCC_WDC)

---

#### 02_STEP_2

The h1 through h6 heading elements are used to signify the importance of content below them. The lower the number, the higher the importance, so h2 elements have less importance than h1 elements. Only use one h1 element per page and place lower importance headings below higher importance headings.

```html
<h1>CatPhotoApp</h1>
<h2>Cat Photos</h2>
```

[^^^](#FCC_WDC)

---

#### 03_STEP_3

The p element is used to create a paragraph of text on websites.

```html
<h2>Cat Photos</h2>
<p>See more cat photos in our gallery.</p>
```

[^^^](#FCC_WDC)

---

#### 04_STEP_4

Commenting allows you to leave messages without affecting the browser display. It also allows you to make code inactive. A comment in HTML starts with ```<!--```, contains any number of lines of text, and ends with ```-->```. For example, the comment ```<!--``` TODO: Remove h1 ```-->``` contains the text TODO: Remove h1.

```html
<!--TODO: Add link to cat photos-->
<p>See more cat photos in our gallery.</p>
```

[^^^](#FCC_WDC)

---

#### 05_STEP_5

HTML5 has some elements that identify different content areas. These elements make your HTML easier to read and help with Search Engine Optimization (SEO) and accessibility.

```html
<main>  
    <h1>CatPhotoApp</h1>
    <h2>Cat Photos</h2>
    <!-- TODO: Add link to cat photos -->
    <p>See more cat photos in our gallery.</p>
</main>    
```

[^^^](#FCC_WDC)

---

#### 06_STEP_6

In the previous step, you put the h1, h2, comment, and p elements inside the main element. This is called nesting. Nested elements should be placed two spaces further to the right of the element they are nested in. This spacing is called indentation and it is used to make HTML easier to read.

```html
<main>
  <h1>CatPhotoApp</h1>
  <h2>Cat Photos</h2>
  <!-- TODO: Add link to cat photos -->
  <p>See more cat photos in our gallery.</p>
</main>
```

[^^^](#FCC_WDC)

---

#### 07_STEP_7

You can add images to your website by using the img element. img elements have an opening tag without a closing tag. A tag for an element without a closing tag is known as a self-closing tag.

```html
<p>See more cat photos in our gallery.</p>
<img>
```

[^^^](#FCC_WDC)

---

#### 08_STEP_8

HTML attributes are special words used inside the opening tag of an element to control the element's behavior. The src attribute in an img element specifies the image's URL (where the image is located). An example of an img element using an src attribute: ```<img src="https://www.example.com/the-image.jpg">```.

```html
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg">
```

[^^^](#FCC_WDC)

---

#### 09_STEP_9

All img elements should have an alt attribute. The alt attribute's text is used for screen readers to improve accessibility and is displayed if the image fails to load. For example, ```<img src="cat.jpg" alt="A cat">``` has an alt attribute with the text A cat.

```html
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back">
```

[^^^](#FCC_WDC)

---

#### 10_STEP_10

You can link to another page with the anchor (a) element. For example, ```<a href='https://freecodecamp.org'></a>``` would link to freecodecamp.org.

```html
<p>See more cat photos in our gallery.</p>
<a href="https://freecatphotoapp.com"></a>
```

[^^^](#FCC_WDC)

---

#### 11_STEP_11

A link's text must be placed between the opening and closing tags of an anchor (a) element. For example, ```<a href="https://www.freecodecamp.org">click here to go to freeCodeCamp.org</a>``` is a link with the text click here to go to freeCodeCamp.org.

```html
<a href="https://freecatphotoapp.com">link to cat pictures</a>
```

[^^^](#FCC_WDC)

---

#### 12_STEP_12

In the previous step you turned the words link to cat pictures into a link by placing them between opening and closing anchor (a) tags. You can do the same to words inside of an element, such as a p element.

```html
<p>See more <a href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
<a href="https://freecatphotoapp.com">link to cat pictures</a>
```

[^^^](#FCC_WDC)

---

#### 13_STEP_13

Now that you turned the text cat photos inside the p element into a link, you don't need the second link below the p element. Delete the entire anchor element below the p element.

```html
<p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
```

[^^^](#FCC_WDC)

---

#### 14_STEP_14

Add a target attribute with the value _blank to the anchor (a) element's opening tag, so that the link opens in a new tab.

```html
<p>See more <a href="https://freecatphotoapp.com" target="_blank">cat photos</a> in our gallery.</p>
```

[^^^](#FCC_WDC)

---

#### 15_STEP_15

Turn the image into a link by surrounding it with necessary element tags. Use ```htps://freecatphotoapp.com``` as the anchor's href attribute value.

```html
<a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
```

[^^^](#FCC_WDC)

---

#### 16_STEP_16

```html

```

[^^^](#FCC_WDC)

---

#### 17_STEP_17

```html

```

[^^^](#FCC_WDC)

---

#### 18_STEP_18

```html

```

[^^^](#FCC_WDC)

---

#### 19_STEP_19

```html

```

[^^^](#FCC_WDC)

---

#### 20_STEP_20

```html

```

[^^^](#FCC_WDC)

---

####

```html

```

[^^^](#FCC_WDC)

---

####

```html

```

[^^^](#FCC_WDC)

---

####

```html

```

[^^^](#FCC_WDC)

---
