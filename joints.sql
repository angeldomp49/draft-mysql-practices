USE zoologic;

SELECT animals.name FROM animals
    INNER JOIN kinds ON animals.kind_id = kinds.id
    WHERE kinds.name = 'cat';