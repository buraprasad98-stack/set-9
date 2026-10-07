DESC Student;
DESC Department;
SHOW COLUMNS FROM Student;
SHOW COLUMNS FROM Department;
SELECT 
    D.Dept_ID,
    D.Dept_Name,
    COUNT(S.Student_ID) AS Number_of_Students
FROM Department D
LEFT JOIN Student S
    ON D.Dept_ID = S.Dept_ID
GROUP BY D.Dept_ID, D.Dept_Name;
DELETE FROM Employee
WHERE Emp_ID = 101;
SELECT * FROM Employee;
SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary,
    MIN(Salary) AS Minimum_Salary,
    MAX(Salary) AS Maximum_Salary
FROM Employee
GROUP BY Department
HAVING AVG(Salary) > 30000;
SELECT Emp_Name
FROM Employee
WHERE Department = 'IT'

UNION

SELECT Emp_Name
FROM Employee
WHERE Department = 'Finance';
SELECT Emp_Name
FROM Employee
WHERE Department = 'IT'
SELECT Emp_Name
FROM Employee
WHERE Salary > 50000;
SELECT Emp_Name
FROM Employee
WHERE Department = 'IT'
SELECT Emp_Name
FROM Employee
WHERE Salary > 50000;