
USE for_dates;

-- for lock tables --

LOCK TABLES comments READ;
LOCK TABLES comments WRITE;
LOCK TABLES comments READ, posts WRITE;

-- with transactions --

SET autocommit = 0;

LOCK TABLES comments READ;

UPDATE comments SET published_date = NOW() WHERE id = 10;

ROLLBACK;

UNLOCK TABLES;



---------------------------- lock inlines ----------------------------------------------------

SELECT publish_datetime FROM comments WHERE id = 11 LOCK IN SHARE MODE;

SELECT publish_datetime FROM comments WHERE id = 11 FOR UPDATE;
