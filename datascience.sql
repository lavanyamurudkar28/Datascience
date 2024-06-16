create database employee;
use employee;
create table Employee(
empid int,
empname varchar(50),
emp_age int,
emp_address varchar(300)
);
alter table Employee
add column emp_gender boolean;
insert into Employee values (1004, "Riya", 32, "Mumbai");
alter table Employee
modify column emp_gender varchar(12);
create table Emp_backup as 
select * from Employee
create table EmpDetails(
id int,
name vardhar(50)
insert into EmpDetails values(25,'Rishikesh');
select * from EmpDetails;
insert into Employee values(1006, 'Archie',19, 'Pune', 'female');
alter table Employee
drop column emp_gender;
insert into Employee values(1008, 'Priya', 23, 'Mumbai',12000);
alter table Employee 
add column emp_salary int;
insert into Employee values(1009, 'Archie', 23, 'Mumbai',14000);
insert into Employee values(1008, 'Ashutosh', 25, 'Pune',12000);
insert into Employee values(1007, 'Purva', 23, 'Mumbai',12000);
insert into Employee values(1004, 'Rudra', 23, 'Pune',13000);
insert into Employee values(1003, 'Pari', 31, 'Mumbai',15000);
select * from Employee;
select count (empid)
from Employee;
select max(emp_salary)
from Employee;
select * from Employee where emp_salary between 12000 and 15000 and emp_age between 23 and 31;
select * from Employee 
select * from Employee where emp_age>23 and emp_addr ='Pune'; 
select * from Employee where emp_age>23 or emp_addr ='Pune'; 
select empname,emp_addr,emp_age  from Employee where not emp_addr='Mumbai'; 
select empname,emp_addr,emp_age  from Employee where  emp_addr<>'Mumbai';
select empname,emp_salary from Employee order by emp_salary desc;
select empname,emp_salary from Employee order by emp_salary asc;
select empid,empname from Employee group by emp_addr;
select emp_addr,count(empname) from Employee group by emp_addr;
select emp_age,count(empname) from Employee group by emp_age;
select emp_age,count(empname) as count from Employee group by emp_age;
select * from Employee having emp_age=25;
select empname,sum(emp_salary) as total from Employee 
group by empname 
having sum(emp_salary)>=67000
order by emp_salary desc;
create table Emp_detail(
emp_id int,
emp_name varchar(34),
gender varchar(23),
department varchar(256),
education varchar(256),
month_of_joining varchar(256),
salary int
);
insert into Emp_detail values (1001,'Ajay','m','Engineering','doctoral','january',25);
insert into Emp_detail values (1002,'Jayesh','m','Engineering','UG','february',23);
insert into Emp_detail values (1003,'Rutvij','f','hr','PG','march',15);
insert into Emp_detail values (1004,'Dheeraj','m','hr','UG','january',12);
insert into Emp_detail values (1005,'Rishabh','f','marketing','UG','march',16);
insert into Emp_detail values (1006,'Montu','m','Sales','UG','december',10);
insert into Emp_detail values (1007,'Riddhi','f','Sales','UG','march',10);
insert into Emp_detail values (1008,'Shubham','m','Admin','PG','november',8);
insert into Emp_detail values (1009,'Siddhi','f','Admin','intermediate','April',7);
insert into Emp_detail values (1010,'Vishakha','m','peon','10th std','December',4);
select emp_id,emp_name ,department 
from Emp_detail
where education != 'UG'
group by education having sum(salary)>=20;
select emp_name,department,sum(salary) as total
FROM Emp_detail 
group by department 
having total>=15
order by salary desc; 


