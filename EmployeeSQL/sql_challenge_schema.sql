CREATE TABLE titles(
    title_id varchar,
    title varchar(25),
    PRIMARY KEY (title_id));


CREATE TABLE departments(
    dept_no varchar(4),
    dept_name varchar(25),
    PRIMARY KEY (dept_no));

CREATE TABLE employees(
    emp_no int,
    emp_title_id varchar(5),
    birth_date date,
    first_name varchar(20),
    last_name varchar(20),
    sex varchar(1),
    hire_date date,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

CREATE TABLE dept_manager(
    dept_no varchar(8),
    emp_no int,
	primary key (dept_no,emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no));


CREATE TABLE dept_emp(
    emp_no int,
    dept_no varchar(8),
	primary key (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE salaries(
    emp_no int,
    salary  int,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
 
