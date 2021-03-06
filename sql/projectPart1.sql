create database Famous_sort;
use Famous_sort;


create table Information(State varchar(50),	Capital varchar(50),Population bigint,	Area bigint,Famous_People varchar(50),	Nickname varchar(50),	Unions integer,State_Bird varchar(50));


select * from Information;

insert into Information values('Alaska','Juneau',479000, 586412,'Joe Juneau','Last Frontier',1959,'Ptarmigan');
insert into Information values('Arizona','Phoenix',	2963000,	113909,	'Geronimo',	'Grand Canyon State',1912,'Cactus Wren');
insert into Information values('California','Sacramento',25174000, 158693,'Jack London','Golden State',1850,'Quail');
insert into Information values('Florida','Tallahassee',10680000, 58560,'Joseph Stilwell','Sunshine State',1845,'Mockingbird');
insert into Information values('Hawaii','Honolulu',	1023000,	6450,	'Don Ho',	'Aloha State',	1959,	'Goose');
insert into Information values('Idaho',	'Boise',989000	,83557,	'Sacajawea',	'Gem State',	1890	,'Bluebird');
insert into Information values('Kansas','Topeka',	2425000	,82264,	'Amelia Earhart',	'Sunflower State',	1861,	'Meadowlark');
insert into Information values('Maine',	'Augusta',	1146000,	33215,	'Henry Longfellow',	'Pine Tree State',1820	,'Chickadee');
insert into Information values('Nebraska','Lincoln'	,1597000,	77227,	'Fred Astaire',	'Cornhusker State',	1867,	'Meadowlark');
insert into Information values('New Jersey'	,'Trenton',	7468000,	7836,	'Stephen Crane',	'Garden State',	1787,	'Goldfinch');
insert into Information values('New York',	'Albany',17667000	,49576,	'Walt Whitman',	'Empire State',	1788, 'Bluebird');
insert into Information values('Ohio','Columbus',	10746000,	41222,	'Bob Hope',	'Buckeye State',	1803,	'Cardinal');
insert into Information values('Washington',	'Olympia',	4300000,	68192,	'Bing Crosby',	'Evergreen State',	1889,'Goldfinch');
insert into Information values('Wisconsin','Madison',4751000,	56154,	'Spencer Tracy','Badger State',	1848,'Robin');


--question1
 select State from Information where Unions between 1850 and 1920;
  select * from Information where Unions between 1850 and 1920;

 --question2
  select state from Information where Area<60000 and Population >10000000;
  select * from Information where Area<60000 and Population >10000000;

  --question3
  create view sorting as select * from Information ;

 select * from sorting order by Population;

   use Famous_sort;