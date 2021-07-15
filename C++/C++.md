
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### C++

---

* [SYNTAX](#SYNTAX)
* [OUTPUT](#OUTPUT)
* [COMMENTS](#COMMENTS)
* [VARIABLES](#VARIABLES)
* [USER_INPUT](#USER_INPUT)
* [DATA_TYPES](#DATA_TYPES)
* [OPERATORS](#OPERATORS)
* [STRINGS](#STRINGS)
* [MATH](#MATH)
* [BOOLEAN](#BOOLEAN)
* [CONDITIONS](#CONDITIONS)
* [SWITCH](#SWITCH)
* [WHILE_LOOP](#WHILE_LOOP)
* [FOR_LOOP](#FOR_LOOP)
* [BREAK_CONTINUE](#BREAK_CONTINUE)
* [ARRAYS](#ARRAYS)
* [REFERENCES](#REFERENCES)
* [POINTERS](#POINTERS)
* [FUNCTIONS](#FUNCTIONS)
* [FUNCTION_PARAMETERS](#FUNCTION_PARAMETERS)
* [FUNCTION_OVERLOADING](#FUNCTION_OVERLOADING)
* [OOP](#OOP)
* [CLASSES_OBJECTS](#CLASSES_OBJECTS)
* [CONSTRUCTIONS](#CONSTRUCTIONS)
* [ACCESS_SPECIFIERS](#ACCESS_SPECIFIERS)
* [ENCAPSULATION](#ENCAPSULATION)
* [INHERITANCE](#IINHERITANCE)
* [POLYMORPHISM](#POLYMORPHISM)
* [FILES](#FILES)
* [EXCEPTIONS](#EXCEPTIONS)
* [ADD_TWO_NUMBERS](#ADD_TWO_NUMBERS)

---

#### SYNTAX

```c++
#include <iostream>
using namespace std;

int main() {
  cout << "Hello World!";
  return 0;
}

>>>
Hello World!
--------------------------------
Process exited after 1.515 seconds with return value 0
Press any key to continue . . .
>>>
```

- Line 1: #include <iostream> is a header file library that lets us work with input and output objects, such as cout (used in line 5). Header files add functionality to C++ programs.
- Line 2: using namespace std means that we can use names for objects and variables from the standard library.
Don't worry if you don't understand how #include <iostream> and using namespace std works. Just think of it as something that (almost) always appears in your program.
- Line 3: A blank line. C++ ignores white space.
- Line 4: Another thing that always appear in a C++ program, is int main(). This is called a function. Any code inside its curly brackets {} will be executed.
- Line 5: cout (pronounced "see-out") is an object used together with the insertion operator (<<) to output/print text. In our example it will output "Hello World".
Note: Every C++ statement ends with a semicolon ;.

```
Note: The body of int main() could also been written as:
int main () { cout << "Hello World! "; return 0; }
```

Remember: The compiler ignores white spaces. However, multiple lines makes the code more readable.
- Line 6: return 0 ends the main function.
- Line 7: Do not forget to add the closing curly bracket } to actually end the main function.

##### - OMITTING_NAMESPACE

You might see some C++ programs that runs without the standard namespace library. The using namespace std line can be omitted and replaced with the std keyword, followed by the ```::``` operator for some objects:



```c++
#include <iostream>

int main() {
  std::cout << "Hello World!";
  return 0;
}

>>>
Hello World!
--------------------------------
Process exited after 1.531 seconds with return value 0
Press any key to continue . . .
>>>
```

It is up to you if you want to include the standard namespace library or not.

[^^^](#C++)

---

#### OUTPUT

The cout object, together with the ```<<``` operator, is used to output values/print text:

```c++
#include <iostream>
using namespace std;

int main() {
  cout << "Hello World!";
  return 0;
}

>>>
Hello World!
--------------------------------
Process exited after 1.144 seconds with return value 0
Press any key to continue . . .
>>>
```

You can add as many cout objects as you want. However, note that it does not insert a new line at the end of the output:

```c++
#include <iostream>
using namespace std;

int main() {
  cout << "Hello World!";
  cout << "I am learning C++";
  return 0;
}

>>>
Hello World!I am learning C++
--------------------------------
Process exited after 1.464 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - NEW_LINES

To insert a new line, you can use the ```\n``` character:

```c++
#include <iostream>
using namespace std;

int main()
{
	  cout << "Hello World! \n";
    cout << "I am learning C++";

  	return 0;
}

>>>
Hello World!
I am learning C++
--------------------------------
Process exited after 1.839 seconds with return value 0
Press any key to continue . . .
>>>
```

Two ```\n``` characters after each other will create a blank line:

```c++
#include <iostream>
using namespace std;

int main()
{
	  cout << "Hello World! \n\n";
  	cout << "I am learning C++";

  	return 0;
}

>>>
Hello World!

I am learning C++
--------------------------------
Process exited after 1.517 seconds with return value 0
Press any key to continue . . .
>>>
```

Another way to insert a new line, is with the ```endl``` manipulator:

```c++
#include <iostream>
using namespace std;

int main()
{
  	cout << "Hello World!" << endl;
  	cout << "I am learning C++";

  	return 0;
}

>>>
Hello World!
I am learning C++
--------------------------------
Process exited after 1.255 seconds with return value 0
Press any key to continue . . .
>>>
```

Both ```\n``` and ```endl``` are used to break lines. However, ```\n``` is used more often and is the preferred way.

[^^^](#C++)

---

#### COMMENTS

Comments can be used to explain C++ code, and to make it more readable. It can also be used to prevent execution when testing alternative code. Comments can be singled-lined or multi-lined.

##### - SINGLE_LINE_COMMENTS

Single-line comments start with two forward slashes ```//```.
Any text between ```//``` and the end of the line is ignored by the compiler (will not be executed).
This example uses a single-line comment before a line of code:

```c++
#include <iostream>
using namespace std;

int main()
{
  // This is a comment
  cout << "Hello World!\n";
  cout << "I am learning C++";
  return 0;
}

>>>
Hello World!
I am learning C++
--------------------------------
Process exited after 1.298 seconds with return value 0
Press any key to continue . . .
>>>
```

This example uses a single-line comment at the end of a line of code:

```c++
#include <iostream>
using namespace std;

int main()
{
  // This is a comment
  cout << "Hello World!\n"; // This is a comment
  cout << "I am learning C++"; // and another one
  return 0;
}

>>>
Hello World!
I am learning C++
--------------------------------
Process exited after 1.945 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - MULTI_LINE_COMMENTS

Multi-line comments start with ```/*``` and ends with ```*/```.
Any text between ```/*``` and ```*/``` will be ignored by the compiler:

```c++
#include <iostream>
using namespace std;

int main()
{
  /* The code below will print the words Hello World!
  to the screen, and it is amazing */
  cout << "Hello World!\n"; // This is a comment
  cout << "I am learning C++"; // and another one
  return 0;
}

>>>
Hello World!
I am learning C++
--------------------------------
Process exited after 1.301 seconds with return value 0
Press any key to continue . . .
>>>
```


[^^^](#C++)

---

#### VARIABLES

Variables are containers for storing data values.

In C++, there are different types of variables (defined with different keywords), for example:

- int - stores integers (whole numbers), without decimals, such as 123 or -123
- double - stores floating point numbers, with decimals, such as 19.99 or -19.99
- char - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes
- string - stores text, such as "Hello World". String values are surrounded by double quotes
- bool - stores values with two states: true or false

##### - DECLARING_CREATING_VARIABLE

To create a variable, you must specify the type and assign it a value:

```c++
type variable = value;
```

Where type is one of C++ types (such as int), and variable is the name of the variable (such as x or myName). The equal sign is used to assign values to the variable.

To create a variable that should store a number, look at the following example:

```c++
#include <iostream>
using namespace std;

int main()
{
  	int myNum = 15;
	  cout << myNum;
  	return 0;
}

>>>
15
--------------------------------
Process exited after 1.961 seconds with return value 0
Press any key to continue . . .
>>>
```

You can also declare a variable without assigning the value, and assign the value later:

```c++
#include <iostream>
using namespace std;

int main()
{
  	int myNum;
  	myNum = 22;
	  cout << myNum;
  	return 0;
}

>>>
22
--------------------------------
Process exited after 10.51 seconds with return value 0
Press any key to continue . . .
>>>
```

Note that if you assign a new value to an existing variable, it will overwrite the previous value:

```c++
#include <iostream>
using namespace std;

int main()
{
  	int myNum = 15;  // myNum is 15
	  myNum = 10;  // Now myNum is 10
  	cout << myNum;  // Outputs 10
  	return 0;
}
>>>
10
--------------------------------
Process exited after 1.36 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - OTHER_TYPES

```
int myNum = 5;               // Integer (whole number without decimals)
double myFloatNum = 5.99;    // Floating point number (with decimals)
char myLetter = 'D';         // Character
string myText = "Hello";     // String (text)
bool myBoolean = true;       // Boolean (true or false)
```

##### - DISPLAY_VARIABLES

The cout object is used together with the << operator to display variables.
To combine both text and a variable, separate them with the << operator:

```c++
#include <iostream>
using namespace std;

int main()
{
  	int myAge = 35;
	cout << "I am " << myAge << " years old.";
  	return 0;
}

>>>
I am 35 years old.
--------------------------------
Process exited after 2.374 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - ADD_VARIABLES_TOGETHER

To add a variable to another variable, you can use the + operator:

```c++
#include <iostream>
using namespace std;

int main()
{
  	int x = 5;
	  int y = 6;
	  int sum = x + y;
	  cout << sum;

  	return 0;
}

>>>
11
--------------------------------
Process exited after 1.613 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - DECLARE_MULTIPLE_VARIABLES

To declare more than one variable of the same type, use a comma-separated list:

```c++
#include <iostream>
using namespace std;

int main()
{
  	int x = 5, y = 6, z = 50;
	  cout << x + y + z;

  	return 0;
}

>>>
61
--------------------------------
Process exited after 2.425 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - IDENTIFIERS

All C++ variables must be identified with unique names.
These unique names are called identifiers.
Identifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume).
Note: It is recommended to use descriptive names in order to create understandable and maintainable code:

```c++
#include <iostream>
using namespace std;

int main()
{
  	// Good
	  int minutesPerHour = 60;

	  // OK, but not so easy to understand what m actually is
	  int m = 60;

	  //show the answers
	  cout << minutesPerHour;
	  cout << "\n";
  	cout << m;

  	return 0;
}

>>>
60
60
--------------------------------
Process exited after 1.502 seconds with return value 0
Press any key to continue . . .
>>>
```

The general rules for constructing names for variables (unique identifiers) are:

- Names can contain letters, digits and underscores
- Names must begin with a letter or an underscore (_)
- Names are case sensitive (myVar and myvar are different variables)
- Names cannot contain whitespaces or special characters like !, #, %, etc.
- Reserved words (like C++ keywords, such as int) cannot be used as names

##### - CONSTANTS

When you do not want others (or yourself) to override existing variable values, use the const keyword (this will declare the variable as "constant", which means unchangeable and read-only):

will generate an error

```c++
#include <iostream>
using namespace std;

int main()
{
  	const int myNum = 15;  // myNum will always be 15
  	myNum = 10;  // error: assignment of read-only variable 'myNum'

  	return 0;
}

>>>
[Error] assignment of read-only variable 'myNum'
>>>
```

You should always declare the variable as constant when you have values that are unlikely to change:

```c++
#include <iostream>
using namespace std;

int main()
{
  	const int minutesPerHour = 60;
	  const float PI = 3.14;

	  cout << minutesPerHour;
	  cout << "\n";
  	cout << PI;

  	return 0;
}

>>>
60
3.14
--------------------------------
Process exited after 1.316 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### USER_INPUT

You have already learned that ```cout``` is used to output (print) values. Now we will use ```cin``` to get user input.
```cin``` is a predefined variable that reads data from the keyboard with the extraction operator ```>>```.
In the following example, the user can input a number, which is stored in the variable x. Then we print the value of x:

```cout``` is pronounced "see-out". Used for output, and uses the insertion operator ```<<```
```cin``` is pronounced "see-in". Used for input, and uses the extraction operator ```>>```

```c++
#include <iostream>
using namespace std;

int main()
{
	int x, y;
	int sum;

	cout << "Type a number: ";
	cin >> x;
	cout << "Type another number: ";
	cin >> y;
	sum = x + y;
	cout << "Sum is: " << sum;

return 0;
}

>>>
Type a number: 4
Type another number: 2
Sum is: 6
--------------------------------
Process exited after 10.05 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### DATA_TYPES

```
int myNum = 5;               // Integer (whole number)
float myFloatNum = 5.99;     // Floating point number
double myDoubleNum = 9.98;   // Floating point number
char myLetter = 'D';         // Character
bool myBoolean = true;       // Boolean
string myText = "Hello";     // String
```

##### - BASIC_DATA_TYPES

The data type specifies the size and type of information the variable will store:

```
int	    4 bytes	Stores whole numbers, without decimals
float	  4 bytes	Stores fractional numbers, containing one or more decimals. Sufficient for storing 7 decimal digits
double	8 bytes	Stores fractional numbers, containing one or more decimals. Sufficient for storing 15 decimal digits
boolean	1 byte	Stores true or false values
char	  1 byte	Stores a single character/letter/number, or ASCII values
```

##### - NUMERIC_TYPES

Use int when you need to store a whole number without decimals, like 35 or 1000, and float or double when you need a floating point number (with decimals), like 9.99 or 3.14515.

```c++
#include <iostream>
using namespace std;

int main()
{
	//int
	int myNumInt = 1000;
	cout << myNumInt << endl;

	//float
	float myNumFloat = 5.75;
	cout << myNumFloat << endl;

	//double
	double myNumDouble = 19.99;
	cout << myNumDouble;

return 0;
}

>>>
1000
5.75
19.99
--------------------------------
Process exited after 1.201 seconds with return value 0
Press any key to continue . . .
>>>
```

float vs. double

The precision of a floating point value indicates how many digits the value can have after the decimal point. The precision of float is only six or seven decimal digits, while double variables have a precision of about 15 digits. Therefore it is safer to use double for most calculations.

##### - SCIENTIFIC_NUMBERS

A floating point number can also be a scientific number with an ```"e"``` to indicate the power of 10:

```c++
#include <iostream>
using namespace std;

int main()
{
	float f1 = 35e3;
	double d1 = 12E4;
	cout << f1 << endl;
	cout << d1;

return 0;
}

>>>
35000
120000
--------------------------------
Process exited after 1.443 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - BOOLEANS

A boolean data type is declared with the bool keyword and can only take the values true or false. When the value is returned, ```true = 1``` and ```false = 0```.

```c++
#include <iostream>
using namespace std;

int main()
{
	bool isCodingFun = true;
	bool isFishTasty = false;
	cout << isCodingFun << endl;  // Outputs 1 (true)
	cout << isFishTasty;  // Outputs 0 (false)

return 0;
}

>>>
1
0
--------------------------------
Process exited after 1.391 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - CHARACTERS

The char data type is used to store a single character. The character must be surrounded by single quotes, like 'A' or 'c':

```c++
#include <iostream>
using namespace std;

int main()
{
	char myGrade = 'B';
	cout << myGrade;

return 0;
}

>>>
B
--------------------------------
Process exited after 1.484 seconds with return value 0
Press any key to continue . . .
>>>
```

Alternatively, you can use ASCII values to display certain characters:

```c++
#include <iostream>
using namespace std;

int main()
{
	char a = 65, b = 66, c = 67;
	cout << a;
	cout << b;
	cout << c;

return 0;
}

>>>
ABC
--------------------------------
Process exited after 1.235 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - STRINGS

The string type is used to store a sequence of characters (text). This is not a built-in type, but it behaves like one in its most basic usage. String values must be surrounded by double quotes:

```c++
#include <iostream>
using namespace std;

int main()
{
	string greeting = "Hello";
	cout << greeting;

return 0;
}

>>>
Hello
--------------------------------
Process exited after 1.433 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### OPERATORS

Operators are used to perform operations on variables and values.
In the example below, we use the ```+``` operator to add together two values:

```c++
#include <iostream>
using namespace std;

int main()
{
	int sum1 = 100 + 50;        // 150 (100 + 50)
	int sum2 = sum1 + 250;      // 400 (150 + 250)
	int sum3 = sum2 + sum2;     // 800 (400 + 400)

	cout << sum1 << endl;
	cout << sum2 << endl;
	cout << sum3;

return 0;
}

>>>
150
400
800
--------------------------------
Process exited after 1.35 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - ARITHMETIC

Arithmetic operators are used to perform common mathematical operations.

```
+	  Addition	Adds together two values	               x + y
- 	Subtraction	Subtracts one value from another	     x - y
*	  Multiplication	Multiplies two values	             x * y
/	  Division	Divides one value by another	           x / y
%	  Modulus	Returns the division remainder	           x % y
++	Increment	Increases the value of a variable by 1	 ++x
--	Decrement	Decreases the value of a variable by 1	 --x
```

##### - ASSIGNMENT

Assignment operators are used to assign values to variables.
In the example below, we use the assignment operator ```=``` to assign the value 10 to a variable called x:

```c++
#include <iostream>
using namespace std;

int main()
{
	int x = 10;

	cout << x;

return 0;
}

>>>
10
--------------------------------
Process exited after 8.233 seconds with return value 0
Press any key to continue . . .
>>>
```

The addition assignment operator ```+=``` adds a value to a variable:

```c++
#include <iostream>
using namespace std;

int main()
{
	int x = 10;
	cout << x << endl;

	x += 5;
	cout << x;

return 0;
}

>>>
10
15
--------------------------------
Process exited after 1.268 seconds with return value 0
Press any key to continue . . .
>>>
```

```
=	    x = 5	    x = 5
+=	  x += 3	  x = x + 3
-=  	x -= 3	  x = x - 3
*=	  x *= 3	  x = x * 3
/=	  x /= 3	  x = x / 3
%=	  x %= 3	  x = x % 3
&=	  x &= 3	  x = x & 3
|=	  x |= 3	  x = x | 3
^=	  x ^= 3	  x = x ^ 3
>>=	  x >>= 3	  x = x >> 3
<<=	  x <<= 3	  x = x << 3
```

##### - COMPARISON

Comparison operators are used to compare two values.
Note: The return value of a comparison is either true (1) or false (0).
In the following example, we use the greater than operator ```>``` to find out if 5 is greater than 3:

```c++
#include <iostream>
using namespace std;

int main()
{
	int x = 5;
	int y = 3;
	cout << (x > y); // returns 1 (true) because 5 is greater than 3

return 0;
}

>>>
1
--------------------------------
Process exited after 2.443 seconds with return value 0
Press any key to continue . . .
>>>
```

```
==	   Equal to	                 x == y
!=	   Not equal	               x != y
>	     Greater than	             x > y
<	     Less than	               x < y
>=	   Greater than or equal to	 x >= y
<=	   Less than or equal to	   x <= y
```

##### - LOGICAL

Logical operators are used to determine the logic between variables or values:

```
&& 	    Logical and	Returns true if both statements are true	               x < 5 &&  x < 10
|| 	    Logical or	Returns true if one of the statements is true	           x < 5 || x < 4
!	      Logical not	Reverse the result, returns false if the result is true	 !(x < 5 && x < 10)
```

[^^^](#C++)

---

#### STRINGS

Strings are used for storing text.
A string variable contains a collection of characters surrounded by double quotes:

```c++
#include <iostream>
using namespace std;

int main()
{
	string greeting = "Hello";

	cout << greeting;

return 0;
}

>>>
Hello
--------------------------------
Process exited after 1.257 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - CONCATENATION

The ```+``` operator can be used between strings to add them together to make a new string. This is called concatenation:

```c++
#include <iostream>
using namespace std;

int main()
{
	string firstName = "John ";
	string lastName = "Doe";
	string fullName = firstName + lastName;

	cout << fullName;

return 0;
}

>>>
John Doe
--------------------------------
Process exited after 1.381 seconds with return value 0
Press any key to continue . . .
>>>
```

In the example above, we added a space after firstName to create a space between John and Doe on output. However, you could also add a space with quotes ```" "``` or ```' '```

```c++
#include <iostream>
using namespace std;

int main()
{
	string firstName = "John";
	string lastName = "Doe";
	string fullName = firstName + " " + lastName;

	cout << fullName;

return 0;
}

>>>
John Doe
--------------------------------
Process exited after 1.443 seconds with return value 0
Press any key to continue . . .
>>>
```

A string in C++ is actually an object, which contain functions that can perform certain operations on strings. For example, you can also concatenate strings with the ```append()``` function:

```c++
#include <iostream>
using namespace std;

int main()
{
	string firstName = "John ";
	string lastName = "Doe";
	string fullName = firstName.append(lastName);

	cout << fullName;

return 0;
}

>>>
John Doe
--------------------------------
Process exited after 1.811 seconds with return value 0
Press any key to continue . . .
>>>
```

It is up to you whether you want to use ```+``` or ```append()```. The major difference between the two, is that the ```append()``` function is much faster. However, for testing and such, it might be easier to just use +.

##### - NUMBERS_AND_STRINGS

C++ uses the ```+``` operator for both addition and concatenation.
Numbers are added. Strings are concatenated.

If you add two numbers, the result will be a number:

```c++
#include <iostream>
using namespace std;

int main()
{
	int x = 10;
	int y = 20;
	int z = x + y;

	cout << z;

return 0;
}

>>>
30
--------------------------------
Process exited after 1.926 seconds with return value 0
Press any key to continue . . .
>>>
```

If you add two strings, the result will be a string concatenation:

```c++
#include <iostream>
using namespace std;

int main()
{
	string x = "aba";
	string y = "bubu";
	string z = x + y;

	cout << z;

return 0;
}

>>>
ababubu
--------------------------------
Process exited after 1.706 seconds with return value 0
Press any key to continue . . .
>>>
```

If you try to add a number to a string, an error occurs.

##### - STRING_LENGTH

To get the length of a string, use the ```length()``` function:

```c++
#include <iostream>
using namespace std;

int main()
{
	string txt_1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	cout << "The length of the txt_1 string is: " << txt_1.length() << endl;

	string txt_2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	cout << "The length of the txt_2 string is: " << txt_2.size();

return 0;
}

>>>
The length of the txt_1 string is: 26
The length of the txt_2 string is: 26
--------------------------------
Process exited after 1.788 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - ACCESS_STRINGS

You can access the characters in a string by referring to its index number inside square brackets ```[]```.

```c++
#include <iostream>
using namespace std;

int main()
{
	string myString_1 = "Hello";
	cout << myString_1[0] << endl;

	string myString_2 = "Hello";
	cout << myString_2[1];

return 0;
}

>>>
H
e
--------------------------------
Process exited after 2.654 seconds with return value 0
Press any key to continue . . .
>>>
```

To change the value of a specific character in a string, refer to the index number, and use single quotes:

```c++
#include <iostream>
using namespace std;

int main()
{
	string myString = "Hello";
	myString[0] = 'J';

	cout << myString;

return 0;
}

>>>
Jello
--------------------------------
Process exited after 1.847 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - USER_INPUT_STRINGS

It is possible to use the extraction operator ```>>``` on ```cin``` to display a string entered by a user:

```c++
#include <iostream>
using namespace std;

int main()
{
	string firstName;
	cout << "Type your first name: ";

	cin >> firstName; // get user input from the keyboard
	cout << "Your name is: " << firstName;

return 0;
}

>>>
Type your first name: trk
Your name is: trk
--------------------------------
Process exited after 4.274 seconds with return value 0
Press any key to continue . . .
>>>
```

However, cin considers a space (whitespace, tabs, etc) as a terminating character, which means that it can only display a single word.

```c++
#include <iostream>
using namespace std;

int main()
{
	string fullName;
	cout << "Type your full name: ";
	cin >> fullName;
	cout << "Your name is: " << fullName;

return 0;
}

>>>
Type your full name: ttl trk
Your name is: ttl
--------------------------------
Process exited after 4.249 seconds with return value 0
Press any key to continue . . .
>>>
```

That's why, when working with strings, we often use the getline() function to read a line of text. It takes cin as the first parameter, and the string variable as second:

```c++
#include <iostream>
using namespace std;

int main()
{
	string fullName;
	cout << "Type your full name: ";
	getline (cin, fullName);
	cout << "Your name is: " << fullName;

return 0;
}

>>>
Type your full name: ttl trk
Your name is: ttl trk
--------------------------------
Process exited after 5.644 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - OMITTING_NAMESPACE

You might see some C++ programs that runs without the standard namespace library. The using namespace std line can be omitted and replaced with the std keyword, followed by the ```::``` operator for string (and cout) objects:

```c++
#include <iostream>
#include <string>

int main()
{

  std::string greeting = "Hello";
  std::cout << greeting;

return 0;
}

>>>
Hello
--------------------------------
Process exited after 1.708 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### MATH

C++ has many functions that allows you to perform mathematical tasks on numbers.

The ```max(x,y)``` function can be used to find the highest value of x and y:

```c++
#include <iostream>
using namespace std;

int main()
{

	cout << max(5, 10);

return 0;
}

>>>
10
--------------------------------
Process exited after 2.498 seconds with return value 0
Press any key to continue . . .
>>>
```

And the ```min(x,y)``` function can be used to find the lowest value of x and y:

```c++
#include <iostream>
using namespace std;

int main()
{

	cout << min(5, 10);

return 0;
}

>>>
5
--------------------------------
Process exited after 1.591 seconds with return value 0
Press any key to continue . . .
>>>
```

Other functions, such as sqrt (square root), round (rounds a number) and log (natural logarithm), can be found in the ```<cmath>``` header file:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main()
{

	cout << sqrt(64) << endl;
	cout << round(2.6) << endl;
	cout << log(2);

return 0;
}

>>>
8
3
0.693147
--------------------------------
Process exited after 1.855 seconds with return value 0
Press any key to continue . . .
>>>
```

A list of other popular Math functions (from the ```<cmath>``` library) can be found in the table below:

```
abs(x)	Returns the absolute value of x
acos(x)	Returns the arccosine of x
asin(x)	Returns the arcsine of x
atan(x)	Returns the arctangent of x
cbrt(x)	Returns the cube root of x
ceil(x)	Returns the value of x rounded up to its nearest integer
cos(x)	Returns the cosine of x
cosh(x)	Returns the hyperbolic cosine of x
exp(x)	Returns the value of Ex
expm1(x)	Returns ex -1
fabs(x)	Returns the absolute value of a floating x
fdim(x, y)	Returns the positive difference between x and y
floor(x)	Returns the value of x rounded down to its nearest integer
hypot(x, y)	Returns sqrt(x2 +y2) without intermediate overflow or underflow
fma(x, y, z)	Returns x*y+z without losing precision
fmax(x, y)	Returns the highest value of a floating x and y
fmin(x, y)	Returns the lowest value of a floating x and y
fmod(x, y)	Returns the floating point remainder of x/y
pow(x, y)	Returns the value of x to the power of y
sin(x)	Returns the sine of x (x is in radians)
sinh(x)	Returns the hyperbolic sine of a double value
tan(x)	Returns the tangent of an angle
tanh(x)	Returns the hyperbolic tangent of a double value
```

[^^^](#C++)

---

#### BOOLEAN

Very often, in programming, you will need a data type that can only have one of two values, like:

- YES / NO
- ON / OFF
- TRUE / FALSE

For this, C++ has a bool data type, which can take the values true (1) or false (0).

##### - BOOLEAN_VALUES

A boolean variable is declared with the bool keyword and can only take the values true or false:


```c++
#include <iostream>
#include <cmath>
using namespace std;

int main()
{

	bool isCodingFun = true;
	bool isFishTasty = false;
	cout << isCodingFun << endl;  // Outputs 1 (true)
	cout << isFishTasty;  // Outputs 0 (false)

return 0;
}

>>>
1
0
--------------------------------
Process exited after 1.546 seconds with return value 0
Press any key to continue . . .
>>>
```

From the example above, you can read that a true value returns 1, and false returns 0.

##### - BOOLEAN_EXPRESSIONS

A Boolean expression is a C++ expression that returns a boolean value: 1 (true) or 0 (false).
You can use a comparison operator, such as the greater than ```>``` operator to find out if an expression (or a variable) is true:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main()
{

	int x = 10;
	int y = 9;

	cout << (x > y); // returns 1 (true), because 10 is higher than 9

return 0;
}

>>>
1
--------------------------------
Process exited after 1.669 seconds with return value 0
Press any key to continue . . .
>>>
```

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main()
{

	cout << (10 > 9); // returns 1 (true), because 10 is higher than 9

return 0;
}

>>>
1
--------------------------------
Process exited after 1.448 seconds with return value 0
Press any key to continue . . .
>>>
```

In the examples below, we use the equal to ```==``` operator to evaluate an expression:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main()
{

	int x = 10;

	cout << (x == 10);

return 0;
}

>>>
1
--------------------------------
Process exited after 1.509 seconds with return value 0
Press any key to continue . . .
>>>
```

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main()
{

	cout << (10 == 15);  // returns 0 (false), because 10 is not equal to 15


return 0;
}

>>>
0
--------------------------------
Process exited after 1.349 seconds with return value 0
Press any key to continue . . .
>>>
```

Booleans are the basis for all C++ comparisons and conditions.

[^^^](#C++)

---

#### CONDITIONS

C++ supports the usual logical conditions from mathematics:

```
Less than: a < b
Less than or equal to: a <= b
Greater than: a > b
Greater than or equal to: a >= b
Equal to a == b
Not Equal to: a != b
```

You can use these conditions to perform different actions for different decisions.
C++ has the following conditional statements:

```
Use if to specify a block of code to be executed, if a specified condition is true
Use else to specify a block of code to be executed, if the same condition is false
Use else if to specify a new condition to test, if the first condition is false
Use switch to specify many alternative blocks of code to be executed
```

##### - The if Statement

Use the if statement to specify a block of C++ code to be executed if a condition is true.

```c++
if (condition) {
  // block of code to be executed if the condition is true
}
```

Note that if is in lowercase letters. Uppercase letters (If or IF) will generate an error.

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main()
{

	if (20 > 18)
	{
  	cout << "20 is greater than 18";
	}

return 0;
}

>>>
20 is greater than 18
--------------------------------
Process exited after 1.435 seconds with return value 0
Press any key to continue . . .
>>>
```

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main()
{

	int x = 20;
	int y = 18;

	if (x > y)
	{
  	cout << "x is greater than y";
	}

return 0;
}

>>>
x is greater than y
--------------------------------
Process exited after 1.705 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - The else Statement

Use the else statement to specify a block of code to be executed if the condition is false.

```c++
if (condition) {
  // block of code to be executed if the condition is true
} else {
  // block of code to be executed if the condition is false
}
```

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int time = 20;

	if (time < 18) {
  		cout << "Good day.";
	} else {
  		cout << "Good evening.";
	}
// Outputs "Good evening."
return 0;
}

>>>
Good evening.
--------------------------------
Process exited after 2.488 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - The else if Statement

Use the else if statement to specify a new condition if the first condition is false.

```c++
if (condition1) {
  // block of code to be executed if condition1 is true
} else if (condition2) {
  // block of code to be executed if the condition1 is false and condition2 is true
} else {
  // block of code to be executed if the condition1 is false and condition2 is false
}
```

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int time = 22;

	if (time < 10) {
  		cout << "Good morning.";
	} else if (time < 20) {
  		cout << "Good day.";
	} else {
  		cout << "Good evening.";
	}
// Outputs "Good evening."
return 0;
}

>>>
Good evening.
--------------------------------
Process exited after 1.626 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Short Hand If...Else (Ternary Operator)

There is also a short-hand if else, which is known as the ternary operator because it consists of three operands. It can be used to replace multiple lines of code with a single line. It is often used to replace simple if else statements:

```c++
variable = (condition) ? expressionTrue : expressionFalse;
```

Instead of writing:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int time = 20;

	if (time < 18) {
  		cout << "Good day.";
	} else {
  		cout << "Good evening.";
	}
return 0;
}

>>>
Good evening.
--------------------------------
Process exited after 2.153 seconds with return value 0
Press any key to continue . . .
>>>
```

You can simply write:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int time = 20;

	string result = (time < 18) ? "Good day." : "Good evening.";
	cout << result;

return 0;
}

>>>
Good evening.
--------------------------------
Process exited after 1.554 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### SWITCH

Use the switch statement to select one of many code blocks to be executed.

```c++
switch(expression) {
  case x:
    // code block
    break;
  case y:
    // code block
    break;
  default:
    // code block
}
```

This is how it works:

- The switch expression is evaluated once
- The value of the expression is compared with the values of each case
- If there is a match, the associated block of code is executed
- The break and default keywords are optional, and will be described later in this chapter

The example below uses the weekday number to calculate the weekday name:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int day = 4;
    switch (day) {
	  case 1:		
	    cout << "Monday";
	    break;
	  case 2:
	    cout << "Tuesday";
	    break;
	  case 3:
	    cout << "Wednesday";
	    break;
	  case 4:
	    cout << "Thursday";
	    break;
	  case 5:
	    cout << "Friday";
	    break;
	  case 6:
	    cout << "Saturday";
	    break;
	  case 7:
	    cout << "Sunday";
	    break;
}
// Outputs "Thursday" (day 4)

return 0;
}

>>>
Thursday
--------------------------------
Process exited after 1.521 seconds with return value 0
Press any key to continue . . .
>>>
```

When C++ reaches a break keyword, it breaks out of the switch block.
This will stop the execution of more code and case testing inside the block.
When a match is found, and the job is done, it's time for a break. There is no need for more testing.

[^^^](#C++)

---

#### WHILE_LOOP

Loops can execute a block of code as long as a specified condition is reached.
Loops are handy because they save time, reduce errors, and they make code more readable.

The while loop loops through a block of code as long as a specified condition is true:

```c++
while (condition) {
  // code block to be executed
}
```

In the example below, the code in the loop will run, over and over again, as long as a variable (i) is less than 5:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int i = 0;
	while (i < 5) {
  		cout << i << "\n";
  		i++;
}

return 0;
}

>>>
0
1
2
3
4

--------------------------------
Process exited after 2.024 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - The Do/While Loop

The do/while loop is a variant of the while loop. This loop will execute the code block once, before checking if the condition is true, then it will repeat the loop as long as the condition is true.

```c++
do {
  // code block to be executed
}
while (condition);
```

The example below uses a do/while loop. The loop will always be executed at least once, even if the condition is false, because the code block is executed before the condition is tested:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int i = 0;
	do {
  		cout << i << "\n";
  		i++;
}
while (i < 5);

return 0;
}

>>>
0
1
2
3
4

--------------------------------
Process exited after 1.615 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### FOR_LOOP

When you know exactly how many times you want to loop through a block of code, use the for loop instead of a while loop:

```c++
for (statement 1; statement 2; statement 3) {
  // code block to be executed
}
```

- Statement 1 is executed (one time) before the execution of the code block.
- Statement 2 defines the condition for executing the code block.
- Statement 3 is executed (every time) after the code block has been executed.

The example below will print the numbers 0 to 4:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	for (int i = 0; i < 5; i++) {
  		cout << i << "\n";
	}

return 0;
}

>>>
0
1
2
3
4

--------------------------------
Process exited after 1.619 seconds with return value 0
Press any key to continue . . .
>>>
```

- Statement 1 sets a variable before the loop starts (int i = 0).
- Statement 2 defines the condition for the loop to run (i must be less than 5). If the condition is true, the loop will start over again, if it is false, the loop will end.
- Statement 3 increases a value (i++) each time the code block in the loop has been executed.

This example will only print even values between 0 and 10:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	for (int i = 0; i <= 10; i = i + 2) {
  		cout << i << "\n";
	}

return 0;
}

>>>
0
2
4
6
8
10

--------------------------------
Process exited after 1.212 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### BREAK_CONTINUE

##### - Break

You have already seen the break statement used in an earlier chapter of this tutorial. It was used to "jump out" of a switch statement.
The break statement can also be used to jump out of a loop.
This example jumps out of the loop when i is equal to 4:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	for (int i = 0; i < 10; i++) {
  		if (i == 4) {
    		break;
  		}
  		cout << i << "\n";
	}

return 0;
}

>>>
0
1
2
3

--------------------------------
Process exited after 1.663 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Continue

The continue statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop.
This example skips the value of 4:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	for (int i = 0; i < 10; i++) {
  		if (i == 4) {
    		continue;
  		}
  		cout << i << "\n";
	}

return 0;
}

>>>
0
1
2
3
5
6
7
8
9

--------------------------------
Process exited after 1.302 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Break and Continue in While Loop

You can also use break and continue in while loops:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int i = 0;
	while (i < 10) {
		cout << i << "\n";
  		i++;
  		if (i == 4) {
    		break;
  		}
	}

return 0;
}

>>>
0
1
2
3

--------------------------------
Process exited after 1.307 seconds with return value 0
Press any key to continue . . .
>>>
```

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	int i = 0;
	while (i < 10) {
  		if (i == 4) {
    		i++;
    		continue;
  		}
  		cout << i << "\n";
  		i++;
	}

return 0;
}

>>>
0
1
2
3
5
6
7
8
9

--------------------------------
Process exited after 1.44 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### ARRAYS

Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.
To declare an array, define the variable type, specify the name of the array followed by square brackets and specify the number of elements it should store:

```c++
string cars[4];
```

We have now declared a variable that holds an array of four strings. To insert values to it, we can use an array literal - place the values in a comma-separated list, inside curly braces:

```c++
string cars[4] = {"Volvo", "BMW", "Ford", "Mazda"};
```

To create an array of three integers, you could write:

```c++
int myNum[3] = {10, 20, 30};
```

##### - Access the Elements of an Array

You access an array element by referring to the index number.
This statement accesses the value of the first element in cars:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string cars[4] = {"Volvo", "BMW", "Ford", "Mazda"};
	cout << cars[0];
	// Outputs Volvo

return 0;
}

>>>
Volvo
--------------------------------
Process exited after 1.399 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Change an Array Element

To change the value of a specific element, refer to the index number:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string cars[4] = {"Volvo", "BMW", "Ford", "Mazda"};
	cars[0] = "Opel";
	cout << cars[0];
	// Now outputs Opel instead of Volvo

return 0;
}

>>>
Opel
--------------------------------
Process exited after 1.144 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Arrays and Loops

You can loop through the array elements with the for loop.
The following example outputs all elements in the cars array:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string cars[4] = {"Volvo", "BMW", "Ford", "Mazda"};
	for(int i = 0; i < 4; i++) {
  		cout << cars[i] << "\n";
}

return 0;
}

>>>
Volvo
BMW
Ford
Mazda

--------------------------------
Process exited after 1.526 seconds with return value 0
Press any key to continue . . .
>>>
```

The following example outputs the index of each element together with its value:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string cars[4] = {"Volvo", "BMW", "Ford", "Mazda"};

	for(int i = 0; i < 4; i++) {
  		cout << i << ": " << cars[i] << "\n";
}

return 0;
}

>>>
0: Volvo
1: BMW
2: Ford
3: Mazda

--------------------------------
Process exited after 1.66 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Omit Array Size

You don't have to specify the size of the array. But if you don't, it will only be as big as the elements that are inserted into it:

```c++
string cars[] = {"Volvo", "BMW", "Ford"}; // size of array is always 3
```

This is completely fine. However, the problem arise if you want extra space for future elements. Then you have to overwrite the existing values:

```c++
string cars[] = {"Volvo", "BMW", "Ford", "Mazda", "Tesla"};
```

If you specify the size however, the array will reserve the extra space:

```c++
string cars[5] = {"Volvo", "BMW", "Ford"}; // size of array is 5, even though it's only three elements inside it
```

Now you can add a fourth and fifth element without overwriting the others:

```c++
cars[3] = "Mazda";
cars[4] = "Tesla";
```

It is also possible to declare an array without specifying the elements on declaration, and add them later:

```c++
string cars[5];
cars[0] = "Volvo";
cars[1] = "BMW";
```

[^^^](#C++)

---

#### REFERENCES

A reference variable is a "reference" to an existing variable, and it is created with the ```&``` operator:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string food = "Pizza";
	string &meal = food;

	cout << food << "\n";  // Outputs Pizza
	cout << meal << "\n";  // Outputs Pizza

return 0;
}

>>>
Pizza
Pizza

--------------------------------
Process exited after 1.27 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Memory Address

In the example from the previous page, the ```&``` operator was used to create a reference variable. But it can also be used to get the memory address of a variable; which is the location of where the variable is stored on the computer.
When a variable is created in C++, a memory address is assigned to the variable. And when we assign a value to the variable, it is stored in this memory address.
To access it, use the & operator, and the result will represent where the variable is stored:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string food = "Pizza";

	cout << &food; // Outputs 0x6dfed4

return 0;
}

>>>
0x6ffe00
--------------------------------
Process exited after 1.376 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

#### POINTERS

You learned from the previous chapter, that we can get the memory address of a variable by using the ```&``` operator:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string food = "Pizza"; // A food variable of type string

	cout << food << endl;  // Outputs the value of food (Pizza)
	cout << &food; // Outputs the memory address of food (0x6dfed4)

return 0;
}

>>>
Pizza
0x6ffe00
--------------------------------
Process exited after 1.482 seconds with return value 0
Press any key to continue . . .
>>>
```

A pointer however, is a variable that stores the memory address as its value.
A pointer variable points to a data type (like int or string) of the same type, and is created with the ```*``` operator. The address of the variable you're working with is assigned to the pointer:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string food = "Pizza";  // A food variable of type string
	string* ptr = &food;    // A pointer variable, with the name ptr, that stores the address of food

	// Output the value of food (Pizza)
	cout << food << "\n";

	// Output the memory address of food (0x6dfed4)
	cout << &food << "\n";

	// Output the memory address of food with the pointer (0x6dfed4)
	cout << ptr << "\n";

return 0;
}

>>>
Pizza
0x6ffdf0
0x6ffdf0

--------------------------------
Process exited after 1.471 seconds with return value 0
Press any key to continue . . .
>>>
```

There are three ways to declare pointer variables, but the first way is preferred:

```c++
string* mystring; // Preferred
string *mystring;
string * mystring;
```

##### - Dereference

In the example from the previous page, we used the pointer variable to get the memory address of a variable (used together with the & reference operator). However, you can also use the pointer to get the value of the variable, by using the ```*``` operator (the dereference operator):

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string food = "Pizza";  // Variable declaration
	string* ptr = &food;    // Pointer declaration

	// Reference: Output the memory address of food with the pointer (0x6dfed4)
	cout << ptr << "\n";

	// Dereference: Output the value of food with the pointer (Pizza)
	cout << *ptr << "\n";

return 0;
}

>>>
0x6ffdf0
Pizza

--------------------------------
Process exited after 1.301 seconds with return value 0
Press any key to continue . . .
>>>
```

Note that the ```*``` sign can be confusing here, as it does two different things in our code:

- When used in declaration (```string* ptr```), it creates a pointer variable.
- When not used in declaration, it act as a dereference operator.

##### - Modify the Pointer Value

You can also change the pointer's value. But note that this will also change the value of the original variable:

```c++
#include <iostream>
#include <cmath>
using namespace std;

int main() {

	string food = "Pizza";
	string* ptr = &food;

	// Output the value of food (Pizza)
	cout << food << "\n";

	// Output the memory address of food (0x6dfed4)
	cout << &food << "\n";

	// Access the memory address of food and output its value (Pizza)
	cout << *ptr << "\n";

	// Change the value of the pointer
	*ptr = "Hamburger";

	// Output the new value of the pointer (Hamburger)
	cout << *ptr << "\n";

	// Output the new value of the food variable (Hamburger)
	cout << food << "\n";

return 0;
}

>>>
Pizza
0x6ffdf0
Pizza
Hamburger
Hamburger

--------------------------------
Process exited after 1.704 seconds with return value 0
Press any key to continue . . .
>>>
```

[^^^](#C++)

---

##### - Functions

A function is a block of code which only runs when it is called.
You can pass data, known as parameters, into a function.
Functions are used to perform certain actions, and they are important for reusing code: Define the code once, and use it many times.

##### - Create a Function

C++ provides some pre-defined functions, such as ```main()```, which is used to execute code. But you can also create your own functions to perform certain actions.
To create (often referred to as declare) a function, specify the name of the function, followed by parentheses ```()```

```c++
void myFunction() {
  // code to be executed
}
```

- myFunction() is the name of the function
- void means that the function does not have a return value. You will learn more about return values later in the next chapter
- inside the function (the body), add code that defines what the function should do

##### - Call a Function

Declared functions are not executed immediately. They are "saved for later use", and will be executed later, when they are called.
To call a function, write the function's name followed by two parentheses ```()``` and a semicolon ;
In the following example, ```myFunction()``` is used to print a text (the action), when it is called:

```c++
#include <iostream>
#include <cmath>
using namespace std;

// Create a function
	void myFunction() {
  	cout << "I just got executed!";
}

int main() {

  myFunction(); // call the function

return 0;
}

>>>
I just got executed!
--------------------------------
Process exited after 0.9561 seconds with return value 0
Press any key to continue . . .
>>>
```

A function can be called multiple times:

```c++
#include <iostream>
#include <cmath>
using namespace std;

// Create a function
	void myFunction() {
  	cout << "I just got executed! \n";
}

int main() {

  myFunction();
  myFunction();
  myFunction();

return 0;
}

>>>
I just got executed!
I just got executed!
I just got executed!

--------------------------------
Process exited after 1.287 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Function Declaration and Definition

A C++ function consist of two parts:

- Declaration: the function's name, return type, and parameters (if any)
- Definition: the body of the function (code to be executed)

```c++
void myFunction() { // declaration
  // the body of the function (definition)
}
```

However, it is possible to separate the declaration and the definition of the function - for code optimization.
You will often see C++ programs that have function declaration above ```main()```, and function definition below ```main()```. This will make the code better organized and easier to read:

```c++
#include <iostream>
#include <cmath>
using namespace std;

// Function declaration
void myFunction();

// The main method
int main() {
  myFunction();  // call the function
  return 0;
}

// Function definition
void myFunction() {
  cout << "I just got executed!";
}

>>>
I just got executed!
--------------------------------
Process exited after 1.947 seconds with return value 0
Press any key to continue . . .
>>>
```

##### - Functions Parameters

```c++

>>>

>>>
```

```c++

>>>

>>>
```

##### - Function Overloading

```c++

>>>

>>>
```

```c++

>>>

>>>
```

[^^^](#C++)

---

####

```c++

>>>

>>>
```

```c++

>>>

>>>
```

```c++

>>>

>>>
```

[^^^](#C++)

---

####

```c++

>>>

>>>
```

```c++

>>>

>>>
```

```c++

>>>

>>>
```

[^^^](#C++)

---

####

```c++

>>>

>>>
```

```c++

>>>

>>>
```

```c++

>>>

>>>
```

[^^^](#C++)

---

####

```c++

>>>

>>>
```

```c++

>>>

>>>
```

```c++

>>>

>>>
```

[^^^](#C++)

---

####

```c++

>>>

>>>
```

```c++

>>>

>>>
```

```c++

>>>

>>>
```

[^^^](#C++)

---

####

```c++

>>>

>>>
```

```c++

>>>

>>>
```

```c++

>>>

>>>
```

[^^^](#C++)

---

####

```c++

>>>

>>>
```

```c++

>>>

>>>
```

```c++

>>>

>>>
```

[^^^](#C++)

---
