USE bostonpaper;
/*insert 3 tuples in the Customer*/
INSERT INTO customer
VALUES	('target','1000 Nicollet Mall, Minneapolis, MN 55403','6661231231'),
		('starMarket','1065 Commonwealth Avenue, Boston, MA 02215','8881231231'),
        ('costco','999 Lake Dr, Issaquah, WA 98027','7771231231');
        
/*insert 5 tuples in the paper_order*/
INSERT INTO PAPER_ORDER
VALUES	(1,'2021-10-01', 300,'target'), 
		(2,'2021-10-02', 500,'target'),
        (3,'2021-10-03', 300,'starMarket'),
        (4,'2021-10-04', 400,'starMarket'), 
        (5,'2021-10-05', 200,'costco');

/*insert at least 10 tuples in the branch*/
INSERT INTO BRANCH
VALUES	('target', 1,'370 Western Ave, Brighton, MA 02135','6667897897'), 
		('target',2,'1717 Beacon St, Brookline, MA 02445','6664564564'), 
		('target',3,'33 Kilmarnock St, Boston, MA 02215','6667778899'), 
        ('target',4,'53 Huntington Ave, Boston, MA 02199','6669998899'), 
        ('starMarket',1,'90 Causeway St, Boston, MA 02114','8881112323'), 
        ('starMarket',2,'275 Beacon St, Somerville, MA 02143','8884445656'), 
        ('starMarket',3,'1 Boylston St, Chestnut Hill, MA 02467','8887778989'), 
        ('starMarket',4,'49 White St, Cambridge, MA 02140','8884566656'), 
        ('costco',1,'45 Morrissey Blvd, Dorchester, MA 02125','7778889898'), 
        ('costco',2,'4 River St, Dorchester, MA 02124','7778580000'), 
        ('costco',3,'90 Causeway St, Boston, MA 02114','7770001232'), 
        ('costco',4,'2 Mystic View Rd, Everett, MA 02149','7774565522');
        
/*insert at least 10 tuples in the suborder*/
INSERT INTO SUBORDER
VALUES	(1,1,'2021-11-01','2021-11-01','target',1),
		(1,2,'2021-11-01','2021-11-02','target',2),
        (2,1,'2021-11-05','2021-11-05','target',3),
        (2,2,'2021-11-05','2021-11-05','target',4),
        (3,1,'2021-11-20','2021-11-21','starMarket',1),
        (3,2,'2021-11-20','2021-11-23','starMarket',2),
        (4,1,'2021-11-25','2021-11-26','starMarket',3),
        (4,2,'2021-11-25','2021-11-23','starMarket',4),
        (5,1,'2021-11-26','2021-11-26','costco',1),
        (5,2,'2021-11-26','2021-11-20','costco',3);

/*insert 5 tuples in the employee*/
INSERT INTO EMPLOYEE
VALUES	(1, 'Aditya', '304 Western Ave, Boston, MA 02135', '1998-03-24', 'assistant', 2000),
		(2, 'Kyle', '56 Harvard Ave, Allston, MA 02134', '1995-02-20', 'assistant', 1500),
        (3, 'Lee', '420 Harvard St, Brookline, MA 02446', '1985-02-25', 'associate', 1200), 
        (4, 'Malik', '1002 Beacon St, Brookline, MA 02446', '1970-05-20', 'associate', 1600), 
        (5, 'Pitbull', '1700 Beacon St, Brookline, MA 02446', '1966-04-04', 'associate', 1800), 
        (6, 'Doug', '100 Kirkland St, Cambridge, MA 02138', '1995-04-11', 'manager', 3000);

/*insert at least 10 tuples in the handles*/
INSERT INTO HANDLES
VALUES	(1,1), 
		(1,2), 
        (2,1), 
        (2,2),
        (3,3),
        (3,1),
        (4,4),
        (4,1),
        (5,5),
        (5,1),
        (6,2),
        (6,3),
        (1,4),
        (1,5),
        (4,5);
        
/*insert 4 tuples in the paper*/
INSERT INTO PAPER
VALUES	(1,10,100,11),
		(2,20,200,12),
        (3,30,300,13),
        (4,40,400,14);
        
/*insert at least 15 tuples in the order_item*/
INSERT INTO ORDER_ITEM
VALUES 	(1,1,1,100),
		(1,1,2,100),
        (1,2,3,100),
        (2,1,1,100),
        (2,1,2,100),
        (2,1,3,100),
        (2,2,1,200),
        (3,1,2,100),
        (3,1,3,200),
        (4,1,1,100),
        (4,1,2,100),
        (4,1,3,100),
        (4,2,3,100),
        (5,1,1,100),
        (5,2,2,100);

