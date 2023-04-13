
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### OPERATORS

---

* [ARITHMETIC_OPERATORS](#ARITHMETIC_OPERATORS)
* [ASSIGNMENT_OPERATORS](#ASSIGNMENT_OPERATORS)
* [COMPARISON_OPERATORS](#COMPARISON_OPERATORS)

---

Operators are used to perform operations on variables and values.

In the example below, we use the + operator to add together two values:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 100 + 50;

        System.out.println(x);
    }
}

>>>
150
>>>
```

Although the + operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int sum1 = 100 + 50;        // 150 (100 + 50)
        int sum2 = sum1 + 250;      // 400 (150 + 250)
        int sum3 = sum2 + sum2;     // 800 (400 + 400)

        System.out.println(sum1);
        System.out.println(sum2);
        System.out.println(sum3);
    }
}

>>>
150
400
800
>>>
```

Java divides the operators into the following groups:

- Arithmetic operators
- Assignment operators
- Comparison operators
- Logical operators
- Bitwise operators

[^^^](#OPERATORS)

---

#### ARITHMETIC_OPERATORS

Arithmetic operators are used to perform common mathematical operations.

| Operator |	Name |	Description |	Example |
| --------- | ---- | ------------ | -------- |
| +	        | Addition |	Adds together two values |	x + y |
| -	| Subtraction	| Subtracts one value from another |	x - y |
| *	| Multiplication |	Multiplies two values	| x * y	|
| /	| Division	| Divides one value by another	| x / y	|
| %	| Modulus	| Returns the division remainder	| x % y	|
| ++ |	Increment |	Increases the value of a variable by 1	| ++x	|
| -- |	Decrement	| Decreases the value of a variable by 1	| --x |

[^^^](#OPERATORS)

---

#### ASSIGNMENT_OPERATORS

Assignment operators are used to assign values to variables.

In the example below, we use the assignment operator (=) to assign the value 10 to a variable called x:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 10;

        System.out.println(x);

    }
}

>>>
10
>>>
```

The addition assignment operator (+=) adds a value to a variable:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 10;
        x += 5;

        System.out.println(x);

    }
}

>>>
15
>>>
```

A list of all assignment operators:

| Operator	| Example	| Same As	|
| --------- | ------- | ------- |
| =	| x = 5	| x = 5 | 	
| +=	| x += 3	| x = x + 3 |
| *=	| x *= 3	| x = x * 3 |
| -=	| x -= 3	| x = x - 3 |
| /=	| x /= 3	| x = x / 3 |
| %=	| x %= 3	| x = x % 3 |
| |=	| x |= 3	| x = x | 3 |
| &=	| x &= 3	| x = x & 3 |
| ^=	| x ^= 3	| x = x ^ 3 |
| >>=	| x >>= 3	| x = x >> 3 |
| <<=	| x <<= 3	| x = x << 3 |

[^^^](#OPERATORS)

---

#### COMPARISON_OPERATORS

Comparison operators are used to compare two values (or variables). This is important in programming, because it helps us to find answers and make decisions.

The return value of a comparison is either true or false. These values are known as Boolean values, and you will learn more about them in the Booleans and If..Else chapter.

In the following example, we use the greater than operator (>) to find out if 5 is greater than 3:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 5;
        int y = 3;

        System.out.println(x > y);

    }
}

>>>
true
>>>
```

| Operator |	Name |	Example |
| -------- | ----- | -------- |
| ==	| Equal to	| x == y	|
| !=	| Not equal	| x != y |
| >	  | Greater than	| x > y 	
| <	  | Less than	| x < y	|
| >=	| Greater than or equal to	| x >= y | 	
| <=	| Less than or equal to	| x <= y |

[^^^](#OPERATORS)

---
