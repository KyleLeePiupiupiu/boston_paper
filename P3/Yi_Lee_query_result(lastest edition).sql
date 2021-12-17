#Aditya Malik
USE bostonpaper;

#a)
SELECT OrderNo, OrderDate, Amount FROM paper_order WHERE CName = 'target';

#b)
SELECT e.EmpNo, e.EmpName, Count(*)
FROM handles as  h, employee as e
where h.EmpNo = e.EmpNo
GROUP BY h.EmpNO
HAVING count(OrderNo) >= 2; 

#c)
SELECT BrNo, Address, Phone FROM branch WHERE cname = 'target';

#d)
SELECT s.OrderNo, s.SuborderNo, s.ReqShipDate, s.ActualShipDate, s.CName, s.BrNo, e.EmpName 
FROM suborder s, employee e, handles h
WHERE s.ActualShipDate > s.ReqShipDate AND s.OrderNo = h.OrderNo AND e.EmpNo = h.EmpNo;

#e)
SELECT b.CName, b.BrNo, b.Address, b.Phone, s.ActualShipDate FROM branch b, suborder s
WHERE s.CName = b.CName AND s.BrNo = b.BrNo AND (s.ActualShipDate BETWEEN '2021-11-01' and '2021-12-01');













