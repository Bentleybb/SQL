1. Group By, Order By
select Gender, Age, count(Gender) 
from SQLTutorial.EmployeeDemograhics
group by Gender, Age

或者可以这么写
select Gender, count(Gender) as CountGender
from SQLTutorial.EmployeeDemograhics
where Age > 31
group by Gender
order by CountGender asc 

select *
from SQLTutorial.EmployeeDemograhics
order by Age desc, Gender desc
/order by 4 desc, 5 desc 

2. Joins, Unions, Case Statements, Updating/ Deleting Data, Partition By, Data Types, Aliasing, Creating views, Having vs Group By statement, GETDATE(), Primary Key vs Foreign Key

INSERT INTO SQLTutorial.EmployeeDemograhics (EmployeeID, FirstName, LastName, Age, Gender)
VALUES
     (1011, 'Ryan', 'Howard', 26, 'Male'),
     (NULL, 'Holly', 'Flax', NULL, NULL),
     (1013, 'Darryl', 'Philbin', NULL, 'Male')

INSERT INTO SQLTutorial.EmployeeSalary (EmployeeID, JobTitle, Salary)
VALUES
	  (1010, NULL, 47000),
      (NULL, 'Salesman', 43000)
￼
select */ select EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
from SQLTutorial.EmployeeDemograhics
inner join/ left outer join/ right outer join SQLTutorial.EmployeeSalary
    on EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID
where FirstName <> 'Micheal'
order by Salary desc

select  JobTitle, AVG(Salary)
from SQLTutorial.EmployeeDemograhics
inner join SQLTutorial.EmployeeSalary
    on EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID
where JobTitle = 'Salesman'
order by JobTitle

about union and union all:

CREATE TABLE WareHouseEmployeeDemographics
(EmployeeID int, FirstName varchar(50), LastName varchar(50), Age int, Gender varchar(50))

INSERT INTO SQLTutorial.WareHouseEmployeeDemographics(EmployeeID, FirstName, LastName, Age, Gender)
VALUES
     (1050, 'Roy', 'Anderson', 31, 'Male'),
	 (1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
     (1052, 'Val', 'Johnson', 31, 'Female'),
     (1013, 'Darryl', 'Philbin', NULL, 'Male')


select * 
from SQLTutorial.EmployeeDemograhics
union/ union all
select *
from SQLTutorial.WareHouseEmployeeDemographics