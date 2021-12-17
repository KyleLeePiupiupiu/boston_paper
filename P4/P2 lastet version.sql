use bostonpaper;
/*p2 procedure*/
delimiter //
create procedure emp_orders(in emp_number int)
begin 

    select concat(EmpName,', ',CName,', ',Amount) as Output
    from HANDLES h, PAPER_ORDER p, EMPLOYEE e
	where p.OrderNo = h.OrderNo and e.EmpNo = h.EmpNo and h.EmpNo = emp_number;
    
end //
delimiter ;
/*testing case*/
call emp_orders(1);
call emp_orders(2);
