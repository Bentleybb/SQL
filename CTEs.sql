with CTE_Employee as 
(select FirstName, LastName, Gender, Salary,
count(Gender) over (partition by Gender) as TotalGender,
avg(Salary) over (partition by Gender) as AvgSalary
from SQLTutorial.EmployeeDemograhics Emp
join SQLTutorial.EmployeeSalary Sal
    on Emp.EmployeeID = Sal.EmployeeID
where Salary > '45000')
select FirstName, AvgSalary
from CTE_Employee;
