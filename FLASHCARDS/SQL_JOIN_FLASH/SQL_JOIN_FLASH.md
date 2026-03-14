
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) 

---

### SQL_JOIN_FLASH

---

* [INNER_JOIN](#INNER_JOIN)
* [LEFT_JOIN](#LEFT_JOIN)
* [RIGHT_JOIN](#RIGHT_JOIN)
* [FULL_OUTER_JOIN](#FULL_OUTER_JOIN)
  
---

#### INNER_JOIN

```
Returns only matching rows in both tables.
```

```mermaid
flowchart LR
    A[(Table A)]
    B[(Table B)]
    A -->|matching id| C[(INNER JOIN RESULT)]
    B -->|matching id| C
```

[^^^](#SQL_JOIN_FLASH)

---

#### LEFT_JOIN

```
Returns all rows from A + matching rows from B.
```

```mermaid
flowchart LR
    A[(Table A)]
    B[(Table B)]
    A -->|all rows| C[(LEFT JOIN RESULT)]
    B -->|matching rows| C
```

[^^^](#SQL_JOIN_FLASH)

---

#### RIGHT_JOIN

```
Returns all rows from B + matching rows from A.
```

```mermaid
flowchart LR
    A[(Table A)]
    B[(Table B)]
    A -->|matching rows| C[(RIGHT JOIN RESULT)]
    B -->|all rows| C
```

[^^^](#SQL_JOIN_FLASH)

---

#### FULL_OUTER_JOIN

```
Returns all rows from both tables, matched where possible.
```

```mermaid
flowchart LR
    A[(Table A)]
    B[(Table B)]
    A -->|all rows| C[(FULL OUTER JOIN RESULT)]
    B -->|all rows| C
```

[^^^](#SQL_JOIN_FLASH)

---
