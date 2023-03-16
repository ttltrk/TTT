

```
CREATE DATABASE universe;

universe=> CREATE TABLE galaxy();
CREATE TABLE
universe=> CREATE TABLE star();
CREATE TABLE
universe=> CREATE TABLE planet();
CREATE TABLE
universe=> CREATE TABLE moon();
CREATE TABLE
universe=>

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
```
