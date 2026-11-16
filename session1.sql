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
SELECT * FROM cities;
SELECT name, population/area AS population_density FROM cities;
SELECT UPPER(name) ||','|| LOWER(country) AS place FROM cities;
SELECT CONCAT(population,',',area) AS spread FROM cities; 

'''
DROP TABLE
CREATE TABLE
INSERT 0 4
   name   | country | population | area
----------+---------+------------+------
 Tokyo    | Japan   |    3850000 | 8223
 Delhi    | India   |   28125000 | 2240
 Shangai  | China   |   22125000 | 4015
 Sao Pulo | Brazil  |   20935000 | 3043
(4 rows)


   name   | population_density
----------+--------------------
 Tokyo    |                468
 Delhi    |              12555
 Shangai  |               5510
 Sao Pulo |               6879
(4 rows)


      place
-----------------
 TOKYO,japan
 DELHI,india
 SHANGAI,china
 SAO PULO,brazil
(4 rows)


    spread
---------------
 3850000,8223
 28125000,2240
 22125000,4015
 20935000,3043
(4 rows)'''