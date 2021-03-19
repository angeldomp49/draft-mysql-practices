--for this example load first the tables/for-dates.sql files in your database program--

--difference antre deux données temporelle

SELECT DATEDIFF( ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS d;

SELECT TIMEDIFF( ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS d;

SELECT 
TIMESTAMPDIFF( SECOND, ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS difference_in_seconds,
TIMESTAMPDIFF( MINUTE, ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS difference_in_minutes,
TIMESTAMPDIFF( HOUR, ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS difference_in_hours,
TIMESTAMPDIFF( DAY, ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS difference_in_days,
TIMESTAMPDIFF( WEEK, ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS difference_in_weeks,
TIMESTAMPDIFF( MONTH, ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS difference_in_months,
TIMESTAMPDIFF( QUARTER, ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS difference_in_quarters,
TIMESTAMPDIFF( YEAR, ( SELECT published_datetime FROM comments WHERE id = 11 ), ( SELECT published_datetime FROM comments WHERE id = 14 ) ) AS difference_in_years;

SELECT ( SELECT published_datetime FROM comments WHERE id = 11 ) AS before_date, 
    ADDDATE( ( SELECT published_datetime FROM comments WHERE id = 11 ), INTERVAL 3 MONTH ) AS after_date;

SELECT ( SELECT published_datetime FROM comments WHERE id = 11 ) AS before_date, 
    DATE_ADD( ( SELECT published_datetime FROM comments WHERE id = 11 ), INTERVAL 3 MONTH ) AS after_date;

    SELECT ( SELECT published_datetime FROM comments WHERE id = 11 ) AS before_date, 
    ( SELECT published_datetime FROM comments WHERE id = 11 ) + INTERVAL 3 MONTH AS after_date;
