use bostonpaper;

/*p3 function*/
delimiter //
create function get_phone(cust_name varchar(30), branch_number int) returns varchar(10) deterministic
begin
	declare br_phone varchar(10);
    
    select Phone into br_phone
    from BRANCH
    where CName = cust_name and BrNo = branch_number;
    
    return br_phone;
end //
delimiter ;


/*Testing*/
select get_phone('costco', 1) as 'Costco branch 1';
select get_phone('starMarket',2) as 'StarMarket branch 2';