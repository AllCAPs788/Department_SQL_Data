CREATE TABLE departments (

dept_no VARCHAR(255) PRIMARY KEY, 

dept_name VARCHAR(255)
);

CREATE TABLE titles (

title_id VARCHAR(255) PRIMARY KEY,
title VARCHAR(255)
);


CREATE TABLE employee_data (

emp_no INT PRIMARY KEY, 
emp_title_id VARCHAR(255), 
FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
birth_date Date,
first_name VARCHAR(255),
last_name VARCHAR(255),
sex VARCHAR(255),
hire_date DATE
);

CREATE TABLE salaries (

emp_no INT, 
FOREIGN KEY (emp_no) REFERENCES employee_data (emp_no),
salary INT 
);


CREATE TABLE department_employee (
emp_no INT,	
dept_no VARCHAR(255), 
FOREIGN KEY (dept_no)  REFERENCES  departments (dept_no)
);

CREATE TABLE department_manager (

emp_no INT, 
FOREIGN KEY (emp_no) REFERENCES employee_data (emp_no),
dept_no VARCHAR(255), 
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
