
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### SELENIDE

---

* [main_link](https://www.youtube.com/watch?v=WiRtmHs-V8c&list=PL6AdzyjjD5HC4NJuc083bzFq86JekmASF&index=5)

---

#### pom.xml

```
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>selenide_series</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>17</maven.compiler.source>
        <maven.compiler.target>17</maven.compiler.target>
    </properties>

    <dependencies>
        <dependency>
            <groupId>com.codeborne</groupId>
            <artifactId>selenide</artifactId>
            <version>6.13.0</version>
            <scope>test</scope>
        </dependency>

        <!-- https://mvnrepository.com/artifact/org.testng/testng -->
        <dependency>
            <groupId>org.testng</groupId>
            <artifactId>testng</artifactId>
            <version>7.7.1</version>
            <scope>test</scope>
        </dependency>

    </dependencies>
</project>
```

---

#### HomeTest.java

```java
import com.codeborne.selenide.CollectionCondition;
import com.codeborne.selenide.ElementsCollection;
import com.codeborne.selenide.WebDriverRunner;
import org.openqa.selenium.By;
import org.testng.annotations.Test;

import java.util.List;

import static com.codeborne.selenide.Selenide.*;
import static com.codeborne.selenide.Condition.*;
import static org.testng.Assert.*;

public class HomeTest {

    @Test
    public void testPageUrlAndTitle() {
        //Open Page URL
        open("https://practice.automationbro.com/");

        String url = WebDriverRunner.url();
        assertEquals(url, "https://practice.automationbro.com/");

        String title = title();
        assertEquals(title, "Practice E-Commerce Site - Automation Bro");
    }

    @Test
    public void testInteractingWithElements() {

        open("https://practice.automationbro.com/");

        //By ID
        $(By.id("get-started")).click();

        //verify url contains
        String url = WebDriverRunner.url();
        assertTrue(url.contains("get-started"));

        //verify heading by CssSelector
        //Think different.
        $("h1")
                .shouldHave(text("Think different. Make different."));

        //verify by xpath
        //a[@class="custom-logo-link"]
        $(By.xpath("//a[@class=\"custom-logo-link\"]"))
                .should(be(visible));
    }

    @Test
    public void testMultipleElements() {

        //Open Page URL
        open("https://practice.automationbro.com/");

        List<String> expectedLinks = List.of("Home", "About", "Shop", "Blog", "Contact", "My account");

        //check the inspect part on the website
        ElementsCollection LinkLists = $$ ("#primary-menu li[id*=menu-item]");

        //1st version
        //List<String> linkListsText = LinkLists.texts();
        //assertion
        //assertEquals(linkListsText, expectedLinks );

        //2nd version
        //assertion
        LinkLists.shouldHave(CollectionCondition.texts(expectedLinks));
    }
}
```

```java
import com.codeborne.selenide.Condition;
import org.testng.annotations.Test;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class FormTest {

    @Test
    public void testFormFields() {
        //open URL
        open("https://practice.automationbro.com/support-form");

        //fill in all the fields
        $(".support-name input").val("Luffy");
        $(".support-email input").val("luffy@onepiece.com");
        $(".support-subject input").val("Need help with repairing my ship");

        //dropdown and checkbox
        $(".support-dropdown select").selectOption("Technical Team");
        $(".support-checkboxes ul li:nth-child(2) input").click();

        //date input field
        $(".support-date input").click();
        $(".flatpickr-day.nextMonthDay").click();

        //click the submit button
        $("button[type=submit]").click();

        //verify submit message
        $("div[role=alert]").shouldHave(Condition.text("Thanks for contacting us! We will be in touch with you shortly"));
    }
}
```
