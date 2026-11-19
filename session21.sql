SELECT COUNT(*)
FROM users;

SELECT COUNT(*)
FROM likes;

SELECT username
FROM users
ORDER BY id DESC
LIMIT 3;

SELECT username,caption
FROM users
JOIN posts ON posts.user_id=users.id
WHERE user_id=200;

SELECT username,COUNT(*)
FROM users
JOIN likes ON likes.user_id=users.id
GROUP BY username;