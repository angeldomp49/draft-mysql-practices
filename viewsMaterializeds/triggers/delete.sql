DELIMITER |

CREATE TRIGGER after_delete_bolsa_de_trabajo
AFTER DELETE ON bolsa_de_trabajo
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_delete_cotiza_ahora
AFTER DELETE ON cotiza_ahora
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_delete_danos_tu_opinion
AFTER DELETE ON danos_tu_opinion
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_delete_eventos_sociales
AFTER DELETE ON eventos_sociales
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_delete_fiestas_corporativas
AFTER DELETE ON fiestas_corporativas
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_delete_fiestas_infantiles
AFTER DELETE ON fiestas_infantiles
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_delete_fiestas_para_adultos
AFTER DELETE ON fiestas_para_adultos
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |