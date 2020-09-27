CREATE DATABASE zoologic;

USE zoologic;

CREATE TABLE animals_with_index(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FULLTEXT name_index (name)
)
ENGINE=INNODB;

ALTER TABLE animals
    ADD FULLTEXT text_index (name, description);

CREATE INDEX text_index ON animals (name, description);

ALTER TABLE animals
    DROP INDEX text_index;