DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
show databases;
create database cloudfirst;
use cloudfirst;
CREATE TABLE departments (
    dept_id     INTEGER PRIMARY KEY,
    dept_name   TEXT NOT NULL
);



CREATE TABLE employees (
    emp_id      INTEGER PRIMARY KEY,
    emp_name    TEXT NOT NULL,
    age         INTEGER,
    salary      REAL,
    dept_id     INTEGER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);




-- 2. Insert sample data
INSERT INTO departments (dept_id, dept_name) VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');

INSERT INTO employees (emp_id, emp_name, age, salary, dept_id) VALUES
    (1, 'Alice',   25, 50000, 1),
    (2, 'Bob',     30, 65000, 2),
    (3, 'Charlie', 35, 60000, 2),
    (4, 'David',   22, 48000, 3),
    (5, 'Eva',     28, 72000, 2),
    (6, 'Frank',   40, 55000, 1);

-- ============================================================
-- 3. SELECT - retrieve all employees
-- ============================================================
SELECT * FROM employees;

-- SELECT specific columns
SELECT emp_name, salary FROM employees;

-- ============================================================
-- 4. WHERE - filter rows
-- ============================================================
-- Employees older than 25
SELECT emp_name, age FROM employees WHERE age > 25;

-- Employees with salary above 55000 in department 2 (IT)
SELECT emp_name, salary FROM employees WHERE salary > 55000 AND dept_id = 2;

-- ============================================================
-- 5. GROUP BY - aggregate data
-- ============================================================
-- Average salary per department
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- Number of employees and max salary per department
SELECT dept_id, COUNT(*) AS emp_count, MAX(salary) AS max_salary
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 1;

-- ============================================================
-- 6. JOIN - combine tables
-- ============================================================
-- Inner join employees with departments
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- Join + GROUP BY: average salary per department name
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY avg_salary DESC;
show databases;
use mathew1;
CREATE TABLE departments (
    dept_id     INTEGER PRIMARY KEY,
    dept_name   TEXT NOT NULL
);



CREATE TABLE employees (
    emp_id      INTEGER PRIMARY KEY,
    emp_name    TEXT NOT NULL,
    age         INTEGER,
    salary      REAL,
    dept_id     INTEGER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);




-- 2. Insert sample data
INSERT INTO departments (dept_id, dept_name) VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');

INSERT INTO employees (emp_id, emp_name, age, salary, dept_id) VALUES
    (1, 'Alice',   25, 50000, 1),
    (2, 'Bob',     30, 65000, 2),
    (3, 'Charlie', 35, 60000, 2),
    (4, 'David',   22, 48000, 3),
    (5, 'Eva',     28, 72000, 2),
    (6, 'Frank',   40, 55000, 1);

-- ============================================================
-- 3. SELECT - retrieve all employees
-- ============================================================
SELECT * FROM employees;

-- SELECT specific columns
SELECT emp_name, salary FROM employees;

-- ============================================================
-- 4. WHERE - filter rows
-- ============================================================
-- Employees older than 25
SELECT emp_name, age FROM employees WHERE age > 25;

-- Employees with salary above 55000 in department 2 (IT)
SELECT emp_name, salary FROM employees WHERE salary > 55000 AND dept_id = 2;

-- ============================================================
-- 5. GROUP BY - aggregate data
-- ============================================================
-- Average salary per department
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- Number of employees and max salary per department
SELECT dept_id, COUNT(*) AS emp_count, MAX(salary) AS max_salary
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 1;

-- ============================================================
-- 6. JOIN - combine tables
-- ============================================================
-- Inner join employees with departments
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- Join + GROUP BY: average salary per department name
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY avg_salary DESC;