CREATE database SAMARTH;
USE SAMARTH;
CREATE TABLE Employeetable(Eid int primary key,Ename varchar(255),Address varchar(255),Salary int,Comission int);

INSERT into Employeetable(Eid,Ename,Address,Salary,Comission) values(1,"Amit","Pune",35000,5000);
INSERT into Employeetable(Eid,Ename,Address,Salary,Comission) values(2,"Sneha","Pune",25000,0);
INSERT into Employeetable(Eid,Ename,Address,Salary,Comission) values(3,"Savita","Nashik",28000,2000);
INSERT into Employeetable(Eid,Ename,Address,Salary,Comission) values(4,"Pooja","Mumbai",19000,0);
INSERT into Employeetable(Eid,Ename,Address,Salary,Comission) values(5,"Sagar","Mumbai",25000,3000);

CREATE TABLE Project_table(PrNo int primary key,Addr varchar(255));

INSERT into Project_table(PrNo,Addr) values(10,"Mumbai");
INSERT into Project_table(PrNo,Addr) values(20,"Pune");
INSERT into Project_table(PrNo,Addr) values(30,"Jalgoan");

SELECT * from Employeetable;
SELECT * from Project_table;

SELECT DISTINCT Address from Employeetable;

SELECT MAX(Salary) from Employeetable;

SELECT MIN(Salary) from Employeetable;

SELECT Eid,Ename,Address,Salary,Comission
from Employeetable
Order by Salary ASC;
