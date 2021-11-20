-- Create department table and import CSV

create table departments(
dept_no VARCHAR NOT NULL,
dept_name VARCHAR(30) NOT NULL,
PRIMARY KEY(dept_no));

SELECT * FROM departments;

-- Create titles table and import CSV

create table titles(
title_id VARCHAR(30) NOT NULL,
title VARCHAR(30) NOT NULL,
PRIMARY KEY(title_id));

SELECT * FROM titles;

-- Create employees table and import CSV

create table employees(
emp_no VARCHAR(30) NOT NULL,
emp_title VARCHAR(30) NOT NULL,
birth_date VARCHAR(10) NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(30) NOT NULL,
hire_date VARCHAR(10) NOT NULL,
FOREIGN KEY (emp_title) REFERENCES titles(title_id),
PRIMARY KEY(emp_no));

SELECT * FROM employees;

-- Create dept_manager table and import CSV 

create table dept_manager(
dept_no VARCHAR(30) NOT NULL,
emp_no VARCHAR(30) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY(emp_no,dept_no));

SELECT * FROM dept_manager;

-- Create salaries table and import CSV 

create table salaries(
emp_no VARCHAR(30) NOT NULL,
salary INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
PRIMARY KEY (emp_no));

SELECT * FROM salaries;

-- Create dept_emp table and import CSV 

create table dept_emp(
emp_no VARCHAR(30) NOT NULL,
dept_no VARCHAR(30) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY(emp_no,dept_no));

SELECT * FROM dept_emp;

--Drop tables if existing
-- drop table departments;
-- drop table titles;
-- drop table employees;
-- drop table dept_manager;
-- drop table salaries;
-- drop table dept_emp;