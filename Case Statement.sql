select FirstName, LastName, Age,
case
    when Age > 30 then 'Old'
    when Age between 27 and 30 then 'Young'
    else 'Baby'
end
from SQLTutorial.EmployeeDemograhics
where Age is not null
order by Age;


select FirstName, LastName, JobTitle, Salary,
case
    when JobTitle = 'Salesman' then Salary + (Salary * .10)
    when JobTitle = 'SAccountant' then Salary + (Salary * .05)
    when JobTitle = 'SHR' then Salary + (Salary * .00001)
    else Salary + (Salary * .03)
end as SalaryAfterRaise
from SQLTutorial.EmployeeDemograhics
join SQLTutorial.EmployeeSalary
      on EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID
