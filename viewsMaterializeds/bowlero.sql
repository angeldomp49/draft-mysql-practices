USE formularios;

CREATE VIEW v_datos_comunes AS
SELECT fecha, hora, nombre, email, telefono, mensaje FROM bolsa_de_trabajo
UNION 
SELECT fecha, hora, nombre, email, telefono, mensaje FROM cotiza_ahora
UNION 
SELECT fecha, hora, nombre, email, telefono, mensaje FROM danos_tu_opinion
UNION 
SELECT fecha, hora, nombre, email, telefono, mensaje FROM eventos_sociales
UNION 
SELECT fecha, hora, nombre, email, telefono, mensaje FROM fiestas_corporativas
UNION 
SELECT fecha, hora, nombre, email, telefono, mensaje FROM fiestas_para_adultos
UNION 
SELECT fecha, hora, nombre, email, telefono, mensaje FROM fiestas_infantiles;

DELIMITER |

CREATE PROCEDURE crear_vm( IN nombre_tabla VARCHAR(255), IN nombre_vista VARCHAR(255) )
BEGIN
    SET @espacio := " ";
    SET @fin := ";";
    SET @crear_tabla := CONCAT( "CREATE TABLE IF NOT EXISTS", @espacio, nombre_tabla, @espacio, "SELECT * FROM", @espacio, nombre_vista, @fin );
    PREPARE rp_crear_tabla FROM @crear_tabla;
    EXECUTE rp_crear_tabla;
END |

CREATE PROCEDURE actualizar_vm( IN nombre VARCHAR(255) )
BEGIN
    SET @espacio := " ";
    SET @fin := ";";
    SET @fuente_de_datos := "v_datos_comunes";

    SET @consulta_para_borrar = CONCAT( "DELETE FROM", @espacio, nombre, @fin );
    SET @consulta_para_insertar = CONCAT( "INSERT INTO", @espacio, nombre, @espacio, "SELECT * FROM", @espacio, @fuente_de_datos, @fin );

    PREPARE borrar FROM @consulta_para_borrar;
    PREPARE insertar FROM @consulta_para_insertar;

    EXECUTE borrar;
    EXECUTE insertar;
END |

CREATE PROCEDURE create_trigger_after_insert(  IN nombre_tabla VARCHAR(255) )
BEGIN
    SET @espacio := " ";
    SET @fin := ";";
    SET @create_trigger := CONCAT( "CREATE TRIGGER after_insert AFTER INSERT ON", @espacio, nombre_tabla, "FOR EACH ROW" );
    CREATE TRIGGER after_insert
    AFTER INSERT ON 
    FOR EACH ROW 
END |

CREATE TRIGGER after_insert 
AFTER INSERT ON bolsa_de_trabajo
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

DELIMITER ;
CALL crear_vm( "datos_comunes", "v_datos_comunes" );

