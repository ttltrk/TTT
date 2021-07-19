
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### C

* [source](https://www.programiz.com/c-programming)

---

INTRODUCTION

* [KEYWORDS_IDENTIFIERS](#KEYWORDS_IDENTIFIERS)
* [VARIABLES](#VARIABLES)
* [DATA_TYPES](#DATA_TYPES)
* [INPUT_OUTPUT](#INPUT_OUTPUT)
* [OPERATORS](#OPERATORS)
* [INTRO_EXAMPLES](#INTRO_EXAMPLES)

FLOW_CONTROL

* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()
* []()

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

[^^^](#C)

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

[^^^](#C)

---

#### DATA_TYPES

In C programming, data types are declarations for variables. This determines the type and size of data associated with variables. For example,

```c
int myVar;
```

Here, myVar is a variable of int (integer) type. The size of int is 4 bytes.

Here's a table containing commonly used types in C programming for quick access.

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

[^^^](#C)

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

[^^^](#C)

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

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C)

---

####

```c

>>>

>>>
```

[^^^](#C)

---
