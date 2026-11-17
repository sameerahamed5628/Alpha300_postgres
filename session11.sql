SELECT GREATEST(20,10,30);

SELECT name,weight,GREATEST(30,2*weight)
FROM products;

SELECT LEAST(20,30,33);

SELECT name,price,LEAST(price*0.5,400)
FROM products;

SELECT name,price,
    CASE WHEN price>600 THEN 'high'
        WHEN price>300 THEN 'medium'
        ELSE 'cheap'
    END
FROM products;

'''
ecommerce-# \i session11.sql
 greatest
----------
       30
(1 row)

            name             | weight | greatest
-----------------------------+--------+----------
 Practical Fresh Shirt       |      3 |       30
 Gorgeous Steel Towels       |     16 |       32
 Rustic Plastic Bacon        |      6 |       30
 Tasty Wooden Ball           |     23 |       46
 Fantastic Soft Fish         |     10 |       30
 Gorgeous Concrete Towels    |     11 |       30
 Incredible Granite Mouse    |      2 |       30
 Gorgeous Rubber Ball        |      4 |       30
 Generic Fresh Computer      |     11 |       30
 Unbranded Cotton Shoes      |     29 |       58
 Fantastic Metal Chair       |      9 |       30
 Ergonomic Metal Pizza       |     16 |       32
 Ergonomic Steel Car         |     20 |       40
 Licensed Steel Car          |     10 |       30
 Tasty Metal Cheese          |     17 |       34
 Handcrafted Rubber Towels   |      6 |       30
 Intelligent Metal Mouse     |      7 |       30
 Awesome Cotton Salad        |     16 |       32
 Unbranded Plastic Pizza     |      9 |       30
 Practical Concrete Sausages |      9 |       30
 Handcrafted Frozen Chair    |     16 |       32
 Generic Cotton Pizza        |      4 |       30
 Intelligent Cotton Chips    |     21 |       42
 Small Plastic Soap          |      1 |       30
 Small Wooden Pizza          |      7 |       30
 Rustic Rubber Soap          |      2 |       30
 Handmade Plastic Gloves     |     10 |       30
 Unbranded Cotton Tuna       |     10 |       30
 Practical Plastic Towels    |     20 |       40
 Practical Wooden Shoes      |     20 |       40
 Sleek Granite Towels        |     30 |       60
 Practical Rubber Mouse      |     15 |       30
 Handcrafted Concrete Bike   |     10 |       30
 Rustic Granite Chair        |      8 |       30
 Unbranded Wooden Ball       |      2 |       30
 Licensed Frozen Chair       |      9 |       30
 Handmade Rubber Chicken     |     22 |       44
 Awesome Fresh Keyboard      |     30 |       60
 Generic Fresh Hat           |     25 |       50
 Licensed Plastic Keyboard   |     17 |       34
 Fantastic Steel Chicken     |     17 |       34
 Tasty Rubber Soap           |      6 |       30
 Refined Wooden Mouse        |     15 |       30
 Gorgeous Steel Cheese       |      9 |       30
 Fantastic Fresh Sausages    |     26 |       52
 Incredible Granite Bacon    |      9 |       30
 Handcrafted Fresh Sausages  |     21 |       42
 Intelligent Fresh Ball      |      9 |       30
 Handmade Plastic Fish       |     23 |       46
 Handcrafted Cotton Bacon    |     12 |       30
 Sleek Rubber Shoes          |      6 |       30
 Handmade Granite Fish       |     14 |       30
 Practical Wooden Chips      |      4 |       30
 Handmade Rubber Salad       |     13 |       30
 Unbranded Granite Shirt     |     13 |       30
 Gorgeous Plastic Sausages   |      2 |       30
 Awesome Steel Mouse         |      5 |       30
 Licensed Steel Towels       |     23 |       46
 Handcrafted Fresh Bacon     |     29 |       58
 Fantastic Cotton Shirt      |     24 |       48
 Licensed Cotton Sausages    |     27 |       54
 Ergonomic Fresh Pants       |     30 |       60
 Handcrafted Frozen Shoes    |      1 |       30
 Small Concrete Pants        |     19 |       38
 Intelligent Plastic Car     |     13 |       30
 Intelligent Cotton Chips    |     22 |       44
 Licensed Steel Towels       |     11 |       30
 Sleek Soft Computer         |      7 |       30
 Fantastic Fresh Shirt       |     17 |       34
 Generic Fresh Shoes         |     29 |       58
 Sleek Fresh Gloves          |     15 |       30
 Gorgeous Rubber Keyboard    |      8 |       30
 Handcrafted Soft Chicken    |      8 |       30
 Small Metal Mouse           |      6 |       30
 Fantastic Fresh Chips       |     14 |       30
 Awesome Metal Pants         |      8 |       30
 Handcrafted Frozen Chips    |     19 |       38
 Gorgeous Plastic Gloves     |     14 |       30
 Rustic Metal Salad          |     12 |       30
 Small Fresh Gloves          |      8 |       30
 Small Fresh Bacon           |     10 |       30
 Refined Rubber Tuna         |     21 |       42
 Small Metal Chips           |     27 |       54
 Unbranded Fresh Tuna        |      9 |       30
 Refined Metal Hat           |     21 |       42
 Refined Concrete Pants      |      2 |       30
 Licensed Plastic Salad      |      5 |       30
 Licensed Soft Chicken       |     13 |       30
 Fantastic Granite Soap      |     29 |       58
 Awesome Steel Towels        |     10 |       30
 Ergonomic Wooden Tuna       |     29 |       58
 Fantastic Wooden Chair      |     26 |       52
 Tasty Granite Chips         |      9 |       30
 Tasty Rubber Table          |     29 |       58
 Ergonomic Granite Shoes     |     12 |       30
 Refined Metal Tuna          |     23 |       46
 Intelligent Rubber Chicken  |     11 |       30
 Practical Steel Shoes       |     14 |       30
 Handcrafted Rubber Shoes    |      6 |       30
 Intelligent Cotton Gloves   |     29 |       58
(100 rows)

 least
-------
    20
(1 row)

            name             | price | least
-----------------------------+-------+-------
 Practical Fresh Shirt       |   876 |   400
 Gorgeous Steel Towels       |   412 | 206.0
 Rustic Plastic Bacon        |    10 |   5.0
 Tasty Wooden Ball           |   796 | 398.0
 Fantastic Soft Fish         |    10 |   5.0
 Gorgeous Concrete Towels    |   328 | 164.0
 Incredible Granite Mouse    |   989 |   400
 Gorgeous Rubber Ball        |   801 |   400
 Generic Fresh Computer      |   926 |   400
 Unbranded Cotton Shoes      |   298 | 149.0
 Fantastic Metal Chair       |   887 |   400
 Ergonomic Metal Pizza       |   463 | 231.5
 Ergonomic Steel Car         |    53 |  26.5
 Licensed Steel Car          |   664 | 332.0
 Tasty Metal Cheese          |   650 | 325.0
 Handcrafted Rubber Towels   |   945 |   400
 Intelligent Metal Mouse     |   509 | 254.5
 Awesome Cotton Salad        |   211 | 105.5
 Unbranded Plastic Pizza     |    72 |  36.0
 Practical Concrete Sausages |   408 | 204.0
 Handcrafted Frozen Chair    |   411 | 205.5
 Generic Cotton Pizza        |   555 | 277.5
 Intelligent Cotton Chips    |   280 | 140.0
 Small Plastic Soap          |   345 | 172.5
 Small Wooden Pizza          |   307 | 153.5
 Rustic Rubber Soap          |   127 |  63.5
 Handmade Plastic Gloves     |   301 | 150.5
 Unbranded Cotton Tuna       |   633 | 316.5
 Practical Plastic Towels    |   379 | 189.5
 Practical Wooden Shoes      |   112 |  56.0
 Sleek Granite Towels        |   797 | 398.5
 Practical Rubber Mouse      |   948 |   400
 Handcrafted Concrete Bike   |   748 | 374.0
 Rustic Granite Chair        |    76 |  38.0
 Unbranded Wooden Ball       |   384 | 192.0
 Licensed Frozen Chair       |   417 | 208.5
 Handmade Rubber Chicken     |   959 |   400
 Awesome Fresh Keyboard      |   982 |   400
 Generic Fresh Hat           |   791 | 395.5
 Licensed Plastic Keyboard   |   433 | 216.5
 Fantastic Steel Chicken     |   472 | 236.0
 Tasty Rubber Soap           |   823 |   400
 Refined Wooden Mouse        |   842 |   400
 Gorgeous Steel Cheese       |   548 | 274.0
 Fantastic Fresh Sausages    |   360 | 180.0
 Incredible Granite Bacon    |   982 |   400
 Handcrafted Fresh Sausages  |   231 | 115.5
 Intelligent Fresh Ball      |   619 | 309.5
 Handmade Plastic Fish       |   312 | 156.0
 Handcrafted Cotton Bacon    |   480 | 240.0
 Sleek Rubber Shoes          |   597 | 298.5
 Handmade Granite Fish       |   166 |  83.0
 Practical Wooden Chips      |   707 | 353.5
 Handmade Rubber Salad       |   232 | 116.0
 Unbranded Granite Shirt     |   519 | 259.5
 Gorgeous Plastic Sausages   |   556 | 278.0
 Awesome Steel Mouse         |   175 |  87.5
 Licensed Steel Towels       |   939 |   400
 Handcrafted Fresh Bacon     |   387 | 193.5
 Fantastic Cotton Shirt      |   496 | 248.0
 Licensed Cotton Sausages    |   751 | 375.5
 Ergonomic Fresh Pants       |   638 | 319.0
 Handcrafted Frozen Shoes    |    84 |  42.0
 Small Concrete Pants        |   487 | 243.5
 Intelligent Plastic Car     |   628 | 314.0
 Intelligent Cotton Chips    |   521 | 260.5
 Licensed Steel Towels       |   132 |  66.0
 Sleek Soft Computer         |   619 | 309.5
 Fantastic Fresh Shirt       |   643 | 321.5
 Generic Fresh Shoes         |   628 | 314.0
 Sleek Fresh Gloves          |   919 |   400
 Gorgeous Rubber Keyboard    |    32 |  16.0
 Handcrafted Soft Chicken    |   720 | 360.0
 Small Metal Mouse           |    60 |  30.0
 Fantastic Fresh Chips       |   966 |   400
 Awesome Metal Pants         |   460 | 230.0
 Handcrafted Frozen Chips    |   564 | 282.0
 Gorgeous Plastic Gloves     |   341 | 170.5
 Rustic Metal Salad          |   240 | 120.0
 Small Fresh Gloves          |   991 |   400
 Small Fresh Bacon           |   473 | 236.5
 Refined Rubber Tuna         |     1 |   0.5
 Small Metal Chips           |   161 |  80.5
 Unbranded Fresh Tuna        |   657 | 328.5
 Refined Metal Hat           |   309 | 154.5
 Refined Concrete Pants      |   724 | 362.0
 Licensed Plastic Salad      |   834 |   400
 Licensed Soft Chicken       |   425 | 212.5
 Fantastic Granite Soap      |   666 | 333.0
 Awesome Steel Towels        |   552 | 276.0
 Ergonomic Wooden Tuna       |   778 | 389.0
 Fantastic Wooden Chair      |   145 |  72.5
 Tasty Granite Chips         |    37 |  18.5
 Tasty Rubber Table          |   525 | 262.5
 Ergonomic Granite Shoes     |    48 |  24.0
 Refined Metal Tuna          |   708 | 354.0
 Intelligent Rubber Chicken  |     1 |   0.5
 Practical Steel Shoes       |   947 |   400
 Handcrafted Rubber Shoes    |   275 | 137.5
 Intelligent Cotton Gloves   |   447 | 223.5
(100 rows)

            name             | price |  case
-----------------------------+-------+--------
 Practical Fresh Shirt       |   876 | high
 Gorgeous Steel Towels       |   412 | medium
 Rustic Plastic Bacon        |    10 | cheap
 Tasty Wooden Ball           |   796 | high
 Fantastic Soft Fish         |    10 | cheap
 Gorgeous Concrete Towels    |   328 | medium
 Incredible Granite Mouse    |   989 | high
 Gorgeous Rubber Ball        |   801 | high
 Generic Fresh Computer      |   926 | high
 Unbranded Cotton Shoes      |   298 | cheap
 Fantastic Metal Chair       |   887 | high
 Ergonomic Metal Pizza       |   463 | medium
 Ergonomic Steel Car         |    53 | cheap
 Licensed Steel Car          |   664 | high
 Tasty Metal Cheese          |   650 | high
 Handcrafted Rubber Towels   |   945 | high
 Intelligent Metal Mouse     |   509 | medium
 Awesome Cotton Salad        |   211 | cheap
 Unbranded Plastic Pizza     |    72 | cheap
 Practical Concrete Sausages |   408 | medium
 Handcrafted Frozen Chair    |   411 | medium
 Generic Cotton Pizza        |   555 | medium
 Intelligent Cotton Chips    |   280 | cheap
 Small Plastic Soap          |   345 | medium
 Small Wooden Pizza          |   307 | medium
 Rustic Rubber Soap          |   127 | cheap
 Handmade Plastic Gloves     |   301 | medium
 Unbranded Cotton Tuna       |   633 | high
 Practical Plastic Towels    |   379 | medium
 Practical Wooden Shoes      |   112 | cheap
 Sleek Granite Towels        |   797 | high
 Practical Rubber Mouse      |   948 | high
 Handcrafted Concrete Bike   |   748 | high
 Rustic Granite Chair        |    76 | cheap
 Unbranded Wooden Ball       |   384 | medium
 Licensed Frozen Chair       |   417 | medium
 Handmade Rubber Chicken     |   959 | high
 Awesome Fresh Keyboard      |   982 | high
 Generic Fresh Hat           |   791 | high
 Licensed Plastic Keyboard   |   433 | medium
 Fantastic Steel Chicken     |   472 | medium
 Tasty Rubber Soap           |   823 | high
 Refined Wooden Mouse        |   842 | high
 Gorgeous Steel Cheese       |   548 | medium
 Fantastic Fresh Sausages    |   360 | medium
 Incredible Granite Bacon    |   982 | high
 Handcrafted Fresh Sausages  |   231 | cheap
 Intelligent Fresh Ball      |   619 | high
 Handmade Plastic Fish       |   312 | medium
 Handcrafted Cotton Bacon    |   480 | medium
 Sleek Rubber Shoes          |   597 | medium
 Handmade Granite Fish       |   166 | cheap
 Practical Wooden Chips      |   707 | high
 Handmade Rubber Salad       |   232 | cheap
 Unbranded Granite Shirt     |   519 | medium
 Gorgeous Plastic Sausages   |   556 | medium
 Awesome Steel Mouse         |   175 | cheap
 Licensed Steel Towels       |   939 | high
 Handcrafted Fresh Bacon     |   387 | medium
 Fantastic Cotton Shirt      |   496 | medium
 Licensed Cotton Sausages    |   751 | high
 Ergonomic Fresh Pants       |   638 | high
 Handcrafted Frozen Shoes    |    84 | cheap
 Small Concrete Pants        |   487 | medium
 Intelligent Plastic Car     |   628 | high
 Intelligent Cotton Chips    |   521 | medium
 Licensed Steel Towels       |   132 | cheap
 Sleek Soft Computer         |   619 | high
 Fantastic Fresh Shirt       |   643 | high
 Generic Fresh Shoes         |   628 | high
 Sleek Fresh Gloves          |   919 | high
 Gorgeous Rubber Keyboard    |    32 | cheap
 Handcrafted Soft Chicken    |   720 | high
 Small Metal Mouse           |    60 | cheap
 Fantastic Fresh Chips       |   966 | high
 Awesome Metal Pants         |   460 | medium
 Handcrafted Frozen Chips    |   564 | medium
 Gorgeous Plastic Gloves     |   341 | medium
 Rustic Metal Salad          |   240 | cheap
 Small Fresh Gloves          |   991 | high
 Small Fresh Bacon           |   473 | medium
 Refined Rubber Tuna         |     1 | cheap
 Small Metal Chips           |   161 | cheap
 Unbranded Fresh Tuna        |   657 | high
 Refined Metal Hat           |   309 | medium
 Refined Concrete Pants      |   724 | high
 Licensed Plastic Salad      |   834 | high
 Licensed Soft Chicken       |   425 | medium
 Fantastic Granite Soap      |   666 | high
 Awesome Steel Towels        |   552 | medium
 Ergonomic Wooden Tuna       |   778 | high
 Fantastic Wooden Chair      |   145 | cheap
 Tasty Granite Chips         |    37 | cheap
 Tasty Rubber Table          |   525 | medium
 Ergonomic Granite Shoes     |    48 | cheap
 Refined Metal Tuna          |   708 | high
 Intelligent Rubber Chicken  |     1 | cheap
 Practical Steel Shoes       |   947 | high
 Handcrafted Rubber Shoes    |   275 | cheap
 Intelligent Cotton Gloves   |   447 | medium
(100 rows)

ecommerce-#'''