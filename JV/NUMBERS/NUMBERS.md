
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### NUMBERS

---

Primitive number types are divided into two groups:

Integer types stores whole numbers, positive or negative (such as 123 or -456), without decimals. Valid types are byte, short, int and long. Which type you should use, depends on the numeric value.

Floating point types represents numbers with a fractional part, containing one or more decimals. There are two types: float and double.

---

* [BYTE](#BYTE)

---

#### BYTE

The byte data type can store whole numbers from -128 to 127. This can be used instead of int or other integer types to save memory when you are certain that the value will be within -128 and 127

```jv
public class HelloWorld {
    public static void main(String[] args) {
        byte myNum = 100;
        System.out.println(myNum);
    }
}

>>>
100
>>>
```

[^^^](#NUMBERS)

---
