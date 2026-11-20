--MATERIALIZED VIEW
SELECT 
    date_trunc('week',COALESCE(posts.created_at,comments.created_at)) AS week
FROM likes
LEFT JOIN posts ON posts.id=likes.post_id
LEFT JOIN comments ON comments.id=likes.comment_id
ORDER BY WEEK;