DELIMITER |

CREATE TRIGGER after_insert_bolsa_de_trabajo
AFTER INSERT ON bolsa_de_trabajo
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_insert_cotiza_ahora
AFTER INSERT ON cotiza_ahora
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_insert_danos_tu_opinion
AFTER INSERT ON danos_tu_opinion
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_insert_eventos_sociales
AFTER INSERT ON eventos_sociales
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_insert_fiestas_corporativas
AFTER INSERT ON fiestas_corporativas
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_insert_fiestas_infantiles
AFTER INSERT ON fiestas_infantiles
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_insert_fiestas_para_adultos
AFTER INSERT ON fiestas_para_adultos
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |