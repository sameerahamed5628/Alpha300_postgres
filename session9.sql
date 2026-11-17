SELECT name,price
FROM products
WHERE price>(
    SELECT MAX(price)
    FROM products
    WHERE department='Toys'
);

SELECT product_id,COUNT(*)
FROM orders
GROUP BY product_id;

SELECT paid 
FROM orders
WHERE id IN (3,4,5);

SELECT name,price_weight_ratio
FROM(
SELECT name,price/weight AS price_weight_ratio
FROM products) AS p
WHERE price_weight_ratio>20;

SELECT AVG(order_count)
FROM(
    SELECT user_id,COUNT(*) AS order_count
    FROM orders
    GROUP BY user_id
)AS P;

SELECT first_name
FROM users
JOIN(
    SELECT user_id
    FROM orders
    WHERE product_id=3
)AS o
ON o.user_id=users.id;

SELECT id
FROM orders
WHERE product_id IN(
    SELECT id 
    FROM products 
    WHERE price/weight>50
    );

SELECT name
FROM products
WHERE price>(
    SELECT AVG(price)
    FROM products
);

SELECT name,department
FROM products
WHERE department NOT IN(
    SELECT department 
    FROM products
    WHERE price<100
);

SELECT name,department,price
FROM products
WHERE price>ALL(
    SELECT price
    FROM products
    WHERE department='Industrial'
);

SELECT name,department,price
FROM products
WHERE price > SOME(
    SELECT price
    FROM products
    WHERE department='Industrial'
);

SELECT name,department,price
FROM products AS p1
WHERE p1.price=(
    SELECT MAX(price)
    FROM products AS p2
    WHERE p2.department=p1.department
);

SELECT p1.name,(
    SELECT COUNT(*)
    FROM orders AS o1
    WHERE o1.product_id=p1.id
) AS num_orders
FROM products AS p1;

SELECT (
    SELECT MAX(price)FROM products
),(SELECT MIN(price)FROM products);


