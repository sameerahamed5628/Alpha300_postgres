DROP TABLE IF EXISTS photos;
DROP TABLE IF EXISTS users;
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50)
);

INSERT INTO users(username)
VALUES 
    ('Sameer'),
    ('Ethu'),
    ('Sanjay'),
    ('Deepan');
SELECT *FROM users;

CREATE TABLE photos(
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL 
);

INSERT INTO photos(url,user_id)
VALUES
    ('https://2.jpg',1),
    ('https://3.jpg',2),
    ('https://4.jpg',4),
    ('https://5.jpg',3),
    ('https://6.jpg',2);
SELECT*FROM photos;

SELECT*FROM photos
WHERE user_id=2;

SELECT url,username FROM photos
JOIN users ON users.id=photos.user_id;

INSERT INTO photos(url,user_id)
VALUES('https://6.jpg',NULL);

DELETE FROM users
WHERE id=1;

SELECT*FROM photos;

'''DROP TABLE
DROP TABLE
CREATE TABLE
INSERT 0 4
 id | username
----+----------
  1 | Sameer
  2 | Ethu
  3 | Sanjay
  4 | Deepan
(4 rows)


CREATE TABLE
INSERT 0 5
 id |      url      | user_id
----+---------------+---------
  1 | https://2.jpg |       1
  2 | https://3.jpg |       2
  3 | https://4.jpg |       4
  4 | https://5.jpg |       3
  5 | https://6.jpg |       2
(5 rows)


 id |      url      | user_id
----+---------------+---------
  2 | https://3.jpg |       2
  5 | https://6.jpg |       2
(2 rows)


      url      | username
---------------+----------
 https://2.jpg | Sameer
 https://6.jpg | Ethu
 https://3.jpg | Ethu
 https://5.jpg | Sanjay
 https://4.jpg | Deepan
(5 rows)


INSERT 0 1
DELETE 1
 id |      url      | user_id
----+---------------+---------
  2 | https://3.jpg |       2
  3 | https://4.jpg |       4
  4 | https://5.jpg |       3
  5 | https://6.jpg |       2
  6 | https://6.jpg |
  1 | https://2.jpg |
(6 rows)'''