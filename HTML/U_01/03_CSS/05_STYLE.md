
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [HTML_NAV](https://github.com/ttltrk/TTT/tree/master/HTML/HTML_NAV.md) - [U_01_HTML](https://github.com/ttltrk/TTT/tree/master/HTML/U_01/U_01.md) - [BOX_MODEL](https://github.com/ttltrk/TTT/tree/master/HTML/U_01/03_CSS/BOX_MODEL.md)

---

### 05_STYLE

---

### CSS part

```css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Helvetica Neue, Arial;
    font-size: 18px;
}

h1, h2 {
    color: #069a11;
}

h1 {
    font-size: 40px;
    margin-bottom: 20px;
}

h2 {
    font-size: 25px;
    margin-bottom: 10px;
}

.main-text {
    text-align: justify;
    margin-bottom: 20px;
}

.author-text {
    font-size: 22px;
}
```

### HTML part

```html
<!DOCTYPE html>
<html>

    <head>
        <title>My first blog post</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>

    <body>

        <h1>My first blog post</h1>
        <h2>This is my first blog post</h2>

        <p class="main-text">
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,
        </p>

        <img src="logo.jpg" alt="The HTML5 logo">

        <a href="http://www.udemy.com" target="_blank">Link to udemy</a>
        <a href="logo.jpg" target="_blank">html logo</a>

        <h2>HTML is amazing</h2>

        <p class="main-text">
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,
        </p>

        <img src="author.jpg" alt="Author photo">
        <p class="author-text">Loretta Howell</p>

    </body>

</html>
```

---
