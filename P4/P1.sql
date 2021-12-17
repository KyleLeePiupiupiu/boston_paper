use bostonpaper;

/*Problem 1 procedure*/
delimiter //
create procedure emp_info(in emp_number int)
begin
	declare eNumber int;
    declare eName varchar(30);
    declare eSalary int(9);
    
    select emp_number, EmpName, Salary into eNumber, eName, eSalary from EMPLOYEE where EmpNo = emp_number;
    
    select concat(eNumber) as 'Employee Number', 
			concat(eName) as 'Employee Name',
            concat(eSalary) as 'Employee Salary';
            
end //
delimiter ;
drop procedure emp_info;
/*Testing case*/
call emp_info(1);
call emp_info(2);

