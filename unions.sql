SELECT animals.name, animals.id FROM animals
    WHERE id < 15
UNION
SELECT animals.name, animals.id FROM animals
    WHERE id > 15;
--show the result of each statement but together--

SELECT animals.name, animals.id FROM animals
    WHERE id < 15
UNION
SELECT animals.name, animals.id FROM animals
    WHERE id < 15;
--equal to DISTINCT--

SELECT animals.name, animals.id FROM animals
    WHERE id < 15 LIMIT 5
UNION
(SELECT animals.name, animals.id FROM animals
    WHERE id > 15 LIMIT 3);
--for limit only the first statement there is not problem but for the second we need to--
--use parenthesis, if not the limit is applied to the final table--

(SELECT id, name FROM animals ORDER BY id DESC LIMIT 6)
UNION
(SELECT id, name FROM kinds LIMIT 3);
--In this case we can order each table only if we use also limit-- 
--if not it not works--