CREATE SCHEMA if not exists bostonpaper;
USE bostonpaper;

CREATE TABLE if not exists CUSTOMER(
	CName	VARCHAR(30)		NOT NULL, 
    Address	VARCHAR(100), 
    Phone	varchar(10)		NOT NULL,
    
	PRIMARY KEY(CName)); 

    
CREATE TABLE if not exists PAPER_ORDER(
	OrderNo		INT				NOT NULL, 
    OrderDate	DATE			NOT NULL, 
    Amount		DECIMAL(10, 2)	NOT NULL,
    CName		VARCHAR(30) 	NOT NULL,
    PRIMARY KEY(OrderNo), 
    CONSTRAINT POFK1 FOREIGN KEY (CName) REFERENCES CUSTOMER(CName)
	ON DELETE CASCADE 	ON UPDATE CASCADE);


CREATE TABLE if not exists BRANCH(
	CName		VARCHAR(30)		NOT NULL,
    BrNo		INT				NOT NULL,
    Address		VARCHAR(100), 
    Phone		varchar(10)		NOT NULL, 
    PRIMARY KEY(BrNo, CName), 
    CONSTRAINT BRCFK1	FOREIGN KEY(CName)	REFERENCES CUSTOMER(CName)
    ON DELETE CASCADE		ON UPDATE CASCADE);

    
CREATE TABLE if not exists SUBORDER(
	OrderNo			INT			NOT NULL, 
    SuborderNo		INT			NOT NULL, 
    ReqShipDate		DATE		NOT NULL, 
    ActualShipDate	DATE		NOT NULL, 
    CName			VARCHAR(30)	NOT NULL, 
    BrNo			INT			NOT NULL,
    
    PRIMARY KEY(OrderNo,SuborderNo), 

    CONSTRAINT SUBFK1	FOREIGN KEY(OrderNo) REFERENCES PAPER_ORDER(OrderNo)
    ON DELETE CASCADE		ON UPDATE CASCADE,
    
    CONSTRAINT SUBFK2 	FOREIGN KEY(CName, BrNo) REFERENCES BRANCH(CName, BrNo)
    ON DELETE CASCADE		ON UPDATE CASCADE);
   
    
CREATE TABLE if not exists EMPLOYEE(
	EmpNo			INT 			NOT NULL,
    EmpName			VARCHAR(30)		NOT NULL,
    Address			VARCHAR(50), 
    DOB				DATE			NOT NULL, 
    Class 			VARCHAR(50)		NOT NULL, 
    Salary			DECIMAL(10, 2),
    
    PRIMARY KEY(EmpNo));
    
    
CREATE TABLE if not exists HANDLES(
	EmpNo			INT 			NOT NULL,	
    OrderNo			INT				NOT NULL, 
    
    PRIMARY KEY(EmpNo, OrderNo), 
    
    CONSTRAINT HANDFK1 FOREIGN KEY(EmpNo) REFERENCES EMPLOYEE(EmpNo)
    ON DELETE CASCADE	ON UPDATE CASCADE,
    
    CONSTRAINT HANDFK2	FOREIGN KEY(OrderNo) REFERENCES PAPER_ORDER(OrderNo)
    ON DELETE CASCADE 	ON UPDATE CASCADE);
    
    
CREATE TABLE if not exists PAPER(
	TypeNo			INT			NOT NULL, 
    Size			INT			NOT	NULL,
    Weight			INT 		NOT NULL,
    UnitPrice		INT			NOT NULL,
    
    PRIMARY KEY(TypeNo));
    
    
CREATE TABLE if not exists ORDER_ITEM(
	OrderNo			INT				NOT NULL, 			
    SuborderNo		INT				NOT NULL, 
    TypeNo			INT				NOT NULL, 			
    Quantity		INT				NOT NULL,
    
    PRIMARY KEY(OrderNo, SuborderNo, TypeNo),
    
    CONSTRAINT ODITEMFK1 FOREIGN KEY(OrderNo, SuborderNo) REFERENCES SUBORDER(OrderNo, SuborderNo)
	ON DELETE CASCADE	ON UPDATE CASCADE,
    
    CONSTRAINT ODITEMFK FOREIGN KEY(TypeNo) REFERENCES PAPER(TypeNo)
    ON DELETE CASCADE 	ON UPDATE CASCADE);
    