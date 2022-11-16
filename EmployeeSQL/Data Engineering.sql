CREATE TABLE Employees4(
emp_no SERIAL PRIMARY KEY, 
emp_title VARCHAR (50) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
sex VARCHAR(255),
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title) REFERENCES Titles(title_id)
);

CREATE TABLE Departments4(
dept_no VARCHAR(255) PRIMARY KEY NOT NULL, 
dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE salaries3 (
emp_no INTEGER NOT NULL,
salary INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees4(emp_no)
);

CREATE TABLE Titles(
title_id VARCHAR(255) PRIMARY KEY NOT NULL,
title VARCHAR(255) NOT NULL
);

CREATE TABLE dept_manager3 (
dept_no VARCHAR(255) NOT NULL,
emp_no INTEGER NOT NULL,
FOREIGN KEY (dept_no) REFERENCES Departments4(dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees4(emp_no)
);

CREATE TABLE dept_emp3 (
emp_no INTEGER NOT NULL,
dept_no VARCHAR(255) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees4(emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments4(dept_no)
);