
#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_FORMAT

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

To make sure a string will display as expected, we can format the result with the ```format()``` method.
We can combine strings and numbers by using the ```format()``` method!
The ```format()``` method takes the passed arguments, formats them, and places them in the string where the placeholders ```{}``` are


```py
age = 36
txt = "My name is John, and I am {}"

print(txt.format(age))

>>>
My name is John, and I am 36
>>>
```

The ```format()``` method takes unlimited number of arguments, and are placed into the respective placeholders

```py
quantity = 3
itemno = 567
price = 49.95

myorder = "I want {} pieces of item {} for {} dollars."

print(myorder.format(quantity, itemno, price))

>>>
I want 3 pieces of item 567 for 49.95 dollars.
>>>
```

You can use index numbers ```{0}``` to be sure the arguments are placed in the correct placeholders

```py
quantity = 3
itemno = 567
price = 49.95

myorder = "I want to pay {2} dollars for {0} pieces of item {1}."

print(myorder.format(quantity, itemno, price))

>>>
I want to pay 49.95 dollars for 3 pieces of item 567.
>>>
```

[^^^](#STRINGS_FORMAT)

---

#### STRING_FORMAT

The format() method allows you to format selected parts of a string.
Sometimes there are parts of a text that you do not control, maybe they come from a database, or user input?
To control such values, add placeholders (curly brackets {}) in the text, and run the values through the format() method.

```py
price = 49
txt = "The price is {} dollars"
print(txt.format(price))

>>>
The price is 49 dollars
>>>
```

You can add parameters inside the curly brackets to specify how to convert the value:

```py
price = 49
txt = "The price is {:.2f} dollars"
print(txt.format(price))

>>>
The price is 49.00 dollars
>>>
```

[^^^](#STRINGS_FORMAT)

---

#### Multiple Values

If you want to use more values, just add more values to the format() method.

```py
quantity = 3
itemno = 567
price = 49
myorder = "I want {} pieces of item number {} for {:.2f} dollars."
print(myorder.format(quantity, itemno, price))

>>>
I want 3 pieces of item number 567 for 49.00 dollars.
>>>
```
