-----------Nada Hamada------------------------------
------------prison table-------------------------
create table prison(
prison_ID int primary key,
prison_Name nvarchar(100),
prison_Address nvarchar(100),
num_prisoners int,
PO_ID int);
---------prisoner table----------------
create table prisoner(
PO_ID int primary key,
PO_Name nvarchar(100),
PO_Age int,
PO_Address nvarchar(100)
);
----------situation in prison-------------
create table situation_in_prison(
SIN_ID int primary key,
PO_ID INT,
Recipient_Name nvarchar(100),
crime_type nvarchar(255),
Date_recieved date,
date_exit date,
date_exit_good_model date,
);
alter table situation_in_prison
add confinement_type nvarchar(50);

-----------crime Description-----------
create table crime_description(
SIN_ID int primary key,
crime_decription nvarchar(255)
);
--------political state-----------------
create table political_state(
PS_ID INT PRIMARY KEY,
Reasons_imprisonment nvarchar(255),
Member_securit_organization nvarchar(255)
);
---------political prisoner-------------
create table political_prisoner(
PS_ID INT PRIMARY KEY,
PO_ID INT);
--------healthy state------------------
create table healthy_state(
HS_ID INT PRIMARY KEY,
current_state nvarchar(255),
);
  -------- create diseases table ----------------------
  create table diseases
  (
  Hs_id int primary key,
  diseases NVARCHAR(255)
  );
  ------------Healthy_prisoner----------------
  create table Healthy_prisoner(
  HS_ID int primary key,
  PO_ID int
  );
  ------------criminal state----------------
  create table criminal_state(
  CS_ID INT PRIMARY KEY,
  PO_ID INT,
  previous_issues nvarchar(255),
  details nvarchar(255),
  judgment_time time,
  current_issue nvarchar(255)
  );
  ----------------financial state----------------
  create table financial_state(
  FS_ID INT PRIMARY KEY,
  Class nvarchar(100),
  PO_ID INT);
  ----------------source_wealth-------------
  create table source_wealth(
  FS_ID INT PRIMARY KEY,
  wealth_sources nvarchar(255)
  );
  ---------Marital state--------------------
  create table Marital_state(
  MS_ID INT PRIMARY KEY,
  PO_ID INT,
  single_or_married nvarchar(50),
  family_number int,
  reputation nvarchar(255));

  alter table Marital_state
  add behavior nvarchar(255);
  --------------visitor---------------------
  create table visitor(
  VS_ID INT PRIMARY KEY,
  VS_Name nvarchar(255),
  VS_Address nvarchar(255),
  VS_kinship_type nvarchar(255),
  VS_SEX nvarchar(50),
  VS_Phone nvarchar(255));

  ALTER TABLE visitor
DROP COLUMN behavior;
  
  --------------prisoner visitor-----------------
  create table prisoner_visitor(
  VS_ID INT primary key,
  PO_ID INT,
  visiting_time date
  );
   -------- create visitor_prison table---------------------- 
  create table visitor_prison
  (
  VS_ID int primary key,
  prison_ID int
  
  );
  --------------professional state-----------------
  create table professional_state(
  PS_ID INT PRIMARY KEY,
  job_Name nvarchar(255),
  job_type nvarchar(50),
  job_address nvarchar(100),
  job_startDate date,
  job_endDate date
  );
  --------prisoner job---------------
  create table prisoner_job(
  PS_ID INT PRIMARY KEY,
  PO_ID INT
  );
  --------------Scientific state--------------
  create table scientific_state(
  SS_ID INT PRIMARY KEY,
  Degree nvarchar(255),
  continue_to_study nvarchar(50)
  );
  -----------------Qualifications---------------
  create table Qualifications(
  SS_ID INT PRIMARY KEY,
  Qualifications nvarchar(255)
  );
  ---------------scientific prisoner------------------
  create table scientific_prisoner(
  SS_ID INT PRIMARY KEY,
  PO_ID INT);
  






