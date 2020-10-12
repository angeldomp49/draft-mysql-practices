USE zoologic;

SELECT animals.name FROM animals
    INNER JOIN kinds ON animals.kind_id = kinds.id
    WHERE kinds.name = 'cat';

SELECT animals.name FROM animals 
    LEFT OUTER JOIN kinds ON animals.kind_id = kinds.id
    WHERE kinds.name = 'cat';

SELECT animals.name FROM animals      -- LEFT TABLE --
    RIGHT OUTER JOIN kinds ON animals.kind_id = kinds.id   -- RIGHT TABLE --
    WHERE kinds.name = 'cat';

SELECT animals.name FROM animals 
    INNER JOIN kinds USING id
    WHERE kinds.name = 'cat';  

    -- in this case it's incorrect but if you have two tables with a  