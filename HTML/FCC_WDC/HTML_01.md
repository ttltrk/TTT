
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [HTML_NAV](https://github.com/ttltrk/TTT/tree/master/HTML/HTML_NAV.md) - [FCC_WDC](https://github.com/ttltrk/TTT/tree/master/HTML/FCC_WDC.md)

---

### FCC_WDC

### HTML_01 - Learn HTML by Building a Cat Photo App

---

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
* [21_STEP_21](#21_STEP_21)
* [22_STEP_22](#22_STEP_22)
* [23_STEP_23](#23_STEP_23)
* [24_STEP_24](#24_STEP_24)
* [25_STEP_25](#25_STEP_25)
* [26_STEP_26](#26_STEP_26)
* [27_STEP_27](#27_STEP_27)
* [28_STEP_28](#28_STEP_28)
* [29_STEP_29](#29_STEP_29)
* [30_STEP_30](#30_STEP_30)
* [31_STEP_31](#31_STEP_31)
* [32_STEP_32](#32_STEP_32)
* [33_STEP_33](#33_STEP_33)
* [34_STEP_34](#34_STEP_34)
* [35_STEP_35](#35_STEP_35)
* [36_STEP_36](#36_STEP_36)
* [37_STEP_37](#37_STEP_37)
* [38_STEP_38](#38_STEP_38)
* [39_STEP_39](#39_STEP_39)
* [40_STEP_40](#40_STEP_40)
* [41_STEP_41](#41_STEP_41)
* [42_STEP_42](#42_STEP_42)
* [43_STEP_43](#43_STEP_43)
* [44_STEP_44](#44_STEP_44)
* [45_STEP_45](#45_STEP_45)
* [46_STEP_46](#46_STEP_46)
* [47_STEP_47](#47_STEP_47)
* [48_STEP_48](#48_STEP_48)
* [49_STEP_49](#49_STEP_49)
* [50_STEP_50](#50_STEP_50)
* [51_STEP_51](#51_STEP_51)
* [52_STEP_52](#52_STEP_52)
* [53_STEP_53](#53_STEP_53)
* [54_STEP_54](#54_STEP_54)
* [55_STEP_55](#55_STEP_55)
* [56_STEP_56](#56_STEP_56)
* [57_STEP_57](#57_STEP_57)
* [58_STEP_58](#58_STEP_58)
* [59_STEP_59](#59_STEP_59)
* [60_STEP_60](#60_STEP_60)
* [61_STEP_61](#61_STEP_61)
* [62_STEP_62](#62_STEP_62)
* [63_STEP_63](#63_STEP_63)
* [64_STEP_64](#64_STEP_64)
* [65_STEP_65](#65_STEP_65)
* [66_STEP_66](#66_STEP_66)
* [67_STEP_67](#67_STEP_67)
* [68_STEP_68](#68_STEP_68)
* [69_STEP_69](#69_STEP_69)

- Learn Basic CSS by building a Cafe Menu

* [CSS_01](#CSS_01)
* [CSS_02](#CSS_02)
* [CSS_03](#CSS_03)
* [CSS_04](#CSS_04)
* [CSS_05](#CSS_05)
* [CSS_06](#CSS_06)
* [CSS_07](#CSS_07)
* [CSS_08](#CSS_08)
* [CSS_09](#CSS_09)
* [CSS_10](#CSS_10)
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

### Learn HTML by Building a Cat Photo App

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

Add a target attribute with the value ```_blank``` to the anchor (a) element's opening tag, so that the link opens in a new tab.

```html
<p>See more <a href="https://freecatphotoapp.com" target="_blank">cat photos</a> in our gallery.</p>
```

[^^^](#FCC_WDC)

---

#### 15_STEP_15

Turn the image into a link by surrounding it with necessary element tags. Use ```htps://freecatphotoapp.com``` as the anchor's href attribute value.

```html
<a href="https://freecatphotoapp.com">
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
</a>
```

[^^^](#FCC_WDC)

---

#### 16_STEP_16

Before adding any new content, you should make use of a section element to separate the cat photos content from the future content.

```html
<main>
  <h1>CatPhotoApp</h1>

  <section>
  <h2>Cat Photos</h2>
  <!-- TODO: Add link to cat photos -->
  <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
  <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
  </section>

</main>
```

[^^^](#FCC_WDC)

---

#### 17_STEP_17

It is time to add a new section. Add a second section element below the existing section element.

```html
<section>
  <h2>Cat Photos</h2>
  <!-- TODO: Add link to cat photos -->
  <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
  <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
</section>

<section>
</section>
```

[^^^](#FCC_WDC)

---

#### 18_STEP_18

Within the second section element, add a new h2 element with the text Cat Lists.

```html
<section>
  <h2>Cat Lists</h2>
</section>
```

[^^^](#FCC_WDC)

---

#### 19_STEP_19

When you add a lower rank heading element to the page, it's implied that you're starting a new subsection.

```html
<section>
  <h2>Cat Lists</h2>
  <h3>Things cats love:</h3>
</section>
```

[^^^](#FCC_WDC)

---

#### 20_STEP_20

After the h3 element with the Things cats love: text, add an unordered list (ul) element. Note that nothing will be displayed at this point.

```html
<h2>Cat Lists</h2>
<h3>Things cats love:</h3>
  <ul>
  </ul>
```

[^^^](#FCC_WDC)

---

#### 21_STEP_21

Use list item (li) elements to create items in a list.

```html
<ul>
  <li>cat nip</li>
  <li>laser pointers</li>
  <li>lasagna</li>
</ul>
```

[^^^](#FCC_WDC)

---

#### 22_STEP_22

After the unordered list, add a new image with an src attribute value set to:

```https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg```

And its alt attribute value to:

```A slice of lasagna on a plate.```

```html
<ul>
  <li>cat nip</li>
  <li>laser pointers</li>
  <li>lasagna</li>
</ul>
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
```

[^^^](#FCC_WDC)

---

#### 23_STEP_23

The figure element represents self-contained content and will allow you to associate an image with a caption.

```html
<figure>
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
</figure>
```

[^^^](#FCC_WDC)

---

#### 24_STEP_24

A figure caption (figcaption) element is used to add a caption to describe the image contained within the figure element. For example, ```<figcaption>A cute cat</figcaption>``` adds the caption A cute cat.

```html
<figure>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
  <figcaption>Cats love lasagna.</figcaption>
</figure>
```

[^^^](#FCC_WDC)

---

#### 25_STEP_25

Emphasize the word love in the figcaption element by wrapping it in an emphasis em element.

```html
<figcaption>Cats <em>love</em> lasagna.</figcaption>
```

[^^^](#FCC_WDC)

---

#### 26_STEP_26

After the figure element, add another h3 element with the text:

```Top 3 things cats hate:```

```html
<figure>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
  <figcaption>Cats <em>love</em> lasagna.</figcaption>  
</figure>
<h3>Top 3 things cats hate:</h3>
```

[^^^](#FCC_WDC)

---

#### 27_STEP_27

The code for an ordered list (ol) is similar to an unordered list, but list items in an ordered list are numbered when displayed.

```html
<h3>Top 3 things cats hate:</h3>
<ol>
  <li>flea treatment</li>
  <li>thunder</li>
  <li>other cats</li>
</ol>
```

[^^^](#FCC_WDC)

---

#### 28_STEP_28

After the ordered list, add another figure element.

```html
<ol>
  <li>flea treatment</li>
  <li>thunder</li>
  <li>other cats</li>
</ol>
<figure>
</figure>
```

[^^^](#FCC_WDC)

---

#### 29_STEP_29

Inside the figure element you just added, nest an img element with a src attribute set to ```https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg.```

```html
<figure>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg">
</figure>
```

[^^^](#FCC_WDC)

---

#### 30_STEP_30

To improve accessibility of the image you added, add an alt attribute with the text:

```Five cats looking around a field.```

```html
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Five cats looking around a field.">
```

[^^^](#FCC_WDC)

---

#### 31_STEP_31

After the last img element, add a figcaption element with the text Cats hate other cats.

```html
<figure>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Five cats looking around a field.">
  <figcaption>Cats hate other cats.</figcaption>
</figure>
```

[^^^](#FCC_WDC)

---

#### 32_STEP_32

The strong element is used to indicate that some text is of strong importance or urgent.

```html
<figcaption>Cats <strong>hate</strong> other cats.</figcaption>  
```

[^^^](#FCC_WDC)

---

#### 33_STEP_33

It is time to add a new section. Add a third section element below the second section element.

```html
<section>
  <h2>Cat Lists</h2>
  <h3>Things cats love:</h3>
  <ul>
    <li>cat nip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <figure>
    <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
    <figcaption>Cats <em>love</em> lasagna.</figcaption>  
  </figure>
  <h3>Top 3 things cats hate:</h3>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <figure>
    <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Five cats looking around a field.">
    <figcaption>Cats <strong>hate</strong> other cats.</figcaption>  
  </figure>
</section>
<section>
</section>
```

[^^^](#FCC_WDC)

---

#### 34_STEP_34

Inside the third section element, add an h2 element with the text: ```Cat Form```

```html
<section>
  <h2>Cat Form</h2>
</section>
```

[^^^](#FCC_WDC)

---

#### 35_STEP_35

Now you will add a web form to collect information from users.

After the Cat Form heading, add a form element.

```html
<h2>Cat Form</h2>
  <form>
  </form>
```

[^^^](#FCC_WDC)

---

#### 36_STEP_36

The action attribute indicates where form data should be sent. For example, ```<form action="/submit-url"></form>``` tells the browser that the form data should be sent to the path ```/submit-url```.

```html
<form action="https://freecatphotoapp.com/submit-cat-photo"></form>
```

[^^^](#FCC_WDC)

---

#### 37_STEP_37

The input element allows you several ways to collect data from a web form. Like img elements, input elements are self-closing and do not need closing tags.

```html
<form action="https://freecatphotoapp.com/submit-cat-photo">
  <input>
</form>
```

[^^^](#FCC_WDC)

---

#### 38_STEP_38

There are many kinds of inputs you can create using the type attribute. You can easily create a password field, reset button, or a control to let users select a file from their computer.

```html
<input type="text">
```

[^^^](#FCC_WDC)

---

#### 39_STEP_39

In order for a form's data to be accessed by the location specified in the action attribute, you must give the text field a name attribute and assign it a value to represent the data being submitted. For example, you could use the following syntax for an email address text field: ```<input type="text" name="email">```.

```html
<input type="text" name="catphotourl">
```

[^^^](#FCC_WDC)

---

#### 40_STEP_40

Placeholder text is used to give people a hint about what kind of information to enter into an input. For example, ```<input type="text" placeholder="Email address">```.

```html
<input type="text" name="catphotourl" placeholder="cat photo URL">
```

[^^^](#FCC_WDC)

---

#### 41_STEP_41

To prevent a user from submitting your form when required information is missing, you need to add the required attribute to an input element. There's no need to set a value to the required attribute. Instead, just add the word required to the input element, making sure there is space between it and other attributes.

```html
<input type="text" name="catphotourl" placeholder="cat photo URL" required>
```

[^^^](#FCC_WDC)

---

#### 42_STEP_42

Use the button element to create a clickable button. For example, ```<button>Click Here</button>``` creates a button with the text Click Here.

```html
<input type="text" name="catphotourl" placeholder="cat photo URL" required>
<button>Submit</button>
```

[^^^](#FCC_WDC)

---

#### 43_STEP_43

Even though you added your button below the text input, they appear next to each other on the page. That's because both input and button elements are inline elements, which don't appear on new lines.


```html
<button type="submit">Submit</button>
```

[^^^](#FCC_WDC)

---

#### 44_STEP_44

You can use radio buttons for questions where you want only one answer out of multiple options.

Here is an example of a radio button with the option of ```cat: <input type="radio"> cat```. Remember that input elements are self-closing.

```html
<input type="radio"> Indoor
<input type="text" name="catphotourl" placeholder="cat photo URL" required>
```

[^^^](#FCC_WDC)

---

#### 45_STEP_45

label elements are used to help associate the text for an input element with the input element itself (especially for assistive technologies like screen readers). For example, ```<label><input type="radio"> cat</label>``` makes it so clicking the word cat also selects the corresponding radio button.

```html
<label><input type="radio"> Indoor</label>
```

[^^^](#FCC_WDC)

---

#### 46_STEP_46

The id attribute is used to identify specific HTML elements. Each id attribute's value must be unique from all other id values for the entire page.

```html
<label><input type="radio" id="indoor"> Indoor</label>
```

[^^^](#FCC_WDC)

---

#### 47_STEP_47

Create another radio button below the first one. Nest it inside a label element with Outdoor as the label text. Give the radio button an id attribute with outdoor as the value.

```html
<label><input id="indoor" type="radio"> Indoor</label>
<label><input id="outdoor" type="radio"> Outdoor</label>
```

[^^^](#FCC_WDC)

---

#### 48_STEP_48

Notice that both radio buttons can be selected at the same time. To make it so selecting one radio button automatically deselects the other, both buttons must have a name attribute with the same value.

```html
<label><input id="indoor" type="radio" name="indoor-outdoor"> Indoor</label>
<label><input id="outdoor" type="radio" name="indoor-outdoor"> Outdoor</label>
```

[^^^](#FCC_WDC)

---

#### 49_STEP_49

If you select the Indoor radio button and submit the form, the form data for the button is based on its name and value attributes. Since your radio buttons do not have a value attribute, the form data will include indoor-outdoor=on, which is not useful when you have multiple buttons.

```html
<label><input id="indoor" type="radio" name="indoor-outdoor" value="indoor"> Indoor</label>
<label><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label>
```

[^^^](#FCC_WDC)

---

#### 50_STEP_50

The fieldset element is used to group related inputs and labels together in a web form. fieldset elements are block-level elements, meaning that they appear on a new line.

```html
<fieldset>
  <label><input id="indoor" type="radio" name="indoor-outdoor" value="indoor"> Indoor</label>
  <label><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label>
</fieldset>
```

[^^^](#FCC_WDC)

---

#### 51_STEP_51

The legend element acts as a caption for the content in the fieldset element. It gives users context about what they should enter into that part of the form.

```html
<fieldset>
  <legend>Is your cat an indoor or outdoor cat?</legend>
  <label><input id="indoor" type="radio" name="indoor-outdoor" value="indoor"> Indoor</label>
  <label><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label>
</fieldset>
```

[^^^](#FCC_WDC)

---

#### 52_STEP_52

Next, you are going to add some new form input elements, so add another fieldset element directly below the current fieldset element.

```html
<fieldset>
  <legend>Is your cat an indoor or outdoor cat?</legend>
  <label><input id="indoor" type="radio" name="indoor-outdoor" value="indoor"> Indoor</label>
  <label><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label>
</fieldset>
<fieldset>
</fieldset>
```

[^^^](#FCC_WDC)

---

#### 53_STEP_53

Add a legend element with the text What's your cat's personality? inside the second fieldset element.

```html
<fieldset>
  <legend>What's your cat's personality?</legend>
</fieldset>
```

[^^^](#FCC_WDC)

---

#### 54_STEP_54

Forms commonly use checkboxes for questions that may have more than one answer. For example, here's a checkbox with the option of ```tacos: <input type="checkbox"> tacos```.

```html
<legend>What's your cat's personality?</legend>
<input type="checkbox"> Loving
```

[^^^](#FCC_WDC)

---

#### 55_STEP_55

Add an id attribute with the value loving to the checkbox input.

```html
<input type="checkbox" id="loving"> Loving
```

[^^^](#FCC_WDC)

---

#### 56_STEP_56

There's another way to associate an input element's text with the element itself. You can nest the text within a label element and add a for attribute with the same value as the input element's id attribute.

```html
<input id="loving" type="checkbox">
<label for="loving">Loving</label>
```

[^^^](#FCC_WDC)

---

#### 57

Add the name attribute with the value personality to the checkbox input element.

```html
<input id="loving" type="checkbox" name="personality"> <label for="loving">Loving</label>
```

[^^^](#FCC_WDC)

---

#### 58_STEP_58

Add another checkbox after the one you just added. The id attribute value should be lazy and the name attribute value should be the same as the last checkbox.

```html
<input id="loving" type="checkbox" name="personality"> <label for="loving">Loving</label>
<input id="lazy" type="checkbox" name="personality"> <label for="lazy">Lazy</label>
```

[^^^](#FCC_WDC)

---

#### 59_STEP_59

Add a final checkbox after the previous one with an id attribute value of energetic. The name attribute should be the same as the previous checkbox.
Also add a label element to the right of the new checkbox with text Energetic. Make sure to associate the label element with the new checkbox.

```html
<input id="loving" type="checkbox" name="personality"> <label for="loving">Loving</label>
<input id="lazy" type="checkbox" name="personality"> <label for="lazy">Lazy</label>
<input id="energetic" type="checkbox" name="personality"> <label for="energetic">Energetic</label>
```

[^^^](#FCC_WDC)

---

#### 60_STEP_60

Like radio buttons, form data for selected checkboxes are name / value attribute pairs. While the value attribute is optional, it's best practice to include it with any checkboxes or radio buttons on the page.

```html
<fieldset>
  <legend>Is your cat an indoor or outdoor cat?</legend>
  <label><input id="indoor" type="radio" name="indoor-outdoor" value="indoor"> Indoor</label>
  <label><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label>
</fieldset>
<fieldset>
  <legend>What's your cat's personality?</legend>
  <input id="loving" type="checkbox" name="personality" value="loving"> <label for="loving">Loving</label>
  <input id="lazy" type="checkbox" name="personality" value="lazy"> <label for="lazy">Lazy</label>
  <input id="energetic" type="checkbox" name="personality" value="energetic"> <label for="energetic"> Energetic</label>
</fieldset>
```

[^^^](#FCC_WDC)

---

#### 61_STEP_61

In order to make a checkbox checked or radio button selected by default, you need to add the checked attribute to it. There's no need to set a value to the checked attribute. Instead, just add the word checked to the input element, making sure there is space between it and other attributes.
Make the first radio button and the first checkbox selected by default.

```html
<fieldset>
  <legend>Is your cat an indoor or outdoor cat?</legend>
  <label><input checked id="indoor" type="radio" name="indoor-outdoor" value="indoor"> Indoor</label>
  <label><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label>
</fieldset>
<fieldset>
  <legend>What's your cat's personality?</legend>
  <input checked id="loving" type="checkbox" name="personality" value="loving"> <label for="loving">Loving</label>
  <input id="lazy" type="checkbox" name="personality" value="lazy"> <label for="lazy">Lazy</label>
  <input id="energetic" type="checkbox" name="personality" value="energetic"> <label for="energetic"> Energetic</label>
</fieldset>
```

[^^^](#FCC_WDC)

---

#### 62_STEP_62

Now you will add a footer section to the page.
After the main element, add a footer element.

```html
  </main>
  <footer>
  </footer>
</body>
```

[^^^](#FCC_WDC)

---

#### 63_STEP_63

Nest a p element with the text No Copyright - freeCodeCamp.org within the footer element.

```html
<footer>
  <p>No Copyright - freeCodeCamp.org</p>
</footer>
```

[^^^](#FCC_WDC)

---

#### 64_STEP_64

Make the text ```freeCodeCamp.org``` into a link by enclosing it in an anchor (a) element. The href attribute should be set to ```https://www.freecodecamp.org```.

```html
<p>No Copyright - <a href="https://www.freecodecamp.org">freeCodeCamp.org</a></p>
```

[^^^](#FCC_WDC)

---

#### 65_STEP_65

Notice that everything you've added to the page so far is inside the body element. All page content elements that should be rendered to the page go inside the body element. However, other important information goes inside the head element.
Add a head element above the body element.

```html
<html>
  <head>
  </head>
  <body>
```

[^^^](#FCC_WDC)

---

#### 66_STEP_66

The title element determines what browsers show in the title bar or tab for the page.
Add a title element within the head element using the text below:
```CatPhotoApp```

```html
<head>
  <title>CatPhotoApp</title>
</head>
```

[^^^](#FCC_WDC)

---

#### 67_STEP_67

Notice that the entire contents of the page are nested within an html element. All other elements must be descendants of this html element.
Add the lang attribute with the value en to the opening html tag to specify that the language of the page is English.

```html
<html lang="en">
```

[^^^](#FCC_WDC)

---

#### 68_STEP_68

All pages should begin with ```<!DOCTYPE html>```. This special string is known as a declaration and ensures the browser tries to meet industry-wide specifications.
Add this declaration as the first line of the code.

```html
<!DOCTYPE html>
<html lang="en">
```

[^^^](#FCC_WDC)

---

#### 69_STEP_69

You can set browser behavior by adding self-closing meta elements in the head. Here's an example:
```<meta attribute="value">```
Tell the browser to parse the markup into multiple languages by creating a meta element as a child of the head element. Set its charset attribute to UTF-8.

```html
<head>
  <meta charset="UTF-8">
  <title>CatPhotoApp</title>
</head>
```

[^^^](#FCC_WDC)

---
