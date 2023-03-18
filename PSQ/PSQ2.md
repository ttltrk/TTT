

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
universe=>

- Each table should have a name column
- All columns named name should be of type VARCHAR

ALTER TABLE galaxy ADD COLUMN name VARCHAR(30);
ALTER TABLE moon ADD COLUMN name VARCHAR(30);
ALTER TABLE planet ADD COLUMN name VARCHAR(30);
ALTER TABLE star ADD COLUMN name VARCHAR(30);
```
