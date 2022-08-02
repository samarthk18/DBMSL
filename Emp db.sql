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

SELECT Ename
from Employeetable
where address in("Pune","Nashik");

SELECT Ename from Employeetable
where Comission=0;

Update Employeetable set Address="Nashik" where Ename="Amit";

SELECT Eid,Ename,Address,Salary,Comission
from Employeetable
Where Ename like 'A%';

Select Count(Ename) from Employeetable where address="Mumbai";

Select Address,Count(Ename) from Employeetable group by address;

Select Address from Employeetable
UNION 
Select Addr from Project_table;

Select Address,min(Salary) from Employeetable group by address;

Select Address,max(Salary) from Employeetable group by address having max(salary)>26000;

Delete from Employeetable where Salary>30000;

Select * from Employeetable;
