Use COMPANY;
Select Essn,count(*) from WORKS_ON WHERE Essn=( 
select Mgr_ssn from DEPARTMENT WHERE Dnumber =(
select Dnum from PROJECT
where Pname="ProductY")) GROUP BY Essn;
