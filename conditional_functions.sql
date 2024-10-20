/*
IF Function
returns expr1 if cond is true, or expr2 otherwise.
*/

select ride_id, trip_duration, if(trip_duration>60, 'Long', 'Short/Medium') as trip_category from trip_duration;

/* 
You can also use the nested IF function inside of an IF function.
*/

select ride_id, trip_duration, if(trip_duration>60, 'Long', if(trip_duration>10, 'Medium', 'Short')) as trip_category from trip_duration;


/* 
CASE Expression

The CASE Expression allows you to evaluate multiple conditions and return different values based on the results.
It has two syntax forms, simple and searched.

Syntax
CASE WHEN cond1 THEN res1 [...] ELSE def END
*/

select ride_id, trip_duration,
      CASE WHEN trip_duration > 60 THEN 'Long'
      WHEN trip_duration > 10 THEN 'Medium'
      ELSE 'Short' END as trip_duration_category
from trip_duration;