create database PBL;
use PBL;
create table project(Pid int primary key,Pname varchar(255),tech varchar(255),startdate date,no_of_stud int);

insert into project(Pid,Pname,tech,startdate,no_of_stud) values(1,"abc","NLP","2002-03-11",5);
insert into project(Pid,Pname,tech,startdate,no_of_stud) values(7,"def","ML","2002-03-1",6);
insert into project(Pid,Pname,tech,startdate,no_of_stud) values(4,"xyz","ML","2002-03-14",2);
insert into project(Pid,Pname,tech,startdate,no_of_stud) values(11,"lmn","IOT","2002-03-08",5);
insert into project(Pid,Pname,tech,startdate,no_of_stud) values(9,"pqr","WT","2002-03-12",3);
insert into project(Pid,Pname,tech,startdate,no_of_stud) values(3,"mnp","IOT","2002-03-11",2);

alter table project 
add column guide_name varchar(255);

update project set guide_name="g1" where Pid="1";
update project set guide_name="g3" where Pid="7";
update project set guide_name="g2" where Pid="11";
update project set guide_name="g1" where Pid="4";
update project set guide_name="g3" where Pid="9";
update project set guide_name="g2" where Pid="3";

select Pid,Pname,tech,startdate,no_of_stud,guide_name
from project
order by Pid,Pname,tech,startdate,no_of_stud,guide_name asc;

select MIN(no_of_stud) from project;

select SUM(no_of_stud) from project;

select Pid,guide_name from project where guide_name="g1";

select Pid,guide_name from project where guide_name="g2";

select Pid,guide_name from project where guide_name="g3";
