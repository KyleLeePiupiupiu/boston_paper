use bostonpaper;

/*p4 trigger*/
delimiter //
create trigger max_emp before insert on HANDLES for each row
begin

	declare nOrder int;
    select count(*) into nOrder from HANDLES where OrderNo = new.OrderNo
    group by OrderNo;
    
    if nOrder >= 2 then
		signal SQLSTATE '45000' set message_text = 'An order can be handled by at most two employee';
	end if;
    
end //
delimiter ;

/*testing*/
/* we need to insert one more tuple in PAPER_ORDER before we do test*/
delete from PAPER_ORDER where OrderNo = 6;
insert into PAPER_ORDER values (6,'2021-10-05', 200,'costco'); /*creating new order*/

insert into HANDLES values(1,6); /*succcessful case*/
insert into HANDLES values(2,6); /*succcessful case*/
insert into HANDLES values(3,6); /*violation case*/
