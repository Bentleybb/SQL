SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM SQLTutorial.EmployeeDemograhics;

SELECT CONCAT_WS(' ', FirstName, LastName) AS FullName
FROM SQLTutorial.EmployeeDemograhics;

select Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
from SQLTutorial.EmployeeDemograhics as Demo
left join SQLTutorial.EmployeeSalary as Sal
	on Demo.EmployeeID = Sal.EmployeeID
left join SQLTutorial.WareHouseEmployeeDemographics as Ware
    on Demo.EmployeeID = Ware.EmployeeID