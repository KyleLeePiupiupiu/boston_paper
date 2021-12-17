use bostonpaper;

/*p5 triggers*/
delimiter //
create trigger date_inconsistency before insert on SUBORDER for each row
begin
    declare oDate date;
    
    select p.OrderDate into oDate
    from PAPER_ORDER p
    where p.OrderNo = new.OrderNo;
    
    if new.ReqShipDate < oDate then
		SIGNAL SQLSTATE '45000' set message_text = 'Required shipping date can not be earlier than order date';
	end if;
    
end //
delimiter ;

/*Testing case*/
/*delete one tuple first*/
delete from SUBORDER where OrderNo = 1 and SuborderNo = 1;
insert into SUBORDER values (1,1,'2021-11-01','2021-11-01','target',1);/*successful case*/

delete from SUBORDER where OrderNo = 1 and SuborderNo = 1;
insert into SUBORDER values (1,1,'2000-11-01','2000-11-01','target',1); /*Fail case*/
