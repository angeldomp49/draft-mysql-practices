USE zoologic;

CREATE TABLE plants(
    id BIGINT AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

ALTER TABLE
    ADD CONSTRAINT id_index PRIMARY KEY(name, description);

ALTER TABLE plants
    DROP PRIMARY KEY;

CREATE TABLE plants(
    id BIGINT AUTO_INCREMENT,
    habitat_id BIGINT,
    name VARCHAR(100),
    description TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_habitat(habitat_id)
    REFERENCES habitats(id)
)
ENGINE=INNODB;

ALTER TABLE plants
    ADD CONSTRAINT fk_habitat FOREIGN KEY (habitat_id) REFERENCES habitats(id);

ALTER TABLE plants
    DROP FOREIGN KEY fk_habitat;