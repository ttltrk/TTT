
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### OUTPUT

---

#### Print Text

You learned from the previous chapter that you can use the println() method to output values or print text in Java.
You can add as many println() methods as you want. Note that it will add a new line for each method.

```jv
public class Main {
  public static void main(String[] args) {
    System.out.println("Hello World!");
    System.out.println("I am learning Java.");
    System.out.println("It is awesome!");
  }
}

>>>
Hello World!
I am learning Java.
It is awesome!
>>>
```

---

#### Double Quotes

When you are working with text, it must be wrapped inside double quotations marks ```""```.
If you forget the double quotes, an error occurs.

```jv
System.out.println("This sentence will work!");
System.out.println(This sentence will produce an error);
```

---

#### The Print() Method

There is also a print() method, which is similar to println().
The only difference is that it does not insert a new line at the end of the output.

```jv
public class Main {
  public static void main(String[] args) {
    System.out.print("Hello World! ");
    System.out.print("I will print on the same line.");
  }
}

>>>
Hello World! I will print on the same line.
>>>
```

---
