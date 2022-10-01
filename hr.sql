
-- An HR of the company wants to extract, update, and delete employee details to maintain their records.
-- Objective:
-- The database design helps to calculate the monthly payroll of each employee efficiently.
-- Task to be performed:                               
-- Write a query to create an employee table with the fields employee id, first name, last name, job id, salary, manager id, and department id.
CREATE DATABASE Employee;

USE Employee;

CREATE TABLE Employee_Table(
emp_id int NOT NULL,
f_name varchar(20) NOT NULL,
l_name varchar(20) NOT NULL,
job_id varchar(20) NOT NULL,
salary int NOT NULL,
manager_id int NOT NULL,
dept_id int NOT NULL,
PRIMARY KEY (emp_id)
);
-- Write a query to insert values into the employee table.
INSERT INTO Employee_Table VALUES 
('101','ankit','jain','HP124','200000','2','24'),
('102','sarvesh','patel','HP123','150000','2','24'),
('103','krishna','gee','HP125','500000','5','44'),
('104','rana','gee','HP122','250000','3','54'),
('105','soniya','jain','HP121','400000','1','22'),
('106','nithin','kumar','HP120','300000','4','34'),
('107','karan','patel','HP126','300001','2','34'),
('108','shilpa','jain','HP127','300001','5','24'),
('109','mukesh','singh','HP128','300001','4','44');
-- Write a query to find the first name and salary of the employee whose salary is higher than the employee with the last name Kumar from the employee table.
 SELECT f_name, e.salary
 FROM Employee_Table
 WHERE salary >
 (SELECT salary FROM Employee_Table WHERE l_name = 'kumar');
-- Write a query to display the employee id and last name of the employee whose salary is greater than the average salary from the employee table.
SELECT emp_id, l_name
FROM Employee_Table
WHERE salary >
(SELECT AVG(salary) FROM Employee_Table);
-- Write a query to display the employee id, first name, and salary of the employees who earn a salary that is higher than the salary of all the shipping clerks (JOB_ID = HP122). Sort the results of the salary in ascending order.
SELECT emp_id, f_name, salary
FROM Employee_Table
WHERE salary >
(SELECT );

-- Write a query to display the first name, employee id, and salary of the first three employees with highest salaries.
SELECT f_name,emp_id,salary
FROM Employee_Table
WHERE salary = 
(SELECT MAX(salary) FROM Employee_Table   LIMIT  3);