SELECT user_id
FROM comments
GROUP BY user_id;

SELECT MAX(id)
FROM comments;

SELECT SUM(id)
FROM comments;

SELECT user_id, COUNT(id) AS num_comments_created
FROM comments
GROUP BY user_id;

SELECT COUNT(*)FROM photos;

SELECT user_id,COUNT(*)
FROM comments
GROUP BY user_id;

SELECT photo_id AS photo,Count(*) AS comments
FROM comments
GROUP BY photo_id;

SELECT photo_id,COUNT(*)
FROM comments
WHERE photo_id<3
GROUP BY photo_id
HAVING COUNT(*)>2;

SELECT user_id,COUNT(*)
FROM comments
WHERE photo_id<50
GROUP BY user_id
HAVING COUNT(*)>20;

''' user_id
---------
       1
       3
       5
       4
       2
(5 rows)

 max
-----
 100
(1 row)

 sum
------
 5050
(1 row)

 user_id | num_comments_created
---------+----------------------
       1 |                   23
       3 |                   17
       5 |                   20
       4 |                   22
       2 |                   18
(5 rows)

 count
-------
    21
(1 row)

 user_id | count
---------+-------
       1 |    23
       3 |    17
       5 |    20
       4 |    22
       2 |    18
(5 rows)

 photo | comments
-------+----------
     1 |       19
     3 |       25
     5 |       20
     2 |       19
     4 |       17
(5 rows)

 photo_id | count
----------+-------
        1 |    19
        2 |    19
(2 rows)

 user_id | count
---------+-------
       1 |    23
       4 |    22
(2 rows)

photoapp=#'''