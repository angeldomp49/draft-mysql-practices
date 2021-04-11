USE formularios;

CREATE VIEW OR REPLACE todo_de_todas AS
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

CREATE TABLE vm_commond 
SELECT * FROM todo_de_todas;

DELIMITER |

CREATE PROCEDURE update_vm_commond()
BEGIN
-- it's better use TRUNCATE however some issues are presents, then use DELETE FROM --
    DELETE FROM vm_commond;
    INSERT INTO vm_commond
    SELECT * FROM todo_de_todas;
END |

CREATE TRIGGER after_insert 
AFTER INSERT ON bolsa_de_trabajo
FOR EACH ROW
BEGIN
    CALL update_vm_commond();
END |