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