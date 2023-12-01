create table EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50));

insert into EmployeeErrors values
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired');

select * from EmployeeErrors;

-- using Trim, Ltrim, Rtrim
select EmployeeID, trim(EmployeeID) as IDTRIM
from EmployeeErrors;

select EmployeeID, ltrim(EmployeeID) as IDTRIM
from EmployeeErrors;

select EmployeeID, rtrim(EmployeeID) as IDTRIM
from EmployeeErrors;

-- using Replace
select LastName, replace(LastName, '- Fired', '') as LastNameFixed
from EmployeeErrors;

-- using Substring
select substring(FirstName, 1, 3)
from EmployeeErrors;

select err.FirstName, substring(err.FirstName, 1, 3), dem. FirstName, substring(dem. FirstName, 1, 3)
from EmployeeErrors err
join EmployeeDemograhics dem
    on substring(err.FirstName, 1, 3) = substring(dem. FirstName, 1, 3);
-- normally, we won't substring on name, usually do on Gender, LastName, Age, DateOfBirth

-- Using Upper, Lower
select FirstName, lower(FirstName)
from EmployeeErrors;

select FirstName, upper(FirstName)
from EmployeeErrors;