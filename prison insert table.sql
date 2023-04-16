--------------insert values to database--------------------
use prisoner_project

-----------insert prsion table-----------------------
insert into prison(prison_ID ,prison_Name ,prison_Address ,num_prisoners ,PO_ID)
values(100,'alex prison','alex',1000,203010),
(101,'cairo Prison','cairo',2000,203011),
(102,'giza prison','giza',2500,203012),
(103,'Qena prison','qena',3000,203013),
(104,'luxor prison','luxor',2600,203014),
(105,'menofia prison','menofia',500,203015),
(106,'minia prison','minia',4000,203016),
(107,'assuit prison','assuit',550,203017),
(108,'Mansoura prison','mansoura',700,203018),
(109,'aswan prison','aswan',800,203019)
--------------------insert prisoner table---------------
insert into prisoner(PO_ID ,PO_Name ,PO_Age ,PO_Address)
values(203010,'nada hamada',19,'qena'),
(203011,'noor hamada',10,'cario'),
(203012,'hossam hamada',21,'alx'),
(203013,'shreen hamdy',25,'assuit'),
(203014,'rofida khaled',30,'mansoura'),
(203015,'manar abdlhak',33,'aswan'),
(203016,'Mohammed hamada',23,'mina'),
(203017,'ali mahmoud',35,'luxor'),
(203018,'ahmed ali',27,'menofia'),
(203019,'shimaa',30,'qena')
--------------insert situation in peison--------------------
insert into situation_in_prison(SIN_ID ,PO_ID ,Recipient_Name ,crime_type ,Date_recieved ,date_exit ,date_exit_good_model,confinement_type)
values(2010,203010,'mahmed ahmed','drugs','2008-11-11','2004-11-2','2008-12-12','anbar'),
(2011,203011,'nda hamda','killing','2020-3-1','2008-11-11','2020-10-1','solarity'),
(2012,203012,'manar','drugs','2020-3-4','2023-20-3','2004-12-12','anbar'),
(2013,203013,'ahmed','killing',	'2008-11-09','2009-2-3','2020-2-3','solarity'),
(2014,203014,'fatma','mounments','	2008-11-09','2009-2-3','2008-11-09','anbar'),
(2015,203015,'ali','stealing','2009-2-3','2009-2-3','2009-2-3','anbar'),
(2016,203016,'hossam','forgery','2009-2-3','2020-12-12','2009-12-12','solarity'),
(2017,203017,'mahmoud','weapon','2020-2-3','2004-12-12','2004-12-12','anbar'),
(2018,203018,'shreen','political','2020-2-3','2023-20-3','2000-10-11','solarity'),
(2019,203019,'rofida','drugs','2020-2-3','2023-20-3','2023-10-12','anbar')
---------------insert crime description------------------
insert into crime_description(SIN_ID ,crime_decription)
values(2010,'he sell drugs to people and take from them alot of money'),
(2011,'he killing his friend in the theater of the war 12/12/2021'),
(2012,'he sell drugs to people and take from them alot of money'),
(2013,'he killing his brother 20/1/2021'),
(2014,'he sell mounents to people and take from them alot of money'),
(2015,'he steal money from bank 30/10/2022'),
(2016,'he forgery money for people '),
(2017,'he sell drugs to people and take from them alot of money')
-------------insert political--------------------
insert into political_state(PS_ID ,Reasons_imprisonment ,Member_securit_organization)
values(001,'attacking the country','yes'),
(002,'spreading false rumors about the country','yes'),
(003,'attacking the country','NO'),
(004,'spreading false rumors about the country','yes'),
(005,'attacking the country','NO'),
(006,'attacking the country','yes'),
(007,'spreading false rumors about the country','yes'),
(008,'attacking the country','yes'),
(009,'spreading false rumors about the country','yes'),
(0010,'spreading false rumors about the country','yes')
--------------------political prisoner--------------------------
insert into political_prisoner(PS_ID,PO_ID)
values(001,203010),
(002,203011),
(003,203012),
(004,203013),
(005,203014),
(006,203015),
(007,203016),
(008,203017),
(009,203018),
(0010,203019)
-----------------------Healthy state----------------
insert into healthy_state(HS_ID,current_state)
values(1020,'he has diabetes'),
(1030,'he suffers from pain in his heart'),
(1040,'he has cancer'),
(1050,'he has diabetes'),
(1060,'he has preaseure'),
(1070,'he has impairment of immunity'),
(1080,'he has cancer'),
(1090,'he has impairment of immunity'),
(1000,'he has diabetes'),
(1001,'he has preaseure')
-------------------health prisoner------------------
insert into Healthy_prisoner(HS_ID,PO_ID)
values(1020,203010),
(1030,203011),
(1040,203012),
(1050,203013),
(1060,203014),
(1070,203015),
(1080,203016),
(1090,203017),
(1000,203018),
(1001,203019)
--------------------healthy diseases-----------------------
insert into diseases(Hs_id,diseases)
values(1020,'{diabetes-flue-cancer}'),
(1030,'{diabetes-flue-cancer}'),
(1040,'{heart-flue-cancer}'),
(1050,'{high blood preasure-flue-cancer}'),
(1060,'{diabetes-weakness-cancer}'),
(1070,'{diabetes-flue-cancer}'),
(1080,'{diabetes-flue-cancer}'),
(1090,'{diabetes-flue-cancer}'),
(1000,'{diabetes-flue-cancer}'),
(1001,'{diabetes-flue-cancer}')
------------------criminal state-------------------------
insert into criminal_state(CS_ID,PO_ID ,previous_issues ,details , judgment_time ,current_issue)
values(50300,203010,'[drugs,killing]','killing his friend and sell drugs','20/10/2015','druge'),
(50400,203011,'[drugs,killing]','killing his friend and sell drugs','11/10/2016','killing'),
(50500,203012,'[drugs,killing]','killing his friend and sell drugs','20/11/2018','druge'),
(50600,203013,'[drugs,killing]','killing his friend and sell drugs','3/2/2010','killing'),
(50700,203014,'[drugs,killing]','killing his friend and sell drugs','4/1/2020','druge'),
(50800,203015,'[drugs,killing]','killing his friend and sell drugs','30/5/2021','killing'),
(50900,203016,'[drugs,killing]','killing his friend and sell drugs','22/6/2022','druge'),
(50100,203017,'[drugs,killing]','killing his friend and sell drugs','9/12/2023','killing'),
(50310,203018,'[drugs,killing]','killing his friend and sell drugs','10/7/2019','druge')
---------------------financial state--------------------------------------
insert into financial_state( FS_ID,Class,PO_ID)
values(1000,'heigh',203010),
(1001,'heigh',203011),
(1002,'middel',203012),
(1003,'lower',203013),
(1004,'heigh',203014),
(1005,'middel',203015),
(1006,'lower',203016),
(1007,'heigh',203017),
(1008,'middel',203018),
(1009,'lower',203019)
---------------------source_of_wealth----------------------------
insert into source_wealth(FS_ID, wealth_sources)
values(1000,'his job'),
(1001,'drug dealer'),
(1002,'forbidden'),
(1003,'mounments'),
(1004,'his job'),
(1005,'drug dealer'),
(1006,'his father'),
(1007,'his job'),
(1008,'stealing'),
(1009,'forgery')
------------------insert marital state-------------------
insert into Marital_state(MS_ID, PO_ID , single_or_married , family_number , reputation,behavior)
values(30030,203010,'single',10,'not good','not good'),
(30040,203011,'married',5,'not good','not good'),
(30050,203012,'single',10,' good',' good'),
(30060,203013,'married',10,'not good','not good'),
(30070,203014,'single',10,' good',' good'),
(30080,203015,'married',10,'not good','not good'),
(30090,203016,'single',10,' good',' good'),
(30020,203017,'married',10,'not good','good')
--------------------------insert visitor---------------------------
insert into visitor(VS_ID,VS_Name ,VS_Address ,VS_kinship_type ,VS_SEX ,VS_Phone)
values(4010,'kirlus','qena','brother','Male','01121536262'),
(4011,'nada','mina','sister','famele','01089936262'),
(4012,'ali','mansoura','friend','Male','0101043788'),
(4013,'hamada','luxor','ancle','Male','01022273635'),
(4014,'fatma','giza','mother','famele','012246387'),
(4015,'mahmmed','cairo','father','Male','0156737389'),
(4016,'hossam','alx','cousin','Male','010103040'),
(4017,'manar','qena','friend','female','0123673737')
--------------------prisoner visitor--------------------------
insert into prisoner_visitor(VS_ID, PO_ID , visiting_time)
values(4010,203010,'20/20/2018 6:00'),
(4011,203011,'20/1/2018 6:00'),
(4012,203012,'3/1/2020 3:30'),
(4013,203013,'22/9/2017 4:00'),
(4014,203014,'4/1/2015 4:20'),
(4015,203015,'20/2/2018 6:00'),
(4016,203016,'30/12/2023 7:23'),
(4017,203017,'7/7/2021 5:40')
------------------------visitor prison--------------------
insert into visitor_prison(VS_ID,prison_ID)
values(4010,100),
(4011,101),
(4012,102),
(4013,103),
(4014,104),
(4015,105),
(4016,106),
(4017,107)
------------------------insert professional state------------------
insert into professional_state( PS_ID,job_Name ,job_type ,job_address ,job_startDate ,job_endDate)
values(6010,'doctor','full','qena','20/20/2015','20/20/2030'),
(6011,'teacher','full','luxor','20/20/2015','20/20/2030'),
(6012,'doctor','part','cario','20/20/2015','20/20/2030'),
(6013,'theft','full','qena','20/20/2015','20/20/2030'),
(6014,'employee','part','alx','20/20/2015','20/20/2030'),
(6015,'unemployed','full','qena','20/20/2015','20/20/2030')
------------------prisoner job-------------------------------------
insert into prisoner_job( PS_ID ,PO_ID)
values(6010,203010),
(6011,203011),
(6012,203012),
(6013,203013),
(6014,203014),
(6015,203015)
------------------------------insert scientific state--------------------------
insert into scientific_state( SS_ID , Degree,continue_to_study)
values(400,'student','yes'),
(401,'student','no'),
(402,'student','yes'),
(403,'PHD','no'),
(404,'student','yes'),
(405,'master','no'),
(406,'PHD','yes'),
(407,'student','no'),
(408,'master','yes'),
(409,'student','no')
----------------------insert Qualifications-------------------------
insert into Qualifications( SS_ID, Qualifications)
values(400,'student-markter-leader'),
(401,'master-graphciar-leader'),
(402,'student-markter-communication skills'),
(403,'PHD-markter-leader'),
(404,'unemployed-markter'),
(405,'student-flutter'),
(406,'PHD-markter-leader'),
(407,'unemployed-markter'),
(408,'student-flutter')
------------------insert scientific prisoner-----------------------
insert into scientific_prisoner(SS_ID,PO_ID)
values(400,203010),
(401,203011),
(402,203012),
(403,203013),
(404,203014),
(405,203015)
---------------------Thanks--------------------------------------







