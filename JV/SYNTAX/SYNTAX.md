
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### SYNTAX

---

In the previous chapter, we created a Java file called Main.java, and we used the following code to print "Hello World" to the screen:

```jv
public class Main {
  public static void main(String[] args) {
    System.out.println("Hello World");
  }
}

>>>
Hello World
>>>
```

Every line of code that runs in Java must be inside a class. In our example, we named the class Main. A class should always start with an uppercase first letter.

Note: Java is case-sensitive: "MyClass" and "myclass" has different meaning.

---

#### The main() method 

The ```main()``` method is required and you will see it in every Java program.

```jv
public static void main(String[] args)
```

Any code inside the ```main()``` method will be executed. Don't worry about the keywords before and after main. You will get to know them bit by bit while reading this tutorial.

For now, just remember that every Java program has a class name which must match the filename, and that every program must contain the ```main()``` method.

---

#### System.out.println()

Inside the ```main()``` method, we can use the ```println()``` method to print a line of text to the screen.

```jv
public static void main(String[] args) {
  System.out.println("Hello World");
}
```
