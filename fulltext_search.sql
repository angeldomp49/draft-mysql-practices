USE zoologic;

SELECT * FROM animals 
    WHERE MATCH(name) AGAINST('' IN NATURAL LANGUAGE MODE);
    --only match if cat is included completly in the name--

SELECT * FROM animals 
    WHERE MATCH(description) AGAINST('cat' IN NATURAL LANGUAGE MODE);

SELECT * FROM animals 
    WHERE MATCH(description) AGAINST('cat' IN BOOLEAN MODE); 
    --match with cat--

SELECT * FROM animals 
    WHERE MATCH(description) AGAINST('cat -description' IN BOOLEAN MODE);
    --match with cat and without description--

SELECT * FROM animals 
    WHERE MATCH(description) AGAINST('-cat +description' IN BOOLEAN MODE);
    --match with description and without cat--

SELECT * FROM animals 
    WHERE MATCH(description) AGAINST('description*' IN BOOLEAN MODE);
    --match with description the rest doesn't matter-- 

SELECT * FROM animals 
    WHERE MATCH(name) AGAINST('d*' IN BOOLEAN MODE) ||
          MATCH(description) AGAINST('d*' IN BOOLEAN MODE);
    --match with all if start with d into index name and index description--

SELECT * FROM animals 
    WHERE MATCH(description) AGAINST('cat' WITH QUERY EXPANSION);
    --match with description, then match with the results--
    --if the result is 'description cat' this result in 'description dog' also--