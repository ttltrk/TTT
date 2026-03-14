
---

#### INNER JOIN

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

---

#### LEFT JOIN

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

---

#### RIGHT JOIN

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

---

#### FULL OUTER JOIN

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

---
