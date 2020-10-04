
CREATE DATABASE IF NOT EXISTS zoologic;

USE zoologic;

CREATE TABLE IF NOT EXISTS kinds(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    latin_name VARCHAR(100),
    description TEXT,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS weathers(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    PRIMARY KEY (id)
)
ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS habitats(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    weather_id BIGINT UNSIGNED NOT NULL,
    name VARCHAR(100),
    area DECIMAL(5,5),
    inhabitats INT,
    PRIMARY KEY (id),
    CONSTRAINT fk_weather
        FOREIGN KEY (weather_id)
        REFERENCES weathers(id)
)
ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS animals(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    habitat_id BIGINT UNSIGNED NOT NULL,
    kind_id BIGINT UNSIGNED NOT NULL,
    name VARCHAR(100),
    sex CHAR(1),
    birthday DATE,
    age INT,
    description TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_habitat
        FOREIGN KEY (habitat_id)
        REFERENCES habitats(id),
    CONSTRAINT fk_kind
        FOREIGN KEY (kind_id)
        REFERENCES kinds(id)
)
ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS foods(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    PRIMARY KEY (id)
)
ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS animal_food(
    animal_id BIGINT UNSIGNED NOT NULL,
    food_id   BIGINT UNSIGNED NOT NULL,
    CONSTRAINT fk_animal
        FOREIGN KEY (animal_id)
        REFERENCES animals(id),
    CONSTRAINT fk_food
        FOREIGN KEY (food_id)
        REFERENCES foods(id)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS imageable(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    mime VARCHAR(100),
    size BIGINT UNSIGNED NOT NULL DEFAULT 0,
    data MEDIUMBLOB,
    imageable_id BIGINT UNSIGNED NOT NULL,
    imageable_type VARCHAR(100),
    PRIMARY KEY (id)
)
ENGINE=INNODB;