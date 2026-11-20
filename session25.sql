--ADVANCE QUERY TUNING
EXPLAIN SELECT *
FROM likes
WHERE created_at<'2013-01-01';

--CREATE INDEX ON likes(created_at);--
