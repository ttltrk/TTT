
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### POSTGRESQL

---

```

---------------------------------- MAIN LOGIN ------------------------------------

- login to postgre:

    psql --username=freecodecamp --dbname=postgres

---------------------------------- DBS ------------------------------------

- check dbs:

    \l

- login to db:

    \c second_database

- create dbs:

    CREATE DATABASE second_database;

- rename database:

    ALTER DATABASE first_database RENAME TO mario_database;

- drop database:

    DROP DATABASE second_database;

---------------------------------- TABLES ------------------------------------

- check tables:

    \d

- create table:

    CREATE TABLE first_table();
    CREATE TABLE more_info();

- drop table:

    DROP TABLE second_table;

---------------------------------- COLUMNS ------------------------------------

- check the columns:

    \d username

- create column:

    ALTER TABLE second_table ADD COLUMN name VARCHAR(30);

    ALTER TABLE characters ADD COLUMN character_id SERIAL;
    ALTER TABLE characters ADD COLUMN name VARCHAR(30) NOT NULL;
    ALTER TABLE characters ADD COLUMN homeland VARCHAR(60);
    ALTER TABLE characters ADD COLUMN favorite_color VARCHAR(30);

    ALTER TABLE more_info ADD COLUMN more_info_id SERIAL;
    ALTER TABLE more_info ADD COLUMN birthday DATE;
    ALTER TABLE more_info ADD COLUMN height INT;
    That data type is for decimals. NUMERIC(4, 1) has up to four digits and one of them has to be to the right of the decimal.
    ALTER TABLE more_info ADD COLUMN weight NUMERIC(4, 1);


- add primary key:

    ALTER TABLE characters ADD PRIMARY KEY(name);
    ALTER TABLE more_info ADD PRIMARY KEY(more_info_id);

- check primary key in the table:

    \d characters

- drop PRIM KEY / CONSTRAINT

    ALTER TABLE characters DROP CONSTRAINT characters_pkey;

- cretae foreign key:

    ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id);

- add unique constraint:

    ALTER TABLE more_info ADD UNIQUE(character_id);

- add NOT NULL constraint:

    ALTER TABLE more_info ALTER COLUMN character_id SET NOT NULL;

- drop column:

    ALTER TABLE second_table DROP COLUMN age;

- rename column:

    ALTER TABLE second_table RENAME COLUMN name TO username;

- fill out values to the column:

    INSERT INTO second_table(id, username) VALUES(1, 'Samus');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Luigi', 'Mushroom Kingdom', 'Green');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Peach', 'Mushroom Kingdom', 'Pink');

    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1981-07-09', 155, 64.5, 1);
    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1983-07-14', 175, 48.8, 2);
    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1985-10-18', 173, 52.2, 3);

- mass insert:

    INSERT INTO characters(name, homeland, favorite_color)
    VALUES('Toadstool', 'Mushroom Kingdom', 'Red'),
    ('Bowser', 'Mushroom Kingdom', 'Green');

    INSERT INTO characters(name, homeland, favorite_color)
    VALUES('Daisy', 'Sarasaland', 'Yellow'),
    ('Yoshi', 'Dinosaur Land', 'Green');

- delete rows from columns:

    DELETE FROM second_table Where username='Luigi';

- update column:

    UPDATE characters SET favorite_color='Orange' WHERE name='Daisy';
    UPDATE characters SET name='Toad' WHERE favorite_color='Red';
    UPDATE characters SET name='Mario' WHERE character_id=1;
    UPDATE characters SET favorite_color='Blue' WHERE character_id=4;
    UPDATE characters SET favorite_color='Yellow' WHERE character_id=5;
    UPDATE characters SET homeland='Koopa Kingdom' WHERE character_id=5;

---------------------------------- DRL/DQL ------------------------------------

- select * from ... :

  select * from characters;

- ORDER BY:

  select * from characters ORDER BY character_id;

  mario_database=>                                
+--------------+--------+------------------+----------------+
| character_id |  name  |     homeland     | favorite_color |
+--------------+--------+------------------+----------------+
|            1 | Mario  | Mushroom Kingdom | Red            |
|            2 | Luigi  | Mushroom Kingdom | Green          |
|            3 | Peach  | Mushroom Kingdom | Pink           |
|            4 | Toad   | Mushroom Kingdom | Blue           |
|            5 | Bowser | Koopa Kingdom    | Yellow         |
|            6 | Daisy  | Sarasaland       | Orange         |
|            7 | Yoshi  | Dinosaur Land    | Green          |
+--------------+--------+------------------+----------------+
(7 rows)

```

#### HOW_TO_CHANGE_PRIMARY_KEY

1. create the primary key

```
ALTER TABLE characters ADD PRIMARY KEY(name);
```

2. check the PRIM KEY

```
mario_database=> \d characters
                                             Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
Indexes:
    "characters_pkey" PRIMARY KEY, btree (name)

mario_database=>
```

3. DROP PRIM KEY

```
ALTER TABLE characters DROP CONSTRAINT characters_pkey;
```

4. check the details again

```
mario_database=> \d characters
                                             Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+

mario_database=>
```

5. add PRIM KEY again

```
mario_database=> ALTER TABLE characters ADD PRIMARY KEY(character_id);
ALTER TABLE
mario_database=> \d characters
mario_database=>                                              Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
Indexes:
    "characters_pkey" PRIMARY KEY, btree (character_id)

```

---

#### HOW_TO_CREATE_FOREIGN_KEY

There’s your four columns and the primary key you created at the bottom. To know what row is for a character, you need to set a foreign key so you can relate rows from this table to rows from your characters table. Here's an example that creates a column as a foreign key:

```
ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);
```

That's quite the command. In the more_info table, create a character_id column. Make it an INT and a foreign key that references the character_id column from the characters table. Good luck.

solution:

```
ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id);
```
