SELECT DISTINCT department
FROM products;

SELECT COUNT(DISTINCT department)
FROM products;

SELECT DISTINCT department,name
FROM products;

'''ecommerce-# \i session10.sql
 count
-------
    21
(1 row)

ecommerce-# \i session10.sql
 department
-------------
 Tools
 Electronics
 Sports
 Clothing
 Books
 Kids
 Music
 Garden
 Outdoors
 Toys
 Industrial
 Health
 Grocery
 Movies
 Jewelery
 Home
 Shoes
 Baby
 Games
 Computers
 Beauty
(21 rows)

 count
-------
    21
(1 row)

 department  |            name
-------------+-----------------------------
 Kids        | Handcrafted Cotton Bacon
 Sports      | Unbranded Wooden Ball
 Beauty      | Small Plastic Soap
 Sports      | Handmade Plastic Gloves
 Movies      | Sleek Soft Computer
 Industrial  | Practical Concrete Sausages
 Shoes       | Awesome Metal Pants
 Kids        | Handcrafted Soft Chicken
 Shoes       | Awesome Cotton Salad
 Sports      | Handcrafted Frozen Shoes
 Outdoors    | Handmade Rubber Salad
 Health      | Licensed Steel Towels
 Baby        | Handcrafted Rubber Towels
 Industrial  | Licensed Steel Towels
 Baby        | Small Fresh Bacon
 Electronics | Handmade Granite Fish
 Music       | Incredible Granite Bacon
 Movies      | Rustic Plastic Bacon
 Sports      | Handcrafted Fresh Bacon
 Electronics | Rustic Granite Chair
 Baby        | Ergonomic Fresh Pants
 Home        | Tasty Granite Chips
 Health      | Rustic Metal Salad
 Kids        | Generic Fresh Shoes
 Computers   | Practical Wooden Shoes
 Garden      | Small Wooden Pizza
 Industrial  | Fantastic Fresh Sausages
 Home        | Intelligent Cotton Gloves
 Tools       | Tasty Rubber Soap
 Outdoors    | Gorgeous Steel Towels
 Sports      | Refined Concrete Pants
 Baby        | Generic Fresh Hat
 Home        | Awesome Fresh Keyboard
 Baby        | Small Metal Mouse
 Games       | Practical Plastic Towels
 Toys        | Practical Wooden Chips
 Beauty      | Rustic Rubber Soap
 Beauty      | Ergonomic Granite Shoes
 Toys        | Licensed Soft Chicken
 Tools       | Fantastic Soft Fish
 Movies      | Gorgeous Steel Cheese
 Jewelery    | Fantastic Wooden Chair
 Industrial  | Tasty Wooden Ball
 Garden      | Refined Rubber Tuna
 Baby        | Gorgeous Rubber Keyboard
 Clothing    | Sleek Fresh Gloves
 Books       | Gorgeous Rubber Ball
 Games       | Handmade Plastic Fish
 Garden      | Licensed Plastic Keyboard
 Garden      | Ergonomic Wooden Tuna
 Toys        | Sleek Granite Towels
 Jewelery    | Refined Metal Tuna
 Music       | Intelligent Metal Mouse
 Industrial  | Refined Metal Hat
 Books       | Intelligent Cotton Chips
 Outdoors    | Ergonomic Steel Car
 Toys        | Practical Fresh Shirt
 Health      | Fantastic Cotton Shirt
 Home        | Intelligent Fresh Ball
 Sports      | Licensed Cotton Sausages
 Jewelery    | Sleek Rubber Shoes
 Industrial  | Unbranded Plastic Pizza
 Movies      | Gorgeous Plastic Gloves
 Clothing    | Awesome Steel Mouse
 Books       | Licensed Frozen Chair
 Home        | Generic Cotton Pizza
 Baby        | Intelligent Cotton Chips
 Toys        | Generic Fresh Computer
 Home        | Incredible Granite Mouse
 Tools       | Fantastic Fresh Shirt
 Home        | Fantastic Metal Chair
 Toys        | Practical Steel Shoes
 Baby        | Awesome Steel Towels
 Home        | Fantastic Granite Soap
 Home        | Fantastic Fresh Chips
 Industrial  | Intelligent Rubber Chicken
 Games       | Handcrafted Fresh Sausages
 Grocery     | Gorgeous Concrete Towels
 Movies      | Gorgeous Plastic Sausages
 Sports      | Unbranded Cotton Shoes
 Health      | Small Concrete Pants
 Music       | Unbranded Granite Shirt
 Computers   | Tasty Rubber Table
 Home        | Unbranded Fresh Tuna
 Music       | Refined Wooden Mouse
 Movies      | Handmade Rubber Chicken
 Jewelery    | Ergonomic Metal Pizza
 Garden      | Small Fresh Gloves
 Garden      | Practical Rubber Mouse
 Shoes       | Intelligent Plastic Car
 Home        | Small Metal Chips
 Computers   | Fantastic Steel Chicken
 Toys        | Handcrafted Concrete Bike
 Jewelery    | Unbranded Cotton Tuna
 Shoes       | Handcrafted Frozen Chips
 Garden      | Handcrafted Frozen Chair
 Sports      | Handcrafted Rubber Shoes
 Movies      | Licensed Steel Car
 Beauty      | Licensed Plastic Salad
 Beauty      | Tasty Metal Cheese
(100 rows)

ecommerce-#'''