'''

ecommerce-# \i session9.sql
           name           | price
--------------------------+-------
 Incredible Granite Mouse |   989
 Practical Rubber Mouse   |   948
 Handmade Rubber Chicken  |   959
 Awesome Fresh Keyboard   |   982
 Incredible Granite Bacon |   982
 Fantastic Fresh Chips    |   966
 Small Fresh Gloves       |   991
(7 rows)

 product_id | count
------------+-------
         55 |     3
         27 |     4
         23 |     7
         56 |     7
         91 |     3
         58 |     5
          8 |     7
         87 |    10
         74 |     4
         29 |     7
         54 |     6
         71 |     3
          4 |     4
         68 |     7
         34 |     8
         51 |     5
         96 |     8
         70 |     6
         52 |    11
         80 |     6
         83 |     2
         67 |     4
         63 |     4
         10 |     4
         90 |     6
         35 |     3
         45 |     3
          6 |    12
         86 |     4
         84 |     5
         39 |     5
         92 |     5
         93 |     3
         89 |     6
         36 |     7
         69 |     5
         31 |     6
         50 |     2
         60 |    10
         14 |     2
         97 |     7
         66 |    10
         22 |     9
         59 |     5
         13 |     7
         65 |     3
          2 |     4
         16 |     7
         62 |     3
         75 |     6
         98 |     6
         73 |     3
         11 |     8
         44 |     7
         42 |     4
         99 |     5
         88 |     8
         82 |     4
         41 |     5
         40 |     4
         46 |     9
         43 |     6
         32 |     4
         53 |     7
          7 |     2
          9 |     4
        100 |     4
         38 |     6
         15 |    11
         79 |     3
         48 |     5
         26 |     3
         12 |     6
         85 |     7
         72 |     5
         95 |    10
         78 |     1
         24 |     7
         57 |     4
         61 |     2
         19 |     3
         81 |     4
         77 |     4
         25 |     6
         94 |     2
         30 |     7
         21 |     5
         49 |     2
         47 |     6
          3 |     5
         17 |     8
         37 |     7
         28 |     8
         20 |     5
         33 |     6
          1 |     7
         76 |     6
          5 |     4
         18 |     9
         64 |     6
(100 rows)

 paid
------
 f
 t
 t
(3 rows)

            name             | price_weight_ratio
-----------------------------+--------------------
 Practical Fresh Shirt       |                292
 Gorgeous Steel Towels       |                 25
 Tasty Wooden Ball           |                 34
 Gorgeous Concrete Towels    |                 29
 Incredible Granite Mouse    |                494
 Gorgeous Rubber Ball        |                200
 Generic Fresh Computer      |                 84
 Fantastic Metal Chair       |                 98
 Ergonomic Metal Pizza       |                 28
 Licensed Steel Car          |                 66
 Tasty Metal Cheese          |                 38
 Handcrafted Rubber Towels   |                157
 Intelligent Metal Mouse     |                 72
 Practical Concrete Sausages |                 45
 Handcrafted Frozen Chair    |                 25
 Generic Cotton Pizza        |                138
 Small Plastic Soap          |                345
 Small Wooden Pizza          |                 43
 Rustic Rubber Soap          |                 63
 Handmade Plastic Gloves     |                 30
 Unbranded Cotton Tuna       |                 63
 Sleek Granite Towels        |                 26
 Practical Rubber Mouse      |                 63
 Handcrafted Concrete Bike   |                 74
 Unbranded Wooden Ball       |                192
 Licensed Frozen Chair       |                 46
 Handmade Rubber Chicken     |                 43
 Awesome Fresh Keyboard      |                 32
 Generic Fresh Hat           |                 31
 Licensed Plastic Keyboard   |                 25
 Fantastic Steel Chicken     |                 27
 Tasty Rubber Soap           |                137
 Refined Wooden Mouse        |                 56
 Gorgeous Steel Cheese       |                 60
 Incredible Granite Bacon    |                109
 Intelligent Fresh Ball      |                 68
 Handcrafted Cotton Bacon    |                 40
 Sleek Rubber Shoes          |                 99
 Practical Wooden Chips      |                176
 Unbranded Granite Shirt     |                 39
 Gorgeous Plastic Sausages   |                278
 Awesome Steel Mouse         |                 35
 Licensed Steel Towels       |                 40
 Licensed Cotton Sausages    |                 27
 Ergonomic Fresh Pants       |                 21
 Handcrafted Frozen Shoes    |                 84
 Small Concrete Pants        |                 25
 Intelligent Plastic Car     |                 48
 Intelligent Cotton Chips    |                 23
 Sleek Soft Computer         |                 88
 Fantastic Fresh Shirt       |                 37
 Generic Fresh Shoes         |                 21
 Sleek Fresh Gloves          |                 61
 Handcrafted Soft Chicken    |                 90
 Fantastic Fresh Chips       |                 69
 Awesome Metal Pants         |                 57
 Handcrafted Frozen Chips    |                 29
 Gorgeous Plastic Gloves     |                 24
 Small Fresh Gloves          |                123
 Small Fresh Bacon           |                 47
 Unbranded Fresh Tuna        |                 73
 Refined Concrete Pants      |                362
 Licensed Plastic Salad      |                166
 Licensed Soft Chicken       |                 32
 Fantastic Granite Soap      |                 22
 Awesome Steel Towels        |                 55
 Ergonomic Wooden Tuna       |                 26
 Refined Metal Tuna          |                 30
 Practical Steel Shoes       |                 67
 Handcrafted Rubber Shoes    |                 45
(70 rows)

         avg
---------------------
 11.0000000000000000
(1 row)

 first_name
------------
 Luigi
 Kaylah
 Clara
 Violette
 Kathryn
(5 rows)

 id
-----
  13
  15
  18
  19
  25
  31
  34
  35
  36
  37
  39
  43
  45
  46
  49
  51
  53
  57
  63
  65
  69
  71
  72
  75
  77
  78
  80
  81
  85
  88
  90
  92
  93
  96
  97
 104
 109
 111
 113
 114
 115
 116
 117
 118
 119
 121
 133
 134
 135
 137
 138
 139
 141
 143
 145
 147
 148
 154
 156
 161
 164
 171
 175
 180
 183
 184
 187
 188
 190
 192
 198
 199
 201
 205
 209
 210
 211
 214
 215
 216
 218
 231
 237
 240
 242
 243
 244
 246
 253
 254
 257
 258
 259
 260
 267
 268
 269
 270
 271
 272
 276
 280
 281
 283
 284
 287
 288
 293
 296
 300
 307
 309
 310
 312
 313
 315
 317
 318
 325
 329
 329
 330
 332
 337
 339
 341
 346
 347
 349
 350
 351
 353
 362
 366
 371
 372
 379
 386
 392
 394
 398
 400
 401
 404
 405
 413
 418
 421
 423
 424
 426
 430
 433
 434
 435
 436
 439
 440
 444
 445
 447
 451
 453
 454
 461
 462
 463
 468
 471
 473
 474
 478
 481
 482
 483
 484
 485
 486
 487
 493
 496
 500
 501
 503
 505
 506
 507
 508
 516
 517
 521
 524
 525
 527
 530
 535
 537
 539
 542
 546
 548
 550
(201 rows)

           name
---------------------------
 Practical Fresh Shirt
 Tasty Wooden Ball
 Incredible Granite Mouse
 Gorgeous Rubber Ball
 Generic Fresh Computer
 Fantastic Metal Chair
 Licensed Steel Car
 Tasty Metal Cheese
 Handcrafted Rubber Towels
 Intelligent Metal Mouse
 Generic Cotton Pizza
 Unbranded Cotton Tuna
 Sleek Granite Towels
 Practical Rubber Mouse
 Handcrafted Concrete Bike
 Handmade Rubber Chicken
 Awesome Fresh Keyboard
 Generic Fresh Hat
 Tasty Rubber Soap
 Refined Wooden Mouse
 Gorgeous Steel Cheese
 Incredible Granite Bacon
 Intelligent Fresh Ball
 Sleek Rubber Shoes
 Practical Wooden Chips
 Unbranded Granite Shirt
 Gorgeous Plastic Sausages
 Licensed Steel Towels
 Licensed Cotton Sausages
 Ergonomic Fresh Pants
 Intelligent Plastic Car
 Intelligent Cotton Chips
 Sleek Soft Computer
 Fantastic Fresh Shirt
 Generic Fresh Shoes
 Sleek Fresh Gloves
 Handcrafted Soft Chicken
 Fantastic Fresh Chips
 Handcrafted Frozen Chips
 Small Fresh Gloves
 Unbranded Fresh Tuna
 Refined Concrete Pants
 Licensed Plastic Salad
 Fantastic Granite Soap
 Awesome Steel Towels
 Ergonomic Wooden Tuna
 Tasty Rubber Table
 Refined Metal Tuna
 Practical Steel Shoes
(49 rows)

            name            | department
----------------------------+------------
 Practical Fresh Shirt      | Toys
 Gorgeous Concrete Towels   | Grocery
 Gorgeous Rubber Ball       | Books
 Generic Fresh Computer     | Toys
 Ergonomic Metal Pizza      | Jewelery
 Intelligent Metal Mouse    | Music
 Awesome Cotton Salad       | Shoes
 Intelligent Cotton Chips   | Books
 Unbranded Cotton Tuna      | Jewelery
 Practical Plastic Towels   | Games
 Practical Wooden Shoes     | Computers
 Sleek Granite Towels       | Toys
 Handcrafted Concrete Bike  | Toys
 Licensed Frozen Chair      | Books
 Fantastic Steel Chicken    | Computers
 Refined Wooden Mouse       | Music
 Incredible Granite Bacon   | Music
 Handcrafted Fresh Sausages | Games
 Handmade Plastic Fish      | Games
 Handcrafted Cotton Bacon   | Kids
 Sleek Rubber Shoes         | Jewelery
 Practical Wooden Chips     | Toys
 Unbranded Granite Shirt    | Music
 Awesome Steel Mouse        | Clothing
 Fantastic Cotton Shirt     | Health
 Small Concrete Pants       | Health
 Intelligent Plastic Car    | Shoes
 Licensed Steel Towels      | Health
 Generic Fresh Shoes        | Kids
 Sleek Fresh Gloves         | Clothing
 Handcrafted Soft Chicken   | Kids
 Awesome Metal Pants        | Shoes
 Handcrafted Frozen Chips   | Shoes
 Rustic Metal Salad         | Health
 Licensed Soft Chicken      | Toys
 Fantastic Wooden Chair     | Jewelery
 Tasty Rubber Table         | Computers
 Refined Metal Tuna         | Jewelery
 Practical Steel Shoes      | Toys
(39 rows)

           name            | department | price
---------------------------+------------+-------
 Incredible Granite Mouse  | Home       |   989
 Handcrafted Rubber Towels | Baby       |   945
 Practical Rubber Mouse    | Garden     |   948
 Handmade Rubber Chicken   | Movies     |   959
 Awesome Fresh Keyboard    | Home       |   982
 Incredible Granite Bacon  | Music      |   982
 Fantastic Fresh Chips     | Home       |   966
 Small Fresh Gloves        | Garden     |   991
 Practical Steel Shoes     | Toys       |   947
(9 rows)

            name             | department  | price
-----------------------------+-------------+-------
 Practical Fresh Shirt       | Toys        |   876
 Gorgeous Steel Towels       | Outdoors    |   412
 Rustic Plastic Bacon        | Movies      |    10
 Tasty Wooden Ball           | Industrial  |   796
 Fantastic Soft Fish         | Tools       |    10
 Gorgeous Concrete Towels    | Grocery     |   328
 Incredible Granite Mouse    | Home        |   989
 Gorgeous Rubber Ball        | Books       |   801
 Generic Fresh Computer      | Toys        |   926
 Unbranded Cotton Shoes      | Sports      |   298
 Fantastic Metal Chair       | Home        |   887
 Ergonomic Metal Pizza       | Jewelery    |   463
 Ergonomic Steel Car         | Outdoors    |    53
 Licensed Steel Car          | Movies      |   664
 Tasty Metal Cheese          | Beauty      |   650
 Handcrafted Rubber Towels   | Baby        |   945
 Intelligent Metal Mouse     | Music       |   509
 Awesome Cotton Salad        | Shoes       |   211
 Unbranded Plastic Pizza     | Industrial  |    72
 Practical Concrete Sausages | Industrial  |   408
 Handcrafted Frozen Chair    | Garden      |   411
 Generic Cotton Pizza        | Home        |   555
 Intelligent Cotton Chips    | Books       |   280
 Small Plastic Soap          | Beauty      |   345
 Small Wooden Pizza          | Garden      |   307
 Rustic Rubber Soap          | Beauty      |   127
 Handmade Plastic Gloves     | Sports      |   301
 Unbranded Cotton Tuna       | Jewelery    |   633
 Practical Plastic Towels    | Games       |   379
 Practical Wooden Shoes      | Computers   |   112
 Sleek Granite Towels        | Toys        |   797
 Practical Rubber Mouse      | Garden      |   948
 Handcrafted Concrete Bike   | Toys        |   748
 Rustic Granite Chair        | Electronics |    76
 Unbranded Wooden Ball       | Sports      |   384
 Licensed Frozen Chair       | Books       |   417
 Handmade Rubber Chicken     | Movies      |   959
 Awesome Fresh Keyboard      | Home        |   982
 Generic Fresh Hat           | Baby        |   791
 Licensed Plastic Keyboard   | Garden      |   433
 Fantastic Steel Chicken     | Computers   |   472
 Tasty Rubber Soap           | Tools       |   823
 Refined Wooden Mouse        | Music       |   842
 Gorgeous Steel Cheese       | Movies      |   548
 Fantastic Fresh Sausages    | Industrial  |   360
 Incredible Granite Bacon    | Music       |   982
 Handcrafted Fresh Sausages  | Games       |   231
 Intelligent Fresh Ball      | Home        |   619
 Handmade Plastic Fish       | Games       |   312
 Handcrafted Cotton Bacon    | Kids        |   480
 Sleek Rubber Shoes          | Jewelery    |   597
 Handmade Granite Fish       | Electronics |   166
 Practical Wooden Chips      | Toys        |   707
 Handmade Rubber Salad       | Outdoors    |   232
 Unbranded Granite Shirt     | Music       |   519
 Gorgeous Plastic Sausages   | Movies      |   556
 Awesome Steel Mouse         | Clothing    |   175
 Licensed Steel Towels       | Industrial  |   939
 Handcrafted Fresh Bacon     | Sports      |   387
 Fantastic Cotton Shirt      | Health      |   496
 Licensed Cotton Sausages    | Sports      |   751
 Ergonomic Fresh Pants       | Baby        |   638
 Handcrafted Frozen Shoes    | Sports      |    84
 Small Concrete Pants        | Health      |   487
 Intelligent Plastic Car     | Shoes       |   628
 Intelligent Cotton Chips    | Baby        |   521
 Licensed Steel Towels       | Health      |   132
 Sleek Soft Computer         | Movies      |   619
 Fantastic Fresh Shirt       | Tools       |   643
 Generic Fresh Shoes         | Kids        |   628
 Sleek Fresh Gloves          | Clothing    |   919
 Gorgeous Rubber Keyboard    | Baby        |    32
 Handcrafted Soft Chicken    | Kids        |   720
 Small Metal Mouse           | Baby        |    60
 Fantastic Fresh Chips       | Home        |   966
 Awesome Metal Pants         | Shoes       |   460
 Handcrafted Frozen Chips    | Shoes       |   564
 Gorgeous Plastic Gloves     | Movies      |   341
 Rustic Metal Salad          | Health      |   240
 Small Fresh Gloves          | Garden      |   991
 Small Fresh Bacon           | Baby        |   473
 Small Metal Chips           | Home        |   161
 Unbranded Fresh Tuna        | Home        |   657
 Refined Metal Hat           | Industrial  |   309
 Refined Concrete Pants      | Sports      |   724
 Licensed Plastic Salad      | Beauty      |   834
 Licensed Soft Chicken       | Toys        |   425
 Fantastic Granite Soap      | Home        |   666
 Awesome Steel Towels        | Baby        |   552
 Ergonomic Wooden Tuna       | Garden      |   778
 Fantastic Wooden Chair      | Jewelery    |   145
 Tasty Granite Chips         | Home        |    37
 Tasty Rubber Table          | Computers   |   525
 Ergonomic Granite Shoes     | Beauty      |    48
 Refined Metal Tuna          | Jewelery    |   708
 Practical Steel Shoes       | Toys        |   947
 Handcrafted Rubber Shoes    | Sports      |   275
  Intelligent Cotton Gloves   | Home        |   447
(98 rows)

           name            | department  | price
---------------------------+-------------+-------
 Gorgeous Steel Towels     | Outdoors    |   412
 Gorgeous Concrete Towels  | Grocery     |   328
 Incredible Granite Mouse  | Home        |   989
 Gorgeous Rubber Ball      | Books       |   801
 Handcrafted Rubber Towels | Baby        |   945
 Practical Plastic Towels  | Games       |   379
 Handmade Rubber Chicken   | Movies      |   959
 Tasty Rubber Soap         | Tools       |   823
 Incredible Granite Bacon  | Music       |   982
 Handmade Granite Fish     | Electronics |   166
 Licensed Steel Towels     | Industrial  |   939
 Fantastic Cotton Shirt    | Health      |   496
 Licensed Cotton Sausages  | Sports      |   751
 Intelligent Plastic Car   | Shoes       |   628
 Sleek Fresh Gloves        | Clothing    |   919
 Handcrafted Soft Chicken  | Kids        |   720
 Small Fresh Gloves        | Garden      |   991
 Licensed Plastic Salad    | Beauty      |   834
 Tasty Rubber Table        | Computers   |   525
 Refined Metal Tuna        | Jewelery    |   708
 Practical Steel Shoes     | Toys        |   947
(21 rows)

            name             | num_orders
-----------------------------+------------
 Practical Fresh Shirt       |          7
 Gorgeous Steel Towels       |          4
 Rustic Plastic Bacon        |          5
 Tasty Wooden Ball           |          4
 Fantastic Soft Fish         |          4
 Gorgeous Concrete Towels    |         12
 Incredible Granite Mouse    |          2
 Gorgeous Rubber Ball        |          7
 Generic Fresh Computer      |          4
 Unbranded Cotton Shoes      |          4
 Fantastic Metal Chair       |          8
 Ergonomic Metal Pizza       |          6
 Ergonomic Steel Car         |          7
 Licensed Steel Car          |          2
 Tasty Metal Cheese          |         11
 Handcrafted Rubber Towels   |          7
 Intelligent Metal Mouse     |          8
 Awesome Cotton Salad        |          9
 Unbranded Plastic Pizza     |          3
 Practical Concrete Sausages |          5
 Handcrafted Frozen Chair    |          5
 Generic Cotton Pizza        |          9
 Intelligent Cotton Chips    |          7
 Small Plastic Soap          |          7
 Small Wooden Pizza          |          6
 Rustic Rubber Soap          |          3
 Handmade Plastic Gloves     |          4
 Unbranded Cotton Tuna       |          8
 Practical Plastic Towels    |          7
 Practical Wooden Shoes      |          7
 Sleek Granite Towels        |          6
 Practical Rubber Mouse      |          4
 Handcrafted Concrete Bike   |          6
 Rustic Granite Chair        |          8
 Unbranded Wooden Ball       |          3
 Licensed Frozen Chair       |          7
 Handmade Rubber Chicken     |          7
 Awesome Fresh Keyboard      |          6
 Generic Fresh Hat           |          5
 Licensed Plastic Keyboard   |          4
 Fantastic Steel Chicken     |          5
 Tasty Rubber Soap           |          4
 Refined Wooden Mouse        |          6
 Gorgeous Steel Cheese       |          7
 Fantastic Fresh Sausages    |          3
 Incredible Granite Bacon    |          9
 Handcrafted Fresh Sausages  |          6
 Intelligent Fresh Ball      |          5
 Handmade Plastic Fish       |          2
 Handcrafted Cotton Bacon    |          2
 Sleek Rubber Shoes          |          5
 Handmade Granite Fish       |         11
 Practical Wooden Chips      |          7
 Handmade Rubber Salad       |          6
 Unbranded Granite Shirt     |          3
 Gorgeous Plastic Sausages   |          7
 Awesome Steel Mouse         |          4
 Licensed Steel Towels       |          5
 Handcrafted Fresh Bacon     |          5
 Fantastic Cotton Shirt      |         10
 Licensed Cotton Sausages    |          2
 Ergonomic Fresh Pants       |          3
 Handcrafted Frozen Shoes    |          4
 Small Concrete Pants        |          6
 Intelligent Plastic Car     |          3
 Intelligent Cotton Chips    |         10
 Licensed Steel Towels       |          4
 Sleek Soft Computer         |          7
 Fantastic Fresh Shirt       |          5
 Generic Fresh Shoes         |          6
 Sleek Fresh Gloves          |          3
 Gorgeous Rubber Keyboard    |          5
 Handcrafted Soft Chicken    |          3
 Small Metal Mouse           |          4
 Fantastic Fresh Chips       |          6
 Awesome Metal Pants         |          6
 Handcrafted Frozen Chips    |          4
 Gorgeous Plastic Gloves     |          1
 Rustic Metal Salad          |          3
 Small Fresh Gloves          |          6
 Small Fresh Bacon           |          4
 Refined Rubber Tuna         |          4
 Small Metal Chips           |          2
 Unbranded Fresh Tuna        |          5
 Refined Metal Hat           |          7
 Refined Concrete Pants      |          4
 Licensed Plastic Salad      |         10
 Licensed Soft Chicken       |          8
 Fantastic Granite Soap      |          6
 Awesome Steel Towels        |          6
 Ergonomic Wooden Tuna       |          3
 Fantastic Wooden Chair      |          5
 Tasty Granite Chips         |          3
 Tasty Rubber Table          |          2
 Ergonomic Granite Shoes     |         10
 Refined Metal Tuna          |          8
 Intelligent Rubber Chicken  |          7
 Practical Steel Shoes       |          6
 Handcrafted Rubber Shoes    |          5
 Intelligent Cotton Gloves   |          4
(100 rows)

 max | min
-----+-----
 991 |   1
(1 row)

ecommerce-#'''