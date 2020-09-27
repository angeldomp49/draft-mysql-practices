USE zoologic;

SELECT kinds.description FROM kinds 
    INNER JOIN animals ON kinds.id = animals.kind_id
    WHERE animals.name = 'cat';