
CREATE DATABASE IF NOT EXISTS for_dates;

USE for_dates;

CREATE TABLE IF NOT EXISTS comments(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    description TEXT,
    published_datetime DATETIME,
    published_date DATE,
    PRIMARY KEY (id)
)
ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS posts(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    content MEDIUMTEXT,
    published_datetime DATETIME,
    published_date DATE,
    PRIMARY KEY (id)
)
ENGINE = INNODB;

--from 2017 to 2021--

INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2017-10-29 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2017-11-20 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2018-02-10 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2018-03-24 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2018-09-15 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2018-10-02 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2018-12-12 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-01-31 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-02-02 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-02-27 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-03-10 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-04-25 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-05-04 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-06-14 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-07-22 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2019-08-26 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2020-03-20 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2020-06-04 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2020-08-11 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2020-11-15 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2020-12-01 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-01-01 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-03-10 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-05-22 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-07-02 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-09-26 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-10-10 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-10-28 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-11-08 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2021-11-09 11:11:11', '2020-03-10' );