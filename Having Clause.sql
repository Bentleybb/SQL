select JobTitle, avg(Salary)
from SQLTutorial.EmployeeDemograhics
join SQLTutorial.EmployeeSalary
    on EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle
having avg(Salary) > 45000
order by avg(Salary)