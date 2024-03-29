
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### POSTGRESQL

---

- MAIN LOGIN

```
- login to postgre:

    psql --username=freecodecamp --dbname=postgres
```

- DBS

```
- check dbs:

    \l

- login to db:

    \c second_database

- create dbs:

    CREATE DATABASE second_database;
    CREATE DATABASE universe;

- rename database:

    ALTER DATABASE first_database RENAME TO mario_database;

- drop database:

    DROP DATABASE second_database;
```

- TABLES

```
- check tables:

    \d

- create table:

    CREATE TABLE first_table();
    CREATE TABLE more_info();

    CREATE TABLE sounds(sound_id SERIAL PRIMARY KEY);
    CREATE TABLE actions(action_id SERIAL PRIMARY KEY);

    CREATE TABLE character_actions();

    universe=> CREATE TABLE galaxy();
    CREATE TABLE
    universe=> CREATE TABLE star();
    CREATE TABLE
    universe=> CREATE TABLE planet();
    CREATE TABLE
    universe=> CREATE TABLE moon();
    CREATE TABLE
    universe=> 

- drop table:

    DROP TABLE second_table;
```

- COLUMNS

```
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

    ALTER TABLE sounds ADD COLUMN filename VARCHAR(40) NOT NULL UNIQUE;
    ALTER TABLE actions ADD COLUMN action VARCHAR(20) UNIQUE NOT NULL;

    ALTER TABLE character_actions ADD COLUMN character_id INT NOT NULL;
    ALTER TABLE character_actions ADD COLUMN action_id INT NOT NULL;


- add primary key:

    ALTER TABLE characters ADD PRIMARY KEY(name);
    ALTER TABLE more_info ADD PRIMARY KEY(more_info_id);

- check primary key in the table:

    \d characters

- drop PRIM KEY / CONSTRAINT

    ALTER TABLE characters DROP CONSTRAINT characters_pkey;

- cretae foreign key:

    ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id);
    ALTER TABLE sounds ADD COLUMN character_id INT NOT NULL REFERENCES characters(character_id);

- set foreign key if the column is already exists:

    ALTER TABLE character_actions ADD FOREIGN KEY(character_id) REFERENCES characters(character_id);
    ALTER TABLE character_actions ADD FOREIGN KEY(action_id) REFERENCES actions(action_id);

- create a composite primary key

    ALTER TABLE character_actions ADD PRIMARY KEY(character_id, action_id);

- add unique constraint:

    ALTER TABLE more_info ADD UNIQUE(character_id);

- add NOT NULL constraint:

    ALTER TABLE more_info ALTER COLUMN character_id SET NOT NULL;

- drop column:

    ALTER TABLE second_table DROP COLUMN age;

- rename column:

    ALTER TABLE second_table RENAME COLUMN name TO username;
    ALTER TABLE more_info RENAME COLUMN height TO height_in_cm;
    ALTER TABLE more_info RENAME COLUMN weight TO weight_in_kg;

- fill out values to the column:

    INSERT INTO second_table(id, username) VALUES(1, 'Samus');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Luigi', 'Mushroom Kingdom', 'Green');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Peach', 'Mushroom Kingdom', 'Pink');

    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1981-07-09', 155, 64.5, 1);
    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1983-07-14', 175, 48.8, 2);
    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1985-10-18', 173, 52.2, 3);
    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1950-01-10', 66, 35.6, 4);
    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1990-10-29', 258, 300, 5);
    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1989-07-31', NULL, NULL, 6);
    INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1990-04-13', 162, 59.1, 7);

    INSERT INTO sounds(sound_id, filename, character_id) VALUES(1, 'its-a-me.wav', 1);
    INSERT INTO sounds(sound_id, filename, character_id) VALUES(2, 'yippee.wav', 1);
    INSERT INTO sounds(sound_id, filename, character_id) VALUES(3, 'ha-ha.wav', 2);
    INSERT INTO sounds(sound_id, filename, character_id) VALUES(4, 'oh-yeah.wav', 2);
    INSERT INTO sounds(sound_id, filename, character_id) VALUES(5, 'yay.wav', 3);
    INSERT INTO sounds(sound_id, filename, character_id) VALUES(6, 'woo-hoo.wav', 3);

    INSERT INTO actions(action_id, action) VALUES(1, 'run');
    INSERT INTO actions(action_id, action) VALUES(2, 'jump');
    INSERT INTO actions(action_id, action) VALUES(3, 'duck');

- mass insert:

    INSERT INTO characters(name, homeland, favorite_color)
    VALUES('Toadstool', 'Mushroom Kingdom', 'Red'),
    ('Bowser', 'Mushroom Kingdom', 'Green');

    INSERT INTO characters(name, homeland, favorite_color)
    VALUES('Daisy', 'Sarasaland', 'Yellow'),
    ('Yoshi', 'Dinosaur Land', 'Green');

    INSERT INTO sounds(sound_id, filename, character_id)
    VALUES(7, 'mm-hmm.wav', 3),
    (8, 'yahoo.wav', 1);

    INSERT INTO character_actions(character_id, action_id)
    VALUES(7, 1),
    (7, 2),
    (7, 3);

    INSERT INTO character_actions(character_id, action_id)
    VALUES(6, 1),
    (6, 2),
    (6, 3);

    INSERT INTO character_actions(character_id, action_id)
    VALUES(5, 1),
    (5, 2),
    (5, 3);

    INSERT INTO character_actions(character_id, action_id)
    VALUES(4, 1),
    (4, 2),
    (4, 3);

    INSERT INTO character_actions(character_id, action_id)
    VALUES(3, 1),
    (3, 2),
    (3, 3);

    INSERT INTO character_actions(character_id, action_id)
    VALUES(2, 1),
    (2, 2),
    (2, 3);

    INSERT INTO character_actions(character_id, action_id)
    VALUES(1, 1),
    (1, 2),
    (1, 3);

- delete rows from columns:

    DELETE FROM second_table Where username='Luigi';

- update column:

    UPDATE characters SET favorite_color='Orange' WHERE name='Daisy';
    UPDATE characters SET name='Toad' WHERE favorite_color='Red';
    UPDATE characters SET name='Mario' WHERE character_id=1;
    UPDATE characters SET favorite_color='Blue' WHERE character_id=4;
    UPDATE characters SET favorite_color='Yellow' WHERE character_id=5;
    UPDATE characters SET homeland='Koopa Kingdom' WHERE character_id=5;
```

