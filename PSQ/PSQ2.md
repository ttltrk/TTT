

```
- You should create a database named universe

CREATE DATABASE universe;

- You should add tables named galaxy, star, planet, and moon +1 extra table sun

universe=> CREATE TABLE galaxy();
CREATE TABLE
universe=> CREATE TABLE star();
CREATE TABLE
universe=> CREATE TABLE planet();
CREATE TABLE
universe=> CREATE TABLE moon();
CREATE TABLE
universe=> CREATE TABLE sun();
CREATE TABLE
universe=>


- Each table should have a primary key
- Each primary key should automatically increment

universe=> ALTER TABLE galaxy ADD COLUMN galaxy_id SERIAL;
ALTER TABLE
universe=> ALTER TABLE galaxy ADD PRIMARY KEY(galaxy_id);
ALTER TABLE
universe=> ALTER TABLE moon ADD COLUMN moon_id SERIAL;
ALTER TABLE
universe=> ALTER TABLE moon ADD PRIMARY KEY(moon_id);
ALTER TABLE
universe=> ALTER TABLE planet ADD COLUMN planet_id SERIAL;
ALTER TABLE
universe=> ALTER TABLE planet ADD PRIMARY KEY(planet_id);
ALTER TABLE
universe=> ALTER TABLE star ADD COLUMN star_id SERIAL;
ALTER TABLE
universe=> ALTER TABLE star ADD PRIMARY KEY(star_id);
ALTER TABLE
universe=> ALTER TABLE sun ADD COLUMN sun_id SERIAL;
ALTER TABLE
universe=> ALTER TABLE sun ADD PRIMARY KEY(sun_id);
ALTER TABLE
universe=>

- Each table should have a name column
- All columns named name should be of type VARCHAR

ALTER TABLE galaxy ADD COLUMN name VARCHAR(30);
ALTER TABLE moon ADD COLUMN name VARCHAR(30);
ALTER TABLE planet ADD COLUMN name VARCHAR(30);
ALTER TABLE star ADD COLUMN name VARCHAR(30);
ALTER TABLE sun ADD COLUMN name VARCHAR(30);

- You should use the INT data type for at least two columns that are not a primary or foreign key

ALTER TABLE moon ADD COLUMN distance_from_earth INT;
ALTER TABLE sun ADD COLUMN distance_from_earth INT;


- Each "star" should have a foreign key that references one of the rows in galaxy
- Each "planet" should have a foreign key that references one of the rows in star
- Each "moon" should have a foreign key that references one of the rows in planet
- Each foreign key column should have the same name as the column it is referencing


ALTER TABLE characters DROP CONSTRAINT characters_pkey;

ALTER TABLE star ADD FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id);
ALTER TABLE planet ADD FOREIGN KEY(planet_id) REFERENCES star(planet_id);
ALTER TABLE moon ADD FOREIGN KEY(planet_id) REFERENCES planet(planet_id);

- You should use the TEXT data type at least once

ALTER TABLE star ADD COLUMN description TEXT;
ALTER TABLE galaxy ADD COLUMN description TEXT;
ALTER TABLE moon ADD COLUMN description TEXT;
ALTER TABLE sun ADD COLUMN description TEXT;
ALTER TABLE planet ADD COLUMN description TEXT;

- You should use the NUMERIC data type at least once

ALTER TABLE planet ADD COLUMN rotation_speed NUMERIC(5, 1);

- You should use the BOOLEAN data type on at least two columns

ALTER TABLE planet ADD COLUMN has_life BOOLEAN;
ALTER TABLE moon ADD COLUMN has_life BOOLEAN;

- The galaxy, star, planet, and moon tables should each have at least five columns

ALTER TABLE galaxy ADD COLUMN has_life BOOLEAN;
ALTER TABLE star ADD COLUMN has_life BOOLEAN;
ALTER TABLE galaxy ADD COLUMN rotation_speed NUMERIC(5,1);
ALTER TABLE star ADD COLUMN rotation_speed NUMERIC(5,1);

- At least one column from each table should be required to be UNIQUE

ALTER TABLE galaxy ADD UNIQUE (galaxy_id);
ALTER TABLE planet ADD UNIQUE (planet_id);
ALTER TABLE sun ADD UNIQUE (sun_id);

- At least two columns per table should not accept NULL values

ALTER TABLE galaxy ALTER COLUMN rotation_speed SET NOT NULL;
ALTER TABLE moon ALTER COLUMN planet_id SET NOT NULL;
ALTER TABLE planet ALTER COLUMN rotation_speed SET NOT NULL;
ALTER TABLE star ALTER COLUMN planet_id SET NOT NULL;
ALTER TABLE sun ALTER COLUMN distance_from_earth SET NOT NULL;

- The galaxy and star tables should each have at least six rows

INSERT INTO galaxy(galaxy_id, name, description, has_life, rotation_speed) VALUES(1, 'aaa', 'blabla', 'N', 1000);

INSERT INTO galaxy (galaxy_id, name, description, has_life, rotation_speed)
VALUES
(2, 'bbb', 'blabla', 'N', 1000),
(3, 'ccc', 'blabla', 'N', 1000),
(4, 'ddd', 'blabla', 'N', 1000);

INSERT INTO galaxy (galaxy_id, name, description, has_life, rotation_speed)
VALUES
(5, 'eee', 'blabla', 'Y', 1000),
(6, 'fff', 'blabla', 'N', 1000);

INSERT INTO star (galaxy_id, name, description, has_life, rotation_speed, planet_id)
VALUES(1, 'aa', 'blabla', 'N', 1000, 1);

INSERT INTO star (galaxy_id, name, description, has_life, rotation_speed, planet_id)
VALUES(2, 'bb', 'blabla', 'N', 1000, 2),
(3, 'cc', 'blabla', 'N', 1000, 3),
(4, 'dd', 'blabla', 'N', 1000, 4);

INSERT INTO star (galaxy_id, name, description, has_life, rotation_speed, planet_id)
VALUES(5, 'ee', 'blabla', 'N', 1000, 5),
(6, 'ff', 'blabla', 'Y', 1000, 6);

- Each "planet" should have a foreign key that references one of the rows in star

INSERT INTO planet (planet_id, name, description, rotation_speed, has_life) VALUES (1, 'a', 'bla', 1000, 'N');
INSERT INTO planet (planet_id, name, description, rotation_speed, has_life) VALUES (2, 'b', 'bla', 1000, 'N'), (3, 'c', 'bla', 1000, 'Y'), (4, 'd', 'bla', 1000, 'N'), (5, 'e', 'bla', 1000, 'N');

INSERT INTO galaxy (galaxy_id, name, description, has_life, rotation_speed) VALUES (13, 'mmm', 'blabla', 'N', 1000);
```
