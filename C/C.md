
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

```c

>>>

>>>
```

```c

>>>

>>>
```

```c

>>>

>>>
```

```c

>>>

>>>
```

```c

>>>

>>>
```

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
