DELIMITER |

CREATE TRIGGER after_update_bolsa_de_trabajo
AFTER UPDATE ON bolsa_de_trabajo
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_update_cotiza_ahora
AFTER UPDATE ON cotiza_ahora
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_update_danos_tu_opinion
AFTER UPDATE ON danos_tu_opinion
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_update_eventos_sociales
AFTER UPDATE ON eventos_sociales
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_update_fiestas_corporativas
AFTER UPDATE ON fiestas_corporativas
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_update_fiestas_infantiles
AFTER UPDATE ON fiestas_infantiles
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |

CREATE TRIGGER after_update_fiestas_para_adultos
AFTER UPDATE ON fiestas_para_adultos
FOR EACH ROW
BEGIN
    CALL actualizar_vm( "datos_comunes" );
END |