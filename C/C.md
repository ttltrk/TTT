
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

####

```c

>>>

>>>
```

[^^^](#C)

---
