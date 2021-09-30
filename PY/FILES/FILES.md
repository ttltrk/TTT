
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### FILES

---

* [FILE_HANDLING](#FILE_HANDLING)
* [READ_FILES](#READ_FILES)
* [WRITE_CREATE_FILES](#WRITE_CREATE_FILES)
* [DELETE_FILES](#DELETE_FILES)

---

#### FILE_HANDLING

```
File handling is an important part of any web application.
Python has several functions for creating, reading, updating, and deleting files.
```

```
The key function for working with files in Python is the open() function.
The open() function takes two parameters; filename, and mode.
There are four different methods (modes) for opening a file:

"r" - Read - Default value. Opens a file for reading, error if the file does not exist
"a" - Append - Opens a file for appending, creates the file if it does not exist
"w" - Write - Opens a file for writing, creates the file if it does not exist
"x" - Create - Creates the specified file, returns an error if the file exists

In addition you can specify if the file should be handled as binary or text mode

"t" - Text - Default value. Text mode
"b" - Binary - Binary mode (e.g. images)
```

```py
f = open("demofile.txt")
```

[^^^](#FILES)

---

#### READ_FILES

```py
f = open("demo.txt", "r")
print(f.read())

>>>
Hello! Welcome to demofile.txt
This file is for testing purposes.
Good Luck!
>>>
```

- Return the 5 first characters of the file

```py
f = open("demo.txt", "r")
print(f.read(5))

>>>
Hello
>>>
```

- Read lines

```py
f = open("demo.txt", "r")
print(f.readline())

>>>
Hello! Welcome to demofile.txt
>>>
```

```py
f = open("demo.txt", "r")
print(f.readline())
print(f.readline())

>>>
Hello! Welcome to demofile.txt

This file is for testing purposes.
>>>
```

```py
f = open("demo.txt", "r")
for x in f:
  print(x)

>>>
Hello! Welcome to demofile.txt

This file is for testing purposes.

Good Luck!
>>>
```

[^^^](#FILES)

---

#### WRITE_CREATE_FILES

```py

>>>

>>>
```

[^^^](#FILES)

---

#### DELETE_FILES

```py

>>>

>>>
```

[^^^](#FILES)

---
