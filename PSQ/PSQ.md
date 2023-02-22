
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

- drop column:

    ALTER TABLE second_table DROP COLUMN age;

- rename column:

    ALTER TABLE second_table RENAME COLUMN name TO username;

- fill out values to the column:

    INSERT INTO second_table(id, username) VALUES(1, 'Samus');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Luigi', 'Mushroom Kingdom', 'Green');
    INSERT INTO characters(name, homeland, favorite_color) VALUES('Peach', 'Mushroom Kingdom', 'Pink');

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

---------------------------------- DRL/DQL ------------------------------------

- select * from ... :

  select * from characters;



```
