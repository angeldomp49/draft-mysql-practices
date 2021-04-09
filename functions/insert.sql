
DELIMITER |

CREATE PROCEDURE IF NOT EXISTS insertar_en_nombre( IN campo1 VARCHAR(255), IN campo2 SMALLINT )
BEGIN
    INSERT INTO nombre VALUES( campo1, campo2 );
END |