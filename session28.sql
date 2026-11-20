--MOST POPULAR USERS
SELECT username,COUNT(*)
FROM USERS
JOIN(
    SELECT user_id FROM photo_tags
    UNION ALL
    SELECT user_id FROM caption_tags
)AS tags ON tags.user_id=users.id
GROUP BY username
ORDER BY COUNT(*) DESC;

CREATE VIEW tags AS(
    SELECT id,created_at,user_id,post_id,'photo_tag' AS type FROM photo_tags
    UNION ALL
    SELECT id,created_at,user_id,post_id,'caption_tag' AS type FROM caption_tags
);

CREATE VIEW recent_posts AS(
    SELECT *
    FROM posts
    ORDER BY created_at DESC
    LIMIT 10
);

--UPDATING A VIEW 
CREATE OR REPLACE VIEW recent_posts AS(
    SELECT * 
    FROM posts
    ORDER BY created_at DESC
    LIMIT 15
);