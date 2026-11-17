(SELECT *
FROM products
ORDER BY price DESC
LIMIT 4
)
UNION ALL
(SELECT *
FROM products
ORDER BY price/weight DESC
LIMIT 4);

(SELECT *
FROM products
ORDER BY price DESC
LIMIT 4
)
INTERSECT ALL
(SELECT *
FROM products
ORDER BY price/weight DESC
LIMIT 4
);

(SELECT *
FROM products
ORDER BY price DESC
LIMIT 4
)
EXCEPT ALL
(SELECT *
FROM products
ORDER BY price/weight DESC
LIMIT 4
);


'''ecommerce=# \i session8.sql
 id |           name           | department | price | weight
----+--------------------------+------------+-------+--------
 80 | Small Fresh Gloves       | Garden     |   991 |      8
  7 | Incredible Granite Mouse | Home       |   989 |      2
 38 | Awesome Fresh Keyboard   | Home       |   982 |     30
 46 | Incredible Granite Bacon | Music      |   982 |      9
  7 | Incredible Granite Mouse | Home       |   989 |      2
 86 | Refined Concrete Pants   | Sports     |   724 |      2
 24 | Small Plastic Soap       | Beauty     |   345 |      1
  1 | Practical Fresh Shirt    | Toys       |   876 |      3
(8 rows)

 id |           name           | department | price | weight
----+--------------------------+------------+-------+--------
  7 | Incredible Granite Mouse | Home       |   989 |      2
(1 row)

 id |           name           | department | price | weight
----+--------------------------+------------+-------+--------
 38 | Awesome Fresh Keyboard   | Home       |   982 |     30
 46 | Incredible Granite Bacon | Music      |   982 |      9
 80 | Small Fresh Gloves       | Garden     |   991 |      8
(3 rows)

ecommerce=#'''