

PREPARE stocked_code
FROM 'SELECT * FROM comments';

-- one parameter --

PREPARE stocked_code2 
FROM 'SELECT * FROM comments WHERE id = ?';


PREPARE stocked_code2 
FROM 'SELECT * FROM comments WHERE id = ? AND WHERE publish_date = ?';

-- using variables --

SET @request = 'SELECT * FROM comments WHERE id = ?';

PREPARE stocked_code3
FROM @request;


-- executing --

EXECUTE stocked_code2 USING @id;

-- deleting prepared queries --

DEALLOCATE PREPARE stocked_code;