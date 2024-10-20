/*
Set operators: Combines two suqqueries into a single one.

Union: Union returns the result of subquery1 plus the rows of subquery2.

Intersect: Returns the set of rows which are in both subqueries.

Except: Treturns the rows in subquery1 which are not in subquery2.
*/

-- Combine two subqueries

(select * from jc_bike_data_22 order by started_at asc)
union
(select * from jc_bike_data_22 order by started_at desc);


-- Return only the overlapping records

(select * from jc_bike_data_22 where started_at between '2022-05-01' and '2022-09-01')
intersect
(select * from jc_bike_data_22 where started_At between '2022-06-01' and '2022-10-01');


-- Except the subquery2

(select * from jc_bike_data_22 where started_at between '2022-03-01' and '2022-06-16')
except
(select * from jc_bike_data_22 where started_at between '2022-06-01' and '2022-06-15');