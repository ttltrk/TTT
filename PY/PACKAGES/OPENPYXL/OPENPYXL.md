
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### OPENPYXL

---

```

```

---

* [ACCESSING_WORKBOOK](#ACCESSING_WORKBOOK)
* [ACCESSING_CELL_VALUES](#ACCESSING_CELL_VALUES)
* [CHANGE_CELL_VALUES](#CHANGE_CELL_VALUES)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### ACCESSING_WORKBOOK

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('Grades.xlsx')
ws = wb.active

print(ws)

>>>
<Worksheet "Sheet1">
>>>
```

[^^^](#OPENPYXL)

---

#### ACCESSING_CELL_VALUES

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('Grades.xlsx')
ws = wb.active

print(ws['A1'])
print(ws['A1'].value)
print(ws['A2'].value)

>>>
<Cell 'Sheet1'.A1>
Name
Joe
>>>
```

[^^^](#OPENPYXL)

---

#### CHANGE_CELL_VALUES

[^^^](#OPENPYXL)

---

[^^^](#OPENPYXL)

---
