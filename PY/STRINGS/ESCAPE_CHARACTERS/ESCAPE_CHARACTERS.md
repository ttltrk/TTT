
#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### ESCAPE_CHARACTERS

---

```
To insert characters that are illegal in a string, use an escape character.
An escape character is a backslash \ followed by the character you want to insert.
```

---

* [BASICS](#BASICS)

---

#### BASICS

The escape character allows you to use double quotes when you normally would not be allowed

```py
txt = "We are the so-called \"Vikings\" from the north."

print(txt)

>>>
We are the so-called "Vikings" from the north.
>>>
```

```py
\'	Single Quote
\\	Backslash
\n	New Line
\r	Carriage Return
\t	Tab
\b	Backspace
\f	Form Feed
\ooo	Octal value
\xhh	Hex value
```

[^^^](#ESCAPE_CHARACTERS)

```
