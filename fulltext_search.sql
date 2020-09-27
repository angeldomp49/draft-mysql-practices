USE zoologic;

SELECT * FROM animals 
    WHERE MATCH(name, description) AGAINST('cat' IN NATURAL LANGUAGE MODE);

SELECT * FROM animals 
    WHERE MATCH(name, description) AGAINST('cat' IN BOOLEAN MODE);

SELECT * FROM animals 
    WHERE MATCH(name, description) AGAINST('cat' WITH QUERY EXPANSION);