
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

[^^^](#C++)

---

#### COMMENTS

[^^^](#C++)

---

#### VARIABLES

[^^^](#C++)

---

#### USER_INPUT

[^^^](#C++)

---

#### DATA_TYPES

[^^^](#C++)

---

#### OPERATORS

[^^^](#C++)

---

#### STRINGS

[^^^](#C++)

---

#### MATH

[^^^](#C++)

---

#### BOOLEAN

[^^^](#C++)

---

#### CONDITIONS

[^^^](#C++)

---

#### SWITCH

[^^^](#C++)

---

#### WHILE_LOOP

[^^^](#C++)

---

#### FOR_LOOP

[^^^](#C++)

---

#### BREAK_CONTINUE

[^^^](#C++)

---

#### ARRAYS

[^^^](#C++)

---

#### REFERENCES

[^^^](#C++)

---

#### POINTERS

[^^^](#C++)

---
