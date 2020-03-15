
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md) - [STANDARD](https://github.com/ttltrk/TTT/blob/master/SH/STANDARD/STANDARD.md)

---

### ECHO

---

* [CREATE_UPDATE_FILE](#CREATE_UPDATE_FILE)
* [APPEND_TXT](#APPEND_TXT)

---

#### CREATE_UPDATE_FILE

```sh
echo "this is some text" > temp.txt
cat temp.txt

>>>
this is some text
>>>

echo "this is some other text" > temp.txt
cat temp.txt

>>>
this is some other text
>>>
```

[^^^](#ECHO)

---

#### APPEND_TXT

```sh
echo "this is appended text" >> temp.txt
cat temp.txt

>>>
this is some other text
this is appended text
>>>
```

[^^^](#ECHO)

---
