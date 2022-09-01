USE CUSTOMER_DB;
drop procedure if exists am;
Delimiter $$
Create Procedure am()
begin
     select CUST_NAME,GRADE from customer where (OPENING_AMT + RECEIVE_AMT)>10000;
end $$
Delimiter ;

call am();
