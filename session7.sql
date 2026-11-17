#SORTING RECORDS
SELECT*
FROM products
ORDER BY price DESC;

SELECT*
FROM products
ORDER BY name,price;

SELECT *
FROM users
OFFSET 30;

SELECT id,name,price
FROM products
OFFSET 20
LIMIT 20;

SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;


'''ecommerce=# \i session7.sql
 id  |            name             | department  | price | weight
-----+-----------------------------+-------------+-------+--------
  80 | Small Fresh Gloves          | Garden      |   991 |      8
   7 | Incredible Granite Mouse    | Home        |   989 |      2
  46 | Incredible Granite Bacon    | Music       |   982 |      9
  38 | Awesome Fresh Keyboard      | Home        |   982 |     30
  75 | Fantastic Fresh Chips       | Home        |   966 |     14
  37 | Handmade Rubber Chicken     | Movies      |   959 |     22
  32 | Practical Rubber Mouse      | Garden      |   948 |     15
  98 | Practical Steel Shoes       | Toys        |   947 |     14
  16 | Handcrafted Rubber Towels   | Baby        |   945 |      6
  58 | Licensed Steel Towels       | Industrial  |   939 |     23
   9 | Generic Fresh Computer      | Toys        |   926 |     11
  71 | Sleek Fresh Gloves          | Clothing    |   919 |     15
  11 | Fantastic Metal Chair       | Home        |   887 |      9
   1 | Practical Fresh Shirt       | Toys        |   876 |      3
  43 | Refined Wooden Mouse        | Music       |   842 |     15
  87 | Licensed Plastic Salad      | Beauty      |   834 |      5
  42 | Tasty Rubber Soap           | Tools       |   823 |      6
   8 | Gorgeous Rubber Ball        | Books       |   801 |      4
  31 | Sleek Granite Towels        | Toys        |   797 |     30
   4 | Tasty Wooden Ball           | Industrial  |   796 |     23
  39 | Generic Fresh Hat           | Baby        |   791 |     25
  91 | Ergonomic Wooden Tuna       | Garden      |   778 |     29
  61 | Licensed Cotton Sausages    | Sports      |   751 |     27
  33 | Handcrafted Concrete Bike   | Toys        |   748 |     10
  86 | Refined Concrete Pants      | Sports      |   724 |      2
  73 | Handcrafted Soft Chicken    | Kids        |   720 |      8
  96 | Refined Metal Tuna          | Jewelery    |   708 |     23
  53 | Practical Wooden Chips      | Toys        |   707 |      4
  89 | Fantastic Granite Soap      | Home        |   666 |     29
  14 | Licensed Steel Car          | Movies      |   664 |     10
  84 | Unbranded Fresh Tuna        | Home        |   657 |      9
  15 | Tasty Metal Cheese          | Beauty      |   650 |     17
  69 | Fantastic Fresh Shirt       | Tools       |   643 |     17
  62 | Ergonomic Fresh Pants       | Baby        |   638 |     30
  28 | Unbranded Cotton Tuna       | Jewelery    |   633 |     10
  70 | Generic Fresh Shoes         | Kids        |   628 |     29
  65 | Intelligent Plastic Car     | Shoes       |   628 |     13
  48 | Intelligent Fresh Ball      | Home        |   619 |      9
  68 | Sleek Soft Computer         | Movies      |   619 |      7
  51 | Sleek Rubber Shoes          | Jewelery    |   597 |      6
  77 | Handcrafted Frozen Chips    | Shoes       |   564 |     19
  56 | Gorgeous Plastic Sausages   | Movies      |   556 |      2
  22 | Generic Cotton Pizza        | Home        |   555 |      4
  90 | Awesome Steel Towels        | Baby        |   552 |     10
  44 | Gorgeous Steel Cheese       | Movies      |   548 |      9
  94 | Tasty Rubber Table          | Computers   |   525 |     29
  66 | Intelligent Cotton Chips    | Baby        |   521 |     22
  55 | Unbranded Granite Shirt     | Music       |   519 |     13
  17 | Intelligent Metal Mouse     | Music       |   509 |      7
  60 | Fantastic Cotton Shirt      | Health      |   496 |     24
  64 | Small Concrete Pants        | Health      |   487 |     19
  50 | Handcrafted Cotton Bacon    | Kids        |   480 |     12
  81 | Small Fresh Bacon           | Baby        |   473 |     10
  41 | Fantastic Steel Chicken     | Computers   |   472 |     17
  12 | Ergonomic Metal Pizza       | Jewelery    |   463 |     16
  76 | Awesome Metal Pants         | Shoes       |   460 |      8
 100 | Intelligent Cotton Gloves   | Home        |   447 |     29
  40 | Licensed Plastic Keyboard   | Garden      |   433 |     17
  88 | Licensed Soft Chicken       | Toys        |   425 |     13
  36 | Licensed Frozen Chair       | Books       |   417 |      9
   2 | Gorgeous Steel Towels       | Outdoors    |   412 |     16
  21 | Handcrafted Frozen Chair    | Garden      |   411 |     16
  20 | Practical Concrete Sausages | Industrial  |   408 |      9
  59 | Handcrafted Fresh Bacon     | Sports      |   387 |     29
  35 | Unbranded Wooden Ball       | Sports      |   384 |      2
  29 | Practical Plastic Towels    | Games       |   379 |     20
  45 | Fantastic Fresh Sausages    | Industrial  |   360 |     26
  24 | Small Plastic Soap          | Beauty      |   345 |      1
  78 | Gorgeous Plastic Gloves     | Movies      |   341 |     14
   6 | Gorgeous Concrete Towels    | Grocery     |   328 |     11
  49 | Handmade Plastic Fish       | Games       |   312 |     23
  85 | Refined Metal Hat           | Industrial  |   309 |     21
  25 | Small Wooden Pizza          | Garden      |   307 |      7
  27 | Handmade Plastic Gloves     | Sports      |   301 |     10
  10 | Unbranded Cotton Shoes      | Sports      |   298 |     29
  23 | Intelligent Cotton Chips    | Books       |   280 |     21
  99 | Handcrafted Rubber Shoes    | Sports      |   275 |      6
  79 | Rustic Metal Salad          | Health      |   240 |     12
   54 | Handmade Rubber Salad       | Outdoors    |   232 |     13
  47 | Handcrafted Fresh Sausages  | Games       |   231 |     21
  18 | Awesome Cotton Salad        | Shoes       |   211 |     16
  57 | Awesome Steel Mouse         | Clothing    |   175 |      5
  52 | Handmade Granite Fish       | Electronics |   166 |     14
  83 | Small Metal Chips           | Home        |   161 |     27
  92 | Fantastic Wooden Chair      | Jewelery    |   145 |     26
  67 | Licensed Steel Towels       | Health      |   132 |     11
  26 | Rustic Rubber Soap          | Beauty      |   127 |      2
  30 | Practical Wooden Shoes      | Computers   |   112 |     20
  63 | Handcrafted Frozen Shoes    | Sports      |    84 |      1
  34 | Rustic Granite Chair        | Electronics |    76 |      8
  19 | Unbranded Plastic Pizza     | Industrial  |    72 |      9
  74 | Small Metal Mouse           | Baby        |    60 |      6
  13 | Ergonomic Steel Car         | Outdoors    |    53 |     20
  95 | Ergonomic Granite Shoes     | Beauty      |    48 |     12
  93 | Tasty Granite Chips         | Home        |    37 |      9
  72 | Gorgeous Rubber Keyboard    | Baby        |    32 |      8
   5 | Fantastic Soft Fish         | Tools       |    10 |     10
   3 | Rustic Plastic Bacon        | Movies      |    10 |      6
  97 | Intelligent Rubber Chicken  | Industrial  |     1 |     11
  82 | Refined Rubber Tuna         | Garden      |     1 |     21
(100 rows)

 id  |            name             | department  | price | weight
-----+-----------------------------+-------------+-------+--------
  18 | Awesome Cotton Salad        | Shoes       |   211 |     16
  38 | Awesome Fresh Keyboard      | Home        |   982 |     30
  76 | Awesome Metal Pants         | Shoes       |   460 |      8
  57 | Awesome Steel Mouse         | Clothing    |   175 |      5
  90 | Awesome Steel Towels        | Baby        |   552 |     10
  62 | Ergonomic Fresh Pants       | Baby        |   638 |     30
  95 | Ergonomic Granite Shoes     | Beauty      |    48 |     12
  12 | Ergonomic Metal Pizza       | Jewelery    |   463 |     16
  13 | Ergonomic Steel Car         | Outdoors    |    53 |     20
  91 | Ergonomic Wooden Tuna       | Garden      |   778 |     29
  60 | Fantastic Cotton Shirt      | Health      |   496 |     24
  75 | Fantastic Fresh Chips       | Home        |   966 |     14
  45 | Fantastic Fresh Sausages    | Industrial  |   360 |     26
  69 | Fantastic Fresh Shirt       | Tools       |   643 |     17
  89 | Fantastic Granite Soap      | Home        |   666 |     29
  11 | Fantastic Metal Chair       | Home        |   887 |      9
   5 | Fantastic Soft Fish         | Tools       |    10 |     10
  41 | Fantastic Steel Chicken     | Computers   |   472 |     17
  92 | Fantastic Wooden Chair      | Jewelery    |   145 |     26
  22 | Generic Cotton Pizza        | Home        |   555 |      4
   9 | Generic Fresh Computer      | Toys        |   926 |     11
  39 | Generic Fresh Hat           | Baby        |   791 |     25
  70 | Generic Fresh Shoes         | Kids        |   628 |     29
   6 | Gorgeous Concrete Towels    | Grocery     |   328 |     11
  78 | Gorgeous Plastic Gloves     | Movies      |   341 |     14
  56 | Gorgeous Plastic Sausages   | Movies      |   556 |      2
   8 | Gorgeous Rubber Ball        | Books       |   801 |      4
  72 | Gorgeous Rubber Keyboard    | Baby        |    32 |      8
  44 | Gorgeous Steel Cheese       | Movies      |   548 |      9
   2 | Gorgeous Steel Towels       | Outdoors    |   412 |     16
  33 | Handcrafted Concrete Bike   | Toys        |   748 |     10
  50 | Handcrafted Cotton Bacon    | Kids        |   480 |     12
  59 | Handcrafted Fresh Bacon     | Sports      |   387 |     29
  47 | Handcrafted Fresh Sausages  | Games       |   231 |     21
  21 | Handcrafted Frozen Chair    | Garden      |   411 |     16
  77 | Handcrafted Frozen Chips    | Shoes       |   564 |     19
  63 | Handcrafted Frozen Shoes    | Sports      |    84 |      1
  99 | Handcrafted Rubber Shoes    | Sports      |   275 |      6
  16 | Handcrafted Rubber Towels   | Baby        |   945 |      6
  73 | Handcrafted Soft Chicken    | Kids        |   720 |      8
  52 | Handmade Granite Fish       | Electronics |   166 |     14
  49 | Handmade Plastic Fish       | Games       |   312 |     23
  27 | Handmade Plastic Gloves     | Sports      |   301 |     10
  37 | Handmade Rubber Chicken     | Movies      |   959 |     22
  54 | Handmade Rubber Salad       | Outdoors    |   232 |     13
  46 | Incredible Granite Bacon    | Music       |   982 |      9
   7 | Incredible Granite Mouse    | Home        |   989 |      2
  23 | Intelligent Cotton Chips    | Books       |   280 |     21
  66 | Intelligent Cotton Chips    | Baby        |   521 |     22
 100 | Intelligent Cotton Gloves   | Home        |   447 |     29
  48 | Intelligent Fresh Ball      | Home        |   619 |      9
  17 | Intelligent Metal Mouse     | Music       |   509 |      7
  65 | Intelligent Plastic Car     | Shoes       |   628 |     13
  97 | Intelligent Rubber Chicken  | Industrial  |     1 |     11
  61 | Licensed Cotton Sausages    | Sports      |   751 |     27
  36 | Licensed Frozen Chair       | Books       |   417 |      9
  40 | Licensed Plastic Keyboard   | Garden      |   433 |     17
  87 | Licensed Plastic Salad      | Beauty      |   834 |      5
  88 | Licensed Soft Chicken       | Toys        |   425 |     13
  14 | Licensed Steel Car          | Movies      |   664 |     10
  67 | Licensed Steel Towels       | Health      |   132 |     11
  58 | Licensed Steel Towels       | Industrial  |   939 |     23
  20 | Practical Concrete Sausages | Industrial  |   408 |      9
   1 | Practical Fresh Shirt       | Toys        |   876 |      3
  29 | Practical Plastic Towels    | Games       |   379 |     20
  32 | Practical Rubber Mouse      | Garden      |   948 |     15
  98 | Practical Steel Shoes       | Toys        |   947 |     14
  53 | Practical Wooden Chips      | Toys        |   707 |      4
  30 | Practical Wooden Shoes      | Computers   |   112 |     20
  86 | Refined Concrete Pants      | Sports      |   724 |      2
  85 | Refined Metal Hat           | Industrial  |   309 |     21
  96 | Refined Metal Tuna          | Jewelery    |   708 |     23
  82 | Refined Rubber Tuna         | Garden      |     1 |     21
  43 | Refined Wooden Mouse        | Music       |   842 |     15
  34 | Rustic Granite Chair        | Electronics |    76 |      8
  79 | Rustic Metal Salad          | Health      |   240 |     12
   3 | Rustic Plastic Bacon        | Movies      |    10 |      6
  26 | Rustic Rubber Soap          | Beauty      |   127 |      2
  71 | Sleek Fresh Gloves          | Clothing    |   919 |     15
  31 | Sleek Granite Towels        | Toys        |   797 |     30
  51 | Sleek Rubber Shoes          | Jewelery    |   597 |      6
  68 | Sleek Soft Computer         | Movies      |   619 |      7
  64 | Small Concrete Pants        | Health      |   487 |     19
  81 | Small Fresh Bacon           | Baby        |   473 |     10
  80 | Small Fresh Gloves          | Garden      |   991 |      8
  83 | Small Metal Chips           | Home        |   161 |     27
  74 | Small Metal Mouse           | Baby        |    60 |      6
  24 | Small Plastic Soap          | Beauty      |   345 |      1
  25 | Small Wooden Pizza          | Garden      |   307 |      7
  93 | Tasty Granite Chips         | Home        |    37 |      9
  15 | Tasty Metal Cheese          | Beauty      |   650 |     17
  42 | Tasty Rubber Soap           | Tools       |   823 |      6
  94 | Tasty Rubber Table          | Computers   |   525 |     29
   4 | Tasty Wooden Ball           | Industrial  |   796 |     23
  10 | Unbranded Cotton Shoes      | Sports      |   298 |     29
  28 | Unbranded Cotton Tuna       | Jewelery    |   633 |     10
  84 | Unbranded Fresh Tuna        | Home        |   657 |      9
  55 | Unbranded Granite Shirt     | Music       |   519 |     13
  19 | Unbranded Plastic Pizza     | Industrial  |    72 |      9
  35 | Unbranded Wooden Ball       | Sports      |   384 |      2
(100 rows)

 id | first_name |  last_name
----+------------+-------------
 31 | Elliot     | Oberbrunner
 32 | Brendan    | Thompson
 33 | Brennan    | Auer
 34 | Luigi      | Johnston
 35 | Garth      | McLaughlin
 36 | Ressie     | Nikolaus
 37 | Ruby       | Turner
 38 | Caden      | Turcotte
 39 | Armand     | Kshlerin
 40 | Albertha   | Yundt
 41 | Kathryn    | Mueller
 42 | Arely      | McGlynn
 43 | Lawrence   | Casper
 44 | Johathan   | Kirlin
 45 | Clara      | Gerhold
 46 | Miller     | Feil
 47 | Rosendo    | Sawayn
 48 | Sally      | Mann
 49 | Kennith    | Hettinger
 50 | Mathilde   | Eichmann
(20 rows)

 id |           name            | price
----+---------------------------+-------
 21 | Handcrafted Frozen Chair  |   411
 22 | Generic Cotton Pizza      |   555
 23 | Intelligent Cotton Chips  |   280
 24 | Small Plastic Soap        |   345
 25 | Small Wooden Pizza        |   307
 26 | Rustic Rubber Soap        |   127
 27 | Handmade Plastic Gloves   |   301
 28 | Unbranded Cotton Tuna     |   633
 29 | Practical Plastic Towels  |   379
 30 | Practical Wooden Shoes    |   112
 31 | Sleek Granite Towels      |   797
 32 | Practical Rubber Mouse    |   948
 33 | Handcrafted Concrete Bike |   748
 34 | Rustic Granite Chair      |    76
 35 | Unbranded Wooden Ball     |   384
 36 | Licensed Frozen Chair     |   417
 37 | Handmade Rubber Chicken   |   959
 38 | Awesome Fresh Keyboard    |   982
 39 | Generic Fresh Hat         |   791
 40 | Licensed Plastic Keyboard |   433
(20 rows)

 id |           name           | department | price | weight
----+--------------------------+------------+-------+--------
 80 | Small Fresh Gloves       | Garden     |   991 |      8
  7 | Incredible Granite Mouse | Home       |   989 |      2
 46 | Incredible Granite Bacon | Music      |   982 |      9
 38 | Awesome Fresh Keyboard   | Home       |   982 |     30
 75 | Fantastic Fresh Chips    | Home       |   966 |     14
(5 rows)

ecommerce=#'''