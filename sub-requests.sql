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
    WHERE animals.kind_id =(
        SELECT id FROM kinds 
        WHERE name = "cat"
    );
--first get the kinds.id for "cat", then select all from animals with animals.kind_id = id--

SELECT * FROM animals
    WHERE animals.kind_id IN (
        SELECT id FROM kinds
        WHERE name IN ("cat", "dog")
    );
--the same result but with severals id in return--

SELECT * FROM animals
    WHERE animals.kind_id NOT IN (
        SELECT id FROM kinds
        WHERE name IN ("cat", "dog")
    );
--in inverse result, all from animals where the name of their kinds is not "cat" and "dog"--

SELECT img.name FROM (
    SELECT imageable.imageable_id, imageable.name FROM imageable
        WHERE imageable.imageable_type ="animal"
    ) AS img
    WHERE img.imageable_id = (
        SELECT animals.id FROM animals
        WHERE animals.name = "dory"
);
--similar to before--
SELECT animals.name, animals.age, img_data.name, img_data.imageable_id FROM animals 
    INNER JOIN (
        SELECT img_table.name, img_table.imageable_id FROM (
            SELECT imageable.imageable_type, imageable.name, imageable.imageable_id FROM imageable 
                WHERE imageable.imageable_type = "animal"
            ) AS img_table
            WHERE img_table.imageable_id IN (
                SELECT animals.id FROM animals
                    WHERE animals.age < ANY(
                        SELECT kinds.id FROM kinds 
                            WHERE kinds.name IN ("shark", "chicken")
                        )
                )
    ) AS img_data ON animals.id = img_data.imageable_id;
--first we create a table who contains only imageable of type ="animal", over this we collect--
--all the imageable animals that are an id less than 5 or 4 because the kind.id for shark = 5 and--
--for chicken = 4, then we use this results for get the imageable.name, imageable.id--
--finally we have a simple join--

SELECT animals.name, animals.age, img_data.name, img_data.imageable_id FROM animals 
    INNER JOIN (
        SELECT img_table.name, img_table.imageable_id FROM (
            SELECT imageable.imageable_type, imageable.name, imageable.imageable_id FROM imageable 
                WHERE imageable.imageable_type = "animal"
            ) AS img_table
            WHERE img_table.imageable_id IN (
                SELECT animals.id FROM animals
                    WHERE animals.age < ALL(
                        SELECT kinds.id FROM kinds 
                            WHERE kinds.name IN ("shark", "chicken")
                        )
                )
    ) AS img_data ON animals.id = img_data.imageable_id;
--similar but we use ALL instead of ANY--
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
--the "NOT EXISTS" statement have the same behavior of ! operator in programming languages--
--it invert the result of an operation, in this code we obtain all kinds who not have animals--
--the result is then the row shark--