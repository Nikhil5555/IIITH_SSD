USE CUSTOMER_DB;
drop procedure if exists city;
Delimiter $$
Create Procedure city( c varchar(50))
Begin
    Select CUST_NAME FROM customer where WORKING_AREA=c;
END $$
Delimiter ;

call city('Bangalore');
