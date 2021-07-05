
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

#### DATA_TYPES

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

#### OPERATORS

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

#### STRINGS

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

#### MATH

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

#### BOOLEAN

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

#### CONDITIONS

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

#### SWITCH

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

#### WHILE_LOOP

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

#### FOR_LOOP

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

#### BREAK_CONTINUE

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

#### ARRAYS

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

#### REFERENCES

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

#### POINTERS

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
