Delimeter $$
CREATE procedure Addition(
num1 int,
num2 int,
OUT sum int 
)
BEGIN
     SET sum=num1 + num2
End $$
Delimiter ;


set @sum=0;
call Addition(6,4,@sum);
select @answer;

