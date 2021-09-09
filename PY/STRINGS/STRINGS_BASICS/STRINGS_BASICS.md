
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_BASICS

---

```

```

---

* [BASICS](#BASICS)
* [FULL_ABC](#FULL_ABC)
* [STR_TO_LST_SEPAR](#STR_TO_LST_SEPAR)
* [STR_TO_LST_FULL](#STR_TO_LST_FULL)
* [STR_TO_SET](#STR_TO_SET)
* [STR_TO_TUP](#STR_TO_TUP)
* [CONV_NUMS_TO_INT_FROM_STR](#CONV_NUMS_TO_INT_FROM_STR)
* [COUNT_THE_OCCURENCES_OF_THE_DEDICATED_LETTERS_IN_STR](#COUNT_THE_OCCURENCES_OF_THE_DEDICATED_LETTERS_IN_STR)
* [PWD_CHECK](#PWD_CHECK)
* [PALINDROME_CHECK](#PALINDROME_CHECK)
* [CHANGE_THE_ORDER_USE_SWAPCASE](#CHANGE_THE_ORDER_USE_SWAPCASE)

---

#### BASICS

```
| P | y | t | h | o | n |
 0   1   2   3   4   5   6
-6  -5  -4  -3  -2  -1
```

```py
print("hellobello")
print(' ')
print("hello\nbello")
print(' ')
print("hello\"bello")

>>>
hellobello

hello
bello

hello"bello
>>>
```

```py
phrase = "hellobello"

print(phrase)

>>>
hellobello
>>>
```

```py
phrase = "hellobello"

print(phrase + ' is cool')

>>>
hellobello is cool
>>>
```

[^^^](#STRINGS_BASICS)

---

#### FULL_ABC

```py
import string as st
def high():

    abc=st.ascii_lowercase
    print(abc)
    print(abc[-1])
    print(abc[::-1])

print(high())

>>>
abcdefghijklmnopqrstuvwxyz
z
zyxwvutsrqponmlkjihgfedcba
>>>
```

[^^^](#STRINGS_BASICS)

---

#### STR_TO_LST_SEPAR

```py
def split(word):
    l = [char for char in word]
    return l

print(split('heyho'))

>>>
['h', 'e', 'y', 'h', 'o']
>>>
```

```py
word = 'abc'
l = list(word)
print(l)

>>>
['a', 'b', 'c']
>>>
```

[^^^](#STRINGS_BASICS)

---

#### STR_TO_LST_FULL

```py
a = 'mary'
z = a.split()
print(z)

>>>
['mary']
>>>
```

```py
def high(x):    
    inpL = x.split()
    return inpL

high('man i need a taxi up to ubud')

>>>
['man', 'i', 'need', 'a', 'taxi', 'up', 'to', 'ubud']
>>>
```

[^^^](#STRINGS_BASICS)

---

#### STR_TO_SET

```py
s = "blabla"
f = {s}

print(type(f))
print(f)

>>>
{'blabla'}
>>>
```

[^^^](#STRINGS_BASICS)

---

#### STR_TO_TUP

```py
string="heyho"
a = tuple(string)

print(a)

>>>
('h', 'e', 'y', 'h', 'o')
>>>
```

[^^^](#STRINGS_BASICS)

---

#### CONV_NUMS_TO_INT_FROM_STR

```py
#how to convert only the numbers to int from the string
s = '1 2 Fizz 4 Buzz'
l=list(s)
print(l)
l1=[int(vals) for vals in l if vals.isdigit()]
print(l1)

>>>
['1', ' ', '2', ' ', 'F', 'i', 'z', 'z', ' ', '4', ' ', 'B', 'u', 'z', 'z']
[1, 2, 4]
>>>
```

[^^^](#STRINGS_BASICS)

---

#### COUNT_THE_OCCURENCES_OF_THE_DEDICATED_LETTERS_IN_STR

```py
def str_count(strng, letter):

    res = strng.count(letter)
    return res

print(str_count('hello', 'l'))

>>>
2
>>>
```

[^^^](#STRINGS_BASICS)

---

#### PWD_CHECK

```py
def password(string):

    #check if the string contains uppercase char
    r1 = [any(x.isupper() for x in string)]
    print(r1)

    #check if the string contains lowercase char
    r2 = [any(x.islower() for x in string)]
    print(r2)

    #check if the string contains numbers
    r3 = [any(x.isdigit() for x in string)]
    print(r3)

    r4 = len(string)
    print(r4)

    if r1 == [False] or r2 == [False] or r3 == [False] or r4 < 8:
        return False
    else:
        return True

print(password("abcd1234"))

>>>
[False]
[True]
[True]
8
False
>>>
```

[^^^](#STRINGS_BASICS)

---

#### PALINDROME_CHECK

```py
def is_palindrome(s):

    st = s.lower()
    rev = st[::-1]

    if st == rev:
        return True
    else:
        return False

print(is_palindrome('Abba'))

>>>
True
>>>
```

[^^^](#STRINGS_BASICS)

---

#### CHANGE_THE_ORDER_USE_SWAPCASE

```py
def string_transformer(s):

    #reverse the order of the words in the string
    reversed_string = " ".join(s.split(" ")[::-1])

    #use swapcase for change all the upper to lower and back
    sc = reversed_string.swapcase()
    return sc

print(string_transformer("Example string"))

>>>
STRING eXAMPLE
>>>
```

[^^^](#STRINGS_BASICS)

---

fW1nqEL(RTHWqREZ
