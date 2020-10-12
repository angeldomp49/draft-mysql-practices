SELECT description FROM (
    SELECT animals.name, animals.id, animals.description FROM animals WHERE id < 20
) AS animal_names_table
WHERE name = "cat" ;

SELECT description FROM animals WHERE name = (SELECT animals.name FROM animals WHERE id = 3);

SELECT animals.id FROM animals 
    WHERE animals.kind_id = (
        SELECT MIN(id) FROM kinds
    );
--this is an instruction who is not possible with a join--
SELECT * FROM animals
    WHERE ROW (animals.kind_id) =(
        SELECT id FROM kinds 
        WHERE name = "cat"
    );
--first get the kinds.id for "cat", then select all from animals with animals.kind_id = id--

SELECT * FROM animals
    WHERE ROW (animals.kind_id) IN (
        SELECT id FROM kinds
        WHERE name IN ("cat", "dog")
    );
--the same result but with severals id in return--

SELECT * FROM animals
    WHERE ROW (animals.kind_id) NOT IN (
        SELECT id FROM kinds
        WHERE name IN ("cat", "dog")
    );
--in inverse result, all from animals where the name of their kinds is not "cat" and "dog"--

SELECT imageable.name FROM imageable
WHERE imageable.imageable_id = (
    SELECT animals.id FROM animals
    WHERE animals.name = "dory"
) AND 
WHERE imageable.imageable_type = "animals";
--similar to before--

SELECT imageable.name FROM imageable 
    WHERE imageable.imageable_id IN (
        SELECT animals.id FROM animals 
        WHERE age < ANY(
            SELECT kinds.id FROM kinds
            WHERE kinds.name IN ("shark", "chicken")
        ) 
    ) AND
    WHERE imageable.imageable_type = "animals";
--the imagable name for the animals who have an age less than the id of sharck or the id of chicken--

SELECT imageable.name FROM imageable 
    WHERE imageable.imageable_id IN (
        SELECT animals.id FROM animals 
        WHERE age < ALL(
            SELECT kinds.id FROM kinds
            WHERE kinds.name IN ("shark", "chicken")
        ) 
    ) AND
    WHERE imageable.imageable_type = "animals";
--less than the id of shark and chicken--
--!important ANY, SOME or ALL are available only for sub-requests IN and NOT IN for al requests and sub-requests-- 

SELECT animals.id FROM animals
WHERE animals.kind_id IN (
    SELECT kinds.id FROM kinds
    WHERE kinds.id = animals.kind_id
);
--We have access to the tables in the highers or lowers levels of requests and not for the same (or less) level in different branches--
--in the last example we cannot execute the sub-request alone because we have selected only the kinds table, however the animals--
--table is in a higher level and in accessible--

SELECT * FROM kinds
WHERE EXISTS (SELECT * FROM animals WHERE name = "mauricio" );
--if exists an animal with name = "mauricio", then show all kinds--

SELECT * FROM kinds
WHERE NOT EXISTS (SELECT * FROM animals WHERE animals.kind_id = kinds.id);
--pending coments--