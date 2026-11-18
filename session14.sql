DROP TABLE IF EXISTS products;
CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) UNIQUE,
    department VARCHAR(40),
    price INTEGER,
    weight INTEGER
);
INSERT INTO products(name,department,price,weight)
VALUES 
    ('Shirt','Clothes',20,1),
    ('Pants','Clothes',null,1);


UPDATE products
SET price=9999
WHERE price IS NULL;

ALTER TABLE products
ALTER COLUMN price
SET NOT NULL;

INSERT INTO products(name,department,weight)
VALUES('Shoes','Clothes',5);

ALTER TABLE products
ALTER COLUMN price
SET DEFAULT 999;

INSERT INTO products(name,department,weight)
VALUES('Gloves','Tool',1);
SELECT * FROM products;


ALTER TABLE products
ADD UNIQUE (name,department);

INSERT INTO products(name,department,price,weight)
VALUES('Shirt','Tool',24,1);

SELECT * FROM products;

ALTER TABLE products
ADD CHECK(price>0);

INSERT INTO products(name,department,price,weight)
VALUES('Bulb','Tool',-26,1);

CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    est_delivery TIMESTAMP NOT NULL,
    CHECK (created_at<est_delivery)
);
INSERT INTO orders(name,created_at,est_delivery)
VALUES('Shirt','2000-NOV-20 1:00 AM','2000-NOV-10 1:00 AM');

'''
validation=# \i session14.sql
DROP TABLE
CREATE TABLE
INSERT 0 2
UPDATE 1
ALTER TABLE
psql:session14.sql:24: ERROR:  null value in column "price" of relation "products" violates not-null constraint
DETAIL:  Failing row contains (3, Shoes, Clothes, null, 5).
ALTER TABLE
INSERT 0 1
 id |  name  | department | price | weight
----+--------+------------+-------+--------
  1 | Shirt  | Clothes    |    20 |      1
  2 | Pants  | Clothes    |  9999 |      1
  4 | Gloves | Tool       |   999 |      1
(3 rows)


ALTER TABLE
psql:session14.sql:39: ERROR:  duplicate key value violates unique constraint "products_name_key"
DETAIL:  Key (name)=(Shirt) already exists.
 id |  name  | department | price | weight
----+--------+------------+-------+--------
  1 | Shirt  | Clothes    |    20 |      1
  2 | Pants  | Clothes    |  9999 |      1
  4 | Gloves | Tool       |   999 |      1
(3 rows)


ALTER TABLE
psql:session14.sql:47: ERROR:  new row for relation "products" violates check constraint "products_price_check"
DETAIL:  Failing row contains (6, Bulb, Tool, -26, 1).
psql:session14.sql:55: ERROR:  relation "orders" already exists
psql:session14.sql:57: ERROR:  new row for relation "orders" violates check constraint "orders_check"
DETAIL:  Failing row contains (1, Shirt, 2000-11-20 01:00:00, 2000-11-10 01:00:00).
validation=#'''