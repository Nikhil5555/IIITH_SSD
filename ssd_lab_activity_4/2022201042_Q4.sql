USE CUSTOMER_DB;
delimiter $$
drop procedure if exists p;
create procedure p()
begin
     declare c_name varchar(50);
     declare c_city varchar(50);
     declare c_country varchar(50);
     declare c_grade varchar(50);
     declare c_finished integer default 0;
     declare c cursor for select CUST_NAME,CUST_CITY,CUST_COUNTRY,GRADE from customer where AGENT_CODE LIKE "A00%" ;
     declare continue handler for NOT FOUND set c_finished=1;
     open c;
     get_agent: LOOP
     fetch  c into c_name,c_city,c_country,c_grade;
     if c_finished=1 then
         leave get_agent;
     end if;
     select concat(c_name,'-',c_city,'-',c_country,'-',c_grade);
     END LOOP get_agent;
     close c;
     End $$
     
call p();