- DRL/DQL

```
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

- FULL JOIN:

    SELECT * FROM characters FULL JOIN more_info ON characters.character_id = more_info.character_id;

    +--------------+--------+------------------+----------------+--------------+------------+--------------+--------------+--------------+
    | character_id |  name  |     homeland     | favorite_color | more_info_id |  birthday  | height_in_cm | weight_in_kg | character_id |
    +--------------+--------+------------------+----------------+--------------+------------+--------------+--------------+--------------+
    |            2 | Luigi  | Mushroom Kingdom | Green          |            2 | 1983-07-14 |          175 |         48.8 |            2 |
    |            3 | Peach  | Mushroom Kingdom | Pink           |            3 | 1985-10-18 |          173 |         52.2 |            3 |
    |            7 | Yoshi  | Dinosaur Land    | Green          |            7 | 1990-04-13 |          162 |         59.1 |            7 |
    |            6 | Daisy  | Sarasaland       | Orange         |            6 | 1989-07-31 |              |              |            6 |
    |            1 | Mario  | Mushroom Kingdom | Red            |            1 | 1981-07-09 |          155 |         64.5 |            1 |
    |            4 | Toad   | Mushroom Kingdom | Blue           |            4 | 1950-01-10 |           66 |         35.6 |            4 |
    |            5 | Bowser | Koopa Kingdom    | Yellow         |            5 | 1990-10-29 |          258 |        300.0 |            5 |
    +--------------+--------+------------------+----------------+--------------+------------+--------------+--------------+--------------+
    (7 rows)

    SELECT * FROM characters FULL JOIN sounds ON characters.character_id = sounds.character_id;
    mario_database=>                                                    
    +--------------+--------+------------------+----------------+----------+--------------+--------------+
    | character_id |  name  |     homeland     | favorite_color | sound_id |   filename   | character_id |
    +--------------+--------+------------------+----------------+----------+--------------+--------------+
    |            1 | Mario  | Mushroom Kingdom | Red            |        1 | its-a-me.wav |            1 |
    |            1 | Mario  | Mushroom Kingdom | Red            |        2 | yippee.wav   |            1 |
    |            2 | Luigi  | Mushroom Kingdom | Green          |        3 | ha-ha.wav    |            2 |
    |            2 | Luigi  | Mushroom Kingdom | Green          |        4 | oh-yeah.wav  |            2 |
    |            3 | Peach  | Mushroom Kingdom | Pink           |        5 | yay.wav      |            3 |
    |            3 | Peach  | Mushroom Kingdom | Pink           |        6 | woo-hoo.wav  |            3 |
    |            3 | Peach  | Mushroom Kingdom | Pink           |        7 | mm-hmm.wav   |            3 |
    |            1 | Mario  | Mushroom Kingdom | Red            |        8 | yahoo.wav    |            1 |
    |            5 | Bowser | Koopa Kingdom    | Yellow         |          |              |              |
    |            6 | Daisy  | Sarasaland       | Orange         |          |              |              |
    |            4 | Toad   | Mushroom Kingdom | Blue           |          |              |              |
    |            7 | Yoshi  | Dinosaur Land    | Green          |          |              |              |
    +--------------+--------+------------------+----------------+----------+--------------+--------------+
    (12 rows)

- junction table FULL JOIN

select * from character_actions
FULL JOIN characters ON character_actions.character_id = characters.character_id
FULL JOIN actions ON character_actions.action_id = actions.action_id;

mario_database=>                                                        
+--------------+-----------+--------------+--------+------------------+----------------+-----------+--------+
| character_id | action_id | character_id |  name  |     homeland     | favorite_color | action_id | action |
+--------------+-----------+--------------+--------+------------------+----------------+-----------+--------+
|            7 |         1 |            7 | Yoshi  | Dinosaur Land    | Green          |         1 | run    |
|            7 |         2 |            7 | Yoshi  | Dinosaur Land    | Green          |         2 | jump   |
|            7 |         3 |            7 | Yoshi  | Dinosaur Land    | Green          |         3 | duck   |
|            6 |         1 |            6 | Daisy  | Sarasaland       | Orange         |         1 | run    |
|            6 |         2 |            6 | Daisy  | Sarasaland       | Orange         |         2 | jump   |
|            6 |         3 |            6 | Daisy  | Sarasaland       | Orange         |         3 | duck   |
|            5 |         1 |            5 | Bowser | Koopa Kingdom    | Yellow         |         1 | run    |
|            5 |         2 |            5 | Bowser | Koopa Kingdom    | Yellow         |         2 | jump   |
|            5 |         3 |            5 | Bowser | Koopa Kingdom    | Yellow         |         3 | duck   |
|            4 |         1 |            4 | Toad   | Mushroom Kingdom | Blue           |         1 | run    |
|            4 |         2 |            4 | Toad   | Mushroom Kingdom | Blue           |         2 | jump   |
|            4 |         3 |            4 | Toad   | Mushroom Kingdom | Blue           |         3 | duck   |
|            3 |         1 |            3 | Peach  | Mushroom Kingdom | Pink           |         1 | run    |
|            3 |         2 |            3 | Peach  | Mushroom Kingdom | Pink           |         2 | jump   |
|            3 |         3 |            3 | Peach  | Mushroom Kingdom | Pink           |         3 | duck   |
|            2 |         1 |            2 | Luigi  | Mushroom Kingdom | Green          |         1 | run    |
|            2 |         2 |            2 | Luigi  | Mushroom Kingdom | Green          |         2 | jump   |
|            2 |         3 |            2 | Luigi  | Mushroom Kingdom | Green          |         3 | duck   |
|            1 |         1 |            1 | Mario  | Mushroom Kingdom | Red            |         1 | run    |
|            1 |         2 |            1 | Mario  | Mushroom Kingdom | Red            |         2 | jump   |
|            1 |         3 |            1 | Mario  | Mushroom Kingdom | Red            |         3 | duck   |
+--------------+-----------+--------------+--------+------------------+----------------+-----------+--------+
(21 rows)
```

#### HOW_TO_CHANGE_PRIMARY_KEY

```
The PRIMARY KEY constraint uniquely identifies each record in a table.
Primary keys must contain UNIQUE values, and cannot contain NULL values.
```

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

```
The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.
```

There’s your four columns and the primary key you created at the bottom. To know what row is for a character, you need to set a foreign key so you can relate rows from this table to rows from your characters table. Here's an example that creates a column as a foreign key:

```
ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);
```

That's quite the command. In the more_info table, create a character_id column. Make it an INT and a foreign key that references the character_id column from the characters table. Good luck.

solution:

```
ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id);
```
