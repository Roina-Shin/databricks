/*
I'd like you to return results showing the number of total rides for short, medium and long duration journeys.

A short journey lasts under 10 minutes.
A medium journey lasts between 10 and 60 minutes (inclusive).
A long journey lasts over 60 minutes.

Use a subquery.
*/

select journey_category, count(*) as journey_counts from (
select datediff(MINUTE, started_at, ended_at) as trip_duration,
if(
(select datediff(MINUTE, started_at, ended_at)) < 10, "Short",
if(((select datediff(MINUTE, started_at, ended_at)) >= 10 and 
(select datediff(MINUTE, started_at, ended_at)) <= 60), "Medium", "Long")) as journey_category
from jc_bike_data_22)
group by journey_category;

/*
journey_category	journey_counts
Short	517224
Medium	251347
Long	18412
*/


/*
I'd like you to return a query that shows the most popular combination of start and end stations
in terms of the total number of journeys across the dataset.

The start and end stations should be in the format:
'start_station_name TO end_station_name'

Use the jc_bike_data_22 and station_data table.
*/


select concat(start_station, ' TO ', end_station) as most_popular_journey, journey_counts
from (
select jbd.start_station_id, std.station_name as start_station, jbd.end_station_id, std2.station_name as end_station, count(*) as journey_counts
from jc_bike_data_22 jbd
join station_data std on jbd.start_station_id = std.station_id
join station_data std2 on jbd.end_station_id = std2.station_id
group by 1, 2, 3, 4
order by 5 desc
limit 1)