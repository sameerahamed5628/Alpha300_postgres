DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
    name VARCHAR(50),
    country VARCHAR(50),
    population INTEGER,
    area INTEGER

);
INSERT INTO cities(name,country,population,area)
VALUES 
    ('Tokyo','Japan',3850000,8223),
    ('Delhi','India',28125000,2240),
    ('Shangai','China',22125000,4015),
    ('Sao Pulo','Brazil',20935000,3043);
SELECT name,population FROM cities WHERE area<>8223;
SELECT name,population FROM cities WHERE area BETWEEN 3000 AND 4000;
SELECT name,population FROM cities WHERE name NOT IN('Delhi');
SELECT name,area FROM cities WHERE area NOT IN(3043,8223) OR name='Delhi';
SELECT
    name,
    population/area as population_density
FROM 
    cities
WHERE 
    population/area>6000;

UPDATE cities
SET population=39505000
WHERE name='Tokyo';
SELECT*FROM cities;

DELETE FROM cities
WHERE name='Shangai';
SELECT*FROM cities;

INSERT INTO cities(name,country,population,area)
VALUES('Shangai','China',22125000,4015);
SELECT * FROM cities;

'''DROP TABLE
CREATE TABLE
INSERT 0 4
   name   | population
----------+------------
 Delhi    |   28125000
 Shangai  |   22125000
 Sao Pulo |   20935000
(3 rows)


   name   | population
----------+------------
 Sao Pulo |   20935000
(1 row)


   name   | population
----------+------------
 Tokyo    |    3850000
 Shangai  |   22125000
 Sao Pulo |   20935000
(3 rows)


  name   | area
---------+------
 Delhi   | 2240
 Shangai | 4015
(2 rows)


   name   | population_density
----------+--------------------
 Delhi    |              12555
 Sao Pulo |               6879
(2 rows)


UPDATE 1
   name   | country | population | area
----------+---------+------------+------
 Delhi    | India   |   28125000 | 2240
 Shangai  | China   |   22125000 | 4015
 Sao Pulo | Brazil  |   20935000 | 3043
 Tokyo    | Japan   |   39505000 | 8223
(4 rows)


DELETE 1
   name   | country | population | area
----------+---------+------------+------
 Delhi    | India   |   28125000 | 2240
 Sao Pulo | Brazil  |   20935000 | 3043
 Tokyo    | Japan   |   39505000 | 8223
(3 rows)


INSERT 0 1
   name   | country | population | area
----------+---------+------------+------
 Delhi    | India   |   28125000 | 2240
 Sao Pulo | Brazil  |   20935000 | 3043
 Tokyo    | Japan   |   39505000 | 8223
 Shangai  | China   |   22125000 | 4015
(4 rows'''