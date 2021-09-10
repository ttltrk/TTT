
#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_EXERCISES

---

```

```

---

* [CONV_NUMS_TO_INT_FROM_STR](#CONV_NUMS_TO_INT_FROM_STR)
* [COUNT_THE_OCCURENCES_OF_THE_DEDICATED_LETTERS_IN_STR](#COUNT_THE_OCCURENCES_OF_THE_DEDICATED_LETTERS_IN_STR)
* [PWD_CHECK](#PWD_CHECK)
* [PALINDROME_CHECK](#PALINDROME_CHECK)
* [CHANGE_THE_ORDER_USE_SWAPCASE](#CHANGE_THE_ORDER_USE_SWAPCASE)

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

[^^^](#STRINGS_EXERCISES)

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

[^^^](#STRINGS_EXERCISES)

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

[^^^](#STRINGS_EXERCISES)

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

[^^^](#STRINGS_EXERCISES)

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

[^^^](#STRINGS_EXERCISES)

---
