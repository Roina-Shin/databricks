/*
A view is a virtual table that is derived from one or more underlying tables through a select query.

No physical data is stored, just the view definition.
*/

-- To Create a View
-- CREATE VIEW [IF NOT EXISTS] view_name

create view course_project.citybike.vw_bike_data as select * from course_project.citybike.jc_bike_data_22
where start_station_id = 'JC014';


select * from course_project.citybike.vw_bike_data;

/*
Views can encapsulate complex SQL queries involving multiple tables, joins, and aggregations.
*/