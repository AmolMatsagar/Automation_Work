Create database Company;

Create table Employee(
EmpId int not null,
FName varchar(20),
LName varchar(20),
Age int(10),
EmailId varchar(20),
PhoneNo int(10),
Address varchar(20)
);
select * from employee;
insert into employee values(1,'amol','Matsagar',23,'amol@123',755878,'Jarul');
insert into employee values(2,'atul','Patil',26,'atul@abc.com',3543553,'Pune');
insert into employee values(3,'Ravi','Raut',20,'ravi@bhs.com',967302,'Nashik');
insert into employee values(4,'Raj','Shete',33,'R@infy.com',839282,'Ravet');
insert into employee values(5,'Meriko','Miyamoto',21,'meriko@inft.com',7232567,'Vadgav');


update employee set LName='Mats' where EmpId=1;

Alter table employee
Add Salary float(10);

insert into employee values(6,'Mrunaal','Angholkar',34,'Mrunall@infy.com',7232567,'Solapur',5000);
insert into employee values(7,'Mrinalini','Patil',34,'Mrunalini@infy.com',3672672,'Aurangabad',6000);
insert into employee values(8,'Hrutik','Dhage',null,'hrutik@gmail.com','28328391','Pune',60000);

Delete from employee where EmpId=7;

Delete from employee where Salary=5000;

select *from employee order by EmpId Asc;



Select count(Age) from employee;
Select avg(Salary) from employee;
select sum(Salary) from employee;
select min(Salary) from employee;
select max(Salary) from employee;

Select *from employee where FName LIKE 'a%';
Select Fname,Lname from employee order by FName,LName ASC;

Select count(Age), Salary from employee group by Salary;

Create table Project(
ProjId int(10) not Null,
EmpId int not null,
ProjName varchar(20),
ProjStartDate date
);
use company;

Select *from project;

select ProjId , EmpId ProjName,ClientId from project where ClientId in ( select ClientId from project where ClientId=2);

insert into Project values(111,1,'Project1');
insert into Project values(222,2,'Project2');
insert into Project values(333,3,'Project3',2);
insert into Project values(444,3,'Project3',5);
insert into Project values(555,5,'Project5',9);
insert into Project values(666,9,'Project6',2);
insert into Project values(777,7,'Project7',1);
insert into Project values(888,8,'Project8',8);
insert into Project values(999,9,'Project8',8);

insert into Project (ProjId,EmpId,ProjName,ClientId) 
Select *
from Project
where ProjId=111;

/*Alter table project
Drop column ProjStartDate;

Alter table project
Add ClientId int(10);
*/
delete from project where ProjId=999;

Select employee.EmpId,employee.FName,employee.LName, project.ProjId,project.ProjName
From employee
Inner join project
on employee.EmpId=project.EmpId;

Select employee.FName,employee.LName, project.ProjId,project.ProjName
From employee
Left join project
on employee.EmpId=project.EmpId
Union
Select employee.FName,employee.LName, project.ProjId,project.ProjName
From employee
Right join project
on employee.EmpId=project.EmpId;

select count(EmpId),age
from employee
group by age;

select *from employee 
where EmpId between 1 and 5;

select *from employee
where LName in('Mats','Patil');

select fname from employee
union 
select ProjId from project;

Select *Into MyDetail from project;

show databases;