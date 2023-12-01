DELIMITER //
DROP PROCEDURE IF EXISTS Temp_Employee;
CREATE PROCEDURE Temp_Employee()
BEGIN
    -- Check if the temporary table already exists
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'temp_employee') THEN
        -- If it exists, drop it
        DROP TEMPORARY TABLE temp_employee;
    END IF;
    
    -- Create the temporary table
    CREATE TEMPORARY TABLE temp_employee (
        JobTitle VARCHAR(100),
        EmployeesPerJob INT,
        AvgAge INT,
        AvgSalary INT
    );
    
    -- Insert data into the temporary table
    INSERT INTO temp_employee
    SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
    FROM SQLTutorial.EmployeeDemograhics emp
    JOIN SQLTutorial.EmployeeSalary sal ON emp.EmployeeID = sal.EmployeeID
    GROUP BY JobTitle;
END //
DELIMITER ; 
