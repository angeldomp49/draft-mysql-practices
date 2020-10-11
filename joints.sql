USE zoologic;

--The joins have two types: internes and externes --
--in the first statement we get information from the animals table--
--then, the condition is "only where the column in animals match with a column in kinds in--
--animals.kind_id = kinds.id ", and if it has the field sex = "m"--
--we suppose that kinds.id can take the next values: 1,2,3,4--
--but, if an animal has kind_id = 10 in the before instruction it is not showed--
--when i need see this column we use the second statement and we take all the columns--
--from the animals table even when it not correspond to a valid column in kinds table--
--likewise, if exist a kind with id = 5 and there is not an animal that use this kind_id--
--but we have to know all the kinds in the table, we use the third statement--
--since it show all the "RIGHT" columns even wether animals.kinds_id =/= kinds.id--
--in this case kinds.id is a foreign key of animals.kind_id then always they will have the same value--


SELECT animals.name, kinds.name FROM animals
    INNER JOIN kinds ON animals.kind_id = kinds.id
    ORDER BY animals.kind_id;
--only rows if match kinds.id with animals.kind_id--

SELECT animals.name, kinds.name FROM animals
    LEFT OUTER JOIN kinds ON animals.kind_id = kinds.id
    ORDER BY animals.kind_id;
--all animals.name even if kinds.id not match with animals.kind_id--

SELECT animals.name, kinds.name FROM animals
    RIGHT OUTER JOIN kinds ON animals.kind_id = kinds.id
    ORDER BY animals.kind_id;
--all kinds.name 