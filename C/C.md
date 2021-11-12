
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### C

---

* [CLE](https://github.com/ttltrk/TTT/blob/master/C/CLE/CLE.md)

---

* [SOURCE](https://www.programiz.com/c-programming)
* [C_INTRODUCTION](#C_INTRODUCTION)
* [C_FLOW_CONTROL](#C_FLOW_CONTROL)
* [C_FUNCTIONS](#C_FUNCTIONS)
* [C_PROGRAMMING_ARRAYS](#C_PROGRAMMING_ARRAYS)
* [C_PROGRAMMING_POINTERS](#C_PROGRAMMING_POINTERS)
* [C_PROGRAMMING_STRINGS](#C_PROGRAMMING_STRINGS)
* [C_STRUCTURE_AND_UNION](#C_STRUCTURE_AND_UNION)
* [C_PROGRAMMING_FILES](#C_PROGRAMMING_FILES)
* [C_ADDITIONAL_TOPICS](#C_ADDITIONAL_TOPICS)

---

#### C_INTRODUCTION

* [KEYWORDS_IDENTIFIERS](#KEYWORDS_IDENTIFIERS)
* [VARIABLES](#VARIABLES)
* [DATA_TYPES](#DATA_TYPES)
* [INPUT_OUTPUT](#INPUT_OUTPUT)
* [OPERATORS](#OPERATORS)
* [INTRO_EXAMPLES](#INTRO_EXAMPLES)

[^^^](#C)

---

#### KEYWORDS_IDENTIFIERS

A character set is a set of alphabets, letters and some special characters that are valid in C language.

- Alphabets

```
Uppercase: A B C ................................... X Y Z
Lowercase: a b c ...................................... x y z
```

- Digits

0 1 2 3 4 5 6 7 8 9

- Special characters

```
,	<	>	.	_
(	)	;	$	:
%	[	]	#	?
'	&	{	}	"
^	!	*	/	|
-	\	~	+
```

- White space characters

Blank space, newline, horizontal tab, carriage return and form feed.

##### - KEYWORDS

Keywords are predefined, reserved words used in programming that have special meanings to the compiler. Keywords are part of the syntax and they cannot be used as an identifier.

```
auto	double	int	struct
break	else	long	switch
case	enum	register	typedef
char	extern	return	union
continue	for	signed	void
do	if	static	while
default	goto	sizeof	volatile
const	float	short	unsigned
```

All these keywords, their syntax, and application will be discussed in their respective topics.

##### - IDENTIFIERS

Identifier refers to name given to entities such as variables, functions, structures etc.

Identifiers must be unique. They are created to give a unique name to an entity to identify it during the execution of the program. For example:

```c
int money;
double accountBalance;
```

Here, money and accountBalance are identifiers.

Also remember, identifier names must be different from keywords. You cannot use int as an identifier because int is a keyword.

[^^^](#C_INTRODUCTION)

---

#### VARIABLES

In programming, a variable is a container (storage area) to hold data.
To indicate the storage area, each variable should be given a unique name (identifier). Variable names are just the symbolic representation of a memory location.

```c
#include <stdio.h>    
int main()
{
    int playerScore = 95;

    printf("%d",playerScore);

return 0;
}

>>>
95
--------------------------------
Process exited after 1.316 seconds with return value 0
Press any key to continue . . .
>>>
```

Here, playerScore is a variable of int type. Here, the variable is assigned an integer value 95.
The value of a variable can be changed, hence the name variable.

```c
#include <stdio.h>    
int main()
{
    int playerScore = 95;
    char ch = 'a';
	ch = 'l';

    printf("%d",playerScore);
	printf("%c",ch);

return 0;
}

>>>
95l
--------------------------------
Process exited after 1.289 seconds with return value 0
Press any key to continue . . .
>>>
```

C is a strongly typed language. This means that the variable type cannot be changed once it is declared. For example:

```c
int number = 5;      // integer variable
number = 5.5;        // error
double number;       // error
```

Here, the type of number variable is int. You cannot assign a floating-point (decimal) value 5.5 to this variable. Also, you cannot redefine the data type of the variable to double. By the way, to store the decimal values in C, you need to declare its type to either double or float.

##### - LITERALS

Literals are data used for representing fixed values. They can be used directly in the code. For example: ```1, 2.5, 'c'``` etc.
Here, ```1, 2.5 and 'c'``` are literals. Why? You cannot assign different values to these terms.

```
- Integer
- Floating-point literal
- Characters
- Escape sequences
- String literals
```

- An integer is a numeric literal(associated with numbers) without any fractional or exponential part. There are three types of integer literals in C programming:

```
decimal (base 10)
octal (base 8)
hexadecimal (base 16)
```

```
Decimal: 0, -9, 22 etc
Octal: 021, 077, 033 etc
Hexadecimal: 0x7f, 0x2a, 0x521 etc
```

- A floating-point literal is a numeric literal that has either a fractional form or an exponent form. For example:

```
-2.0
0.0000234
-0.22E-5
```

- A character literal is created by enclosing a single character inside single quotation marks. For example: ```'a', 'm', 'F', '2', '}'``` etc.

- Escape Sequences
Sometimes, it is necessary to use characters that cannot be typed or has special meaning in C programming. For example: newline(enter), tab, question mark etc.

In order to use these characters, escape sequences are used.

```
Escape Sequences	Character
\b	              Backspace
\f	              Form feed
\n	              Newline
\r	              Return
\t	              Horizontal tab
\v	              Vertical tab
\\	              Backslash
\'	              Single quotation mark
\"	              Double quotation mark
\?	              Question mark
\0	              Null character
```

- A string literal is a sequence of characters enclosed in double-quote marks. For example:

```
"good"                 //string constant
""                     //null string constant
"      "               //string constant of six white space
"x"                    //string constant having a single character.
"Earth is round\n"     //prints string with a newline
```

##### - Constants

If you want to define a variable whose value cannot be changed, you can use the ```const``` keyword. This will create a constant. For example,

```c
const double PI = 3.14;
```

Notice, we have added keyword const.

Here, PI is a symbolic constant; its value cannot be changed.

```c
const double PI = 3.14;
PI = 2.9; //Error
```

[^^^](#C_INTRODUCTION)

---

#### DATA_TYPES

In C programming, data types are declarations for variables. This determines the type and size of data associated with variables. For example,

```c
int myVar;
```

Here, myVar is a variable of int (integer) type. The size of int is 4 bytes.

Here's a table containing commonly used types in C programming for quick access.

| Type | Size (bytes) | Format Specifier |
| --- | --- | --- |
| int | at least 2, usually 4 | %d, %i |

```
Type	                  Size (bytes)	                  Format Specifier
int	                    at least 2, usually 4	          %d, %i
char	                  1	                              %c
float	                  4	                              %f
double	                8	                              %lf
short int	              2 usually	                      %hd
unsigned int	          at least 2, usually 4	          %u
long int	              at least 4, usually 8	          %ld, %li
long long int	          at least 8	                    %lld, %lli
unsigned long int	      at least 4	                    %lu
unsigned long long int	at least 8	                    %llu
signed char	            1	                              %c
unsigned char	          1	                              %c
long double	            at least 10, usually 12 or 16	  %Lf
```

##### - int

Integers are whole numbers that can have both zero, positive and negative values but no decimal values. For example, ```0, -5, 10```

We can use int for declaring an integer variable.

```c
int id;
```

Here, id is a variable of type integer.

You can declare multiple variables at once in C programming. For example,

```c
int id, age;
```

The size of int is usually 4 bytes (32 bits). And, it can take 232 distinct states from ```-2147483648``` to ```2147483647```.

##### - float and double

float and double are used to hold real numbers.

```c
float salary;
double price;
```

In C, floating-point numbers can also be represented in exponential. For example,

```c
float normalizationFactor = 22.442e2;
```
What's the difference between float and double?

The size of float (single precision float data type) is 4 bytes. And the size of double (double precision float data type) is 8 bytes.

##### - char

Keyword char is used for declaring character type variables. For example,

```c
char test = 'h';
```

The size of the character variable is 1 byte.

##### - void

void is an incomplete type. It means "nothing" or "no type". You can think of void as absent.
For example, if a function is not returning anything, its return type should be void.
Note that, you cannot create variables of void type.

##### - short and long

If you need to use a large number, you can use a type specifier long. Here's how:

```c
long a;
long long b;
long double c;
```

Here variables a and b can store integer values. And, c can store a floating-point number.

If you are sure, only a small integer ```([−32,767, +32,767] range)``` will be used, you can use short.

```c
short d;
```

You can always check the size of a variable using the ```sizeof()``` operator.

```c
#include <stdio.h>      
int main() {
  short a;
  long b;
  long long c;
  long double d;

  printf("size of short = %d bytes\n", sizeof(a));
  printf("size of long = %d bytes\n", sizeof(b));
  printf("size of long long = %d bytes\n", sizeof(c));
  printf("size of long double= %d bytes\n", sizeof(d));
  return 0;
}

>>>
size of short = 2 bytes
size of long = 4 bytes
size of long long = 8 bytes
size of long double= 16 bytes

--------------------------------
Process exited after 1.071 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - signed and unsigned

In C, signed and unsigned are type modifiers. You can alter the data storage of a data type by using them. For example,

```c
unsigned int x;
int y;
```

Here, the variable x can hold only zero and positive values because we have used the unsigned modifier.

Considering the size of int is 4 bytes, variable y can hold values from ```-231 to 231-1```, whereas variable x can hold values from ```0 to 232-1```.

Other data types defined in C programming are:

- bool Type
- Enumerated type
- Complex types

[^^^](#C_INTRODUCTION)

---

#### INPUT_OUTPUT

##### - C Output

In C programming, ```printf()``` is one of the main output function. The function sends formatted output to the screen. For example,

```c
#include <stdio.h>    
int main()
{
    // Displays the string inside quotations
    printf("C Programming");
    return 0;
}

>>>
C Programming
--------------------------------
Process exited after 1.782 seconds with return value 0
Press any key to continue . . .
>>>
```

- All valid C programs must contain the ```main()``` function. The code execution begins from the start of the ```main()``` function.
- The ```printf()``` is a library function to send formatted output to the screen. The function prints the string inside quotations.
- To use ```printf()``` in our program, we need to include ```stdio.h``` header file using the ```#include <stdio.h>``` statement.
- The return 0; statement inside the ```main()``` function is the "Exit status" of the program. It's optional.

```c
#include <stdio.h>
int main()
{
    int testInteger = 5;

    printf("Number = %d", testInteger);

return 0;
}

>>>
Number = 5
--------------------------------
Process exited after 1.906 seconds with return value 0
Press any key to continue . . .
>>>
```

We use ```%d``` format specifier to print int types. Here, the %d inside the quotations will be replaced by the value of testInteger.

```c
#include <stdio.h>
int main()
{
    float number1 = 13.5;
    double number2 = 12.4;

    printf("number1 = %f\n", number1);
    printf("number2 = %lf", number2);

return 0;
}

>>>
number1 = 13.500000
number2 = 12.400000
--------------------------------
Process exited after 1.374 seconds with return value 0
Press any key to continue . . .
>>>
```

To print float, we use ```%f``` format specifier. Similarly, we use ```%lf``` to print double values.


```c
#include <stdio.h>
int main()
{
    char chr = 'a';    

    printf("character = %c", chr);  

return 0;
}

>>>
character = a
--------------------------------
Process exited after 1.322 seconds with return value 0
Press any key to continue . . .
>>>
```

To print char, we use ```%c``` format specifier.

##### - C Input

In C programming, ```scanf()``` is one of the commonly used function to take input from the user. The ```scanf()``` function reads formatted input from the standard input such as keyboards.

```c
#include <stdio.h>
int main()
{
    int testInteger;
    printf("Enter an integer: ");

    scanf("%d", &testInteger);
	  printf("Number = %d",testInteger);

return 0;
}

>>>
Enter an integer: 23
Number = 23
--------------------------------
Process exited after 5.455 seconds with return value 0
Press any key to continue . . .
>>>
```

Here, we have used %d format specifier inside the ```scanf()``` function to take int input from the user. When the user enters an integer, it is stored in the testInteger variable.

Notice, that we have used &testInteger inside ```scanf()```. It is because &testInteger gets the address of testInteger, and the value entered by the user is stored in that address.

```c
#include <stdio.h>
int main()
{
    float num1;
    double num2;

    printf("Enter a number: ");
    scanf("%f", &num1);

    printf("Enter another number: ");
    scanf("%lf", &num2);

    printf("num1 = %f\n", num1);
    printf("num2 = %lf", num2);

return 0;
}

>>>
Enter a number: 10.5
Enter another number: 9.2
num1 = 10.500000
num2 = 9.200000
--------------------------------
Process exited after 6.903 seconds with return value 0
Press any key to continue . . .
>>>
```

We use ```%f``` and ```%lf``` format specifier for float and double respectively.

```c
#include <stdio.h>
int main()
{
    char chr;

	  printf("Enter a character: ");
    scanf("%c",&chr);     

	  printf("You entered %c.", chr);  

return 0;
}

>>>
Enter a character: e
You entered e.
--------------------------------
Process exited after 3.724 seconds with return value 0
Press any key to continue . . .
>>>
```

When a character is entered by the user in the above program, the character itself is not stored. Instead, an integer value (ASCII value) is stored.
And when we display that value using ```%c``` text format, the entered character is displayed. If we use ```%d``` to display the character, it's ASCII value is printed.

```c
#include <stdio.h>
int main()
{
    char chr;
    printf("Enter a character: ");
    scanf("%c", &chr);     

    // When %c is used, a character is displayed
    printf("You entered %c.\n",chr);  

    // When %d is used, ASCII value is displayed
    printf("ASCII value is %d.", chr);  

return 0;
}

>>>
Enter a character: t
You entered t.
ASCII value is 116.
--------------------------------
Process exited after 3.853 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - I/O Multiple Values

Here's how you can take multiple inputs from the user and display them.

```c
#include <stdio.h>
int main()
{
    int a;
    float b;

    printf("Enter integer and then a float: ");

    // Taking multiple inputs
    scanf("%d%f", &a, &b);

    printf("You entered %d and %f", a, b);  

return 0;
}

>>>
Enter integer and then a float: 3
4.3
You entered 3 and 4.300000
--------------------------------
Process exited after 15.04 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Format Specifiers for I/O

As you can see from the above examples, we use

```
%d for int
%f for float
%lf for double
%c for char
```

Here's a list of commonly used C data types and their format specifiers.

```
Data Type	Format Specifier
int	%d
char	%c
float	%f
double	%lf
short int	%hd
unsigned int	%u
long int	%li
long long int	%lli
unsigned long int	%lu
unsigned long long int	%llu
signed char	%c
unsigned char	%c
long double	%Lf
```

[^^^](#C_INTRODUCTION)

---

#### OPERATORS

An operator is a symbol that operates on a value or a variable. For example: ```+``` is an operator to perform addition.
C has a wide range of operators to perform various operations.

```
Operator	Meaning of Operator
+	addition or unary plus
-	subtraction or unary minus
*	multiplication
/	division
%	remainder after division (modulo division)
```

```c
// Working of arithmetic operators
#include <stdio.h>
int main()
{
    int a = 9,b = 4, c;

    c = a+b;
    printf("a+b = %d \n",c);

	  c = a-b;
    printf("a-b = %d \n",c);

	  c = a*b;
    printf("a*b = %d \n",c);

	  c = a/b;
    printf("a/b = %d \n",c);

	  c = a%b;
    printf("Remainder when a divided by b = %d \n",c);

return 0;
}

>>>
a+b = 13
a-b = 5
a*b = 36
a/b = 2
Remainder when a divided by b = 1

--------------------------------
Process exited after 2.098 seconds with return value 0
Press any key to continue . . .
>>>
```

The operators ```+, - and *``` computes addition, subtraction, and multiplication respectively as you might have expected.

In normal calculation, ```9/4 = 2.25.``` However, the output is 2 in the program.

It is because both the variables a and b are integers. Hence, the output is also an integer. The compiler neglects the term after the decimal point and shows answer 2 instead of 2.25.

The modulo operator % computes the remainder. When a=9 is divided by b=4, the remainder is 1. The % operator can only be used with integers.

Suppose a = 5.0, b = 2.0, c = 5 and d = 2. Then in C programming,

##### - C Increment and Decrement Operators

C programming has two operators increment ++ and decrement -- to change the value of an operand (constant or variable) by 1.

Increment ```++``` increases the value by 1 whereas decrement ```--``` decreases the value by 1. These two operators are unary operators, meaning they only operate on a single operand.

```c
// Working of increment and decrement operators
#include <stdio.h>
int main()
{
    int a = 10, b = 100;
    float c = 10.5, d = 100.5;

	printf("a = %d \n", a);
    printf("++a = %d \n", ++a);

    printf("b = %d \n", b);
    printf("--b = %d \n", --b);

    printf("c = %f \n", c);
    printf("++c = %f \n", ++c);

    printf("d = %f \n", d);
	printf("--d = %f \n", --d);

    return 0;
}

>>>
a = 10
++a = 11
b = 100
--b = 99
c = 10.500000
++c = 11.500000
d = 100.500000
--d = 99.500000

--------------------------------
Process exited after 1.121 seconds with return value 0
Press any key to continue . . .
>>>
```

Here, the operators ```++``` and ```--``` are used as prefixes. These two operators can also be used as postfixes like ```a++``` and ```a--```. Visit this page to learn more about how increment and decrement operators work when used as postfix.

##### - C Assignment Operators

An assignment operator is used for assigning a value to a variable. The most common assignment operator is ```=```

```
Operator	Example	Same as
=	a = b	a = b
+=	a += b	a = a+b
-=	a -= b	a = a-b
*=	a *= b	a = a*b
/=	a /= b	a = a/b
%=	a %= b	a = a%b
```

```c
// Working of assignment operators
#include <stdio.h>
int main()
{
    int a = 5, c;

    c = a;      // c is 5
    printf("c = %d\n", c);

    c += a;     // c is 10
    printf("c = %d\n", c);

	c -= a;     // c is 5
    printf("c = %d\n", c);

	c *= a;     // c is 25
    printf("c = %d\n", c);

	c /= a;     // c is 5
    printf("c = %d\n", c);

	c %= a;     // c = 0
    printf("c = %d\n", c);

    return 0;
}

>>>
c = 5
c = 10
c = 5
c = 25
c = 5
c = 0

--------------------------------
Process exited after 1.642 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - C Relational Operators

A relational operator checks the relationship between two operands. If the relation is true, it returns 1; if the relation is false, it returns value 0.

Relational operators are used in decision making and loops.

```
Operator	Meaning of Operator	Example
==	Equal to	5 == 3 is evaluated to 0
>	Greater than	5 > 3 is evaluated to 1
<	Less than	5 < 3 is evaluated to 0
!=	Not equal to	5 != 3 is evaluated to 1
>=	Greater than or equal to	5 >= 3 is evaluated to 1
<=	Less than or equal to	5 <= 3 is evaluated to 0
```

```c
// Working of relational operators
#include <stdio.h>
int main()
{
    int a = 5, b = 5, c = 10;

    printf("%d == %d is %d \n", a, b, a == b);
    printf("%d == %d is %d \n", a, c, a == c);
    printf("%d > %d is %d \n", a, b, a > b);
    printf("%d > %d is %d \n", a, c, a > c);
    printf("%d < %d is %d \n", a, b, a < b);
    printf("%d < %d is %d \n", a, c, a < c);
    printf("%d != %d is %d \n", a, b, a != b);
    printf("%d != %d is %d \n", a, c, a != c);
    printf("%d >= %d is %d \n", a, b, a >= b);
    printf("%d >= %d is %d \n", a, c, a >= c);
    printf("%d <= %d is %d \n", a, b, a <= b);
    printf("%d <= %d is %d \n", a, c, a <= c);

    return 0;
}

>>>
5 == 5 is 1
5 == 10 is 0
5 > 5 is 0
5 > 10 is 0
5 < 5 is 0
5 < 10 is 1
5 != 5 is 0
5 != 10 is 1
5 >= 5 is 1
5 >= 10 is 0
5 <= 5 is 1
5 <= 10 is 1
>>>
```

##### - C Logical Operators

An expression containing logical operator returns either 0 or 1 depending upon whether expression results true or false. Logical operators are commonly used in decision making in C programming.

```
Operator	 Meaning	Example
&&	       Logical AND. True only if all operands are true	If c = 5 and d = 2 then, expression ((c==5) && (d>5)) equals to 0.
||	       Logical OR. True only if either one operand is true	If c = 5 and d = 2 then, expression ((c==5) || (d>5)) equals to 1.
!	         Logical NOT. True only if the operand is 0	If c = 5 then, expression !(c==5) equals to 0.
```

```c
// Working of logical operators

#include <stdio.h>
int main()
{
    int a = 5, b = 5, c = 10, result;

    result = (a == b) && (c > b);
    printf("(a == b) && (c > b) is %d \n", result);

    result = (a == b) && (c < b);
    printf("(a == b) && (c < b) is %d \n", result);

    result = (a == b) || (c < b);
    printf("(a == b) || (c < b) is %d \n", result);

    result = (a != b) || (c < b);
    printf("(a != b) || (c < b) is %d \n", result);

    result = !(a != b);
    printf("!(a != b) is %d \n", result);

    result = !(a == b);
    printf("!(a == b) is %d \n", result);

    return 0;
}

>>>
(a == b) && (c > b) is 1
(a == b) && (c < b) is 0
(a == b) || (c < b) is 1
(a != b) || (c < b) is 0
!(a != b) is 1
!(a == b) is 0

--------------------------------
Process exited after 1.674 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - C Bitwise Operators

During computation, mathematical operations like: addition, subtraction, multiplication, division, etc are converted to bit-level which makes processing faster and saves power.

Bitwise operators are used in C programming to perform bit-level operations.

```
Operators	Meaning of operators
&	Bitwise AND
|	Bitwise OR
^	Bitwise exclusive OR
~	Bitwise complement
<<	Shift left
>>	Shift right
```

##### - Comma Operator

Comma operators are used to link related expressions together. For example:

```c
int a, c = 5, d;
```

##### - The sizeof operator

The sizeof is a unary operator that returns the size of data (constants, variables, array, structure, etc).

```c
#include <stdio.h>
int main()
{
    int a;
    float b;
    double c;
    char d;

    printf("Size of int=%lu bytes\n",sizeof(a));
    printf("Size of float=%lu bytes\n",sizeof(b));
    printf("Size of double=%lu bytes\n",sizeof(c));
    printf("Size of char=%lu byte\n",sizeof(d));

    return 0;
}

>>>
Size of int=4 bytes
Size of float=4 bytes
Size of double=8 bytes
Size of char=1 byte

--------------------------------
Process exited after 1.612 seconds with return value 0
Press any key to continue . . .
>>>
```

#### INTRO_EXAMPLES

##### - C program to print a sentence

```c
#include <stdio.h>
int main() {

   // printf() displays the string inside quotation
   printf("Hello, World!");

return 0;
}

>>>
Hello, World!
--------------------------------
Process exited after 1.369 seconds with return value 0
Press any key to continue . . .
>>>
```

- The ```#include``` is a preprocessor command that tells the compiler to include the contents of ```stdio.h``` (standard input and output) file in the program.
- The ```stdio.h``` file contains functions such as ```scanf()``` and ```printf()``` to take input and display output respectively.
- If you use the ```printf()``` function without writing ```#include <stdio.h>```, the program will not compile.
- The execution of a C program starts from the ```main()``` function.
- ```printf()``` is a library function to send formatted output to the screen. In this program, ```printf()``` displays Hello, World! text on the screen.
- The return 0; statement is the "Exit status" of the program. In simple terms, the program ends with this statement.

##### - C program to print an integer entered by the user

```c
#include <stdio.h>
int main() {   

	int number;

    printf("Enter an integer: ");  

    // reads and stores input
    scanf("%d", &number);

    // displays output
    printf("You entered: %d", number);

return 0;
}

>>>
Enter an integer: 2
You entered: 2
--------------------------------
Process exited after 3.707 seconds with return value 0
Press any key to continue . . .
>>>
```

In this program, an integer variable number is declared.

```c
int number;
```

Then, the user is asked to enter an integer number. This number is stored in the number variable.

```c
printf("Enter an integer: ");
scanf("%d", &number);
```

Finally, the value stored in number is displayed on the screen using ```printf()```.

```c
printf("You entered: %d", number);
```

##### - C program to add two integers entered by the user

```c
#include <stdio.h>
int main() {    

    int number1, number2, sum;

    printf("Enter two integers: ");
    scanf("%d %d", &number1, &number2);

    // calculating sum
    sum = number1 + number2;      

    printf("%d + %d = %d", number1, number2, sum);

return 0;
}

>>>
Enter two integers: 6
9
6 + 9 = 15
--------------------------------
Process exited after 10.93 seconds with return value 0
Press any key to continue . . .
>>>
```

In this program, the user is asked to enter two integers. These two integers are stored in variables number1 and number2 respectively.

```c
printf("Enter two integers: ");
scanf("%d %d", &number1, &number2);
```

Then, these two numbers are added using the + operator, and the result is stored in the sum variable.

Finally, the ```printf()``` function is used to display the sum of numbers.

```c
printf("%d + %d = %d", number1, number2, sum);
```

```c
sum = number1 + number2;
```

##### - C program to multiply two floating-point numbers

```c
#include <stdio.h>
int main() {

    double a, b, product;

    printf("Enter two numbers: ");
    scanf("%lf %lf", &a, &b);  

    // Calculating product
    product = a * b;

    // %.2lf displays number up to 2 decimal point
    printf("Product = %.2lf", product);

return 0;
}

>>>
Enter two numbers: 2.1 9.3
Product = 19.53
--------------------------------
Process exited after 10.06 seconds with return value 0
Press any key to continue . . .
>>>
```

In this program, the user is asked to enter two numbers which are stored in variables a and b respectively.

```c
printf("Enter two numbers: ");
scanf("%lf %lf", &a, &b);
```

Then, the product of a and b is evaluated and the result is stored in product.

```c
product = a * b;
```

Finally, product is displayed on the screen using ```printf()```.

```c
printf("Product = %.2lf", product);
```

Notice that, the result is rounded off to the second decimal place using ```%.2lf``` conversion character.

##### - C program to find ASCII value of a character entered by the user

```c
#include <stdio.h>
int main() {  

    char c;

    printf("Enter a character: ");
    scanf("%c", &c);  

    // %d displays the integer value of a character
    // %c displays the actual character
    printf("ASCII value of %c = %d", c, c);

return 0;
}

>>>
Enter a character: w
ASCII value of w = 119
--------------------------------
Process exited after 5.316 seconds with return value 0
Press any key to continue . . .
>>>
```

In this program, the user is asked to enter a character. The character is stored in variable c.

When ```%d``` format string is used, 71 (the ASCII value of G) is displayed.

When ```%c``` format string is used, ```'G'``` itself is displayed.

##### - C program to find quotient and remainder of two integers

```c
#include <stdio.h>
int main() {

    int dividend, divisor, quotient, remainder;

    printf("Enter dividend: ");
    scanf("%d", &dividend);

	printf("Enter divisor: ");
    scanf("%d", &divisor);

    // Computes quotient
    quotient = dividend / divisor;

    // Computes remainder
    remainder = dividend % divisor;

    printf("Quotient = %d\n", quotient);
    printf("Remainder = %d", remainder);

return 0;
}

>>>
Enter dividend: 10
Enter divisor: 2
Quotient = 5
Remainder = 0
--------------------------------
Process exited after 8.131 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - C program to find the size of int, float, double and char

```c
#include<stdio.h>
int main() {

    int intType;
    float floatType;
    double doubleType;
    char charType;

    // sizeof evaluates the size of a variable
    printf("Size of int: %zu bytes\n", sizeof(intType));
    printf("Size of float: %zu bytes\n", sizeof(floatType));
    printf("Size of double: %zu bytes\n", sizeof(doubleType));
    printf("Size of char: %zu byte\n", sizeof(charType));

return 0;
}

>>>
Size of int: 4 bytes
Size of float: 4 bytes
Size of double: 8 bytes
Size of char: 1 byte

--------------------------------
Process exited after 1.763 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - C program to demonstrate the working of keyword long

```c
#include <stdio.h>
int main() {

    int a;
    long b;   // equivalent to long int b;
    long long c;  // equivalent to long long int c;
    double e;
    long double f;

    printf("Size of int = %zu bytes \n", sizeof(a));
    printf("Size of long int = %zu bytes\n", sizeof(b));
    printf("Size of long long int = %zu bytes\n", sizeof(c));
    printf("Size of double = %zu bytes\n", sizeof(e));
    printf("Size of long double = %zu bytes\n", sizeof(f));

    return 0;
}

>>>
Size of int = 4 bytes
Size of long int = 4 bytes
Size of long long int = 8 bytes
Size of double = 8 bytes
Size of long double = 16 bytes

--------------------------------
Process exited after 1.846 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - C program to swap two numbers

```c
#include<stdio.h>
int main() {
      double first, second, temp;

      printf("Enter first number: ");
      scanf("%lf", &first);

      printf("Enter second number: ");
      scanf("%lf", &second);

      // Value of first is assigned to temp
      temp = first;

      // Value of second is assigned to first
      first = second;

      // Value of temp (initial value of first) is assigned to second
      second = temp;

      // %.2lf displays number up to 2 decimal points
      printf("\nAfter swapping, firstNumber = %.2lf\n", first);
      printf("After swapping, secondNumber = %.2lf", second);
      return 0;
}

>>>
Enter first number: 10
Enter second number: 36

After swapping, firstNumber = 36.00
After swapping, secondNumber = 10.00
--------------------------------
Process exited after 11.62 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C_INTRODUCTION)

---

#### C_FLOW_CONTROL

* [IF_ELSE](#IF_ELSE)
* [FOR_LOOP](#FOR_LOOP)
* [WHILE_LOOP](#WHILE_LOOP)
* [BREAK_CONTINUE](#BREAK_CONTINUE)
* [SWITCH_CASE](#SWITCH_CASE)
* [PROGRAMMING_GOTO](#PROGRAMMING_GOTO)
* [CONTROL_FLOW_EXAMPLES](#CONTROL_FLOW_EXAMPLES)

[^^^](#C)

---

#### IF_ELSE

##### C if Statement

The syntax of the if statement in C programming is:

```c
if (test expression)
{
   // code
}
```

The if statement evaluates the test expression inside the parenthesis ().

- If the test expression is evaluated to true, statements inside the body of if are executed.
- If the test expression is evaluated to false, statements inside the body of if are not executed.

```c
// Program to display a number if it is negative

#include <stdio.h>
int main() {

    int number;

    printf("Enter an integer: ");
    scanf("%d", &number);

    // true if number is less than 0
    if (number < 0) {
        printf("You entered %d.\n", number);
    }

    printf("The if statement is easy.");

    return 0;
}

>>>
Enter an integer: -5
You entered -5.
The if statement is easy.
--------------------------------
Process exited after 5.329 seconds with return value 0
Press any key to continue . . .
>>>

>>>
Enter an integer: 5
The if statement is easy.
--------------------------------
Process exited after 3.366 seconds with return value 0
Press any key to continue . . .
>>>
```

##### C if...else Statement

The if statement may have an optional else block. The syntax of the if..else statement is:

```c
if (test expression) {
    // run code if test expression is true
}
else {
    // run code if test expression is false
}
```

If the test expression is evaluated to true,
- statements inside the body of if are executed.
- statements inside the body of else are skipped from execution.

If the test expression is evaluated to false,
- statements inside the body of else are executed
- statements inside the body of if are skipped from execution.

```c
// Check whether an integer is odd or even

#include <stdio.h>
int main() {

	int number;

    printf("Enter an integer: ");
    scanf("%d", &number);

    // True if the remainder is 0
    if  (number%2 == 0) {
        printf("%d is an even integer.",number);
    }
    else {
        printf("%d is an odd integer.",number);
    }

    return 0;
}

>>>
Enter an integer: 20
20 is an even integer.
--------------------------------
Process exited after 3.144 seconds with return value 0
Press any key to continue . . .
>>>

>>>
Enter an integer: 19
19 is an odd integer.
--------------------------------
Process exited after 3.492 seconds with return value 0
Press any key to continue . . .
>>>
```

##### C if...else Ladder

The ```if...else``` statement executes two different codes depending upon whether the test expression is true or false. Sometimes, a choice has to be made from more than 2 possibilities.

The ```if...else ladder``` allows you to check between multiple test expressions and execute different statements.

```c
if (test expression1) {
   // statement(s)
}
else if(test expression2) {
   // statement(s)
}
else if (test expression3) {
   // statement(s)
}
.
.
else {
   // statement(s)
}
```

```c
// Program to relate two integers using =, > or < symbol

#include <stdio.h>
int main() {

    int number1, number2;

	printf("Enter two integers: ");
    scanf("%d %d", &number1, &number2);

    //checks if the two integers are equal.
    if(number1 == number2) {
        printf("Result: %d = %d",number1,number2);
    }

    //checks if number1 is greater than number2.
    else if (number1 > number2) {
        printf("Result: %d > %d", number1, number2);
    }

    //checks if both test expressions are false
    else {
        printf("Result: %d < %d",number1, number2);
    }

    return 0;
}

>>>
Enter two integers: 5
6
Result: 5 < 6
--------------------------------
Process exited after 7.432 seconds with return value 0
Press any key to continue . . .
>>>

>>>
Enter two integers: 5
5
Result: 5 = 5
--------------------------------
Process exited after 6.973 seconds with return value 0
Press any key to continue . . .
>>>
```

##### Nested if...else

It is possible to include an if...else statement inside the body of another if...else statement.

This program given below relates two integers using either ```<```, ```>``` and ```=``` similar to the ```if...else``` ladder's example. However, we will use a nested ```if...else``` statement to solve this problem.

```c
#include <stdio.h>
int main() {

    int number1, number2;

    printf("Enter two integers: ");
    scanf("%d %d", &number1, &number2);

    if (number1 >= number2) {
      if (number1 == number2) {
        printf("Result: %d = %d",number1,number2);
      }
      else {
        printf("Result: %d > %d", number1, number2);
      }
    }
    else {
        printf("Result: %d < %d",number1, number2);
    }

    return 0;
}

>>>
Enter two integers: 2
1
Result: 2 > 1
--------------------------------
Process exited after 6.592 seconds with return value 0
Press any key to continue . . .
>>>

>>>
Enter two integers: 2
2
Result: 2 = 2
--------------------------------
Process exited after 3.247 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C_FLOW_CONTROL)

---

#### FOR_LOOP

C programming has three types of loops:

- for loop
- while loop
- do...while loop

##### FOR LOOP

```c
for (initializationStatement; testExpression; updateStatement)
{
    // statements inside the body of loop
}
```

- The initialization statement is executed only once.
- Then, the test expression is evaluated. If the test expression is evaluated to false, the for loop is terminated.
- However, if the test expression is evaluated to true, statements inside the body of the for loop are executed, and the update expression is updated.
- Again the test expression is evaluated.

This process goes on until the test expression is false. When the test expression is false, the loop terminates.
To learn more about test expression (when the test expression is evaluated to true and false), check out relational and logical operators.

```c
// Print numbers from 1 to 10
#include <stdio.h>

int main() {

  int i;

  for (i = 1; i < 11; ++i)
  {
    printf("%d ", i);
  }
  return 0;
}

>>>
1 2 3 4 5 6 7 8 9 10
--------------------------------
Process exited after 1.605 seconds with return value 0
Press any key to continue . . .
>>>
```

```
1. i is initialized to 1.

2. The test expression i < 11 is evaluated. Since 1 less than 11 is true, the body of for loop is executed. This will print the 1 (value of i) on the screen.

3. The update statement ++i is executed. Now, the value of i will be 2. Again, the test expression is evaluated to true, and the body of for loop is executed. This will print 2 (value of i) on the screen.

4. Again, the update statement ++i is executed and the test expression i < 11 is evaluated. This process goes on until i becomes 11.

5. When i becomes 11, i < 11 will be false, and the for loop terminates.
```

```c
// Program to calculate the sum of first n natural numbers
// Positive integers 1,2,3...n are known as natural numbers

#include <stdio.h>
int main()
{
    int num, count, sum = 0;

    printf("Enter a positive integer: ");
    scanf("%d", &num);

    // for loop terminates when num is less than count
    for(count = 1; count <= num; ++count)
    {
        sum += count;
    }

    printf("Sum = %d", sum);

    return 0;
}

>>>
Enter a positive integer: 5
Sum = 15
--------------------------------
Process exited after 6.116 seconds with return value 0
Press any key to continue . . .
>>>
```

The value entered by the user is stored in the variable num. Suppose, the user entered 10.

The count is initialized to 1 and the test expression is evaluated. Since the test expression ```count<=num``` (1 less than or equal to 10) is true, the body of for loop is executed and the value of sum will equal to 1.

Then, the update statement ```++count``` is executed and count will equal to 2. Again, the test expression is evaluated. Since 2 is also less than 10, the test expression is evaluated to true and the body of the for loop is executed. Now, sum will equal 3.

This process goes on and the sum is calculated until the count reaches 11.

When the count is 11, the test expression is evaluated to 0 (false), and the loop terminates.

Then, the value of sum is printed on the screen.

[^^^](#C_FLOW_CONTROL)

---

#### WHILE_LOOP

```
C programming has three types of loops.

for loop
while loop
do...while loop
```

```c
while (testExpression) {
  // the body of the loop
}
```

- How while loop works?

```
The while loop evaluates the testExpression inside the parentheses ().
If testExpression is true, statements inside the body of while loop are executed. Then, testExpression is evaluated again.
The process goes on until testExpression is evaluated to false.
If testExpression is false, the loop terminates (ends).
```

```c
// Print numbers from 1 to 5

#include <stdio.h>
int main() {
  int i = 1;

  while (i <= 5) {
    printf("%d\n", i);
    ++i;
  }

  return 0;
}

>>>
1
2
3
4
5

--------------------------------
Process exited after 4.106 seconds with return value 0
Press any key to continue . . .
>>>
```

```
Here, we have initialized i to 1.

1. When i = 1, the test expression i <= 5 is true. Hence, the body of the while loop is executed.
This prints 1 on the screen and the value of i is increased to 2.

2. Now, i = 2, the test expression i <= 5 is again true. The body of the while loop is executed again.
This prints 2 on the screen and the value of i is increased to 3.

3. This process goes on until i becomes 6. Then, the test expression i <= 5 will be false and the loop terminates.
```

- do while loop

```
The do..while loop is similar to the while loop with one important difference. The body of do...while loop is executed at least once. Only then, the test expression is evaluated.
```

```c
do {
  // the body of the loop
}
while (testExpression);
```

```
How do...while loop works?

- The body of do...while loop is executed once. Only then, the testExpression is evaluated.
- If testExpression is true, the body of the loop is executed again and testExpression is evaluated once more.
- This process goes on until testExpression becomes false.
- If testExpression is false, the loop ends.
```

[^^^](#C_FLOW_CONTROL)

---

#### BREAK_CONTINUE

```c

>>>

>>>
```

[^^^](#C_FLOW_CONTROL)

---

#### SWITCH_CASE

```c

>>>

>>>
```

[^^^](#C_FLOW_CONTROL)

---

#### PROGRAMMING_GOTO

```c

>>>

>>>
```

[^^^](#C_FLOW_CONTROL)

---

#### CONTROL_FLOW_EXAMPLES

```c

>>>

>>>
```

[^^^](#C_FLOW_CONTROL)

---

#### C_FUNCTIONS

* []()
* []()
* []()
* []()
* []()
* []()
* []()

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C_FUNCTIONS)

---

#### C_PROGRAMMING_ARRAYS

* []()
* []()
* []()
* []()
* []()
* []()
* []()

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C_PROGRAMMING_ARRAYS)

---

#### C_PROGRAMMING_POINTERS

* []()
* []()
* []()
* []()
* []()
* []()
* []()

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C_PROGRAMMING_POINTERS)

---

#### C_PROGRAMMING_STRINGS

* []()
* []()
* []()
* []()
* []()
* []()
* []()

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C_PROGRAMMING_STRINGS)

---

#### C_STRUCTURE_AND_UNION

* []()
* []()
* []()
* []()
* []()
* []()
* []()

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C_STRUCTURE_AND_UNION)

---

#### C_PROGRAMMING_FILES

* []()
* []()
* []()
* []()
* []()
* []()
* []()

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C_PROGRAMMING_FILES)

---

#### C_ADDITIONAL_TOPICS

* []()
* []()
* []()
* []()
* []()
* []()
* []()

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C_ADDITIONAL_TOPICS)

---
