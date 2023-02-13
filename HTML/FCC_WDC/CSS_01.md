
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [HTML_NAV](https://github.com/ttltrk/TTT/tree/master/HTML/HTML_NAV.md) - [FCC_WDC](https://github.com/ttltrk/TTT/tree/master/HTML/FCC_WDC.md)

---

### FCC_WDC

### CSS_01 - Learn Basic CSS by building a Cafe Menu

---

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
* [CSS_11](#CSS_11)
* [CSS_12](#CSS_12)
* [CSS_13](#CSS_13)
* [CSS_14](#CSS_14)
* [CSS_15](#CSS_15)
* [CSS_16](#CSS_16)
* [CSS_17](#CSS_17)
* [CSS_18](#CSS_18)
* [CSS_19](#CSS_19)
* [CSS_20](#CSS_20)
* [CSS_21](#CSS_21)
* [CSS_22](#CSS_22)
* [CSS_23](#CSS_23)
* [CSS_24](#CSS_24)
* [CSS_25](#CSS_25)
* [CSS_26](#CSS_26)
* [CSS_27](#CSS_27)
* [CSS_28](#CSS_28)
* [CSS_29](#CSS_29)
* [CSS_30](#CSS_30)
* [CSS_31](#CSS_31)
* [CSS_32](#CSS_32)
* [CSS_33](#CSS_33)
* [CSS_34](#CSS_34)
* [CSS_35](#CSS_35)
* [CSS_36](#CSS_36)
* [CSS_37](#CSS_37)
* [CSS_38](#CSS_38)
* [CSS_39](#CSS_39)
* [CSS_40](#CSS_40)
* [CSS_41](#CSS_41)
* [CSS_42](#CSS_42)
* [CSS_43](#CSS_43)
* [CSS_44](#CSS_44)
* [CSS_45](#CSS_45)
* [CSS_46](#CSS_46)
* [CSS_47](#CSS_47)
* [CSS_48](#CSS_48)
* [CSS_49](#CSS_49)
* [CSS_50](#CSS_50)
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

### Learn Basic CSS by building a Cafe Menu

#### CSS_01

As you learned in the last few steps of the Cat Photo App, there is a basic structure needed to start building your web page.
Add the ```<!DOCTYPE html>``` tag, and an html element with a lang attribute of en.

```html
<!DOCTYPE html>
<html lang="en">
</html>
```

[^^^](#FCC_WDC)

---

#### CSS_02

Add a head element within the html element, so you can add a title element. The title element's text should be Cafe Menu.

```html
<head>
  <title>Cafe Menu</title>
</head>
```

[^^^](#FCC_WDC)

---

#### CSS_03

The title is one of several elements that provide extra information not visible on the web page, but it is useful for search engines or how the page gets displayed.
Inside the head element, nest a meta element with an attribute named charset set to the value ```utf-8``` to tell the browser how to encode characters for the page. Note that meta elements are self-closing.

```html
<head>
  <meta charset="UTF-8">
  <title>Cafe Menu</title>
</head>
```

[^^^](#FCC_WDC)

---

#### CSS_04

To prepare to create some actual content, add a body element below the head element.

```html
<head>
  <meta charset="utf-8" />
  <title>Cafe Menu</title>
</head>
<body>
</body>
```

[^^^](#FCC_WDC)

---

#### CSS_05

It's time to add some menu content. Add a main element within the existing body element. It will eventually contain pricing information about coffee and desserts offered by the cafe.

```html
<body>
  <main>
  </main>
</body>
```

[^^^](#FCC_WDC)

---

#### CSS_06

The name of the cafe is CAMPER CAFE. Add an h1 element within your main element. Give it the name of the cafe in capitalized letters to make it stand out

```html
<main>
  <h1>CAMPER CAFE</h1>
</main>
```

[^^^](#FCC_WDC)

---

#### CSS_07

To let visitors know the cafe was founded in 2020, add a p element below the h1 element with the text ```Est. 2020```.

```html
<h1>CAMPER CAFE</h1>
<p>Est. 2020</p>
```

[^^^](#FCC_WDC)

---

#### CSS_08

There will be two sections on the menu, one for coffees and one for desserts. Add a section element within the main element so you have a place to put all the coffees available.

```html
<main>
  <h1>CAMPER CAFE</h1>
  <p>Est. 2020</p>
  <section>
  </section>
</main>
```

[^^^](#FCC_WDC)

---

#### CSS_09

Create an h2 element in the section element and give it the text Coffee.

```html
<section>
  <h2>Coffee</h2>
</section>
```

[^^^](#FCC_WDC)

---

#### CSS_10

Up until now, you have been limited regarding the presentation and appearance of the content you create. To start taking control, add a style element within the head element.

```html
<head>
  <meta charset="utf-8" />
  <title>Cafe Menu</title>
  <style></style>
</head>
<body>
  <main>
    <h1>CAMPER CAFE</h1>
    <p>Est. 2020</p>
    <section>
      <h2>Coffee</h2>
    </section>
  </main>
</body>
```

[^^^](#FCC_WDC)

---

#### CSS_11

You can add style to an element by specifying it in the style element and setting a property for it like this:

```css
element {
 property: value;
}
```

Center your h1 element by setting its text-align property to the value center.

```html
<style>
  h1 {
    text-align: center;
  }
</style>
```

[^^^](#FCC_WDC)

---

#### CSS_12

In the previous step, you used a type selector to style the h1 element. Center the h2 and p elements by adding a new type selector for each one to the existing style element.

```html
<style>
  h1 {
    text-align: center;
  }

  h2 {
    text-align: center;
  }

  p {
    text-align: center;
  }
</style>
```

[^^^](#FCC_WDC)

---

#### CSS_13

You now have three type selectors with the exact same styling. You can add the same group of styles to many elements by creating a list of selectors. Each selector is separated with commas like this:

```css
selector1, selector2 {
  property: value;
}
```

Delete the three existing type selectors and replace them with one selector list that centers the text for the h1, h2, and p elements.

```html
<style>
  h1, h2, p {
    text-align: center;
  }
</style>
```

[^^^](#FCC_WDC)

---

#### CSS_14

You have styled three elements by writing CSS inside the style tags. This works, but since there will be many more styles, it's best to put all the styles in a separate file and link to it.

We have created a separate styles.css file for you and switched the editor view to that file. You can change between files with the tabs at the top of the editor.

Start by rewriting the styles you have created into the styles.css file. Make sure to exclude the opening and closing style tags.

```html
h1, h2, p {
  text-align: center;
}
```

[^^^](#FCC_WDC)

---

#### CSS_15

Now that you have the CSS in the styles.css file, go ahead and remove the style element and all its content. Once it is removed, the text that was centered will shift back to the left.

```html
<head>
  <meta charset="utf-8" />
  <title>Cafe Menu</title>
</head>
```

[^^^](#FCC_WDC)

---

#### CSS_16

Now you need to link the styles.css file so the styles will be applied again. Nest a self-closing link element in the head element. Give it a rel attribute value stylesheet and an href attribute value of styles.css.

```html
<head>
  <meta charset="utf-8" />
  <title>Cafe Menu</title>
  <link rel="stylesheet" href="styles.css">
</head>
```

[^^^](#FCC_WDC)

---

#### CSS_17

For the styling of the page to look similar on mobile as it does on a desktop or laptop, you need to add a meta element with a special content attribute.

Add the following within the head element:

```
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
```

```html
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Cafe Menu</title>
  <link href="styles.css" rel="stylesheet"/>
</head>
```

[^^^](#FCC_WDC)

---

#### CSS_18

The text is centered again so the link to the CSS file is working. Add another style to the file that changes the background-color property to brown for the body element.

```html
h1, h2, p {
  text-align: center;
}

body {
  background-color: brown;
}
```

[^^^](#FCC_WDC)

---

#### CSS_19

That brown background makes it hard to read the text. Change the body element's background color to be burlywood so it has some color but you are still be able to read the text.

```html
body {
  background-color: burlywood;
}
```

[^^^](#FCC_WDC)

---

#### CSS_20

The div element is used mainly for design layout purposes unlike the other content elements you have used so far. Add a div element inside the body element and then move all the other elements inside the new div.

```html
<body>
  <div>
  <main>
    <h1>CAMPER CAFE</h1>
    <p>Est. 2020</p>
    <section>
      <h2>Coffee</h2>
    </section>
  </main>
  </div>
</body>
```

[^^^](#FCC_WDC)

---

#### CSS_21

The goal now is to make the div not take up the entire width of the page. The CSS width property is perfect for this. Create a new type selector in the style sheet that gives your div element a width of 300px.

```html
body {
  background-color: burlywood;
}

h1, h2, p {
  text-align: center;
}

div {
  width: 300px;
}
```

[^^^](#FCC_WDC)

---

#### CSS_22

Comments in CSS look like this:

```
/* comment here */
```

In your style sheet, comment out the line containing the background-color property and value, so you can see the effect of only styling div element. This will make the background white again.

```html
/*  background-color: burlywood; */
```

[^^^](#FCC_WDC)

---

#### CSS_23

Now use the existing div selector to set the background color of the div element to be burlywood.

```html
div {
  width: 300px;
  background-color: burlywood;
}
```

[^^^](#FCC_WDC)

---

#### CSS_24

Now it's easy to see that the text is centered inside the div element. Currently, the width of the div element is specified in pixels (px). Change the width property's value to be 80%, to make it 80% the width of its parent element (body).

```html
div {
  width: 80%;
  background-color: burlywood;
}
```

[^^^](#FCC_WDC)

---

#### CSS_25

Next, you want to center the div horizontally. You can do this by setting its margin-left and margin-right properties to auto. Think of the margin as invisible space around an element. Using these two margin properties, center the div element within the body element.

```html
div {
  width: 80%;
  background-color: burlywood;
  margin-left: auto;
  margin-right: auto;
}
```

[^^^](#FCC_WDC)

---

#### CSS_26

So far you have been using type selectors to style elements. A class selector is defined by a name with a dot directly in front of it, like this:

```
.class-name {
  styles
}
```

Change the existing div selector into a class selector by replacing div with a class named menu.

```html
.menu {
  width: 80%;
  background-color: burlywood;
  margin-left: auto;
  margin-right: auto;
}
```

[^^^](#FCC_WDC)

---

#### CSS_27

To apply the class's styling to the div element, add a class attribute to the div element's opening tag and set its value to menu.

```html
<div class="menu">
```

[^^^](#FCC_WDC)

---

#### CSS_28

Since the cafe's main product for sale is coffee, you could use an image of coffee beans for the background of the page.
Delete the comment and its contents inside the body type selector. Now add a background-image property and set its value to ```url(https://cdn.freecodecamp.org/curriculum/css-cafe/beans.jpg)```.

```html
body {
  background-image: url(https://cdn.freecodecamp.org/curriculum/css-cafe/beans.jpg);
}
```

[^^^](#FCC_WDC)

---

#### CSS_29

It’s looking good. Time to start adding some menu items. Add an empty article element under the Coffee heading. It will contain a flavor and price of each coffee you currently offer.

```html
<h2>Coffee</h2>
<article></article>
```

[^^^](#FCC_WDC)

---

#### CSS_30

article elements commonly contain multiple elements that have related information. In this case, it will contain a coffee flavor and a price for that flavor. Nest two p elements inside your article element. The first one's text should be ```French Vanilla```, and the second's text ```3.00```.

```html
<article>
  <p>French Vanilla</p>
  <p>3.00</p>
</article>
```

[^^^](#FCC_WDC)

---

#### CSS_31

Starting below the existing coffee/price pair, add the following coffee and prices using article elements with two nested p elements inside each. As before, the first p element's text should contain the coffee flavor and the second p element's text should contain the price.

```html
<article>
  <p>French Vanilla</p><p>3.00</p>
</article>
<article>
  <p>Caramel Macchiato</p><p>3.75</p>
</article>
<article>
  <p>Pumpkin Spice</p><p>3.50</p>
</article>
<article>
  <p>Hazelnut</p><p>4.00</p>
</article>
<article>
  <p>Mocha</p><p>4.50</p>
</article>
```

[^^^](#FCC_WDC)

---

#### CSS_32

The flavors and prices are currently stacked on top of each other and centered with their respective p elements. It would be nice if the flavor was on the left and the price was on the right.
Add the class name flavor to the French Vanilla p element.

```html
<p class="flavor">French Vanilla</p>
<p>3.00</p>
```

[^^^](#FCC_WDC)

---

#### CSS_33

Using your new flavor class as a selector, set the text-align property's value to left.

```html
.flavor {
  text-align: left;
}
```

[^^^](#FCC_WDC)

---

#### CSS_34

Next, you want to align the price to the right. Add a class named price to your p element that has ```3.00``` as its text.

```html
<p class="price">3.00</p>
```

[^^^](#FCC_WDC)

---

#### CSS_35

Now align the text to the right for the elements with the price class.

```html
.price {
  text-align: right;
}
```

[^^^](#FCC_WDC)

---

#### CSS_36

That is kind of what you want, but now it would be nice if the flavor and price were on the same line. p elements are block-level elements, so they take up the entire width of their parent element.
To get them on the same line, you need to apply some styling to the p elements, so they behave more like inline elements. Add a class attribute with the value item to the first article element under the Coffee heading.

```html
<h2>Coffee</h2>
<article class="item">
  <p class="flavor">French Vanilla</p>
  <p class="price">3.00</p>
</article>
```

[^^^](#FCC_WDC)

---

#### CSS_37

The p elements are nested in an article element with the class attribute of item. You can style all the p elements nested anywhere in elements with a class named item like this:

```
.item p { }
```

Using the above selector, add a display property with value inline-block so the p elements behave more like inline elements.

```html
.item p {
  display: inline-block;
}
```

[^^^](#FCC_WDC)

---

#### CSS_38

That's closer, but the price didn't stay over on the right. This is because inline-block elements only take up the width of their content. To spread them out, add a width property to the flavor and price class selectors that have a value of ```50%``` each.

```html
.flavor {
  text-align: left;
  width: 50%;
}

.price {
  text-align: right;
  width: 50%;
}
```

[^^^](#FCC_WDC)

---

#### CSS_39

Well that did not work. Styling the p elements as inline-block and placing them on separate lines in the code creates an extra space to the right of the first p element, causing the second one to shift to the next line. One way to fix this is to make each p element's width a little less than ```50%```.
Change the width value to ```49%``` for each class to see what happens.

```html
.flavor {
  text-align: left;
  width: 49%;
}

.price {
  text-align: right;
  width: 49%;
}
```

[^^^](#FCC_WDC)

---

#### CSS_40

That worked, but there is still a little space on the right of the price.
You could keep trying various percentages for the widths. Instead, use the back space key on your keyboard to move the p element with the class price next to the p element with the class flavor so that they are on the same line in the editor. Make sure there is no space between them.

```html
<p class="flavor">French Vanilla</p><p class="price">3.00</p>
```

[^^^](#FCC_WDC)

---

#### CSS_41

Now go ahead and change both the flavor and price class' widths to be ```50%``` again.

```html
.flavor {
  text-align: left;
  width: 50%;
}

.price {
  text-align: right;
  width: 50%;
}
```

[^^^](#FCC_WDC)

---

#### CSS_42

Now that you know it works, you can change the remaining article and p elements to match the first set. Start by adding the class item to the other article elements.

```html
<article class="item">
  <p class="flavor">Caramel Macchiato</p><p class="price">3.75</p>
</article>
<article class="item">
  <p class="flavor">Pumpkin Spice</p><p class="price">3.50</p>
</article>
<article class="item">
  <p class="flavor">Hazelnut</p><p class="price">4.00</p>
</article>
<article class="item">
  <p class="flavor">Mocha</p><p class="price">4.50</p>
</article>
```

[^^^](#FCC_WDC)

---

#### CSS_43

Next, position the other p elements to be on the same line with no space between them.

```html
<article class="item">
  <p>Caramel Macchiato</p><p>3.75</p>
</article>
<article class="item">
  <p>Pumpkin Spice</p><p>3.50</p>
</article>
<article class="item">
  <p>Hazelnut</p><p>4.00</p>
</article>
<article class="item">
  <p>Mocha</p><p>4.50</p>
</article>
```

[^^^](#FCC_WDC)

---

#### CSS_44

To complete the styling, add the applicable class names flavor and price to all the remaining p elements.

```html
<article class="item">
  <p class="flavor">Caramel Macchiato</p><p class="price">3.75</p>
</article>
<article class="item">
  <p class="flavor">Pumpkin Spice</p><p class="price">3.50</p>
</article>
<article class="item">
  <p class="flavor">Hazelnut</p><p class="price">4.00</p>
</article>
<article class="item">
  <p class="flavor">Mocha</p><p class="price">4.50</p>
</article>
```

[^^^](#FCC_WDC)

---

#### CSS_45

If you make the width of the page preview smaller, you will notice at some point, some of the text on the left starts wrapping around to the next line. This is because the width of the p elements on the left side can only take up 50% of the space.
Since you know the prices on the right have significantly fewer characters, change the flavor class width value to be ```75%``` and the price class width value to be ```25%```.

```html
.flavor {
  text-align: left;
  width: 75%;
}

.price {
  text-align: right;
  width: 25%;
}
```

[^^^](#FCC_WDC)

---

#### CSS_46

You will come back to styling the menu in a few steps, but for now, go ahead and add a second section element below the first for displaying the desserts offered by the cafe.

```html
<section>
  <h2>Coffee</h2>
  <article class="item">
    <p class="flavor">French Vanilla</p><p class="price">3.00</p>
  </article>
  <article class="item">
    <p class="flavor">Caramel Macchiato</p><p class="price">3.75</p>
  </article>
  <article class="item">
    <p class="flavor">Pumpkin Spice</p><p class="price">3.50</p>
  </article>
  <article class="item">
    <p class="flavor">Hazelnut</p><p class="price">4.00</p>
  </article>
  <article class="item">
    <p class="flavor">Mocha</p><p class="price">4.50</p>
  </article>
</section>
<section>
</section>
```

[^^^](#FCC_WDC)

---

#### CSS_47

Add an h2 element in the new section and give it the text Desserts.

```html
<section>
  <h2>Desserts</h2>
</section>
```

[^^^](#FCC_WDC)

---

#### CSS_48

Add an empty article element under the Desserts heading. Give it a class attribute with the value item.

```html
<h2>Desserts</h2>
<article class="item"></article>
```

[^^^](#FCC_WDC)

---

#### CSS_49

Nest two p elements inside your article element. The first one's text should be Donut, and the second's text 1.50. Put both of them on the same line making sure there is no space between them.

```html
<article class="item">
  <p>Donut</p><p>1.50</p>
</article>
```

[^^^](#FCC_WDC)

---

#### CSS_50

For the two p elements you just added, add dessert as the value of the first p element's class attribute and the value price as the second p elements class attribute.

```html
<p class="dessert">Donut</p><p class="price">1.50</p>
```

[^^^](#FCC_WDC)

---

#### CSS_51

Something does not look right. You added the correct class attribute value to the p element with Donut as its text, but you have not defined a selector for it.
Since the flavor class selector already has the properties you want, just add the dessert class name to it.

```html
.flavor, .dessert {
  text-align: left;
  width: 75%;
}
```

[^^^](#FCC_WDC)

---

#### CSS_52

Below the dessert you just added, add the rest of the desserts and prices using three more article elements, each with two nested p elements. Each element should have the correct dessert and price text, and all of them should have the correct classes.

```html
<article class="item">
  <p class="dessert">Donut</p><p class="price">1.50</p>
</article>
<article class="item">
  <p class="dessert">Cherry Pie</p><p class="price">2.75</p>
</article>
<article class="item">
  <p class="dessert">Cheesecake</p><p class="price">3.00</p>
</article>
<article class="item">
  <p class="dessert">Cinnamon Roll</p><p class="price">2.50</p>
</article>
```

[^^^](#FCC_WDC)

---

#### CSS_53

You can give your menu some space between the content and the sides with various padding properties.
Give the menu class a padding-left and a padding-right with the same value 20px.

```html
.menu {
  width: 80%;
  background-color: burlywood;
  margin-left: auto;
  margin-right: auto;
  padding-left: 20px;
  padding-right: 20px;
}
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
