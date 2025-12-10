use home;
show tables;
select * from sales_transactions;

-- date/time data-type extract functions --
-- Returns the current date and time.
select now();

-- Same as above but with a column alias named current.
select now() `current`;

-- Extracts the hour from the current timestamp.
select hour(now());

-- Extracts the minute from the current timestamp.
select minute(now());

-- Returns today’s date.
select current_date();

-- Returns the current time.
select current_time();

-- Returns current date and time.
select current_timestamp();

-- Returns the name of the current month.
select monthname(now());

-- Returns the month name for that given date.
select monthname('1996-6-19');

-- Adds 9 days to today’s date.
select adddate(current_date(),interval 9 day);

-- Adds 9 days to today’s date (subtracting a negative).
select subdate(current_date(), interval -9 day);

-- Adds 9 days to today’s date.
select adddate(current_date(),9);

-- Returns weekday index of today (0 = Monday).
select weekday(current_date());

-- Days between 24-06-2002 and 24-06-2025.
Select datediff('2002-06-24', '2025-06-24');
select datediff('2025-06-24', '2002-06-24');

-- Days between 30-08-1972 and 30-08-2025.
select datediff('1972-08-30', '2025-08-30');
select datediff('2025-08-30', '1972-08-30');

-- more date and time extract functions --
-- gives system user's name.
select system_user(); 

-- Same as current_date(), returns today’s date.
select curdate();

-- Same as current_time(), returns current time.
select curtime();

-- Returns the time at the exact moment the function executes (unlike now() which stays constant during the query).
select sysdate(); 

-- Extracts the year from a date.
select year('2025-11-26'); 

-- Extracts the month number.
select month('2025-11-26');

-- Extracts day of month. 
select day('2025-11-26'); 

-- Same as above extracts day of month.
select dayofmonth('2025-11-26'); 

-- Returns the weekday name.
select dayname('2025-11-26'); 

-- Returns day index (1 = Sunday).
select dayofweek('2025-11-26'); 

-- Returns day index (1 = Sunday).
select dayofweek(now()); 

-- Returns the day number in the year (1–366).
select dayofyear(now());

-- Returns which quarter (1–4) the date falls in.
select quarter(now());
select quarter('2002-06-24');

-- Returns week number of the year.
-- counts from = sunday
select week('2025-11-26'); 

-- Returns week number of the year.
-- counts from = monday
select weekofyear('2025-11-26'); 

-- Returns the last date of the given month.
select last_Day('2025-11-26'); 

-- Extracts only the date part from a datetime.
select date(now()); 

-- Extracts only the time part.
select time(now()); 

-- Extracts microseconds.
select microsecond(now()); 

-- Creates a date from a year + day-of-year.
select makedate('24', '12'); 

-- Creates a time value.
select maketime(1, 23, 24); 

-- Combines date and time into a datetime.
select timestamp('24-12-24', '10:59:4'); 

-- Returns difference between two time/datetime values.
select timediff('10:23:4', '12:23:24'); 

-- Adds intervals (same as adddate).
select date_add(current_date(),interval 9 day); 

-- Adds intervals.
select adddate(current_date(), 9); 

-- subtracts intervals (same as subdate).
select date_sub('24-12-24', interval 56 day); 

-- Pulls out a specific part(year, month, day, etc.) from a date. 
-- can also extract time(hour, minutes, seconds).
select extract(year from '24-12-24'); 
select extract(month from '24-12-24');
select extract(day from '24-12-24');

-- Converts a string into a date using the a format.
select str_to_date('24-06-2002', '%d-%m-%Y'); 

-- Formats a date as per the given pattern.
select date_format('2002-11-22', '%d-%m-%Y'); 

-- Another example
select date_format(now(), '%W, %M %D'); 

-- Returns date in UTC timezone.
select utc_date(); 

-- Returns date in UTC timezone.
select utc_time(); 

-- Returns timestamp in UTC timezone.
select utc_timestamp();

-- “UNIX time” (or UNIX timestamp) is just a number that counts how many seconds have passed since 1 January 1970, 00:00:00 UTC.
-- it gives current time in seconds.
select unix_timestamp(); 

-- Converts UNIX timestamp (seconds since 1 Jan 1970) to normal datetime.
select from_unixtime(1700000000);

-- Converts a datetime into UNIX timestamp seconds.
select unix_timestamp('2025-11-22 10:00:00');

