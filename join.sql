/*
Should also use 3 level namespace when required.
*/

select distinct jc22.start_station_id, std.station_name, jc222.end_station_id, std.station_id
from jc_bike_data_22 as jc22
join station_data as std
on jc22.start_station_id = std.station_id
join jc_bike_data_22 as jc222
on jc222.end_station_id = std.station_id

/*
start_station_id	station_name	end_station_id	station_id
JC094	Glenwood Ave	JC094	JC094
HB505	Willow Ave & 12 St	HB505	HB505
HB603	8 St & Washington St	HB603	HB603
HB408	Marshall St & 2 St	HB408	HB408
JC081	Brunswick & 6th	JC081	JC081
JC011	JC Medical Center	JC011	JC011
JC022	Oakland Ave	JC022	JC022
JC105	Hoboken Ave at Monmouth St	JC105	JC105
HB601	Church Sq Park - 5 St & Park Ave	HB601	HB601
JC077	Astor Place	JC077	JC077
HB105	City Hall - Washington St & 1 St	HB105	HB105
JC056	Sip Ave	JC056	JC056
HB402	Madison St & 1 St	HB402	HB402
HB303	Clinton St & 7 St	HB303	HB303
JC108	Bergen Ave & Stegman St	JC108	JC108
JC078	Lafayette Park	JC078	JC078
HB407	Adams St & 2 St	HB407	HB407
JC018	5 Corners Library	JC018	JC018
JCSYS	JCBS Depot	JCSYS	JCSYS
JC014	Columbus Drive	JC014	JC014
HB305	9 St HBLR - Jackson St & 8 St	HB305	HB305
HB401	Southwest Park - Jackson St & Observer Hwy	HB401	HB401
HB502	11 St & Washington St	HB502	HB502
JC019	Hilltop	JC019	JC019
HB202	14 St Ferry - 14 St & Shipyard Ln	HB202	HB202
HB501	Columbus Park - Clinton St & 9 St	HB501	HB501
JC057	Riverview Park	JC057	JC057
HB301	4 St & Grand St	HB301	HB301
JC084	Communipaw & Berry Lane	JC084	JC084
JC032	Newark Ave	JC032	JC032
JC059	Heights Elevator	JC059	JC059
JC035	Van Vorst Park	JC035	JC035
JC052	Liberty Light Rail	JC052	JC052
JC099	Montgomery St	JC099	JC099
HB506	Grand St & 14 St	HB506	HB506
MTL-ECO5-LAB	MTL-ECO5-LAB	MTL-ECO5-LAB	MTL-ECO5-LAB
JC102	Grand St	JC102	JC102
JC009	Hamilton Park	JC009	JC009
JC098	Washington St	JC098	JC098
JC072	Morris Canal	JC072	JC072
HB503	Madison St & 10 St	HB503	HB503
JC074	Jersey & 3rd	JC074	JC074
JC109	Bergen Ave & Sip Ave	JC109	JC109
JC051	Union St	JC051	JC051
JC005	Grove St PATH	JC005	JC005
JC020	Baldwin at Montgomery	JC020	JC020
JC008	Newport Pkwy	JC008	JC008
HB101	Hoboken Terminal - Hudson St & Hudson Pl	HB101	HB101
HB409	Clinton St & Newark St	HB409	HB409
JC013	Marin Light Rail	JC013	JC013
HB302	6 St & Grand St	HB302	HB302
HB607	Hudson St & 4 St	HB607	HB607
JC053	Lincoln Park	JC053	JC053
JC082	Manila & 1st	JC082	JC082
JC063	Jackson Square	JC063	JC063
JC106	Columbus Dr at Exchange Pl	JC106	JC106
JC076	Dixon Mills	JC076	JC076
JC080	Leonard Gordon Park	JC080	JC080
JC110	JC Medical Center	JC110	JC110
HB103	South Waterfront Walkway - Sinatra Dr & 1 St	HB103	HB103
JC006	Warren St	JC006	JC006
JC103	Journal Square	JC103	JC103
HB203	Bloomfield St & 15 St	HB203	HB203
HB304	7 St & Monroe St	HB304	HB304
JC065	Dey St	JC065	JC065
JC104	Harborside	JC104	JC104
null	null	null	null
JC093	Fairmount Ave	JC093	JC093
HB102	Hoboken Terminal - River St & Hudson Pl	HB102	HB102
HB201	12 St & Sinatra Dr N	HB201	HB201
JC097	York St & Marin Blvd	JC097	JC097
JC075	Monmouth and 6th	JC075	JC075
JC003	City Hall	JC003	JC003
JC115	Grove St PATH	JC115	JC115
HB404	Mama Johnson Field - 4 St & Jackson St	HB404	HB404
JC002	Paulus Hook	JC002	JC002
JC027	Jersey & 6th St	JC027	JC027
JC066	Newport PATH	JC066	JC066
JC095	Bergen Ave	JC095	JC095
HB602	Stevens - River Ter & 6 St	HB602	HB602
JC038	Essex Light Rail	JC038	JC038
JC024	Pershing Field	JC024	JC024
JC034	Christ Hospital	JC034	JC034
JC023	Brunswick St	JC023	JC023
HB507	Adams St & 11 St	HB507	HB507
JC107	Grant Ave & MLK Dr	JC107	JC107
JC055	McGinley Square	JC055	JC055
*/