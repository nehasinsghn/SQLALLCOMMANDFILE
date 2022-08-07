create table Employee(
Id int,
Name varchar(50),
Email varchar(50),
Comoany varchar(50),
salary int ,
Desig varchar (50));



sp_help Employee;
------------Alter Alter command------
-----it change the data type & size of colomn-------

Alter table Employee Alter column salary varchar(60);
Alter table Employee Alter column salary int;

-----------Alter Add command-------
-------it Add column in table------
Alter table Employee Add  Address varchar(50);

-----------Sp_Rename------
----------it changes column of table------

Sp_Rename "Employee.Id","Employee_Id";

-----------it also changes Table name--------------

sp_rename "Employee", "Emptable" ;

------------Drop Command------------------
------------it delete  column------------

Alter table Emptable Drop column Address;

------------Truncate-------------
-----------it delete all column at time--------
Truncate table Emp;

Sp_help Emptable;

----------------------------------------------------DML COMMAND-------------------------------------------------
Insert into Emptable (
Employee_Id,
Name,
Email,
Comoany,
salary ,
Desig )

values
(1,'Neha Singh','neha@gmail.com','Chetu',200000,'Developer'),
(2,'Nidhi Singh','nidhi@gmail.com','HCL',100000,'trainee'),
(3,'Nikki Singh', 'nikki@gmail.com','TCS',300000,'HR');
------------------Update Command----------------
Update Emptable set salary=400000 where Employee_Id=1;
Update Emptable set Name='Pummy Singh',Email='pummy@gmail.com',Comoany='NA' where Employee_Id=2;

-----------------Delete Command-----------------
Delete from Emptable where Employee_Id=3;
Delete from Emptable ;

--------------------------------------------------------DQL------------------------------------------------------

select * from Emptable;
/*-------------Identity(Seed,Increatemant)-------------
create table StuTable(
Id int Identity,
S_Name varchar(50),
Collage_Name varchar(50),
S_Mobile varchar(50),
S_Email varchar(50),
Dept varchar(50));

Set Identity_Insert StuTable ON
Insert into StuTable(Id ,
S_Name,
Collage_Name ,
S_Mobile ,
S_Email,
Dept)
values
('Neha Singh' ,'BBDEC','6388680486','neha@gmail.com','IT')


Sp_help StuTable
select * from StuTable*/

-------------------------------------Set Operator-------------------------------------------------------------


--------------------------------------Joins----------------------
create table Employees(
Id int primary key,
Employee_Name varchar(50),
Employee_Birth varchar(50),
Dept_Id int);
Insert into Employees(
Id ,
Employee_Name,
Employee_Birth,
Dept_Id )
values
(4,'Abhishek Singh','29/12/1995',28);
(1,'Neha_Singh','03/07/19999',20),
(2,'Sanjeev Singh','03/08/1985',23),
(3,'Deepak Singh','02/10/1988',25);
Select * from Employees;

Create table Department (Id int Foreign key REFERENCES Employees(Id) ,Dept_Name varchar(50));
Alter table Department Alter column Dept_name varchar(50);
--sp_help Department;
 Insert into Department(Id,Dept_Name)
 Values
 (1,'Information Technology'),
 (2,'Maekating Manager'),
 (3,'Electricion');

 --------------Inner Join--------
 Select * from Employees Inner join Department ON Employees.Id=Department.Id;
 --------------Outer left Join------------

  Select * from Employees LEFT OUTER JOIN Department ON Employees.Id=Department.Id;
   -------------------Outer Right JOin---------

Select * from Employees RIGHT OUTER JOIN Department ON Employees.Id=Department.Id;

------------------Cross Join----------
Select * from Employees CROSS JOIN Department; 
---------------EQUI JOIN--------------
Select * from Employees,Department Where Employees.Id=Department.Id;
--------------NON EQUI JOIN-----------
Select * from Employees,Department Where Employees.Id>Department.Id;
-----------------Self Join------------

































 