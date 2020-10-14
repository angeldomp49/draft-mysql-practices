INSERT IGNORE INTO kinds VALUES(1, "cat", "felix silvestrus","cat current");
--it is not executed because the id exists, however the key IGNORE avoid launche and error--

UPDATE IGNORE kinds SET id = 1 WHERE name = "cat";
--the same behavior--

LOAD DATA INFILE "externas-source.sql" IGNORE ;
--for files--

REPLACE INTO animals (id, kind_id, habitat_id, name, sex, birthday, age, description)
VALUES(null, 1, 1, "dory", "f", "10-10-2020",10, "dory description");
--important see the row of dory is deleted and a new row is inserted that's why--
--the id's are differents--