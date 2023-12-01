DELIMITER //

CREATE PROCEDURE Temp_Employee()
BEGIN
    CREATE TEMPORARY TABLE temp_employee (
        JobTitle VARCHAR(100),
        EmployeesPerJob INT,
        AvgAge INT,
        AvgSalary INT
    );
    
    INSERT INTO temp_employee
    SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
    FROM SQLTutorial.EmployeeDemograhics emp
    JOIN SQLTutorial.EmployeeSalary sal ON emp.EmployeeID = sal.EmployeeID
    GROUP BY JobTitle;
END //

DELIMITER ;
