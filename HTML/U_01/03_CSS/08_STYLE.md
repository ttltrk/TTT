
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [HTML_NAV](https://github.com/ttltrk/TTT/tree/master/HTML/HTML_NAV.md) - [U_01_HTML](https://github.com/ttltrk/TTT/tree/master/HTML/U_01/U_01.md) - [RELATIVE_ABSOLUTE](https://github.com/ttltrk/TTT/tree/master/HTML/U_01/03_CSS/RELATIVE_ABSOLUTE.md)

---

### 08_STYLE

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

.container {
    width: 1140px;
    margin: 20px auto 0 auto;
}

.blog-post {
    width: 75%;
    float: left;
    padding-right: 30px;
    position: relative;
}

.blog-post img {
    height: 150px;
    width: auto;
}

.other-posts {
    width: 25%;
    float: left;
}

.other {
    margin-bottom: 40px;    
}

.author-box {
    padding-top: 20px;
    border-top: 1px solid #808080;
}

.author-box img {
    height: 100px;
    width: 100px;
    border-radius: 50%;
    float: left;
}

.main-text {
    text-align: justify;
    margin-bottom: 20px;
}

.author-text {
    font-size: 22px;
    float: left;
    margin-top: 30px;
    margin-left: 10px;
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}

.date {
    position: absolute;
    top: 10px;
    right: 30px;
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

        <div class="container">

            <div class="blog-post">

                <h1>My first blog post</h1>

                <p class="date">January 04th 2021</p>

                <h2>This is my first blog post</h2>

                <p class="main-text">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,
                </p>

                <a href="http://www.udemy.com" target="_blank">Link to udemy</a>
                <a href="logo.jpg" target="_blank">html logo</a>

                <h2>HTML is amazing</h2>

                <p class="main-text">
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,
                </p>

                <img src="logo.jpg" alt="The HTML5 logo">

            </div>

            <div class="other-posts">

                <div class="other">
                    The first other blog post
                </div>

                <div class="other">
                    The second other blog post
                </div>

                <div class="other">
                    The third other blog post
                </div>

            </div>

            <div class="clearfix"></div>

            <div class="author-box">
                <img src="author.jpg" alt="Author photo">
                <p class="author-text">Loretta Howell</p>
            </div>

        </div>  

    </body>

</html>
```

---
