
-- OR REPLACE is not mandatory --

CREATE VIEW OR REPLACE all_of_comments AS 
    SELECT * FROM comments;

-- like a table --

DESCRIBE all_of_comments

-- renaming the columns --

CREATE VIEW OR REPLACE all_of_comments ( id_comments, description2, publish_with_time, publish ) AS 
SELECT * FROM comments;

-- for update a view the follow two instructions have same behavior --

CREATE VIEW OR REPLACE all_of_comments AS SELECT id, description FROM comments;

ALTER VIEW all_of_comments AS SELECT id, description FROM comments;


-- delete --
DROP VIEW all_of_comments;