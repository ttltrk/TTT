
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md) - [DS](https://github.com/ttltrk/TTT/blob/master/SQL/DS/DS.md)

---

### 0843_VIEWS

---

```sql
select first_name, email, e.department, salary, division, region, country  
from employees e, departments d, regions r
where e.department = d.department
and e.region_id = r.region_id
limit 10;

first_name|email                |department      |salary|division   |region     |country      |
----------|---------------------|----------------|------|-----------|-----------|-------------|
Berrie    |bmanueau0@dion.ne.jp |Sports          |154864|Outdoors   |Central    |Asia         |
Aeriell   |amcnee1@google.es    |Tools           | 56752|Hardware   |Northwest  |United States|
Sydney    |ssymonds2@hhs.gov    |Clothing        | 95313|Home       |Central    |Asia         |
Avrom     |                     |Phones & Tablets|119674|Electronics|Nova Scotia|Canada       |
Feliks    |fmorffew4@a8.net     |Computers       | 55307|Electronics|East Asia  |Asia         |
Bethena   |btrow5@technorati.com|Sports          |134501|Outdoors   |Northwest  |United States|
Ardeen    |acurwood6@1und1.de   |Clothing        | 28995|Home       |Nova Scotia|Canada       |
Seline    |sdubber7@t-online.de |Phones & Tablets|101066|Electronics|Northwest  |United States|
Dayle     |dtrail8@tamu.edu     |First Aid       | 82753|Health     |Southwest  |United States|
Redford   |                     |Clothing        | 72225|Home       |Nova Scotia|Canada       |
```

```sql
--we have created a view v_employee_information
create view v_employee_information as 
select first_name, email, e.department, salary, division, region, country  
from employees e, departments d, regions r
where e.department = d.department
and e.region_id = r.region_id
limit 10;
```

```sql
--now we are able to use it

select * from v_employee_information;

first_name|email                |department      |salary|division   |region     |country      |
----------|---------------------|----------------|------|-----------|-----------|-------------|
Berrie    |bmanueau0@dion.ne.jp |Sports          |154864|Outdoors   |Central    |Asia         |
Aeriell   |amcnee1@google.es    |Tools           | 56752|Hardware   |Northwest  |United States|
Sydney    |ssymonds2@hhs.gov    |Clothing        | 95313|Home       |Central    |Asia         |
Avrom     |                     |Phones & Tablets|119674|Electronics|Nova Scotia|Canada       |
Feliks    |fmorffew4@a8.net     |Computers       | 55307|Electronics|East Asia  |Asia         |
Bethena   |btrow5@technorati.com|Sports          |134501|Outdoors   |Northwest  |United States|
Ardeen    |acurwood6@1und1.de   |Clothing        | 28995|Home       |Nova Scotia|Canada       |
Seline    |sdubber7@t-online.de |Phones & Tablets|101066|Electronics|Northwest  |United States|
Dayle     |dtrail8@tamu.edu     |First Aid       | 82753|Health     |Southwest  |United States|
Redford   |                     |Clothing        | 72225|Home       |Nova Scotia|Canada       |
```

---

```sql
--you can't insert data into it

--inline view

select *
from (select * from departments) a
limit 5;

department|division   |
----------|-----------|
Clothing  |Home       |
Grocery   |Home       |
Decor     |Home       |
Furniture |Home       |
Computers |Electronics|
```

---