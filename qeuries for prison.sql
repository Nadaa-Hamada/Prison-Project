------------------some qeuries--------------------
--1- تقرير بعدد السجن فى قاعدة البيانات 
select p.prison_Name,count(p.prison_ID) as prisoners_num
from prison p
group by p.prison_Name;
go
--2- تقرير بعدد السجناء فى كل سجن على حسب نوع الحبس ونوع العمل  الذى يقوم بيه السجين 
select pr.PO_Name,s.confinement_type,s.crime_type,p.num_prisoners
from prison p join prisoner pr
on p.PO_ID=pr.PO_ID
join situation_in_prison s
on s.PO_ID=pr.PO_ID
-- 3-تقرير تفاصيلى لكل سجين بالحالة الاجتماعية والصحية والمادية والسياسي4
select pr.PO_Name, m.*
from prisoner pr right join Marital_state m
on pr.PO_ID=m.PO_ID;
go

select pr.PO_Name, h.*,d.diseases
from prisoner pr join Healthy_prisoner hp
on hp.PO_ID=pr.PO_ID
join diseases d
on d.Hs_id=hp.HS_ID
join healthy_state h
on h.HS_ID=hp.HS_ID
go

select pr.PO_Name,f.*,s.wealth_sources
from prisoner pr join financial_state f
on pr.PO_ID=f.PO_ID
join source_wealth s
on s.FS_ID=f.FS_ID
go

select pr.PO_Name,ps.*
from prisoner pr join political_prisoner p
on p.PO_ID=pr.PO_ID
join political_state ps
on ps.PS_ID=p.PS_ID
go
-- تقرير بالسجناء الذين خروجوا كقدوة حسنه خلال مدة معينة
select p.PO_Name,s.date_exit_good_model
from prisoner p join situation_in_prison s
on p.PO_ID=s.PO_ID
go