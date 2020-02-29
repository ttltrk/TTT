
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### LIKE

```
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
There are two wildcards often used in conjunction with the LIKE operator
% - The percent sign represents zero, one, or multiple characters
_ - The underscore represents a single character
```

---

* [FIRST_CHAR](#FIRST_CHAR)
* [LAST_CHAR](#LAST_CHAR)
* [TWO_CHARS_IN_THE_MIDDLE](#TWO_CHARS_IN_THE_MIDDLE)
* [SECOND_CHAR](#SECOND_CHAR)
* [FIRST_CHAR_AND_MIN_3_CHAR](#FIRST_CHAR_AND_MIN_3_CHAR)
* [FIRST_AND_LAST_CHARS](#FIRST_AND_LAST_CHARS)
* [WITHOUT_D_AS_FIRST](#WITHOUT_D_AS_FIRST)

---

#### FIRST_CHAR

```sql

select lastname from trk_test_01;

>>>
lastname|
--------|
trk     |
doe     |
ewong   |
kawhi   |
bbking  |
petofi  |
jockey  |
>>>

SELECT lastname FROM trk_test_01 WHERE lastname LIKE 't%';

>>>
lastname|
--------|
trk     |
>>>
```

[^^^](#LIKE)

---

#### LAST_CHAR

```sql

select lastname from trk_test_01;

>>>
lastname|
--------|
trk     |
doe     |
ewong   |
kawhi   |
bbking  |
petofi  |
jockey  |
>>>

SELECT lastname FROM trk_test_01 WHERE lastname LIKE '%i';

>>>
lastname|
--------|
kawhi   |
petofi  |
>>>
```

[^^^](#LIKE)

---

#### TWO_CHARS_IN_THE_MIDDLE

```sql
select lastname from trk_test_01;

>>>
lastname|
--------|
trk     |
doe     |
ewong   |
kawhi   |
bbking  |
petofi  |
jockey  |
>>>

SELECT lastname FROM trk_test_01 WHERE lastname LIKE '%oe%';

>>>
lastname|
--------|
doe     |
>>>
```

[^^^](#LIKE)

---

#### SECOND_CHAR

```sql
select lastname from trk_test_01;

>>>
lastname|
--------|
trk     |
doe     |
ewong   |
kawhi   |
bbking  |
petofi  |
jockey  |
>>>

SELECT lastname FROM trk_test_01 WHERE lastname LIKE '_o%';

>>>
lastname|
--------|
doe     |
jockey  |
>>>
```

[^^^](#LIKE)

---

#### FIRST_CHAR_AND_MIN_3_CHAR

```sql
select lastname from trk_test_01;

>>>
lastname|
--------|
trk     |
doe     |
ewong   |
kawhi   |
bbking  |
petofi  |
jockey  |
>>>

SELECT lastname FROM trk_test_01 WHERE lastname LIKE 'b_%_%';

>>>
lastname|
--------|
bbking  |
>>>
```

[^^^](#LIKE)

---

#### FIRST_AND_LAST_CHARS

```sql

```

[^^^](#LIKE)

---

#### WITHOUT_D_AS_FIRST

```sql

```

[^^^](#LIKE)

---
