SELECT description FROM (
    SELECT animals.name, animals.id, animals.description FROM animals WHERE id < 20
) AS animal_names_table
WHERE name = "cat" ;

SELECT description FROM animals WHERE name = (SELECT animals.name FROM animals WHERE id = 3);