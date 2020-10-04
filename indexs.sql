CREATE DATABASE zoologic;

USE zoologic;

--where the table is declared--
CREATE TABLE animals_with_index(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FULLTEXT name_index (name)
)
ENGINE=INNODB;

--modifing the table--
ALTER TABLE animals
    ADD FULLTEXT text_index (name);
ALTER TABLE animals
    ADD FULLTEXT text_index (description);

--modifing the table with CREATE INDEX--
CREATE INDEX text_index ON animals (name);
CREATE INDEX text_index ON animals (description);

--delete the index--
ALTER TABLE animals
    DROP INDEX text_index;