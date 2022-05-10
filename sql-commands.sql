-- This will create a new table names  "employees" with below mentioned fields.
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30), 
    emp_email VARCHAR(30), 
    emp_tech VARCHAR(10),
    emp_client VARCHAR(20)
);

-- This will fetch all the records in the database
SELECT * FROM employees;