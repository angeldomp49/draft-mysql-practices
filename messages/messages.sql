
CREATE TABLE messages(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    m_type VARCHAR(255),
    m_message VARCHAR(255),
    PRIMARY KEY(id)
)
ENGINE = INNODB;

INSERT INTO messages VALUES( NULL, "ERROR", "NUMERO MENOR A 9" );

DELIMITER |

CREATE PROCEDURE test_message(IN n TINYINT)
BEGIN
    IF n < 9
        THEN 
            SELECT m_type, m_message FROM messages WHERE id = 1
    END IF;
END |

DELIMITER ;
CALL test_message( 7 );