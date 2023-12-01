use SQLTutorial;
create temporary table temp_Employee(-- for SQL server can use 'creat table #temp_Employee'
EmployeeID int,
JobTitle varchar(100),
Salary int)

select * from temp_Employee;

insert into temp_Employee values(
'1001', 'HR', 45000);

insert into temp_Employee
select * from SQLTutorial.EmployeeSalary;