-- This will create a new table names  "employees" with below mentioned fields.
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30), 
    emp_email VARCHAR(30), 
    emp_tech VARCHAR(10),
    emp_client VARCHAR(20)
);

-- This will create a table, having conditions where name can't be NUL, student_id is the primary key 
-- and major must be UNIQUE for each record
CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(30) NOT NULL, 
    major VARCHAR(30) UNIQUE,
    PRIMARY KEY(student_id)
);

-- Same as above conditions met, but where major will be 'UNDECIDED' 
-- If we don;t pass ther major value in INSERT command, it will be UNDECIDED by default.
CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(30) NOT NULL, 
    major VARCHAR(30) DEFAULT 'UNDECIDED',
    PRIMARY KEY(student_id)
);

-- This has also met few above conditions, also AUTO_INCREMENT will allow us to 
-- keep the student_id increate automatically for each recored we inserted.

-- so we can stop student_id value while we insert records if requried.
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    student_name VARCHAR(30) NOT NULL, 
    major VARCHAR(30) DEFAULT 'UNDECIDED',
    PRIMARY KEY(student_id)
)

-- This will fetch all the records in the database
SELECT * FROM employees;

-- This will give table details
DESCRIBE employees;

-- This will delete table completely from database
DROP TABLE employees;

-- This will add a new column to existing table
ALTER TABLE employees ADD emp_salary VARCHAR(10);

-- This will delete the column in exisitng table
ALTER TABLE employees DROP COLUMN emp_salary;

-- Insert records into table
-- Order of values must be as same as we have in create table command.
INSERT INTO employees VALUES(001, 'Bhanu', 'bkandreg@gmail.com','Full Stack','Ford');

-- This will only insert specified columns in a new record. other columns will remain with null values
INSERT INTO employees(emp_id, emp_name, emp_client) VALUES(002, 'Alex', 'Walmart');

-- This will show records where conditions only met
SELECT * FROM employees where emp_client='Ford';

-- This will update specific record where conditions met.
UPDATE employees SET emp_client='Google' where emp_id=1;

-- This udpates records where both conditions met
UDPATE employees SET emp_client='IBM' WHERE emp_client='Ford Credit' OR emp_client='Aetna';

-- Update/ SET multiple columns in a single record
UPDATE employees SET emp_name='Cash', emp_tech='Blockchain' where emp_id=1;

-- Delete all the rows in a Table
DELETE FROM employees;

-- Delete specific record from the Table, where conditions met
DELETE FROM employees where emp_id=1;

-- Select only few columns in a table
SELECT emp_name, emp_client FROM employees;

-- This will display records with ORDER by condition, ascending order is the defualt one.
-- ASC and DESC
SELECT emp_name, emp_client FROM employees ORDER BY emp_name ASC;

-- This adds limit to display number of records
SELECT emp_name, emp_client FROM employees ORDER BY emp_name ASC LIMIT 2;

-- This will fetch the records where emp_client not equals to Ford Credit
SELECT emp_name, emp_client FROM employees WHERE emp_client <> 'Ford Credit';

-- IN is as same as emp_client="Ford Credit" to fetch records where condition met
SELECT * FROM employees WHERE emp_client IN ('Ford Credit');


/*********************************************************************************/

CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    first_name VARCHAR (40),
    last_name VARCHAR(40),
    birth_day DATE,
    SEX VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT
);

CREATE TABLE branch(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

-- Adding branch_id and super_id as FOREIGN keys.
ALTER TABLE employee ADD FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL;
ALTER TABLE employee ADD FOREIGN KEY(super_id) REFERENCES employee(emp_id) ON DELETE SET NULL;