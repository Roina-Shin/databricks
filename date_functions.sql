/*
DATE FORMAT:
Converts a timestamp to a string in the format fmt.

DATE DIFF:
Calculate the time different between two date columns
*/

-- DATEDIFF
select started_at, ended_at, datediff(MINUTE, started_at, ended_at) as duration_mins from jc_bike_data_22;

-- DATEFORMAT

select started_at, date_format(started_at, 'MM-yy') as month_year_1, date_format(started_at, 'MMM-yy') as month_year_2
from jc_bike_data_22;

select started_at, date_format(started_at, 'yyyy-MM-dd') from jc_bike_data_22;

-- Show current date and timestamp

select current_date(), current_timestamp();

-- Convert strings to Dates/Timestamps

create table date_conv_demo (col1 DATE, col2 TIMESTAMP);

--Databricks has a standard date format.
--YYYY-MM-dd
--YYYY-MM-dd HH:mm:ss

INSERT INTO date_conv_demo values ('2024-10-20', '2024-10-20 11:53:33');

