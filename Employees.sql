create database company;

Create Table Employees
(
Emp_ID int Primary Key ,
Emp_Name varchar (50) Not Null ,
Salary money Not Null ,
FUN varchar (20) Not Null ,
Phone varchar (20) ,
Address nvarchar (50) Not Null ,
);

select * from Employees

Insert Into Employees
Values
('1','omar','3000','sales','0112','cairo'),
('2','amal','5000','marketing',null,'giza'),
('3','mona','6000','services','014255','nasrcity'),
('4','hamza','3500','sales','02145','6october'),
('5','ali','4000','services',null,'zamlek'),
('6','alia','3000','sales','01205','6october'),
('7','zeinab','7000','finance','02154','giza'),

('8','aly','4500','marketing',null,'cairo');

Select Emp_ID , Emp_Name , Salary
From Employees ;
------------------------------------------
Select Emp_ID , Emp_Name , Salary
From Employees
Where Emp_ID = 3 ;
-----------------------------------------
Select* From Employees
Where Salary >= 5000 ;
-----------------------------------------
Select Emp_ID , Emp_Name , Salary
From Employees
Where Emp_ID = '3' and Emp_Name = 'Hamza' ;
----------------------------------------
Select Emp_ID , Emp_Name , Salary
From Employees
Where Emp_ID = 5 or Salary > 5000 ;
-----------------------------------------
Select Emp_ID , Emp_Name , Salary
From Employees
Where Emp_ID = 5 OR Salary >= 5000 ;
------------------------------------------
Select Emp_ID , Emp_Name , Salary
From Employees
Where Emp_ID IN (1 , 3 , 5) ;
--------------------------------------
Select *
From Employees
Where Emp_Name not IN ('Ali' , 'Omar' , 'Amal') ;
-----------------------------------------------
Select *
From Employees
Where Emp_Name Like 'A%' ;
--------------------------------------------
Select *
From Employees
Where Emp_Name Like 'Z%B' ;
--------------------------------------------
Select *
From Employees
Where Emp_Name Like 'Al_' ;
-----------------------------------------
Select Emp_Name , FUN , Address , phone
From Employees
Where Phone Is Null ;
-----------------------------------------

Select Emp_Name , FUN , Phone , Address
From Employees
Where Phone Is Not Null ;
-------------------------------------
Select Emp_ID , Emp_Name , Salary
From Employees
Where Salary Between 4000 And 6000 ;