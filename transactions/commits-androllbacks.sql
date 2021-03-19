USE for_dates;

SET autocommit = 0;

INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-10-29 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-11-20 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-02-10 11:11:11', '2020-03-10' );

SELECT * FROM comments ORDER BY id DESC Limit 10;

ROLLBACK;

SELECT * FROM comments ORDER BY id DESC Limit 10;

-- OTHER WAY FOR INIT A TRANSACTION --

START TRANSACTION;

-- SAME CODE ABOVE --
-- FOR END A TRANSACTION JUST USE COMMIT OR ROLLBACK --

INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-10-29 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-11-20 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-02-10 11:11:11', '2020-03-10' );

SELECT * FROM comments ORDER BY id DESC Limit 10;

ROLLBACK;  -- END TRANSACTION --

START TRANSACTION;

INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-10-29 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-11-20 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2022-02-10 11:11:11', '2020-03-10' );

SELECT * FROM comments ORDER BY id DESC Limit 10;

COMMIT; -- END TRANSACTION --



SAVEPOINT first_transaction;

INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2023-10-29 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2023-11-20 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2023-02-10 11:11:11', '2020-03-10' );

ROLLBACK TO first_transaction;

INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2024-10-29 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2024-11-20 11:11:11', '2020-03-10' );
INSERT INTO comments VALUES ( NULL, 'texto de ejemplo', '2024-02-10 11:11:11', '2020-03-10' );

COMMIT;

-- all instructions that modify the database structure validate automatically the transaction, this instructions are --
-- CREATE DATABASE, DROP DATABASE, CREATE TABLE, DROP TABLE, CREATE INDEX, DROP INDEX, etc. --

-- the same way for the user's operations --

--attempt to start a new transaction insde another with START TRASACTION--

--activate the autocommit --

-- LOAD DATA --

