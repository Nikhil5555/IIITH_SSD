use COMPANY;
Select Dlocation from DEPT_LOCATIONS where Dnumber IN(
Select Dnumber from DEPARTMENT where Mgr_ssn in 
(Select Essn from DEPENDENT WHERE Sex='F' Group by Essn having count(*)>1));
