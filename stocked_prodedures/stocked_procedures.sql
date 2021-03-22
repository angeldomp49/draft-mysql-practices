

-- only one line --
CREATE PROCEDURE get_all_comments()

SELECT * FROM comments;

-- several lines --

DELIMITER |

CREATE PROCEDURE get_posts_and_comments()

BEGIN
    SELECT * FROM comments;
    SELECT * FROM posts;
END |

-- call procedure --

CALL get_posts_and_comments() |

-- with parameters --

CREATE PROCEDURE parameters_input_and_output( IN input_param, OUT output_param )
BEGIN
    SELECT input_param FROM comments;
    SELECT input_param INTO output_param FROM posts WHERE id = 1;
END |
DELIMITER ;


-- delete procedure --

DROP PROCEDURE get_posts_and_comments;