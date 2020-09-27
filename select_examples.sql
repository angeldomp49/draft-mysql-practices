USE zoologic;

SELECT * FROM animals;

SELECT * FROM animals WHERE name='cat';

SELECT * FROM animals WHERE id < 10;

SELECT * FROM animals WHERE id < 10 && name='cat';

SELECT * FROM animals ORDER BY birthday ASC;

SELECT * FROM animals ORDER BY birthday DESC;

SELECT DISTINCT name FROM animals;

SELECT name FROM animals ORDER BY id LIMIT 10 OFFSET 2;

SELECT * FROM animals WHERE name LIKE 'f%';

SELECT * FROM animals WHERE name LIKE '%AT%';

SELECT * FROM animals WHERE name LIKE BINARY '%at%';

SELECT * FROM animals WHERE id LIKE '1%';

SELECT * FROM animals WHERE birthday BETWEEN '2000-01-01' AND '2020-01-01';

SELECT * FROM animals WHERE birthday NOT BETWEEN '2000-01-01' AND '2020-01-01';

SELECT id, name, sex, birthday  FROM animals;