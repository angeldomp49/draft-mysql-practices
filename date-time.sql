CREATE TABLE testtimetable(
    actualdate DATE,
    actualtime TIME,
    actualdatetime DATETIME
);

INSERT INTO testtimetable VALUES(NOW(), NOW(), NOW());
--other options--

--for time--
--CURTIME()--
--CURRENT_TIME()--
--CURRENT_TIME--

--for date--
--CURDATE()--
--CURRENT_DATE()--
--CURRENT_DATE()--

--actual time and date--
--NOW()--
--SYSDATE()--

--others--
--CURRENT_TIMESTAMP()    CURRENT_TIMESTAMP--
--LOCALTIME()            LOCALTIME--
--LOCALTIMESTAMP()       LOCALTIMESTAMP--

--timestamp unix--

--UNIX_TIMESTAMP()--
--returns INT--

SELECT name, birthday, DATE(birthday) AS onlydate FROM animals;
--returns only the date of birthday--
SELECT name, birthday, DAY(birthday) AS onlydate FROM animals;
SELECT name, birthday, DAYOFMONTH(birthday) AS onlydate FROM animals;
--returns a number between 1 to 31--
SELECT name, birthday, DAYOFWEEK(birthday) AS onlydate FROM animals;
--between 1 to 7--
SELECT name, birthday, WEEKDAY(birthday) AS onlydate FROM animals;
--between 0 to 6--
SELECT name, birthday, DAYNAME(birthday) AS onlydate FROM animals;
--name (monday, etc.)--
SELECT name, birthday, DAYOFYEAR(birthday) AS onlydate FROM animals;
--1 to 365--


--week--
SELECT name, birthday, WEEK(birthday) AS onlydate FROM animals;
--between 0 to 53--
SELECT name, birthday, WEEKOFYEAR(birthday) AS onlydate FROM animals;
--between 1 to 53--
SELECT name, birthday, YEARWEEK(birthday) AS onlydate FROM animals;
--the year and the week as => 202005 --

--month--
SELECT name, birthday, MONTH(birthday) AS onlydate FROM animals;
--number between 1 to 12--
SELECT name, birthday, MONTHNAME(birthday) AS onlydate FROM animals;
--name--

--year--
SELECT name, birthday, YEAR(birthday) AS onlydate FROM animals;

---------------------------------------------time----------------------------------------------------
TIME(birthday) AS onlytime;
HOUR(onlytime);
MINUTE(onlytime);
SECOND(onlytime);

---------------------------------------------date_format------------------------------------------------

DATE_FORMAT(birthday, "the %W %e of %M, %Y");
--show (the monday 5 of november, 2020) for example--

GET_FORMAT(DATETIME, "ISO");
--returns a stardard format as (2020-10-12 10:10:10)--

STR_TO_DATE("2019-11-29 12:12:12","%Y-%m-%e %T");
--it accepts string and format and return a datetime--
