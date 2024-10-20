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