DELIMITER |

CREATE PROCEDURE IF NOT EXISTS buscar_en( IN tabla VARCHAR(255), IN campo VARCHAR(255), IN valor VARCHAR(255) )
BEGIN
    SET @espacio = " ";
    SET @consulta = CONCAT( "SELECT * FROM", @espacio, tabla, @espacio, "WHERE", @espacio, campo, @espacio, "=", @espacio, valor, ";" );
    
    PREPARE todo FROM @consulta;
    EXECUTE todo;
END |

DELIMITER |

CREATE PROCEDURE IF NOT EXISTS todo_en( IN tabla VARCHAR(255) )
BEGIN
    SET @espacio = " ";
    SET @consulta = CONCAT( "SELECT * FROM", @espacio, tabla,";" );
    
    PREPARE todo FROM @consulta;
    EXECUTE todo;
END |

CREATE PROCEDURE IF NOT EXISTS tab_resultados()
BEGIN

    CREATE TEMPORARY TABLE resultados
    SELECT * FROM bolsa_de_trabajo;

    SELECT * FROM resultados;
END |

DROP PROCEDURE IF EXISTS hasta;
DELIMITER |
CREATE PROCEDURE hasta( IN limite TINYINT )
BEGIN
    SET @i = 0;

    bucle1: WHILE @i < limite DO
        SELECT @i;
        SET @i = @i + 1;
    END WHILE;
END |

CALL hasta(11);

DROP PROCEDURE IF EXISTS hasta;
DELIMITER |
CREATE PROCEDURE hasta( IN limite TINYINT )
BEGIN
    SET @i = 0;
    CREATE TEMPORARY TABLE resultados(
        i TINYINT
    );
    bucle1: WHILE @i < limite DO
        INSERT INTO resultados VALUES( @i );
        SET @i = @i + 1;
    END WHILE;
END |

CALL hasta(11);
SELECT * FROM resultados;