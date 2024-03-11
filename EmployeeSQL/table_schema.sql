-- Database: Module_9

-- Drop table if exists
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


-- Create new tables to import data
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);


-- Import data from respective csv
-- Ensure data loaded properly
SELECT * FROM departments;

-- Import data from respective csv
-- Ensure data loaded properly
SELECT * FROM dept_emp;

-- Import data from respective csv
-- Ensure data loaded properly
SELECT * FROM dept_manager;

-- Import data from respective csv
-- Ensure data loaded properly
SELECT * FROM employees;

-- Import data from respective csv
-- Ensure data loaded properly
SELECT * FROM salaries;

-- Import data from respective csv
-- Ensure data loaded properly
SELECT * FROM titles;